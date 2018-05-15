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
        //setupTitle()
    }
    
    fileprivate func setupLayout() {
        
        title = storyTitle
        
        view.addSubview(scrollView)
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        scrollView.backgroundColor = .white
        
        scrollView.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 27).isActive = true
        contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -27).isActive = true
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 10).isActive = true
        contentView.heightAnchor.constraint(equalToConstant: 2000).isActive = true
        
        let storyString = "\n\(storyTitle ?? "")\n\n\n\(content ?? "")"
        let attrText = NSMutableAttributedString(string: storyString)
        
        let titleFont = UIFont(name: "Avenir-Heavy", size: 24.0)!
        let contentFont = UIFont(name: "Avenir", size: 17.0)!
        
        let titleTextRange = (storyString as NSString).range(of: storyTitle ?? "")
        let contentTextRange = (storyString as NSString).range(of: content ?? "")
        
        attrText.addAttribute(NSAttributedStringKey.font, value: titleFont, range: titleTextRange)
        attrText.addAttribute(NSAttributedStringKey.font, value: contentFont, range: contentTextRange)
        
        contentView.attributedText = attrText
        contentView.isEditable = false
        contentView.showsVerticalScrollIndicator = false
        
    }

}

