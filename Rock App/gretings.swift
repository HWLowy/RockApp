//
//  gretings.swift
//  Rock App
//
//  Created by Bert Bennett on 5/1/23.
//

import SwiftUI

struct gretings: View { 
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame(width: 850, height: 570)
                
                    
                ZStack {
                    Image("background")
                        .resizable()
                        .scaledToFit()
                    Text("Wellcome to")
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
            
            
            
            Button(action: {
                
            }) {
                ZStack {
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(width: 200, height: 50)
                    Text("continue")
                        .foregroundColor(.white)
                }
            }


        }
    }
}

struct gretings_Previews: PreviewProvider {
    static var previews: some View {
        gretings()
    }
}
