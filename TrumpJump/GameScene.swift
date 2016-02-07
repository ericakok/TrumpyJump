//
//  GameScene.swift
//  TrumpJump
//
//  Created by Erica Marie Kok on 2/6/16.
//  Copyright (c) 2016 Erica Marie Kok. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    // Layered Nodes
    var backgroundNode: SKNode!
    var midgroundNode: SKNode!
    var foregroundNode: SKNode!
    var hudNode: SKNode!
    
    
    // To Accommodate iPhone 6
    var scaleFactor: CGFloat!

    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        backgroundColor = SKColor.whiteColor()
        scaleFactor = self.size.width / 320.0
        
        // Create the game nodes
        // Background
        backgroundNode = createBackgroundNode()
        addChild(backgroundNode)

        }
    

    
    func createBackgroundNode() -> SKNode {
        // 1
        // Create the node
        let backgroundNode = SKNode()
        let ySpacing = 64.0 * scaleFactor
        
        
        
        // 2
        // Go through images until the entire background is built
        for index in 0...19 {
            // 3
            
            let node = SKSpriteNode(imageNamed:String(format: "UberJumpGraphics/Backgrounds/Background%02d", index + 1))
            // 4
            node.setScale(scaleFactor)
            node.anchorPoint = CGPoint(x: 0.5, y: 0.0)
            node.position = CGPoint(x: self.size.width / 2, y: ySpacing * CGFloat(index))
            //5
            backgroundNode.addChild(node)
        }
        
        // 6
        // Return the completed background node
        return backgroundNode
    }
}