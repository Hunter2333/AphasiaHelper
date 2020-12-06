//
//  ColorPicker.swift
//  AphasiaHelper
//
//  Created by sunlight on 2020/8/16.
//  Copyright © 2020 CDI. All rights reserved.
//

import SwiftUI

struct ColorPicker: View {
    @Binding var color: Color
    @Binding var colorPickerShown: Bool
    
    private let colors = ColorsProvider.supportedColors()
    
    var body: some View {
        List(colors) { colorInfo in
            ColorEntry(colorInfo: colorInfo).onTapGesture {
                self.color = colorInfo.color
                self.colorPickerShown = false
            }
        }
    }
}
