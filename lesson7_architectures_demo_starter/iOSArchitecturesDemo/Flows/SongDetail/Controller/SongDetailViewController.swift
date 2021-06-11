//
//  SongDetailViewController.swift
//  iOSArchitecturesDemo
//
//  Created by user197514 on 6/7/21.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit

final class SongDetailViewController: UIViewController {
    
    let song: ITunesSong
    
    //lazy var headerViewController = SongDetailHeaderViewController(song: self.song)
    //lazy var aboutViewController = SongDetailAboutViewController(song: self.song)
    
    init(song: ITunesSong) {
        self.song = song
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.configureUI()
        }
        
        private func configureUI() {
            self.view.backgroundColor = .white
            self.navigationController?.navigationBar.tintColor = UIColor.white;
            self.navigationItem.largeTitleDisplayMode = .never
            //self.addHeaderViewController()
            //self.addAboutViewController()
            self.addDescriptionViewController()
        }
        
//        private func addHeaderViewController() {
//            self.addChild(self.headerViewController)
//            self.view.addSubview(self.headerViewController.view)
//            self.headerViewController.didMove(toParent: self)
//
//            self.headerViewController.view.translatesAutoresizingMaskIntoConstraints = false
//            NSLayoutConstraint.activate([
//                self.headerViewController.view.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
//                self.headerViewController.view.leftAnchor.constraint(equalTo: self.view.leftAnchor),
//                self.headerViewController.view.rightAnchor.constraint(equalTo: self.view.rightAnchor)
//                ])
//        }
        
        private func addDescriptionViewController() {

            let descriptionViewController = UIViewController()
            
            self.addChild(descriptionViewController)
            self.view.addSubview(descriptionViewController.view)
            descriptionViewController.didMove(toParent: self)
            
            descriptionViewController.view.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                //descriptionViewController.view.topAnchor.constraint(equalTo: self.headerViewController.view.bottomAnchor),
                descriptionViewController.view.leftAnchor.constraint(equalTo: self.view.leftAnchor),
                descriptionViewController.view.rightAnchor.constraint(equalTo: self.view.rightAnchor),
                descriptionViewController.view.heightAnchor.constraint(equalToConstant: 250.0)])
        }
    
//        private func addAboutViewController() {
//            self.addChild(self.aboutViewController)
//            self.view.addSubview(self.aboutViewController.view)
//            self.aboutViewController.didMove(toParent: self)
//
//            self.aboutViewController.view.translatesAutoresizingMaskIntoConstraints = false
//            NSLayoutConstraint.activate([
//                self.aboutViewController.view.topAnchor.constraint(equalTo: self.headerViewController.view.bottomAnchor),
//                self.aboutViewController.view.leftAnchor.constraint(equalTo: self.view.leftAnchor),
//                self.aboutViewController.view.rightAnchor.constraint(equalTo: self.view.rightAnchor)
//                ])
//        }
    
    }
        

