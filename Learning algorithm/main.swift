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

callWeekCompetition(189)


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


let queue = Queue.init(5)

let x = ["MyCircularQueue","enQueue","enQueue","enQueue","enQueue","Rear","isFull","deQueue","enQueue","Rear"]
for i in x {
    queue.enQueue(i)
}

let en = queue.enQueue(1)
let de = queue.deQueue()
let en1 = queue.enQueue(1)
let h1 = queue.Front()
let t1 = queue.Rear()
let en2 = queue.enQueue(2)
let h2 = queue.Front()
let t2 = queue.Rear()
let en3 = queue.enQueue(3)
let h3 = queue.Front()
let t3 = queue.Rear()
let en4 = queue.enQueue(4)
let h4 = queue.Front()
let t4 = queue.Rear()
let en5 = queue.enQueue(5)
let h5 = queue.Front()
let t5 = queue.Rear()
let en6 = queue.enQueue(6)
let h6 = queue.Front()
let t6 = queue.Rear()


