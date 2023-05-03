//
//  GuidView.swift
//  Rock App
//
//  Created by Bert Bennett on 5/1/23.
//

import SwiftUI

struct GuidView: View {
    
    var names = ["ashgf", "vmjgh", "hgvjtf", "mhfgd", "mhgfvhb", "kuyder", "mhgfd", "shfded"]
    @State var nc = 0
    
    var body: some View {
        
        VStack {
            ForEach(0..<names.count+1) { index in
                List {
                    Text(String(index) + ". " + names[nc])
//                    nc + 1
                }
            }
        }
        
        
    }
}

struct GuidView_Previews: PreviewProvider {
    static var previews: some View {
        GuidView()
    }
}
