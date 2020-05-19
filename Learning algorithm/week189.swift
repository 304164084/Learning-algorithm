//
//  week189.swift
//  Learning algorithm
//
//  Created by suibanglin on 2020/5/19.
//  Copyright © 2020 banglin. All rights reserved.
//

import Foundation

class Week_189: BaseWeek {
    override init() {
        super.init()
        arrangeWords("To be or not to be")
    }
    // 1450
    func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
        var result = 0
        for i in 0 ..< startTime.count {
            if startTime[i] <= queryTime && endTime[i] >= queryTime {
                result = result + 1
            }
        }
        
        return result
    }
    
    // 1451
    func arrangeWords(_ text: String) -> String {
        let array = text.split(separator: " ")
        print(array)
        
        return String("1")
    }
    
}
