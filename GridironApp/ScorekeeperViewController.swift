//
//  ScorekeeperViewController.swift
//  GridironApp
//
//  Created by Crystal Jade Allen-Washington on 4/24/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import UIKit

typealias Game = (jetsTeamScore: Int, giantsTeamScore: Int)

class ScorekeeperViewController: UIViewController {
    
    var game: Game = (0, 0) {
        didSet {
            updateDisplay()
        }
    }
    

    @IBOutlet var jetsTeamButton: UIButton!
    @IBOutlet var giantsTeamButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updateDisplay()
    }
    
    func updateDisplay() {
        jetsTeamButton.setTitle(game.jetsTeamScore.description, for: .normal)
        giantsTeamButton.setTitle(game.giantsTeamScore.description, for: .normal)
    }
    
    var giantsScoreHistory: GiantsScoreHistory = (0, 0, 0, 0, 0)
    var jetsScoreHistory: JetsScoreHistory = (0, 0, 0, 0, 0)
    
    @IBAction func incrementNYGScore(_ sender: UIButton) {
        print("The New York Giants scored!")
        
    }
    
    @IBAction func incrementJetsScore(_ sender: UIButton) {
        print("The New York Jets scored!")
    }
    
    @IBAction func addFieldGoalToNYGScore(_ sender: UIButton) {
        print("Score! It's a Field Goal for the Giants.")
        game.giantsTeamScore += 1
        giantsScoreHistory.giantsFieldGoal += 1
    }
    
    @IBAction func addTouchDownToNYGScore(_ sender: UIButton) {
        print("Score! It's a Touchdown for the Giants.")
        game.giantsTeamScore += 6
        giantsScoreHistory.giantsTouchdown += 1
    }
    
    @IBAction func addExtraPointToNYGScore(_ sender: UIButton) {
        print("Score! It's an Extra Point for the Giants.")
        game.giantsTeamScore += 1
        giantsScoreHistory.giantsExtraPoint += 1
    }
    
    @IBAction func addTwoPointConversionToNYGScore(_ sender: UIButton) {
        print("Score! It's a Two-Point Conversion for the Giants.")
        game.giantsTeamScore += 2
        giantsScoreHistory.giantsTwoPointConversion += 1
    }
    
    @IBAction func addSafetyToNYGScore(_ sender: UIButton) {
        print("Score! It's a Safety for the Giants.")
        game.giantsTeamScore += 2
        giantsScoreHistory.giantsSafety += 1
    }
    
    @IBAction func addFieldGoalToJetsScore(_ sender: UIButton) {
        print("Score! It's a Field Goal for the Jets.")
        game.jetsTeamScore += 1
        jetsScoreHistory.jetsFieldGoal += 1
    }
    
    @IBAction func addTouchDownToJetsScore(_ sender: UIButton) {
        print("Score! It's a Touchdown for the Jets.")
        game.jetsTeamScore += 6
        jetsScoreHistory.jetsTouchdown += 1
    }
    
    @IBAction func addExtraPointToJetsScore(_ sender: UIButton) {
        print("Score! It's an Extra Point for the Jets.")
        game.jetsTeamScore += 1
        jetsScoreHistory.jetsExtraPoint += 1
    }
    
    @IBAction func addTwoPointConversionToJetsScore(_ sender: UIButton) {
        print("Score! It's a Two-Point Conversion for the Jets.")
        game.jetsTeamScore += 2
        jetsScoreHistory.jetsTwoPointConversion += 1
    }
    
    @IBAction func addSafetyToJetsScore(_ sender: UIButton) {
        print("Score! It's a Safety for the Jets.")
        game.jetsTeamScore += 2
        jetsScoreHistory.jetsSafety += 1
    }
    
    @IBAction func resetScore(_ sender: UIButton) {
        print("The score has been reset.")
        game.jetsTeamScore = 0
        game.giantsTeamScore = 0
        updateDisplay()
    }
    
    @IBAction func collectJetsScoreHistory(_ sender: UIButton) {
        print("Navigating to Score History. Please wait.")
      
    }
    
}
    

    
    
    
