//
//  BaseWeek.swift
//  Learning algorithm
//
//  Created by banglin on 2020/5/17.
//  Copyright © 2020 banglin. All rights reserved.
//

import Foundation

class BaseWeek: NSObject {
    override init() {
        super.init()
        let className = self.className
        let number = String(className.split(separator: "_").last!)
        print(WelcomeBanner(Int(number)!))
    }
}
