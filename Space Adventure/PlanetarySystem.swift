//
//  PlanetarySystem.swift
//  Space Adventure
//
//  Created by Philippos Slicher on 10/12/15.
//  Copyright © 2015 Philippos Slicher. All rights reserved.
//

import Foundation

class PlanetarySystem {
    
    
    let name: String
    var planets: [Planet]
    var randomPlanet: Planet? {
        if planets.isEmpty {
            return nil
        } else {
            let index = Int(arc4random_uniform(UInt32(planets.count)))
            return planets[index]
        }
    }
    
    init(name: String, planets: [Planet]) {
        self.name = name
        self.planets = planets
    }
    
}