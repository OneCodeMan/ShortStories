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
    
    let contentView: UIView = {
        let cv = UIView()
        
        return cv
    }()
    
    let statisticsView: UIView = {
        let stv = UIView()
        
        return stv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
    }
    
    fileprivate func setupLayout() {
        
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
    }
    
}

