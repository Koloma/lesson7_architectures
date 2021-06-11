//
//  StartMenuViewController.swift
//  iOSArchitecturesDemo
//
//  Created by user197514 on 6/10/21.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit

final class StartMenuViewController: UIViewController {

    var presenter: StartMenuPresenter?
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        configUI()
    }
    
    func configUI() {
        let buttonGoToAppSearch = UIButton()
        
        buttonGoToAppSearch.setTitle("App Search", for: .normal)
        buttonGoToAppSearch.setTitleColor(.blue, for: .normal)
        buttonGoToAppSearch.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        buttonGoToAppSearch.addTarget(self, action: #selector(buttonGoToAppSearchTap), for: .touchUpInside)
        
        let buttonGoToSongSearch = UIButton()
        
        buttonGoToSongSearch.setTitle("Song Search", for: .normal)
        buttonGoToSongSearch.setTitleColor(.blue, for: .normal)
        buttonGoToSongSearch.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        buttonGoToSongSearch.addTarget(self, action: #selector(buttonGoToSongSearchTap), for: .touchUpInside)
        
        let stackView = UIStackView()
       
        stackView.axis  = NSLayoutConstraint.Axis.vertical
        stackView.distribution  = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.center
        stackView.spacing   = 16.0
        
        stackView.addArrangedSubview(buttonGoToAppSearch)
        stackView.addArrangedSubview(buttonGoToSongSearch)
        stackView.translatesAutoresizingMaskIntoConstraints = false

        self.view.addSubview(stackView)

        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
    }
    
    @objc func buttonGoToAppSearchTap() {
        presenter?.goToAppSearchTap()
    }
    
    @objc func buttonGoToSongSearchTap() {
        presenter?.goToSongSearchTap()
    }
}


