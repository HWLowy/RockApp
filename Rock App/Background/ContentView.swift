//
//  ContentView.swift
//  Rock App
//
//  Created by Bert Bennett on 5/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
//        TabView {
//
//            Image(systemName: "")
//            FoundRocks()
//                .tabItem {
//                    VStack {
//                        Image(systemName: "list.bullet.rectangle")
//                        Text("List")
//                    }
//                }
//
//            SubmitNewRock()
//                .tabItem {
//                    VStack {
//                        Image(systemName: "list.bullet")
//                        Text("List")
//                    }
//                }
//
//
//
//
//        }
        
        
        TabView {
            
            HomeView()
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Home")
                    }
                }
            
            GuidView()
                .tabItem {
                    VStack {
                        Image(systemName: "questionmark")
                        Text("Guidbook")
                    }
                }
            
            SubmitRock()
                .tabItem {
                    VStack {
                        Image(systemName: "square.and.arrow.up")
                        Text("Submit A Rock")
                    }
                }
            
            
            
            
            
            
        }
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
