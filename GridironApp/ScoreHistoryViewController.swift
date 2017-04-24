//
//  ScoreHistoryViewController.swift
//  GridironApp
//
//  Created by Crystal Jade Allen-Washington on 4/24/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import UIKit

typealias JetsScoreHistory = (jetsFieldGoal: Int, jetsTouchdown: Int, jetsExtraPoint: Int, jetsTwoPointConversion: Int, jetsSafety: Int)

typealias GiantsScoreHistory = (giantsFieldGoal: Int, giantsTouchdown: Int, giantsExtraPoint: Int, giantsTwoPointConversion: Int, giantsSafety: Int)

class ScoreHistoryViewController: UIViewController {
    
    var giantsScoreHistory: GiantsScoreHistory = (0, 0, 0, 0, 0) {
        didSet {
            updateDisplay()
        }
    }
    var jetsScoreHistory: JetsScoreHistory = (0, 0, 0, 0, 0) {
        didSet {
            updateDisplay()
        }
    }
    
    func updateDisplay() {
        
        jetsFieldGoalButton.setTitle(jetsScoreHistory.jetsFieldGoal.description, for: .normal)
        jetsTouchdownButton.setTitle(jetsScoreHistory.jetsTouchdown.description, for: .normal)
        jetsExtraPointButton.setTitle(jetsScoreHistory.jetsExtraPoint.description, for: .normal)
        jetsTwoPointConversionButton.setTitle(jetsScoreHistory.jetsTwoPointConversion.description, for: .normal)
        jetsSafetyButton.setTitle(jetsScoreHistory.jetsSafety.description, for: .normal)
        giantsFieldGoalButton.setTitle(giantsScoreHistory.giantsFieldGoal.description, for: .normal)
        giantsTouchdownButton.setTitle(giantsScoreHistory.giantsTouchdown.description, for: .normal)
        giantsExtraPointButton.setTitle(giantsScoreHistory.giantsExtraPoint.description, for: .normal)
        giantsTwoPointConversionButton.setTitle(giantsScoreHistory.giantsTwoPointConversion.description, for: .normal)
        giantsSafetyButton.setTitle(giantsScoreHistory.giantsSafety.description, for: .normal)
    }

    
    @IBOutlet var jetsFieldGoalButton: UIButton!
    @IBOutlet var giantsFieldGoalButton: UIButton!
    @IBOutlet var jetsTouchdownButton: UIButton!
    @IBOutlet var giantsTouchdownButton: UIButton!
    @IBOutlet var jetsExtraPointButton: UIButton!
    @IBOutlet var giantsExtraPointButton: UIButton!
    @IBOutlet var jetsTwoPointConversionButton: UIButton!
    @IBOutlet var giantsTwoPointConversionButton: UIButton!
    @IBOutlet var jetsSafetyButton: UIButton!
    @IBOutlet var giantsSafetyButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updateDisplay()
    }
    

}
