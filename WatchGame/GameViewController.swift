//
//  GameViewController.swift
//  WatchGame
//
//  Created by Lucas Ferraço on 29/09/16.
//  Copyright © 2016 Lucas Ferraço. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    var gameScene: GameScene!
    let userRecord = UserDefaults.standard
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = GameScene(fileNamed: "GameScene") {
                
                gameScene = scene
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .fill
                
                // Present the scene
                view.presentScene(scene)
            }
        }
        
        if userRecord.value(forKey: "score") == nil {
            userRecord.set(0, forKey: "score")
        }
        else {
            userRecord.set(0, forKey: "score")
        }
        
        
        scoreLabel.adjustsFontSizeToFitWidth = true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
