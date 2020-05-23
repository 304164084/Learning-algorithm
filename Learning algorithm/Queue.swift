//
//  Queue.swift
//  Learning algorithm
//
//  Created by suibanglin on 2020/5/23.
//  Copyright © 2020 banglin. All rights reserved.
//

import Foundation

class Queue {
    private lazy var containerArray = {
        return Array<Any>()
    }()
    private var capacity: Int
    private var head: Int
    private var tail: Int
    
    /** Initialize your data structure here. Set the size of the queue to be capacity. */
    init(_ capacity: Int) {
        self.capacity = capacity
        self.head = 0
        self.tail = 0
    }
    
    /** Insert an element into the circular queue. Return true if the operation is successful. */
    public func enQueue(_ value: Any) -> Bool {
        if containerArray.count <= (capacity - 1) {
            containerArray.append(value)
            tail = containerArray.count - 1
        } else {
            containerArray[head] = value
            tail = head
            head = head % (capacity - 1)
            head = head + 1
        }
        
        print("enQueue === elements: \(containerArray), head: \(head), tail: \(tail)")
        
        if CFEqual(value as CFTypeRef, containerArray[tail] as CFTypeRef)  {
            return true
        }
        
        return false
    }
    
    /** Delete an element from the circular queue. Return true if the operation is successful. */
    func deQueue() -> Bool {
        guard containerArray.count > 0 else {
            return false
        }
        
        guard containerArray.count != 1 else {
            head = 0
            tail = 0
            containerArray.removeFirst()
            
            print("deQueue === elements: \(containerArray), head: \(head), tail: \(tail)")
            
            return true
        }
        
        head = head % (capacity - 1)
        head = head + 1
        print("deQueue === elements: \(containerArray), head: \(head), tail: \(tail)")
        
        return true
    }
    
    /** Get the front item from the queue. */
    func Front() -> Any {
        return containerArray[head]
    }
    
    /** Get the last item from the queue. */
    func Rear() -> Any {
        return containerArray[tail]
    }
    
    /** Checks whether the circular queue is empty or not. */
    func isEmpty() -> Bool {
        return containerArray.count == 0
    }
    
    /** Checks whether the circular queue is full or not. */
    func isFull() -> Bool {
        return containerArray.count == capacity
    }
    
}
