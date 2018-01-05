//
//  LevelData.swift
//  FlappyBirds
//
//  Created by Macbook on 05/01/2018.
//  Copyright © 2018 Lodge Farm Apps. All rights reserved.
//

import Foundation

struct LevelData {
	let birds: [String]
	
	init?(level: Int) {
		guard let levelDictionary = Levels.levelsDictionary["Level_\(level)"] as? [String:Any] else {
			return nil
		}
		guard let birds = levelDictionary["Birds"] as? [String] else {
			return nil
		}
		self.birds = birds
	}
}
