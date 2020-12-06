//
//  SubjectWordView.swift
//  AphasiaHelper
//
//  Created by Xiaoqing Sun on 2020/12/6.
//  Copyright © 2020 CDI. All rights reserved.
//

import SwiftUI
import AVFoundation

struct SubjectWordView: View {
    
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
            Text("主语")
                .font(.largeTitle).padding(.top, 40)
            Spacer()
            HStack{
                Button(action: {
                    self.readWord(word: "你")
                }) {
                    Text("你")
                        .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 150.0, height: 150.0)
                    .foregroundColor(.white)
                        .background(Color.blue)
                    .cornerRadius(20.0)
                }.padding()
                Button(action: {
                    self.readWord(word: "我")
                }) {
                    Text("我")
                        .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 150.0, height: 150.0)
                    .foregroundColor(.white)
                        .background(Color.blue)
                    .cornerRadius(20.0)
                }.padding()
                Button(action: {
                    self.readWord(word: "他")
                }) {
                    Text("他")
                        .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 150.0, height: 150.0)
                    .foregroundColor(.white)
                        .background(Color.blue)
                    .cornerRadius(20.0)
                }.padding()
                Button(action: {
                    self.readWord(word: "这些")
                }) {
                    Text("这些")
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

struct SubjectWordView_Previews: PreviewProvider {
    static var previews: some View {
        SubjectWordView(viewRouter: ViewRouter())
    }
}
