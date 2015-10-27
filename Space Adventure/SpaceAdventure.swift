//
//  SpaceAdventure.swift
//  Space Adventure
//
//  Created by Philippos Slicher on 10/4/15.
//  Copyright © 2015 Philippos Slicher. All rights reserved.
//

import Foundation

class SpaceAdventure {
    
    let planetarySystem: PlanetarySystem
    init(planetarySystem: PlanetarySystem) {
        self.planetarySystem = planetarySystem
    }
    
    func start() {
    displayIntroduction()
    greetAdventurer()
        sleep(2)
        print("Let's go on an adventure, to save AMD")
        sleep(2)
    determineDestination()
    }
    
    //let diameterOfEarth = 24859.82 // In miles, from pole to pole.
    
        

        private func displayIntroduction() {//Start displayIntroduction

    print("Welcome to the \(planetarySystem.name)!")
    sleep(2)
    print("There are \(planetarySystem.planets.count) planet(s) to explore.")
    sleep(2)
    print("You are currently on a spaceship, travelling at 1337 km/h")
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
    print("Wait, nevermind...GO AWAY. Linus is waiting.")
    sleep(3)
    exit(0)
    }

    if name == "" {
    print("Please enter a valid name")
    //TODO: make repeatable
    exit(0)
    }
    
            
            
            ;if name == "upupdowndownleftrighba" {
                print("")
                print("")
                print("Congratulations, you've found an Easter egg.")
                sleep(2)
                print("Plot twist..")
                sleep(1)
                print("There is none.")
                sleep(1)
                exit(1337)
            }; if name == "harule" {
                print("Congratulations, you've found an Easter egg.")
                sleep(2)
                print("Plot twist...")
                sleep(1)
                print("There is one")
                sleep(1)
                print("Or is there?")
                sleep(1)
                print("naaah. jk")
                sleep(1)
                print("∆∆∆∆∆∆∆∆∆")
                exit(1337)
            }
            
    
    print("Nice to meet you, \(name). My name is AMD, mortal enemy of Intel")
        }//End greetAdventurer
        

            


        private func determineDestination() {
    //new decision area test
    var randPlanet = "" //empty var init
    while !(randPlanet == "Y" || randPlanet == "N") {
    randPlanet = responseToPrompt("Would you like me to pick a planet for you? Y or N:")
    if randPlanet == "Y" {

        if let planet = planetarySystem.randomPlanet {
            visit(planet.name)
        } else {
            print("Uhm.....")
            sleep(2)
            print("Someone blew up the solar system.")
        }
        
    }else if randPlanet == "N" {
    let planetName = responseToPrompt("Ok, type the desired planet (All planets in our solar system + Planet Jiho)")
        visit(planetName)
    } else {
    print("Sorry, I didn't get that")
        print("")
        sleep(1)
    }
        
        
    }
    }



            
            private func visit(planetName: String) {
                print("Travelling to \(planetName)...")
                sleep(1)
                for planet in planetarySystem.planets {
                    if planetName == planet.name {
                        sleep(1)
                        print("Arrived at \(planet.name).")
                        sleep(2)
                        print("")
                        print(planet.description)
                        print("")
                        sleep(2)
                        loop()
                    }
                }
                
            }

    private func loop() {//start
        print("Well that was fun....you wan't to go again")
    }//end
            
}


            


    
    
    

