//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Tyler Radke on 9/26/22.
//

import UIKit

class ViewController: UIViewController {

    var xTurn = true
    @IBOutlet var theButtonsObject: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear() {
        super.viewWillAppear(animated)
        
        for button in theButtonsObject {
            button.setTitle("", for: UIControl.State.Normal)
        }
        
    }
    
    @IBAction func theButtonsPressed(_ sender: UIButton) {
        
        
        
    }
    
}

