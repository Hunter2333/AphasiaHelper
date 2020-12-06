//
//  DrawingControls.swift
//  AphasiaHelper
//
//  Created by sunlight on 2020/8/16.
//  Copyright © 2020 CDI. All rights reserved.
//

import SwiftUI

struct DrawingControls: View {
    @Binding var color: Color
    @Binding var drawings: [Drawing]
    @Binding var lineWidth: CGFloat
    
    @State private var colorPickerShown = false

    private let spacing: CGFloat = 40
    
    var body: some View {
        VStack {
            HStack(spacing: spacing) {
                Button("选择颜色") {
                    self.colorPickerShown = true
                }
                Button("撤销") {
                    if self.drawings.count > 0 {
                        self.drawings.removeLast()
                    }
                }
                Button("清空") {
                    self.drawings = [Drawing]()
                }
            }
            HStack {
                Text("笔触粗细")
                    .padding()
                Slider(value: $lineWidth, in: 1.0...15.0, step: 1.0)
                    .padding()
            }
        }
        .frame(height: 200)
        .sheet(isPresented: $colorPickerShown, onDismiss: {
            self.colorPickerShown = false
        }, content: { () -> ColorPicker in
            ColorPicker(color: self.$color, colorPickerShown: self.$colorPickerShown)
        })
    }
}
