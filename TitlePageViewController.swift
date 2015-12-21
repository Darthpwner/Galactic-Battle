//
//  TitlePageViewController.swift
//  Galactic Battle
//
//  Created by Matthew Allen Lin on 12/20/15.
//  Copyright © 2015 MAL Software. All rights reserved.
//

import Foundation
import UIKit

class TitlePageViewController: UIViewController {
    
    override func viewDidLoad() {
        let playStartSong = PlayStartSong.sharedInstance    //Move the constant assignment in here to prevent reinstantiating

        super.viewDidLoad()
        
        //Plays start song
        if playStartSong.songStarted == false {
            playStartSong.prepareAudios()
            playStartSong.song.play()   //Keeps getting called
            playStartSong.songStarted = true
        }
    }
}