//
//  GameScene.swift
//  Test Game
//
//  Created by Tyler Radke on 12/21/22.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let boxNode = SKSpriteNode(color: UIColor.blue, size: CGSize(width: 100, height: 100))
    
    override func didMove(to view: SKView) {
        
        boxNode.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(boxNode)
       
    }
    
    
 
}
