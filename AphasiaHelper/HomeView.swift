//
//  HomeView.swift
//  AphasiaHelper
//
//  Created by sunlight on 2020/8/12.
//  Copyright © 2020 CDI. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack(spacing: 16) {
            HomeText()
            Button(action: {self.viewRouter.currentPage = "StartConversation"}) {
                StartConversationButtonContent()
            }.padding()
            Button(action: {self.viewRouter.currentPage = "VoiceInput"}) {
                RecieveConversationButtonContent()
            }.padding()
            Button(action: {self.viewRouter.currentPage = "MaterialLibrary"}) {
                MaterialLibraryButtonContent()
            }.padding()
            Button(action: {
                //TODO
            }) {
                FamilyEndButtonContent()
            }.padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewRouter: ViewRouter())
    }
}











struct HomeText: View {
    var body: some View {
        Text("HOME")
        .font(.largeTitle).fontWeight(.heavy).padding()
    }
}

struct StartConversationButtonContent: View {
    var body: some View {
        Text("发起对话")
        .font(.title)
        .fontWeight(.bold)
        .frame(width: 300.0, height: 100.0)
        .foregroundColor(.white)
        .background(Color.blue)
        .cornerRadius(20.0)
    }
}

struct RecieveConversationButtonContent: View {
    var body: some View {
        Text("接受对话")
        .font(.title)
        .fontWeight(.bold)
        .frame(width: 300.0, height: 100.0)
        .foregroundColor(.white)
        .background(Color.blue)
        .cornerRadius(20.0)
    }
}

struct MaterialLibraryButtonContent: View {
    var body: some View {
        Text("词库")
        .font(.title)
        .fontWeight(.bold)
        .frame(width: 300.0, height: 100.0)
        .foregroundColor(.white)
        .background(Color.blue)
        .cornerRadius(20.0)
    }
}

struct FamilyEndButtonContent: View {
    var body: some View {
        Text("家人端")
        .font(.title)
        .fontWeight(.bold)
        .frame(width: 300.0, height: 100.0)
        .foregroundColor(.white)
        .background(Color.blue)
        .cornerRadius(20.0)
    }
}

