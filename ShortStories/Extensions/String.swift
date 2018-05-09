//
//  String.swift
//  ShortStories
//
//  Created by Dave Gumba on 2018-05-09.
//  Copyright © 2018 Dave's Organization. All rights reserved.
//

import Foundation

extension String {
    
    var wordCount: Int {
        let components = self.components(separatedBy: .whitespacesAndNewlines)
        let words = components.filter { !$0.isEmpty }
        return words.count
    }
    
}
