//
//  GameScene.swift
//  TrumpJump
//
//  Created by Erica Marie Kok on 2/6/16.
//  Copyright (c) 2016 Erica Marie Kok. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        backgroundColor = SKColor.whiteColor()
    }
}