//
//  StoryCell.swift
//  ShortStories
//
//  Created by Dave Gumba on 2018-05-11.
//  Copyright © 2018 Dave's Organization. All rights reserved.
//

import UIKit

class StoryCell: UITableViewCell {
    
    @IBOutlet weak var storyCellTitle: UILabel!
    
    var story: Story! {
        didSet {
            storyCellTitle.text = story.title
        }
    }
}

