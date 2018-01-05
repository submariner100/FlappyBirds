//
//  AnimationHelper.swift
//  FlappyBirds
//
//  Created by Macbook on 05/01/2018.
//  Copyright © 2018 Lodge Farm Apps. All rights reserved.
//

import SpriteKit

class AnimationHelper {
	
	static func loadTextures(from atlas: SKTextureAtlas, withName name: String) -> [SKTexture] {
		var textures = [SKTexture]()
		
		for index in 0..<atlas.textureNames.count {
			let textureName = name + String(index+1)
			textures.append(atlas.textureNamed(textureName))
			
		}
		
		return textures
	}
	
}
