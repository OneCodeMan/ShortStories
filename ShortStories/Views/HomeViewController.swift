//
//  HomeViewController.swift
//  ShortStories
//
//  Created by Dave Gumba on 2018-05-09.
//  Copyright © 2018 Dave's Organization. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK:- Individual views
    
    fileprivate var headerView: UIView = {
        var hv = UIView()
        var titleLabel = UILabel()
        
        hv.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: hv.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: hv.centerYAnchor).isActive = true

        titleLabel.textAlignment = .center
        titleLabel.font = UIFont(name: "Avenir-Heavy", size: 32)
        titleLabel.text = "Short Stories"
        titleLabel.numberOfLines = 0
        titleLabel.adjustsFontSizeToFitWidth = true
        
        return hv
    }()
    
    fileprivate var descriptionView: UIView = {
        var dv = UIView()
        var storiesDescriptionLabel = UILabel()
        
        dv.addSubview(storiesDescriptionLabel)
        storiesDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        storiesDescriptionLabel.leadingAnchor.constraint(equalTo: dv.leadingAnchor, constant: 25).isActive = true
        storiesDescriptionLabel.trailingAnchor.constraint(equalTo: dv.trailingAnchor, constant: -25).isActive = true
        storiesDescriptionLabel.topAnchor.constraint(equalTo: dv.topAnchor, constant: -15).isActive = true
        
        storiesDescriptionLabel.text = "Looking at your face in the dark You don't even look that smart Could never make it past that part And now I guess we never will Looking for the keys to the truck Your body's saying isn't that enough? Your brain is going I don't give a fuck"
        storiesDescriptionLabel.textAlignment = .center
        storiesDescriptionLabel.sizeToFit()
        storiesDescriptionLabel.numberOfLines = 0
        storiesDescriptionLabel.font = UIFont(name: "Avenir", size: 16)
        storiesDescriptionLabel.adjustsFontSizeToFitWidth = true
        
        return dv
    }()
    
    fileprivate var storyTableView: UITableView = {
        var stv = UITableView()
        
        return stv
    }()

    // MARK:- viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("View loaded")
        setupLayout()
        
    }
    
    // MARK:- Layout setup
    
    fileprivate func setupLayout() {
        
        view.addSubview(headerView)
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        headerView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        view.addSubview(descriptionView)
        descriptionView.translatesAutoresizingMaskIntoConstraints = false
        descriptionView.topAnchor.constraint(equalTo: headerView.bottomAnchor).isActive = true
        descriptionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        descriptionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        descriptionView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.17).isActive = true
        
        view.addSubview(storyTableView)
        storyTableView.delegate = self
        
        storyTableView.translatesAutoresizingMaskIntoConstraints = false
        storyTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        storyTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        storyTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        storyTableView.topAnchor.constraint(equalTo: descriptionView.bottomAnchor).isActive = true
        
    }

}

extension HomeViewController: UITableViewDelegate {
    
}













