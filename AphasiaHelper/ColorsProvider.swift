//
//  ColorsProvider.swift
//  AphasiaHelper
//
//  Created by sunlight on 2020/8/16.
//  Copyright © 2020 CDI. All rights reserved.
//

import SwiftUI

struct ColorInfo: Identifiable {
    let id: Int
    let displayName: String
    let color: Color
}

class ColorsProvider {
    
    static func supportedColors() -> [ColorInfo] {
        return [ColorInfo(id: 1, displayName: "黑", color: Color.black),
               ColorInfo(id: 2, displayName: "蓝", color: Color.blue),
               ColorInfo(id: 3, displayName: "红", color: Color.red),
               ColorInfo(id: 4, displayName: "绿", color: Color.green),
               ColorInfo(id: 5, displayName: "黄", color: Color.yellow),
               ColorInfo(id: 6, displayName: "橙", color: Color.orange),
               ColorInfo(id: 7, displayName: "灰", color: Color.gray),
               ColorInfo(id: 8, displayName: "紫", color: Color.purple),
               ColorInfo(id: 9, displayName: "粉", color: Color.pink)]
    }
    
}
