//
//  Configuration.swift
//  FlappyBirds
//
//  Created by Macbook on 09/12/2017.
//  Copyright © 2017 Lodge Farm Apps. All rights reserved.
//

import CoreGraphics

extension CGPoint {
	static public func * (left: CGPoint, right: CGFloat) -> CGPoint {
		return CGPoint(x: left.x * right, y: left.y * right)
		
	}
	
}
