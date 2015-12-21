//
//  TitleScene.swift
//  Galactic Battle
//
//  Created by Matthew Allen Lin on 12/20/15.
//  Copyright © 2015 MAL Software. All rights reserved.
//

import Foundation
import SpriteKit

class TitleScene: SKScene {
    override func didMoveToView(view: SKView) {
        let sprite = SKSpriteNode(imageNamed:"Spaceship")
        
        sprite.xScale = 0.5
        sprite.yScale = 0.5
        sprite.position = CGPointMake( CGRectGetMidX( self.frame ), size.height / 2)
        
        let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
        
        sprite.runAction(SKAction.repeatActionForever(action))
        
        self.addChild(sprite)
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
