//
//  GameScene.swift
//  WatchGame
//
//  Created by Lucas Ferraço on 29/09/16.
//  Copyright © 2016 Lucas Ferraço. All rights reserved.
//

import SpriteKit
import UIKit

class GameScene: SKScene {
    
    var label: SKLabelNode = SKLabelNode()
    var fundo: SKSpriteNode = SKSpriteNode(texture: SKTexture(imageNamed: "fundo"),
                                           color: UIColor.clear,
                                           size: UIScreen.main.bounds.size)
    var userScore = UserDefaults.standard
    var timer = Clock()
    
    override func sceneDidLoad() {
        
        //Configura o fundo da tela com as barras coloridas
        fundo.position = CGPoint(x: 0, y: 0)
        fundo.zPosition = -1
        fundo.size = CGSize(width: size.width, height: size.height)
        self.addChild(fundo)
        
        //Cria o score do jogador
        if userScore.value(forKey: "score") == nil {
            userScore.set(0, forKey: "score")
        }
        
        //Começa o timer
        timer.startWithDuration(2)
    }
    
}
