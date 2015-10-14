//
//  PlanetarySystem.swift
//  Space Adventure
//
//  Created by Philippos Slicher on 10/12/15.
//  Copyright © 2015 Philippos Slicher. All rights reserved.
//

import Foundation

class PlanetarySystem {
    
    //let planets: [Planet]
    
    let name: String
    var planets: [Planet]
    
    init(name: String, planets: [Planet]) {
        self.name = name
        self.planets = planets
    }
    
    
}