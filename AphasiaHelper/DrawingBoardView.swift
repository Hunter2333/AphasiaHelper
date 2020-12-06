//
//  DrawingBoardView.swift
//  AphasiaHelper
//
//  Created by sunlight on 2020/8/12.
//  Copyright © 2020 CDI. All rights reserved.
//

import SwiftUI

struct DrawingBoardView: View {
    
    @ObservedObject var viewRouter: ViewRouter
    
    @State private var currentDrawing: Drawing = Drawing()
    @State private var drawings: [Drawing] = [Drawing]()
    @State private var color: Color = Color.black
    @State private var lineWidth: CGFloat = 3.0
    
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Button(action: {
                    self.viewRouter.currentPage = "Home"
                }) {
                    Text("< HOME")
                        .font(.headline)
                    .fontWeight(.bold)
                    .frame(width: 150.0, height: 64.0)
                    .foregroundColor(.white)
                        .background(Color.orange)
                    .cornerRadius(20.0)
                }.padding(.leading, 30)
                Spacer()
                Text("画板")
                .font(.largeTitle)
                Spacer()
                Button(action: {
                    //TODO 保存&识别手绘API
                    self.viewRouter.currentPage = "DrawingRecognitionResult"
                }) {
                    Text("绘制完成")
                        .font(.headline)
                    .fontWeight(.bold)
                    .frame(width: 150.0, height: 64.0)
                    .foregroundColor(.white)
                        .background(Color.blue)
                    .cornerRadius(20.0)
                }.padding(.trailing, 30)
            }
            DrawingPad(currentDrawing: $currentDrawing,
                       drawings: $drawings,
                       color: $color,
                       lineWidth: $lineWidth)
            DrawingControls(color: $color, drawings: $drawings, lineWidth: $lineWidth)
        }
    }
}

struct DrawingBoardView_Previews: PreviewProvider {
    static var previews: some View {
        DrawingBoardView(viewRouter: ViewRouter())
    }
}
