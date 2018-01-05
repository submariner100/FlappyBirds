//
//  SKNode+Extensions.swift
//  FlappyBirds
//
//  Created by Macbook on 18/12/2017.
//  Copyright © 2017 Lodge Farm Apps. All rights reserved.
//

import SpriteKit

extension SKNode {
	
	func aspectScale(to size: CGSize, width: Bool, multiplier: CGFloat) {
		let scale = width ? (size.width * multiplier) / self.frame.size.width : (size.height * multiplier) / self.frame.size.height
		self.setScale(scale)
		
	}
	
	
}
