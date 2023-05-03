//
//  HomeView.swift
//  Rock App
//
//  Created by Bert Bennett on 5/1/23.
//

import SwiftUI

struct HomeView: View {
    
    @State var mcs = false
    @State var frs = false
    
    
    var body: some View {
        
        
        VStack {
            Button {
                mcs = true
            } label: {
                ZStack {
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(width: 200, height: 50)
                        .cornerRadius(20)
                        .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: 5, y: -5)
                    Text("My Rock Collection")
                        .foregroundColor(.white)
                }
            }
            .sheet(isPresented: $mcs) {
                MyRocks(takePicture: TakePicture.init())
            }
            
            
            Button {
                frs = true
            } label: {
                ZStack {
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(width: 200, height: 50)
                        .cornerRadius(20)
                        .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: 5, y: -5)
                    Text("My Favorite Rocks")
                        .foregroundColor(.white)
                }
                .sheet(isPresented: $frs) {
                    FavoiteRocks()
                }
            }
            
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
