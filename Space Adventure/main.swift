//
//  main.swift
//  Space Adventure
//
//  Created by Philippos Slicher on 10/4/15.
//  Copyright © 2015 Philippos Slicher. All rights reserved.
//

import Foundation
import AVFoundation

let systemName = "Solar System"
let planetData = [
    "Mercury": "A hot planet, very close to the sun.",
    "Venus": "Clouds Clouds everywhere.",
    "Earth": "Hmmm...I think I know this one...wait, nope I don't.",
    "Mars": "Red, Red, Red, Red, oh look, more red.",
    "Jupiter": "A red spot.",
    "Saturn": "Rings Rings Everywhere.",
    "Uranus": "Rotates on it's side.",
    "Neptune": "Cold planet, far away, enough info.",
    "Planet Jiho": "This planet is home to the native Jiho's"
]
var planets = planetData.map( {name, description in Planet(name: name, description: description) })
let solarSystem = PlanetarySystem(name: systemName, planets: planets)

let credits = Credits()
let adventure = SpaceAdventure(planetarySystem: solarSystem)
let menu = Menu()
menu.start()


