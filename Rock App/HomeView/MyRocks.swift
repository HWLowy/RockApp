//
//  MyRocks.swift
//  Rock App
//
//  Created by Bert Bennett on 5/2/23.
//

import SwiftUI

struct MyRocks: View {
    
    @State var ScanRocksShowing = false
    @State var rocks = 0
    @ObservedObject var takePicture: TakePicture
    @State var SearchName = ""
    
    var body: some View {
        VStack {
            
            ZStack {
                
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 300, height: 34)
                    .cornerRadius(30)
                
                HStack {
                    Image(systemName: "magnifyingglass")
                    
                    TextField("Search", text: $SearchName)
                }
                .padding(.leading, 50)
            }
            
            
            Spacer()
            
            
            
            VStack {
                if rocks == 0 {
                    VStack {
                    Text("You have not scanned any rocks.")
                        .padding(.bottom)
                    
                    Button {
                        ScanRocksShowing = true
                    } label: {
                        Text("Go here to scan some rocks")
                            .underline()
                    }
                    .sheet(isPresented: $ScanRocksShowing) {
                        VStack {
                            TakePictureView()
                            
                            Button {
                                ScanRocksShowing = false
                            } label: {
                                Image(systemName: "plus.circle")
                            }
                        }
                    }

                    
                    }
                } else {
                    ForEach(0..<rocks) {index in
                        List {
                            HStack(spacing: 20.0) {
                                Image(uiImage: takePicture.image ?? UIImage(named: "placeholder-image")!)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 50, height: 50, alignment: .center)
                                    .clipped()
                                    .cornerRadius(5)
                                VStack(alignment: .leading) {
                                    Text(takePicture.name)
                                        .bold()
                                        .foregroundColor(Color.black)
                                }
                            }
                        }
                    }
                }
            }
            
            Spacer()
        }
    
    }
}

struct MyRocks_Previews: PreviewProvider {
    static var previews: some View {
        MyRocks(takePicture: TakePicture.init())
    }
}
