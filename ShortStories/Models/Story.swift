//
//  Story.swift
//  ShortStories
//
//  Created by Dave Gumba on 2018-05-09.
//  Copyright © 2018 Dave's Organization. All rights reserved.
//

import Foundation

class Story {
    
    static let wordsPerMinute = 275
    
    var title: String
    var theme: [String]
    var content: String
    
    var wordCount: Int {
        get {
            return content.wordCount
        }
    }
    
    var characterCount: Int {
        get {
            return content.count
        }
    }
    
    var estimatedReadingTime: Int {
        get {
            let averageReadingTimeRaw = Float(wordCount)/Float(Story.wordsPerMinute)
            let computedReadingTime = Int(averageReadingTimeRaw) + 2
            return computedReadingTime
        }
    }
    
    init(title: String, content: String, theme: [String] = []) {
        self.title = title
        self.content = content
        self.theme = theme
    }
    
    
}



