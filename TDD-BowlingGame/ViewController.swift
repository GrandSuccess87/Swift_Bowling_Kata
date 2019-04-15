//
//  ViewController.swift
//  TDD-BowlingGame
//
//  Created by Quintessa Anderson on 4/15/19.
//  Copyright © 2019 Quintessa Anderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

class Game {
    
    private var totalScore = 0
    
    func roll(pins: Int) {
        totalScore += pins
    }
    
    func score() -> Int {
        return totalScore
    }
}
