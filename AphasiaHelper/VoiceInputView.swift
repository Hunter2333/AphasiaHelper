//
//  VoiceInputView.swift
//  AphasiaHelper
//
//  Created by sunlight on 2020/8/12.
//  Copyright © 2020 CDI. All rights reserved.
//

import SwiftUI

struct VoiceInputView: View {
    
    @ObservedObject var viewRouter: ViewRouter
    @ObservedObject var audioRecorder: AudioRecorder
    
    @State var suggestOpen: Bool = false
    
    var body: some View {
        
        ZStack {
            VStack(spacing: 20) {
                HStack {
                    Button(action: {
                        self.viewRouter.currentPage = "Home"
                    }) {
                        Text("< HOME")
                            .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 150.0, height: 64.0)
                        .foregroundColor(.white)
                            .background(Color.orange)
                        .cornerRadius(20.0)
                    }.padding(.leading, 30)
                    Spacer()
                    Text("语音输入")
                        .font(.largeTitle).fontWeight(.heavy).padding(.trailing, 30)
                }
                if audioRecorder.recording == false {
                    Button(action: {
                        self.audioRecorder.startRecording()}) {
                        ZStack {
                             Image(systemName: "circle.fill")
                                 .resizable()
                                 .aspectRatio(contentMode: .fill)
                                 .frame(width: 200, height: 200)
                                 .clipped()
                                 .foregroundColor(.blue)
                                 .padding(.bottom, 40)
                            Text("点击录制")
                                .font(.largeTitle)
                                .fontWeight(.medium)
                                .foregroundColor(Color.white)
                        }
                    }
                } else {
                    Button(action: {
                        self.audioRecorder.stopRecording()
                        //TODO 正在分析&分析结果&弹出suggest
                        self.suggestOpen = true
                    }) {
                        ZStack {
                            Image(systemName: "stop.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 200)
                                .clipped()
                                .foregroundColor(.red)
                                .padding(.bottom, 40)
                            Text("结束录制")
                                .font(.largeTitle)
                                .fontWeight(.medium)
                                .foregroundColor(Color.white)
                        }
                    }
                }
                
                //TODO for test -- 删除已有录音
                RecordingsList(audioRecorder: audioRecorder)
            }
            if self.suggestOpen {
                //TODO 做成真的推荐、添加发声
                ZStack {
                    Color.white
                    VStack {
                        Spacer()
                        Text("你可能想回复...").fontWeight(.heavy)
                        Spacer()
                        VStack(spacing: 30) {
                            // TODO：未加入的按钮——添加到库？？？？
                            SuggestRow(suggestText: "我要一份面包")
                            SuggestRow(suggestText: "不用了")
                            SuggestRow(suggestText: "谢谢")
                        }
                        Spacer()
                        Button(action: {
                            self.suggestOpen = false
                        }, label: {
                            Text("Close")
                        })
                    }.padding()
                }
                .frame(width: 400, height: 300)
                .cornerRadius(10).shadow(radius: 20)
            }
        }
    }
}

struct VoiceInputView_Previews: PreviewProvider {
    static var previews: some View {
        VoiceInputView(viewRouter: ViewRouter(), audioRecorder: AudioRecorder())
    }
}
