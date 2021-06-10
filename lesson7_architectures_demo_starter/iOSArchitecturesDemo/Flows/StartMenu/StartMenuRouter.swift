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
    
    func goToAbout() {
        viewController?.navigationController?.pushViewController(UIViewController(), animated: true)
    }
}
