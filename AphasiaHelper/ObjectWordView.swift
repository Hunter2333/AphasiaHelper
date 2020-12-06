//
//  ObjectWordView.swift
//  AphasiaHelper
//
//  Created by Xiaoqing Sun on 2020/12/6.
//  Copyright © 2020 CDI. All rights reserved.
//

import SwiftUI
import AVFoundation

struct ObjectWordView: View {
    
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
            Text("宾语")
                .font(.largeTitle).padding(.top, 40)
            Spacer()
            HStack {
                Button(action: {
                    self.readWord(word: "咖啡")
                }) {
                    Text("咖啡")
                        .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 150.0, height: 150.0)
                    .foregroundColor(.white)
                        .background(Color.blue)
                    .cornerRadius(20.0)
                }.padding()
                Button(action: {
                    self.readWord(word: "苹果")
                }) {
                    Text("苹果")
                        .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 150.0, height: 150.0)
                    .foregroundColor(.white)
                        .background(Color.blue)
                    .cornerRadius(20.0)
                }.padding()
                Button(action: {
                    self.readWord(word: "洗手间")
                }) {
                    Text("洗手间")
                        .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 150.0, height: 150.0)
                    .foregroundColor(.white)
                        .background(Color.blue)
                    .cornerRadius(20.0)
                }.padding()
                Button(action: {
                    self.readWord(word: "笔记本")
                }) {
                    Text("笔记本")
                        .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 150.0, height: 150.0)
                    .foregroundColor(.white)
                        .background(Color.blue)
                    .cornerRadius(20.0)
                }.padding()
                Button(action: {
                    self.readWord(word: "花")
                }) {
                    Text("花")
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

struct ObjectWordView_Previews: PreviewProvider {
    static var previews: some View {
        ObjectWordView(viewRouter: ViewRouter())
    }
}
