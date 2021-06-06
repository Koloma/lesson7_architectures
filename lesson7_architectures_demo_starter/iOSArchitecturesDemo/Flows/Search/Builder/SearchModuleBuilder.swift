//
//  SearchModuleBuilder.swift
//  iOSArchitecturesDemo
//
//  Created by user197514 on 6/5/21.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit


final class SearchModuleBuilder {
    
    static func build(mediaType: ITunesSearchService.MediaType) -> (UIViewController & SearchViewInput) {
        switch mediaType {
        case .apps:
            let presenter = SearchPresenter()
            let viewController = SearchViewController(presenter: presenter, mediaType: mediaType)
            presenter.viewInput = viewController
            return viewController
        case .music:
            let presenter = SearchPresenter()
            let viewController = SearchViewController(presenter: presenter, mediaType: mediaType)
            presenter.viewInput = viewController
            return viewController
        }

    }
}
