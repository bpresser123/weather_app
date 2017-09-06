//
//  DayCollectionViewCell.swift
//  Weather
//
//  Created by Brian Presser on 8/28/17.
//  Copyright © 2017 Brian Presser. All rights reserved.
//

import UIKit

class DayCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Type Properties
    
    static let reuseIdentifier = "DayCollectionViewCell"
    
    // MARK: - Properties
    
    let viewController: DayViewController
    
    // MARK: - Initialization
    
    override init(frame: CGRect) {
        // Initialize View Controller
        viewController = DayViewController()
        
        super.init(frame: frame)
        
        setupViewController()
    }
    
    required init?(coder aDecoder: NSCoder) {
        // Initialize View Controller
        viewController = DayViewController()
        
        super.init(coder: aDecoder)
        
        setupViewController()
    }
    
    private func setupViewController() {
        // Configure View Controller
        viewController.view.backgroundColor = .blue
        
        // Add View Controller to Content View
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
