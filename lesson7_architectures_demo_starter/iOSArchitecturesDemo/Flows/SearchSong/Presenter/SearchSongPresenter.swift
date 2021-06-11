//
//  SearchSongPresenter.swift
//  iOSArchitecturesDemo
//
//  Created by user197514 on 6/7/21.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit

protocol SearchSongViewInput: class {
    
    var searchResults: [ITunesSong] { get set }
    
    func showError(error: Error)
    
    func showNoResults()
    
    func hideNoResults()
    
    func throbber(show: Bool)
}

protocol SearchSongViewOutput: class {
    
    func viewDidSearch(with query: String)
    
    func viewDidSelectSong(_ song: ITunesSong)
}

final class SearchSongPresenter {
    
    weak var viewInput: (UIViewController & SearchSongViewInput)?
    
    private let searchService = ITunesSearchService()
    
    private func requestData(with query: String) {

            self.searchService.getSongs(forQuery: query) { [weak self] result in
                guard let self = self else { return }
                self.viewInput?.throbber(show: false)
                result
                    .withValue { songs in
                        guard !songs.isEmpty else {
                            self.viewInput?.showNoResults()
                            return
                        }
                        self.viewInput?.hideNoResults()
                        self.viewInput?.searchResults = songs
                    }
                    .withError {
                        self.viewInput?.showError(error: $0)
                    }
            }
    }
    
    private func openSongDetails(with song: ITunesSong) {
        let songDetaillViewController = SongDetailViewController(song: song)
        self.viewInput?.navigationController?.pushViewController(songDetaillViewController, animated: true)
    }
}

// MARK: - SearchViewOutput
extension SearchSongPresenter: SearchSongViewOutput {
  
    func viewDidSearch(with query: String) {
        self.viewInput?.throbber(show: true)
        self.requestData(with: query)
    }
    
    func viewDidSelectSong(_ song: ITunesSong) {
        self.openSongDetails(with: song)
    }
}

