//
//  StartMenuFactory.swift
//  iOSArchitecturesDemo
//
//  Created by user197514 on 6/10/21.
//  Copyright © 2021 ekireev. All rights reserved.
//

import Foundation

final class StartMenuFactory {

    static func createModule() -> StartMenuViewController {
        let controller = StartMenuViewController()
        let presenter = StartMenuPresenter()
        let interactror = StartMenuInteractor()
        let router = StartMenuRouter()
        
        controller.presenter = presenter
        presenter.viewController = controller
        presenter.interactor = interactror
        presenter.router = router
        interactror.presenter = presenter
        router.viewController = controller
        
        return controller
    }
}
