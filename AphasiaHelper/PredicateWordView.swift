//
//  PredicateWordView.swift
//  AphasiaHelper
//
//  Created by Xiaoqing Sun on 2020/12/6.
//  Copyright © 2020 CDI. All rights reserved.
//

import SwiftUI
import AVFoundation

struct PredicateWordView: View {
    
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
            Text("谓语")
                .font(.largeTitle).padding(.top, 40)
            Spacer()
            HStack {
                Button(action: {
                    self.readWord(word: "是")
                }) {
                    Text("是")
                        .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 150.0, height: 150.0)
                    .foregroundColor(.white)
                        .background(Color.blue)
                    .cornerRadius(20.0)
                }.padding()
                Button(action: {
                    self.readWord(word: "要")
                }) {
                    Text("要")
                        .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 150.0, height: 150.0)
                    .foregroundColor(.white)
                        .background(Color.blue)
                    .cornerRadius(20.0)
                }.padding()
                Button(action: {
                    self.readWord(word: "吃")
                }) {
                    Text("吃")
                        .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 150.0, height: 150.0)
                    .foregroundColor(.white)
                        .background(Color.blue)
                    .cornerRadius(20.0)
                }.padding()
                Button(action: {
                    self.readWord(word: "喝")
                }) {
                    Text("喝")
                        .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 150.0, height: 150.0)
                    .foregroundColor(.white)
                        .background(Color.blue)
                    .cornerRadius(20.0)
                }.padding()
                Button(action: {
                    self.readWord(word: "去")
                }) {
                    Text("去")
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

struct PredicateWordView_Previews: PreviewProvider {
    static var previews: some View {
        PredicateWordView(viewRouter: ViewRouter())
    }
}
