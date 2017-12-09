//
//  GameScene.swift
//  FlappyBirds
//
//  Created by Macbook on 08/12/2017.
//  Copyright © 2017 Lodge Farm Apps. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
	
	let gameCamera = GameCamera()
	var panRecognizer = UIPanGestureRecognizer()
	var mapNode = SKTileMapNode()
	
    override func didMove(to view: SKView) {
	setupLevel()
	setupGestureRecognizers()
	}
	
	func setupGestureRecognizers() {
		guard let view = view else { return }
		panRecognizer = UIPanGestureRecognizer(target: self, action: #selector(pan))
		
		view.addGestureRecognizer(panRecognizer)
	}
	
	func setupLevel() {
		if let mapNode = childNode(withName: "Tile Map Node") as? SKTileMapNode {
			self.mapNode = mapNode
		}
		addCamera()
			
		
	}
	
	func addCamera() {
		guard let view = view else { return }
		addChild(gameCamera)
		gameCamera.position = CGPoint(x: view.bounds.size.width/2, y: view.bounds.size.height/2)
		camera = gameCamera
		gameCamera.setConstraints(with: self, and: mapNode.frame, to: nil)
	}

}

extension GameScene {
	
	@objc func pan(sender: UIPanGestureRecognizer) {
		guard let view = view else { return }
		let translation = sender.translation(in: view)
		gameCamera.position = CGPoint(x: gameCamera.position.x - translation.x, y: gameCamera.position.y + translation.y)
		sender.setTranslation(CGPoint.zero, in: view)
		
	}
	
	
	
}
