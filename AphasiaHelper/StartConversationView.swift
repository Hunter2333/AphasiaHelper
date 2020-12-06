//
//  StartConversationView.swift
//  AphasiaHelper
//
//  Created by sunlight on 2020/8/29.
//  Copyright © 2020 CDI. All rights reserved.
//

import SwiftUI

struct StartConversationView: View {
    
    @ObservedObject var viewRouter: ViewRouter
    
    @State var showImagePicker: Bool = false
    @State var sourceType: UIImagePickerController.SourceType = .camera
    @State var image: UIImage?
    
    @State var classificationLabel: String = "NULL"
    
    var body: some View {
        VStack() {
            if (self.image != nil) {
                RecognitionResultView(viewRouter: viewRouter, image: self.$image, classificationLabel: self.$classificationLabel)
            } else {
                ZStack() {
                    VStack(spacing: 20) {
                        
                        StartConversationText()
                        Button(action: {
                            self.showImagePicker = true
                        }) {
                            PhotoRecognitionButtonContent()
                        }.padding()
                        Button(action: {self.viewRouter.currentPage = "DrawingBoard"}) {
                            DrawingBoardButtonContent()
                        }.padding()
                        Button(action: {self.viewRouter.currentPage = "Home"}) {
                            BackToHomeButtonContent()
                        }.padding()
                    }
                    if (self.showImagePicker) {
                        ImagePicker(image: self.$image, isShown: self.$showImagePicker,  sourceType: self.sourceType, classificationLabel: self.$classificationLabel)
                    }
                }
            }
        }
    }
}

struct StartConversationView_Previews: PreviewProvider {
    static var previews: some View {
        StartConversationView(viewRouter: ViewRouter())
    }
}













struct StartConversationText: View {
    var body: some View {
        Text("发起对话")
        .font(.largeTitle).fontWeight(.heavy).padding()
    }
}

struct PhotoRecognitionButtonContent: View {
    var body: some View {
        Text("拍照识别")
        .font(.title)
        .fontWeight(.bold)
        .frame(width: 300.0, height: 100.0)
        .foregroundColor(.white)
        .background(Color.blue)
        .cornerRadius(20.0)
    }
}

struct DrawingBoardButtonContent: View {
    var body: some View {
        Text("画板")
        .font(.title)
        .fontWeight(.bold)
        .frame(width: 300.0, height: 100.0)
        .foregroundColor(.white)
        .background(Color.blue)
        .cornerRadius(20.0)
    }
}

struct BackToHomeButtonContent: View {
    var body: some View {
        Text("HOME")
        .font(.title)
        .fontWeight(.bold)
        .frame(width: 120.0, height: 120.0)
        .foregroundColor(.white)
        .background(Color.orange)
        .cornerRadius(60.0)
    }
}
