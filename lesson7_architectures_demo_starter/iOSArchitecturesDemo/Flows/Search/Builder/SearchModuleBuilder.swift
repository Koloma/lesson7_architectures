//
//  SearchModuleBuilder.swift
//  iOSArchitecturesDemo
//
//  Created by user197514 on 6/5/21.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit

final class SearchModuleBuilder {
    
    static func build() -> (UIViewController & SearchViewInput) {
        let presenter = SearchPresenter()
        let viewController = SearchViewController(presenter: presenter)
        presenter.viewInput = viewController
        return viewController
    }
}
