//
//  DrawingRecognitionResultView.swift
//  AphasiaHelper
//
//  Created by sunlight on 2020/8/16.
//  Copyright © 2020 CDI. All rights reserved.
//

import SwiftUI

struct DrawingRecognitionResultView: View {
    
    @ObservedObject var viewRouter: ViewRouter
    
    @State var addToLibraryOpen: Bool = false
    @State var suggestOpen: Bool = false
    @State var errorCorrectionOpen: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("识别结果")
                    .font(.largeTitle).fontWeight(.heavy).padding(.leading, 80)
                Spacer()
                DropDownPicker().padding(.trailing, 80)
            }
            ZStack {
                //TODO 做成真的手绘识别，根据识别结果动态生成
                VStack(alignment: .leading, spacing: 24) {
                    Text("手机").font(.title).fontWeight(.bold)
                    Image("mobilephone")
                        .resizable()
                        .frame(width: 200, height: 150)
                    HStack {
                        Button(action: {
                            self.addToLibraryOpen = true
                            self.suggestOpen = false
                            self.errorCorrectionOpen = false
                        }) {
                            Text("添加到库")
                        }
                        Button(action: {
                            self.addToLibraryOpen = false
                            self.suggestOpen = true
                            self.errorCorrectionOpen = false
                        }) {
                            Text("智能推荐")
                        }
                        Button(action: {
                            self.addToLibraryOpen = false
                            self.suggestOpen = false
                            self.errorCorrectionOpen = true
                        }) {
                            Text("纠错")
                        }
                    }
                }.padding(40)
                if self.addToLibraryOpen {
                    //TODO 做成真的 添加到素材库 -> 添加失败or成功？
                    //添加成功
                    ZStack {
                        Color.white
                        VStack {
                            Spacer()
                            Text("✅  添加成功").font( .largeTitle)
                            Spacer()
                            Button(action: {
                                self.addToLibraryOpen = false
                            }, label: {
                                Text("Close")
                            })
                        }.padding()
                    }
                    .frame(width: 400, height: 300)
                    .cornerRadius(10).shadow(radius: 20)
                }
                if self.suggestOpen {
                    //TODO 做成真的推荐、添加发声
                    ZStack {
                        Color.white
                        VStack {
                            Spacer()
                            Text("你可能想说...").fontWeight(.heavy)
                            Spacer()
                            VStack(spacing: 30) {
                                SuggestRow(suggestText: "我的手机坏了")
                                SuggestRow(suggestText: "我想打个电话")
                                SuggestRow(suggestText: "你的手机掉了")
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
                if self.errorCorrectionOpen {
                    //TODO
                    ZStack {
                        Color.white
                        VStack {
                            Spacer()
                            Text("TODO").font( .largeTitle)
                            Spacer()
                            Button(action: {
                                self.errorCorrectionOpen = false
                            }, label: {
                                Text("Close")
                            })
                        }.padding()
                    }
                    .frame(width: 400, height: 300)
                    .cornerRadius(10).shadow(radius: 20)
                }
            }
            HStack {
                Button(action: {
                    self.viewRouter.currentPage = "Home"
                }) {
                    Text("HOME")
                        .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 200.0, height: 80.0)
                    .foregroundColor(.white)
                        .background(Color.orange)
                    .cornerRadius(20.0)
                }.padding(30)
                Button(action: {
                    self.viewRouter.currentPage = "DrawingBoard"
                }) {
                    Text("绘制下一个")
                        .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 200.0, height: 80.0)
                    .foregroundColor(.white)
                        .background(Color.orange)
                    .cornerRadius(20.0)
                }.padding(30)
            }
        }
    }
}

struct DrawingRecognitionResultView_Previews: PreviewProvider {
    static var previews: some View {
        DrawingRecognitionResultView(viewRouter: ViewRouter())
    }
}
