//
//  StartMenuRouter.swift
//  iOSArchitecturesDemo
//
//  Created by user197514 on 6/10/21.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit

final class StartMenuRouter {
    
    var viewController: UIViewController?
    
    
    func goToSearchApp() {
        let vc = SearchAppModuleBuilder.build()
        viewController?.navigationController?.pushViewController(vc, animated: true)
    }
    
    func goToSearchSong() {
        let vc = SearchSongModuleBuilder.build()
        viewController?.navigationController?.pushViewController(vc, animated: true)
    }
    
}
