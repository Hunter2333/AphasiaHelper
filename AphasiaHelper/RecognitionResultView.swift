//
//  RecognitionResultView.swift
//  AphasiaHelper
//
//  Created by sunlight on 2020/8/13.
//  Copyright © 2020 CDI. All rights reserved.
//

import SwiftUI

struct RecognitionResultView: View {
    
    @ObservedObject var viewRouter: ViewRouter
    
    @Binding var image: UIImage?
    @Binding var classificationLabel: String
    
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
                VStack(alignment: .leading, spacing: 24) {
                    Text(classificationLabel).font(.title).fontWeight(.bold)
                    Image(uiImage: image ?? UIImage(named: "PlaceHolder")!)
                        .resizable()
                        .frame(width: 280, height: 210)
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
        }
    }
}

//struct RecognitionResultView_Previews: PreviewProvider {
//    static var previews: some View {
//        RecognitionResultView(viewRouter: ViewRouter())
//    }
//}












struct DropDownPicker: View {
    
    @State var isOpen: Bool = false
    @State var DropDownText: String = "--归类到场景--"
     
    var body: some View {
        VStack(spacing: 30) {
            HStack() {
                Text(DropDownText).fontWeight(.black).foregroundColor(.white)
                Image(systemName: isOpen ?  "chevron.up" : "chevron.down" ).font(.system(size: 16, weight: .black)).foregroundColor(.white)
            }.onTapGesture {
                self.isOpen.toggle()
                self.DropDownText = "--归类到场景--"
            }
            if isOpen {
                Button(action: {
                    self.isOpen.toggle()
                    self.DropDownText = "康复室"
                }) {
                    Text("康复室").fontWeight(.bold).padding(10)
                }.foregroundColor(.white)
                    
                Button(action: {
                    self.isOpen.toggle()
                    self.DropDownText = "客厅"
                }) {
                    Text("客厅").fontWeight(.bold).padding(10)
                }.foregroundColor(.white)
                Button(action: {
                    self.isOpen.toggle()
                    self.DropDownText = "卧室"
                }) {
                    Text("卧室").fontWeight(.bold).padding(10)
                }.foregroundColor(.white)
                Button(action: {
                    self.isOpen.toggle()
                    self.DropDownText = "卫生间"
                }) {
                    Text("卫生间").fontWeight(.bold).padding(10)
                }.foregroundColor(.white)
            }
        }
        .padding().background(Color.blue).cornerRadius(15)
            .animation(.spring())
    }
}




struct SuggestRow: View {
    
    @State var suggestText: String = "null"
    
    var body: some View {
        HStack {
            Text(suggestText).padding(.leading, 40)
            Spacer()
            Button(action: {
                // TODO 播放声音
            }) {
                Image(systemName: "play.circle.fill").font(.system(size: 24, weight: .bold)).foregroundColor(Color.green)
            }.padding(.trailing, 40)
        }
    }
}
