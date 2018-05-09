//
//  ViewController.swift
//  ShortStories
//
//  Created by Dave Gumba on 2018-05-09.
//  Copyright © 2018 Dave's Organization. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    fileprivate var headerView: UIView = {
        var hv = UIView()
        
        return hv
    }()
    
    fileprivate var descriptionView: UIView = {
        var dv = UIView()
        
        return dv
    }()
    
    fileprivate var storyTableView: UIView = {
        var stv = UITableView()
        
        return stv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

