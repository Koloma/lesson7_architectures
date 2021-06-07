//
//  SearchModuleBuilder.swift
//  iOSArchitecturesDemo
//
//  Created by user197514 on 6/5/21.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit


final class SearchAppModuleBuilder {
    
    static func build() -> (UIViewController & SearchAppViewInput) {
            let presenter = SearchAppPresenter()
            let viewController = SearchAppViewController(presenter: presenter)
            presenter.viewInput = viewController
            return viewController

    }
}
