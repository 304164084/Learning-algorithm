//
//  week190.swift
//  Learning algorithm
//
//  Created by suibanglin on 2020/6/4.
//  Copyright © 2020 banglin. All rights reserved.
//

import Foundation

class Week_190: BaseWeek {
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
        let vowels = ["a", "e", "i", "o", "u"]
        
        
        return result
    }

}
