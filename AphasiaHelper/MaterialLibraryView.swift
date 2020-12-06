//
//  MaterialLibraryView.swift
//  AphasiaHelper
//
//  Created by sunlight on 2020/8/12.
//  Copyright © 2020 CDI. All rights reserved.
//

import SwiftUI

struct MaterialLibraryView: View {
    
    @ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack(spacing: 20) {
            Text("词库")
                .font(.largeTitle).padding(.top, 40)
            Spacer()
            // TODO START
            HStack {
                VStack {
                    Button(action: {
                        self.viewRouter.currentPage = "SubjectWord"
                    }) {
                        Text("主语")
                            .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 150.0, height: 150.0)
                        .foregroundColor(.white)
                            .background(Color.blue)
                        .cornerRadius(20.0)
                    }.padding()
                    Button(action: {
                        self.viewRouter.currentPage = "PredicateWord"
                    }) {
                        Text("谓语")
                            .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 150.0, height: 150.0)
                        .foregroundColor(.white)
                            .background(Color.blue)
                        .cornerRadius(20.0)
                    }.padding()
                }
                VStack {
                    Button(action: {
                        self.viewRouter.currentPage = "ObjectWord"
                    }) {
                        Text("宾语")
                            .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 150.0, height: 150.0)
                        .foregroundColor(.white)
                            .background(Color.blue)
                        .cornerRadius(20.0)
                    }.padding()
                    Button(action: {
                        self.viewRouter.currentPage = "ActivityWord"
                    }) {
                        Text("行为词")
                            .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 150.0, height: 150.0)
                        .foregroundColor(.white)
                            .background(Color.blue)
                        .cornerRadius(20.0)
                    }.padding()
                }
            }
            //TODO END
            Spacer()
            Button(action: {
                self.viewRouter.currentPage = "Home"
            }) {
                Text("HOME")
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

struct MaterialLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialLibraryView(viewRouter: ViewRouter())
    }
}
