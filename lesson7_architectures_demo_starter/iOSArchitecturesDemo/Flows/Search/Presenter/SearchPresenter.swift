//
//  SearchPresenter.swift
//  iOSArchitecturesDemo
//
//  Created by user197514 on 6/5/21.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit

protocol SearchViewInput: class {
    associatedtype SearchViewType
    
    var searchResults: [SearchViewType] { get set }
    
    func showError(error: Error)
    
    func showNoResults()
    
    func hideNoResults()
    
    func throbber(show: Bool)
}

protocol SearchViewOutput: class {
    associatedtype SearchViewType
    
    func viewDidSearch(with query: String)
    
    func viewDidSelectApp(_ app: SearchViewType)
}

final class SearchPresenter {
    
    weak var viewInput: (UIViewController & SearchViewInput)?
    
    private let searchService = ITunesSearchService()
    
    private func requestData(with query: String) {

            self.searchService.getApps(forQuery: query) { [weak self] result in
                guard let self = self else { return }
                self.viewInput?.throbber(show: false)
                result
                    .withValue { apps in
                        guard !apps.isEmpty else {
                            self.viewInput?.showNoResults()
                            return
                        }
                        self.viewInput?.hideNoResults()
                        self.viewInput?.searchResults = apps
                    }
                    .withError {
                        self.viewInput?.showError(error: $0)
                    }
            }
    }
    
    private func openAppDetails(with app: ITunesApp) {
        let appDetaillViewController = AppDetailViewController(app: app)
        self.viewInput?.navigationController?.pushViewController(appDetaillViewController, animated: true)
    }
}

// MARK: - SearchViewOutput
extension SearchPresenter: SearchViewOutput {
  
    func viewDidSearch(with query: String) {
        self.viewInput?.throbber(show: true)
        self.requestData(with: query)
    }
    
    func viewDidSelectApp(_ app: ITunesApp) {
        self.openAppDetails(with: app)
    }
}
