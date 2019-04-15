//
//  TDD_BowlingGameTests.swift
//  TDD-BowlingGameTests
//
//  Created by Quintessa Anderson on 4/15/19.
//  Copyright © 2019 Quintessa Anderson. All rights reserved.
//

import XCTest
@testable import TDD_BowlingGame

class TDD_BowlingGameTests: XCTestCase {

    var game: Game!
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    super.setUp()
        game = Game()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        game = nil
        super.tearDown()
    }
    
    func testGutterGame() {
        gutterBall(knockedPins: 0, times: 20)
        XCTAssertEqual(game.score(), 0)
    }

    func testAllTwoPins() {
        pinsFell(knockedPins: 2, times: 20)
        XCTAssertEqual(game.score(), 40)
    }
    
    func testAllThreePins() {
        pinsFell(knockedPins: 3, times: 20)
        XCTAssertEqual(game.score(), 60)
    }
    
    func testAllFivePins() {
        pinsFell(knockedPins: 5, times: 20)
        XCTAssertEqual(game.score(), 100)
    }
    
    func testAllSevenPins() {
        pinsFell(knockedPins: 7, times: 20)
        XCTAssertEqual(game.score(), 140)
    }
    
    func testAllNinePins() {
        pinsFell(knockedPins: 9, times: 20)
        XCTAssertEqual(game.score(), 180)
    }
    
    private func gutterBall(knockedPins: Int, times: Int) {
        for _ in 1...times {
            game.roll(pins: knockedPins)
        }
    }
    private func pinsFell(knockedPins: Int, times: Int) {
        for _ in 1...times {
            game.roll(pins: knockedPins)
        }
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

