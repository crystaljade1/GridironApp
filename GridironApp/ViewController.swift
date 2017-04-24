//
//  ViewController.swift
//  GridironApp
//
//  Created by Crystal Jade Allen-Washington on 4/24/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Welcome!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startGame(_ sender: UIButton) {
        print("Game started!")
    }


}

