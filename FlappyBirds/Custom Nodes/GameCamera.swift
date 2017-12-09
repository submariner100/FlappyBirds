//
//  GameCamera.swift
//  FlappyBirds
//
//  Created by Macbook on 08/12/2017.
//  Copyright © 2017 Lodge Farm Apps. All rights reserved.
//

import SpriteKit

class GameCamera: SKCameraNode {

	func setConstraints(with scene: SKScene, and frame: CGRect, to node: SKNode?) {
		let scaledSize = CGSize(width: scene.size.width * xScale, height: scene.size.height * yScale)
		let boardContentRect = frame
		
		let xInset = min(scaledSize.width / 2, boardContentRect.width / 2)
		let yInset = min(scaledSize.height / 2, boardContentRect.height / 2)
		let insetContentRect = boardContentRect.insetBy(dx: xInset, dy: yInset)
		
		let xRange = SKRange(lowerLimit: insetContentRect.minX, upperLimit: insetContentRect.maxX)
		let yRange = SKRange(lowerLimit: insetContentRect.minY, upperLimit: insetContentRect.maxY)
		let levelEdgeConstraint = SKConstraint.positionX(xRange, y: yRange)
		
		constraints = [levelEdgeConstraint]
		
		
	}
}
