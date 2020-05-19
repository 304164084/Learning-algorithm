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
        arrangeWords("Leetcode is cool")
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
        let array = text.lowercased().split(separator: " ")
        
        print(array)
        
        // 快排 最佳情况O(nlogn)
        var resultArray = quickSort(array)
        resultArray[0] = Substring(String(resultArray[0]).capitalized)
        let result = resultArray.joined(separator: " ")
        
        print(result)
        return result
    }
    
    func quickSort(_ array: [Substring]) -> [Substring] {
        guard array.count > 1 else {
            return array
        }
        
        let pivot = array[(array.count - 1) / 2].count
        var low = [Substring]()
        var high = [Substring]()
        var equal = [Substring]()
        
        for idx in 0 ..< array.count {
            let word = array[idx]
            
            if word.count < pivot {
                low.append(word)
            }
            else if word.count > pivot {
                high.append(word)
            }
            else {
                equal.append(word)
            }
        }
        
        return quickSort(low) + equal + quickSort(high)
    }
    
}
