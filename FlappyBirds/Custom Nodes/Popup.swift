//
//  Popup.swift
//  FlappyBirds
//
//  Created by Macbook on 10/01/2018.
//  Copyright © 2018 Lodge Farm Apps. All rights reserved.
//

import SpriteKit

struct PopupButtons {
	static let menu = 0
	static let next = 1
	static let retry = 2
	
}

class Popup: SKSpriteNode {
	
	let type: Int
	
	init(type: Int, size: CGSize) {
		self.type = type
		super.init(texture: nil, color: UIColor.clear, size: size)
		setupPopup()
	}
	
	func setupPopup() {
		let background = type == 0 ? SKSpriteNode(imageNamed: "popupcleared") : SKSpriteNode(imageNamed: "popupfailed")
		background.aspectScale(to: size, width: false, multiplier: 0.5)
		
		let menuButton = SpriteKitButton(defaultButtonImage: "popmenu", action: popupButtonsHandler, index: PopupButtons.menu)
		let nextButton = SpriteKitButton(defaultButtonImage: "popnext", action: popupButtonsHandler, index: PopupButtons.next)
		let retryButton = SpriteKitButton(defaultButtonImage: "popretry", action: popupButtonsHandler, index: PopupButtons.retry)
		nextButton.isUserInteractionEnabled = type == 0 ? true : false
		
		menuButton.aspectScale(to: background.size, width: true, multiplier: 0.2)
		nextButton.aspectScale(to: background.size, width: true, multiplier: 0.2)
		retryButton.aspectScale(to: background.size, width: true, multiplier: 0.2)
		
		let buttonWidthOffset = retryButton.size.width/2
		let buttonHeightOffset = retryButton.size.height/2
		let backgroundWidthOffset = background.size.width/2
		let backgroundHeightOffset = background.size.height/2
		
		menuButton.position = CGPoint(x: -backgroundWidthOffset + buttonWidthOffset, y: -buttonHeightOffset - buttonHeightOffset)
		nextButton.position = CGPoint(x: 0, y: -buttonHeightOffset - buttonHeightOffset)
		retryButton.position = CGPoint(x: backgroundWidthOffset - buttonWidthOffset, y: -buttonHeightOffset - buttonHeightOffset)
		background.position = CGPoint(x: 0, y: buttonHeightOffset)
		addChild(menuButton)
		addChild(nextButton)
		addChild(retryButton)
		addChild(background)
		
	}
	
	func popupButtonsHandler(index: Int) {
		
		
		
		
	}
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	
	

}