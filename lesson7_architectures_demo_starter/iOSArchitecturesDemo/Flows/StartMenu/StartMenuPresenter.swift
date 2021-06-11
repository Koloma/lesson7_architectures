//
//  StartMenuPresenter.swift
//  iOSArchitecturesDemo
//
//  Created by user197514 on 6/10/21.
//  Copyright © 2021 ekireev. All rights reserved.
//

import Foundation

final class StartMenuPresenter {
    
    weak var viewController: StartMenuViewController?
    var interactor: StartMenuInteractor?
    var router: StartMenuRouter?
    
    public func goToAppSearchTap(){
        router?.goToSearchApp()
    }
    
    public func goToSongSearchTap(){
        router?.goToSearchSong()
    }
}
