//
//  SearchSongModuleBuilder.swift
//  iOSArchitecturesDemo
//
//  Created by user197514 on 6/7/21.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit


final class SearchSongModuleBuilder {
    
    static func build() -> (UIViewController & SearchSongViewInput) {

            let presenter = SearchSongPresenter()
            let viewController = SearchSongViewController(presenter: presenter)
            presenter.viewInput = viewController
            return viewController

    }
}
