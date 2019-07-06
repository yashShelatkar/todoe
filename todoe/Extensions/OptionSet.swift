//
//  OptionSet.swift
//  todoe
//
//  Created by yash Shelatkar on 7/7/19.
//  Copyright © 2019 yash Shelatkar. All rights reserved.
//

import Foundation

struct ButtonOptions: OptionSet {
    let rawValue: Int
    
    static let roundedText = ButtonOptions(rawValue: 1 << 0)
    static let squareIcon  = ButtonOptions(rawValue: 1 << 1)
//    static let priority   = ButtonOptions(rawValue: 1 << 2)
//    static let standard   = ButtonOptions(rawValue: 1 << 3)
    
}
