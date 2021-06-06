//
//  AppDetailAboutViewController.swift
//  iOSArchitecturesDemo
//
//  Created by user197514 on 6/6/21.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit

final class AppDetailAboutViewController: UIViewController{
    // MARK: - Properties
    
    private let app: ITunesApp
    
    private var appDetailAboutView: AppDetailAboutView {
        return self.view as! AppDetailAboutView
    }
    
    // MARK: - Init
    
    init(app: ITunesApp) {
        self.app = app
        super.init(nibName: nil, bundle: nil)
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        // MARK: - Lifecycle
        
        override func loadView() {
            super.loadView()
            self.view = AppDetailAboutView()
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.fillData()
        }
        
        // MARK: - Private
        
        private func fillData() {
            self.appDetailAboutView.releaseDateLabel.text = app.releaseDate
            self.appDetailAboutView.releaseNotesLabel.text = app.releaseNotes
            self.appDetailAboutView.versionLabel.text = "Version: \(app.version ?? "")"
        }
    }
