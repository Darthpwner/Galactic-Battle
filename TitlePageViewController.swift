//
//  TitlePageViewController.swift
//  Galactic Battle
//
//  Created by Matthew Allen Lin on 12/20/15.
//  Copyright © 2015 MAL Software. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit
import CoreMotion

class TitlePageViewController: UIViewController {
    let SENSITIVITY = 4;    //Constant for the sensitivity of the accelerometer
    
    override func viewDidLoad() {
        let playStartSong = PlayStartSong.sharedInstance    //Move the constant assignment in here to prevent reinstantiating

        super.viewDidLoad()
        
        //Set up crap
        if let scene = GameScene(fileNamed:"TitleScene") {
            // Configure the view.
            let skView = self.view as! SKView
            skView.showsFPS = true
            skView.showsNodeCount = true
            
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            skView.ignoresSiblingOrder = true
            
            /* Set the scale mode to scale to fit the window */
            scene.scaleMode = .AspectFill
            
            skView.presentScene(scene)
        }

        
        //Plays start song
        if playStartSong.songStarted == false {
            playStartSong.prepareAudios()
            playStartSong.song.play()   //Keeps getting called
            playStartSong.songStarted = true
        }
    }
    
    //Used to control movement in the game
    func update(time: NSTimeInterval) -> Void {
        
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

}