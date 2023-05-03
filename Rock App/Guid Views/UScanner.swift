//
//  UScanner.swift
//  Rock App
//
//  Created by Bert Bennett on 5/2/23.
//

import SwiftUI

struct UScanner: View {
    
    var name = "How to use the the rock scanner"
    
    var body: some View {
        VStack {
            Text(name + ":")
            Text("1. navigate to ")
        }
    }
}

struct UScanner_Previews: PreviewProvider {
    static var previews: some View {
        UScanner()
    }
}
