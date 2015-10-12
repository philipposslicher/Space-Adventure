//
//  SpaceAdventure.swift
//  Space Adventure
//
//  Created by Philippos Slicher on 10/4/15.
//  Copyright © 2015 Philippos Slicher. All rights reserved.
//

import Foundation

class SpaceAdventure {
    
    let planetarySystem = PlanetarySystem(name: "Solar System")
    
    func start() {
    
    displayIntroduction()
    greetAdventurer()
        sleep(2)
        print("Let's go on an adventure, to save AMD")
        sleep(2)
    determineDestination()
    }
    
    let diameterOfEarth = 24859.82 // In miles, from pole to pole.
    
        

        private func displayIntroduction() {//Start displayIntroduction
    let numberOfPlanets = 8
    print("Welcome to the \(planetarySystem.name)!")
    sleep(2)
    print("There are \(numberOfPlanets) planets to explore.")
    sleep(2)
    print("You are currently on Earth, which has a circumference of \(diameterOfEarth) miles.")
        }//End displayIntroduction
        
        private func responseToPrompt(prompt: String) -> String {
            print(prompt)
            return getln()
        }

        private func greetAdventurer() {//Start greetAdventurer
    sleep(3)



    let name = responseToPrompt("What is your name:")
    NSThread.sleepForTimeInterval(0.5)
    if name == "Intel" {
    print("GET OUT OF HERE INTEL, I TOLD YOU NO ONE LIKES YOU..")
    sleep(3)
    print("Huh, Okay, I'll let you play, just don't mess ANYTHING up")
    sleep(3)
    print("Wait, nevermind...GO AWAY")
    sleep(3)
    exit(0)
    }

    if name == "" {
    print("Please enter a valid name")
    //TODO: make repeatable
    exit(0)
    }
    print("Nice to meet you, \(name). My name is AMD, mortal enemy of Intel")
    
        }//End greetAdventurer
        

            


        private func determineDestination() {
    //new decision area test
    var randPlanet = "" //empty var init
    while !(randPlanet == "Y" || randPlanet == "N") {
    randPlanet = responseToPrompt("Would you like me to pick a planet for you? Y or N:")
    if randPlanet == "Y" {
    print("Ok, traveling to...")
    //TODO: Random planet select
    }; if randPlanet == "N" {
    print("Ok, type the planet you want to visit:")
    //TODO: Planet Select
    } else {
    print("Sorry, I didn't get that")
        print("")
        sleep(1)
    }
    }
        }

    
}
