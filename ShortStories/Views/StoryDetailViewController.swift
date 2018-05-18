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
    
    let contentView: UITextView = {
        let cv = UITextView()
        
        return cv
    }()
    
    let brightnessToggleLabel: UILabel = {
        let brightnessLabel = UILabel()
        brightnessLabel.text = "Reading Mode"
        brightnessLabel.font = UIFont(name: "Avenir-Medium", size: 16)
        
        return brightnessLabel
    }()
    
    let brightnessToggleControl: UISegmentedControl = {
        let brightnessLabel = UILabel()
        
        let brightnessItems = ["Light", "Dark"]
        let brightnessToggle = UISegmentedControl(items: brightnessItems)
        brightnessToggle.selectedSegmentIndex = 0
        brightnessToggle.tintColor = .black
        
        brightnessToggle.addTarget(self, action: #selector(handleBrightnessChange), for: .valueChanged)
        
        return brightnessToggle
    }()
    
    @objc func handleBrightnessChange() {
        switch brightnessToggleControl.selectedSegmentIndex {
        case 0:
            navigationController?.navigationBar.barStyle = .default
            navigationItem.backBarButtonItem?.tintColor = .black
            navigationController?.navigationBar.backgroundColor = .white
            navigationController?.navigationBar.tintColor = .black
            view.backgroundColor = .white
            contentView.backgroundColor = .white
            contentView.textColor = .black
            brightnessToggleLabel.textColor = .black
            brightnessToggleControl.tintColor = .black
            break
        case 1:
            navigationController?.navigationBar.barStyle = .black
            navigationItem.backBarButtonItem?.tintColor = .white
            navigationController?.navigationBar.backgroundColor = .black
            navigationController?.navigationBar.tintColor = .white
            view.backgroundColor = .black
            contentView.backgroundColor = .black
            contentView.textColor = .white
            brightnessToggleLabel.textColor = .white
            brightnessToggleControl.tintColor = .white
            break
        default:
            break
        }
    }
    
    let toggleControlsView: UIVisualEffectView = {
        let stv = UIVisualEffectView()
        
        let fontLabel = UILabel()
        
        let fontItems = ["Avenir", "Garamond"]
        let fontToggle = UISegmentedControl(items: fontItems)
        
//        stv.contentView.addSubview(fontLabel)
//        fontLabel.translatesAutoresizingMaskIntoConstraints = false
//        fontLabel.trailingAnchor.constraint(equalTo: stv.contentView.trailingAnchor, constant: -130).isActive = true
//        fontLabel.topAnchor.constraint(equalTo: stv.contentView.topAnchor, constant: 5).isActive = true
//        fontLabel.text = "Font"
//        fontLabel.font = UIFont(name: "Avenir-Medium", size: 16)
//
//        stv.contentView.addSubview(fontToggle)
//        fontToggle.translatesAutoresizingMaskIntoConstraints = false
//        fontToggle.topAnchor.constraint(equalTo: fontLabel.bottomAnchor, constant: 5).isActive = true
//        fontToggle.leadingAnchor.constraint(equalTo: brightnessToggle.trailingAnchor, constant: 60).isActive = true
//        fontToggle.selectedSegmentIndex = 0
        
        
        return stv
    }()
    
    let blurView: UIVisualEffectView = {
        let blurEffect = UIBlurEffect(style: .regular)
        let bv = UIVisualEffectView(effect: blurEffect)
        
        return bv
    }()
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        contentView.setContentOffset(CGPoint.zero, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupParentView()
        setupContentView()
        setupStatisticsView()
    }
    
    fileprivate func setupParentView() {
        self.navigationItem.hidesBackButton = true
        let newBackButton = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.plain, target: self, action: #selector(handleBackButtonClick))
        self.navigationItem.leftBarButtonItem = newBackButton
        
        navigationItem.backBarButtonItem?.tintColor = .black
        navigationController?.navigationBar.tintColor = .black
        title = storyTitle
        view.backgroundColor = .white
    }
    
    @objc func handleBackButtonClick() {
        navigationController?.navigationBar.barStyle = .default
        navigationItem.backBarButtonItem?.tintColor = .black
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.tintColor = .black
        navigationController?.popViewController(animated: true)
    }
    
    fileprivate func setupContentView() {
        view.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        contentView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        
        let storyString = "\n\(storyTitle ?? "")\n\n\n\(content ?? "")\n\n\n\n\n\n\n"
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
    
    fileprivate func setupStatisticsView() {
        view.addSubview(toggleControlsView)
        toggleControlsView.translatesAutoresizingMaskIntoConstraints = false
        toggleControlsView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        toggleControlsView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        toggleControlsView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        toggleControlsView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.12).isActive = true
        toggleControlsView.backgroundColor = .clear
        
        toggleControlsView.contentView.insertSubview(blurView, at: 0)
        blurView.translatesAutoresizingMaskIntoConstraints = false
        blurView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        blurView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        toggleControlsView.contentView.addSubview(brightnessToggleLabel)
        brightnessToggleLabel.translatesAutoresizingMaskIntoConstraints = false
        brightnessToggleLabel.leadingAnchor.constraint(equalTo: toggleControlsView.leadingAnchor, constant: 10).isActive = true
        brightnessToggleLabel.topAnchor.constraint(equalTo: toggleControlsView.topAnchor, constant: 2).isActive = true
        toggleControlsView.contentView.addSubview(brightnessToggleControl)
        brightnessToggleControl.translatesAutoresizingMaskIntoConstraints = false
        brightnessToggleControl.leadingAnchor.constraint(equalTo: toggleControlsView.contentView.leadingAnchor, constant: 10).isActive = true
        brightnessToggleControl.topAnchor.constraint(equalTo: brightnessToggleLabel.bottomAnchor, constant: 2).isActive = true

        
    }


}

