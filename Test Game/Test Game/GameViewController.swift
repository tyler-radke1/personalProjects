//
//  GameViewController.swift
//  Test Game
//
//  Created by Tyler Radke on 12/21/22.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let view = self.view as! SKView
        let scene = GameScene(size: view.bounds.size)
        
        view.presentScene(scene)
        
            
            
            
        
        
    }

    
}
