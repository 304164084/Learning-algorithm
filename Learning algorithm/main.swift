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


// MARK: 快速排序O(nlogn)

func quickSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else {
        return array
    }
    
   // var low = [Int]()
   // var high = [Int]()
   
   /*    
    for item in array {
        if item > array[0] {
            high.append(item)
        } else {
            low.append(item)
        }
    }
   */
    // 随机取递归条件，取的点最好可以均分数组
    let pivot = array[0]
    let low = array.filter{$0 < pivot}
    let equal = array.filter{$0 == pivot}
    let high = array.filter{$0 > pivot}
    let result = quickSort(low) + equal + quickSort(high)
    
    print(result)
    return result
}

let list = [ 10, 0, 3, 9, 2, 14, 8, 27, 1, 5, 8, -1, 26 ]
quickSort(list)

