//
//  week188.swift
//  Learning algorithm
//
//  Created by banglin on 2020/5/17.
//  Copyright © 2020 banglin. All rights reserved.
//

import Foundation

class Week_188: BaseWeek {
    public func topics() {
        
        // 1442 中等
        print("1442. 中等 \(countTriplets([1, 2, 3, 4, 5, 6]))")
    }
    
    
    /// 1442. 形成两个异或相等数组的三元组数目
    /// - Parameter arr: 整数数组
    /// - Returns: 返回满足要求的三元组数目
    func countTriplets(_ arr: [Int]) -> Int {
        /*
         i, j, k
         0 <= i < j <= k < arr.count
         i的范围 = 0 <= i < (arr.count - 1)
         */
        var result = 0
        for i in 0 ..< (arr.count - 1) {
            var sum = 0
            for k in i ..< arr.count {
                sum = sum ^ arr[k]
                if sum == 0 {
                    result = result + (k - i)
                }
            }
        }
        return result
    }
}

