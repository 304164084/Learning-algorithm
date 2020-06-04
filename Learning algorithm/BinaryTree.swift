//
//  BinaryTree.swift
//  Learning algorithm
//
//  Created by banglin on 2020/5/31.
//  Copyright © 2020 banglin. All rights reserved.
//

import Foundation
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        return isSameTree(root, root)
    }

    func isSameTree(_ t1: TreeNode?, _ t2: TreeNode?) -> Bool {
        if t1 == nil && t2 == nil {
            return true
        }
        if t1 == nil || t2 == nil {
            return false
        }

        return (t1?.val == t2?.val) && isSameTree(t1?.left, t2?.right) && isSameTree(t1?.right, t2?.left)
    }
}


