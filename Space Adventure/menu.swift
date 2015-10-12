//
//  menu.swift
//  Space Adventure
//
//  Created by Philippos Slicher on 10/12/15.
//  Copyright © 2015 Philippos Slicher. All rights reserved.
//

import Foundation

import Foundation
import AVFoundation

class Menu {
    func start() {
        
        //init audio
        
        
        //TODO: everything
    

        //end audio
        
        
        
        print("Main Menu:")
        print("")
        
        //Action Selector
        var option = "" //empty var init
        while !(option == "1" || option == "2" || option == "3") {
            print("What would you like to do?: 1-3")
            sleep(1)
            print("")
            print("1: Play Game")
            print("2: Credits")
            print("3: Exit")
            print("")
            option = getln()
            if option == "1" {
                print("")
                adventure.start()
                exit(1)
            } ;if option == "2" {
                print("")
                credits.start()
                exit(2)
            }; if option == "3" {
                exit(3)
            } else {
                print("Sorry, I didn't get that")
                print("")
                sleep(1)
            }
        }
    }
}