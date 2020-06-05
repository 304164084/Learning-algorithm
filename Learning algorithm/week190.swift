//
//  week190.swift
//  Learning algorithm
//
//  Created by suibanglin on 2020/6/4.
//  Copyright © 2020 banglin. All rights reserved.
//

import Foundation

class Week_190: BaseWeek {
    override init() {
        super.init()
        let maxVowel = maxVowels("zpuerktejfp", 3)
        print("最大元音字母: \(maxVowel)");
    }
    /**
     1455. 检查单词是否为句中其他单词的前缀
     遍历
     */
    func isPrefixOfWord(_ sentence: String, _ searchWord: String) -> Int {
        var result = -1
        let words = sentence.split(separator: " ")
        
        for idx in 0 ..< words.count {
            let word = words[idx]
            if word.count < searchWord.count {
                continue
            }
            
            let subWord = word.prefix(searchWord.count)
            if subWord.elementsEqual(searchWord) {
                result = idx + 1
                break
            }
        }
        
        return result
    }
    
    /**
     1456. 定长子串中元音的最大数目
     滑动窗口
     */
    func maxVowels(_ s: String, _ k: Int) -> Int {
        var result = 0
        let vowels: [Character] = ["a", "e", "i", "o", "u"]
        let sArray = [Character](s)
        
        var left = 0, right = 0, valid = 0
        while right < sArray.count {
            let c = sArray[right]
            right += 1
            
            if vowels.contains(c) {
                valid += 1
            }
            
            while right - left >= k {
                let d = sArray[left]
                left += 1
                if valid == k {
                    return k
                }
                
                result = max(result, valid)
                if vowels.contains(d) {
                    valid -= 1
                }
            }
        }
        
        return result
    }
    
    /**
     1457. 二叉树中的伪回文路径
     DFS
     */
    private var pseudoPalindromicPathsCount = 0
    func pseudoPalindromicPaths (_ root: TreeNode?) -> Int {
        guard let _ = root else {
            return 0
        }
        
        helper(root, 0)
        return pseudoPalindromicPathsCount
    }
    
    func helper(_ node: TreeNode?, _ tmp: Int) {
        var tmp = tmp
        tmp = tmp ^ (1 << node!.val)
        if node?.left == nil && node?.right == nil {
            if tmp == 0 || tmp & (tmp - 1) == 0 {
                pseudoPalindromicPathsCount += 1
            }
        }
        
        if node?.left != nil {
            helper(node?.left, tmp)
        }
        
        if node?.right != nil {
            helper(node?.right, tmp)
        }
    
    }
}
