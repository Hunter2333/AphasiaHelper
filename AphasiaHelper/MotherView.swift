//
//  MotherView.swift
//  AphasiaHelper
//
//  Created by sunlight on 2020/8/12.
//  Copyright © 2020 CDI. All rights reserved.
//

import SwiftUI

struct MotherView: View {
    
    @ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            if viewRouter.currentPage == "Home" {
                HomeView(viewRouter: viewRouter)
            } else if viewRouter.currentPage == "StartConversation" {
                StartConversationView(viewRouter: viewRouter)
            } else if viewRouter.currentPage == "VoiceInput" {
                VoiceInputView(viewRouter: viewRouter, audioRecorder: AudioRecorder())
            } else if viewRouter.currentPage == "MaterialLibrary" {
                MaterialLibraryView(viewRouter: viewRouter)
            } else if viewRouter.currentPage == "DrawingBoard" {
                DrawingBoardView(viewRouter: viewRouter)
            } else if viewRouter.currentPage == "DrawingRecognitionResult" {
                DrawingRecognitionResultView(viewRouter: viewRouter)
            } else if viewRouter.currentPage == "SubjectWord" {
                SubjectWordView(viewRouter: viewRouter)
            } else if viewRouter.currentPage == "PredicateWord" {
                PredicateWordView(viewRouter: viewRouter)
            } else if viewRouter.currentPage == "ObjectWord" {
                ObjectWordView(viewRouter: viewRouter)
            } else if viewRouter.currentPage == "ActivityWord" {
                ActivityWordView(viewRouter: viewRouter)
            }
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView(viewRouter: ViewRouter())
    }
}
