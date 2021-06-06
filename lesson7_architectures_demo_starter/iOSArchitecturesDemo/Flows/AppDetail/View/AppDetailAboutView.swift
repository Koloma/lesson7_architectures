//
//  AppDetailAboutView.swift
//  iOSArchitecturesDemo
//
//  Created by user197514 on 6/6/21.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit

final class AppDetailAboutView: UIView{
    
    // MARK: - Init
    override init(frame: CGRect) {
          super.init(frame: frame)
          self.setupLayout()
      }
      
      required init?(coder aDecoder: NSCoder) {
          super.init(coder: aDecoder)
          self.setupLayout()
      }

    // MARK: - Subviews
    private(set) lazy var versionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20.0)
        label.numberOfLines = 1
        return label
    }()
    
    private(set) lazy var releaseDateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 14.0)
        return label
    }()
    
    private(set) lazy var releaseNotesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        label.font = UIFont.boldSystemFont(ofSize: 14.0)
        label.numberOfLines = 0
        return label
    }()
      
      // MARK: - UI
      
      private func setupLayout() {
          self.addSubview(self.versionLabel)
          self.addSubview(self.releaseDateLabel)
          self.addSubview(self.releaseNotesLabel)
          
        NSLayoutConstraint.activate([

            self.versionLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 12.0),
            self.versionLabel.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 16.0),
            self.versionLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16.0),

            self.releaseDateLabel.topAnchor.constraint(equalTo: self.versionLabel.bottomAnchor, constant: 12.0),
            self.releaseDateLabel.leftAnchor.constraint(equalTo: self.versionLabel.leftAnchor),
            self.releaseDateLabel.rightAnchor.constraint(equalTo: self.versionLabel.rightAnchor),


            self.releaseNotesLabel.topAnchor.constraint(equalTo: self.releaseDateLabel.bottomAnchor, constant: 24.0),
            self.releaseNotesLabel.leftAnchor.constraint(equalTo: self.releaseDateLabel.leftAnchor),
            self.releaseNotesLabel.widthAnchor.constraint(equalToConstant: 300.0),

            self.releaseNotesLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
      }
}
