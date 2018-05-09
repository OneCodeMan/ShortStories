//
//  StoryTests.swift
//  ShortStoriesTests
//
//  Created by Dave Gumba on 2018-05-09.
//  Copyright © 2018 Dave's Organization. All rights reserved.
//

import XCTest
@testable import ShortStories

class StoryTests: XCTestCase {
    
    var story1: Story?
    
    override func setUp() {
        super.setUp()
        
        story1 = Story(title: "Apology", content: Story1.content)
    }
    
    func testStoryTitle() {
        let expectedTitle = "Apology"
        XCTAssertEqual(story1?.title, expectedTitle, "Story titles do not match")
    }
    
    func testStoryWordCount() {
        let expectedWordCount = 11470
        XCTAssertEqual(story1?.wordCount, expectedWordCount, "Word count not expected: \(expectedWordCount)")
    }
    
    func testStoryCharacterCount() {
        let expectedCharacterCount = 59407
        XCTAssertEqual(story1?.characterCount, expectedCharacterCount, "Character count not expected: \(expectedCharacterCount)")
    }
    
    func testEstimatedReadingTime() {
        let estimatedReadingTime = 43
        XCTAssertEqual(story1?.estimatedReadingTime, estimatedReadingTime, "Estimated reading time not expected: \(estimatedReadingTime)")
    }
    
    override func tearDown() {
        super.tearDown()
        story1 = nil
    }
    
}
