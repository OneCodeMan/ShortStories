//
//  DetailViewController.swift
//  ShortStories
//
//  Created by Dave Gumba on 2018-05-13.
//  Copyright © 2018 Dave's Organization. All rights reserved.
//

import UIKit

class StoryDetailViewController: UIViewController {
    
    var storyTitle: String?
    var content: String?
    var wordCount: Int?
    var characterCount: Int?
    var estimatedReadingTime: Int?
    
    let scrollView: UIScrollView = {
        let sv = UIScrollView()
        
        return sv
    }()
    
    let titleView: UIView = {
        let tv = UIView()
        
        
        return tv
    }()
    
    let contentView: UITextView = {
        let cv = UITextView()
        
        return cv
    }()
    
    let statisticsView: UIView = {
        let stv = UIView()
        
        return stv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
        setupTitle()
    }
    
    fileprivate func setupLayout() {
        
        title = storyTitle
        
        view.addSubview(scrollView)
        
        scrollView.addSubview(titleView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        scrollView.backgroundColor = .white
        
        titleView.translatesAutoresizingMaskIntoConstraints = false
        titleView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0).isActive = true
        titleView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0).isActive = true
        titleView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0).isActive = true
        titleView.heightAnchor.constraint(equalTo: scrollView.heightAnchor, multiplier: 0.21).isActive = true
        titleView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        
        scrollView.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        contentView.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 10).isActive = true
        contentView.heightAnchor.constraint(equalToConstant: 2000).isActive = true
        
        contentView.text = Story2.content
        contentView.isEditable = false
        
        
        
    }
    
    fileprivate func setupTitle() {
        let titleLabel = UILabel()
        
        titleView.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: titleView.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: titleView.centerYAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: titleView.trailingAnchor, constant: -20).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: titleView.leadingAnchor, constant: 20).isActive = true
        titleLabel.heightAnchor.constraint(equalTo: titleView.heightAnchor).isActive = true
        
        titleLabel.text = storyTitle
        titleLabel.adjustsFontSizeToFitWidth = true
        titleLabel.textAlignment = .center
        titleLabel.lineBreakMode = .byWordWrapping
        titleLabel.numberOfLines = 0
        titleLabel.font = UIFont(name: "Avenir-Heavy", size: 22)
    }
    
}

