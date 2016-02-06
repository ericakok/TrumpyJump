//
//  GameScene.swift
//  TrumpyJump
//
//  Created by Jesus Argel on 2/6/16.
//  Copyright (c) 2016 Jesus Argel. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        //Physics
        self.physicsWorld.gravity = CGVector(dx: 0.0, dy: -0.5)
        
        //Wig
        
        
        //Background
        backgroundColor = UIColor(colorLiteralRed: 159.0/255.0, green: 201.0/255.0, blue: 241.0/255.0, alpha: 1.0)
        let ground = SKSpriteNode(color:UIColor.brownColor(), size: CGSize(width: view.frame.size.width, height: 20))
        ground.position = CGPoint(x: view.frame.size.width/2, y: view.frame.size.height * 0.0)
        addChild(ground)
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
