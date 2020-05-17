//
//  main.swift
//  Learning algorithm
//
//  Created by banglin on 2020/5/17.
//  Copyright © 2020 banglin. All rights reserved.
//

import Foundation

public let WelcomeBanner:((Int) -> String) = {
    (number: Int) -> String in
    return "Welcome to week \(number)!"
}

print("Hello, Learning-algorithm!\n\n\n")


func callWeekCompetition(_ number: Int) -> () {
    let classString = String(format: "Learning_algorithm.Week_\(number)")
    let cls = NSClassFromString(classString)! as! NSObject.Type
    let _ = cls.init()
}

callWeekCompetition(188)

