//
//  Credits.swift
//  Space Adventure
//
//  Created by Philippos Slicher on 10/6/15.
//  Copyright © 2015 Philippos Slicher. All rights reserved.
//

import Foundation


class Credits {
    func start(){
        print("Credits:")
        print("")
        sleep(1)
        print("Space Adventure is a game developed by Philippos Slicher in App Design class. It is a super simple game which is way too simple, but thats the purpose...")
        sleep(1)
        sleep(3)
        print("")

        
        //Action Selector
        var option = "" //empty var init
        while !(option == "1" || option == "2" || option == "3") {
            print("Return to Menu?: 1-2")
            sleep(1)
            print("")
            print("1: Back to Menu")
            print("2: Exit")
            print("")
            option = getln()
            if option == "1" {
                print("-----")
                menu.start()
                exit(1)
            } ;if option == "2" {
                exit(2)
            } else {
                print("Sorry, I didn't get that")
                print("")
                sleep(1)
            }
        }
        
        
        
    }
    
}