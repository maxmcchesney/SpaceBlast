//
//  GameScene.swift
//  SpaceBlast
//
//  Created by Michael McChesney on 2/9/15.
//  Copyright (c) 2015 Max McChesney. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var screenCenter: CGPoint!
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */

        screenCenter = view.center

        createMoon()
        
        let ship = SKSpriteNode(imageNamed: "ship")
        ship.position = screenCenter
        self.addChild(ship)
        
        // add gestures up and down to move ship
        
        // make sound "pfft"
        
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            
            // shoot ship ray gun

            // make sounds for gun "pew, pew"
            
            
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    
    
    func createMoon() {
        let moon = SKShapeNode(ellipseOfSize: CGSizeMake(500, 500))
        moon.position = CGPointMake(screenCenter.x, -500)
        moon.fillColor = SKColor(white: 0.9, alpha: 1.0)
        moon.strokeColor = SKColor.clearColor()
        
        moon.xScale = 3; moon.yScale = 3
        
        self.addChild(moon)
        
        let craters: [(CGPoint, CGFloat)] = [
            
            (CGPointMake(55,50), 50),    // tuple
            (CGPointMake(170,130), 20),
            (CGPointMake(144,150), 40),
            (CGPointMake(175,80), 30),
            (CGPointMake(-50,-120), 62),
            (CGPointMake(-100,-165), 45),
            (CGPointMake(-130,-120), 38),
            (CGPointMake(-180,-50), 10)
            
        ]
        
        for (p,s) in craters {
            
            let crater = SKShapeNode(ellipseOfSize: CGSizeMake(s, s))
            crater.fillColor = SKColor(white: 0.8, alpha: 1.0)
//            crater.strokeColor = SKColor.clearColor()
            crater.position = p
            
            moon.addChild(crater)
            
        }
        
        let moonRotation = SKAction.rotateByAngle(CGFloat(-M_PI), duration: 10)
        moon.runAction(SKAction.repeatActionForever(moonRotation))
    }
    
    
}
