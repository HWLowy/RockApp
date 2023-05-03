//
//  gretings-show.swift
//  Rock App
//
//  Created by Bert Bennett on 5/2/23.
//

import SwiftUI

struct GretingsShow: View {
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Rectangle()
                        .frame(width: 850, height: 570)

                    ZStack {
                        Image("background")
                            .resizable()
                            .scaledToFit()
                            Text("Welcome to")
                                .foregroundColor(.mint)
                                .padding(.bottom, 100)
                            Text("my")
                                .padding(.bottom, 50)
                                .foregroundColor(.blue)
                            Text("Rock app")
                                .font(.largeTitle)
                                .foregroundColor(.indigo)
                    }
                }

                NavigationLink(
                    destination: ContentView(),
                    label: {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.blue)
                                .frame(width: 200, height: 50)
                            Text("continue")
                                .foregroundColor(.white)
                        }
                    }
                )
            }
        }
    }
}

struct GretingsShow_Previews: PreviewProvider {
    static var previews: some View {
        GretingsShow()
    }
}
