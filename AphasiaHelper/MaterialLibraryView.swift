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
            Text("素材库")
                .font(.largeTitle).padding(.top, 40)
            Spacer()
            // TODO START
            HStack {
                VStack(alignment: .leading, spacing: 24) {
                    Text("面包").font(.title).fontWeight(.bold)
                    Image("bread")
                        .resizable()
                        .frame(width: 200, height: 150)
                }.padding(30)
                VStack(alignment: .leading, spacing: 24) {
                    Text("眼镜").font(.title).fontWeight(.bold)
                    Image("glasses")
                        .resizable()
                        .frame(width: 200, height: 150)
                }.padding(30)
                VStack(alignment: .leading, spacing: 24) {
                    Text("手机").font(.title).fontWeight(.bold)
                    Image("mobilephone")
                        .resizable()
                        .frame(width: 200, height: 150)
                }.padding(30)
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
