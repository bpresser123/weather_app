//
//  NowCollectionViewCell.swift
//  Weather
//
//  Created by Brian Presser on 8/28/17.
//  Copyright © 2017 Brian Presser. All rights reserved.
//

import UIKit

class NowCollectionViewCell: UICollectionViewCell {
    
    static let reuseIdentifier = "NowCollectionViewCell"
    
    let viewController: NowViewController
    
    override init(frame: CGRect) {
    
      viewController = NowViewController()

        super.init(frame: frame)
        
        setupViewController()

    }

    required init?(coder aDecoder: NSCoder) {
        
        viewController = NowViewController()
        
        super.init(coder: aDecoder)
        
        setupViewController()
    }
    
    private func setupViewController() {
      
        viewController.view.backgroundColor = .red
        
        contentView.addSubview(viewController.view)
        
        if let view = viewController.view {
            view.translatesAutoresizingMaskIntoConstraints = false
            
            view.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0.0).isActive = true
            view.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0.0).isActive = true
            view.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0.0).isActive = true
            view.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0.0).isActive = true
            
        }
    }
    
}


