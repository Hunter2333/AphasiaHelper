//
//  ActivityWordView.swift
//  AphasiaHelper
//
//  Created by Xiaoqing Sun on 2020/12/6.
//  Copyright © 2020 CDI. All rights reserved.
//

import SwiftUI
import AVFoundation

struct ActivityWordView: View {
    
    @ObservedObject var viewRouter: ViewRouter
    
    private func readWord(word: String) {
        var speechSynthesizer = AVSpeechSynthesizer()
        var speechUtterance: AVSpeechUtterance = AVSpeechUtterance(string: word)
        speechUtterance.rate = AVSpeechUtteranceMaximumSpeechRate / 4.0
        speechUtterance.voice = AVSpeechSynthesisVoice(language: "zh-CN")
        speechSynthesizer.speak(speechUtterance)
    }
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text("行为词")
                .font(.largeTitle).padding(.top, 40)
            Spacer()
            HStack {
                Button(action: {
                    self.readWord(word: "回家")
                }) {
                    Text("回家")
                        .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 150.0, height: 150.0)
                    .foregroundColor(.white)
                        .background(Color.blue)
                    .cornerRadius(20.0)
                }.padding()
                Button(action: {
                    self.readWord(word: "洗澡")
                }) {
                    Text("洗澡")
                        .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 150.0, height: 150.0)
                    .foregroundColor(.white)
                        .background(Color.blue)
                    .cornerRadius(20.0)
                }.padding()
                Button(action: {
                    self.readWord(word: "画画")
                }) {
                    Text("画画")
                        .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 150.0, height: 150.0)
                    .foregroundColor(.white)
                        .background(Color.blue)
                    .cornerRadius(20.0)
                }.padding()
                Button(action: {
                    self.readWord(word: "睡觉")
                }) {
                    Text("睡觉")
                        .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 150.0, height: 150.0)
                    .foregroundColor(.white)
                        .background(Color.blue)
                    .cornerRadius(20.0)
                }.padding()
            }
            Spacer()
            Button(action: {
                self.viewRouter.currentPage = "MaterialLibrary"
            }) {
                Text("返回")
                    .font(.title)
                .fontWeight(.bold)
                .frame(width: 150.0, height: 64.0)
                .foregroundColor(.white)
                    .background(Color.orange)
                .cornerRadius(20.0)
            }.padding(.bottom, 40)
        }
    }
}

struct ActivityWordView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityWordView(viewRouter: ViewRouter())
    }
}
