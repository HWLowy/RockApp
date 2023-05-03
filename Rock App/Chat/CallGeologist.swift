//
//  CallGeologist.swift
//  Rock App
//
//  Created by Bert Bennett on 5/3/23.
//

import SwiftUI

struct CallGeologist: View {
    
    @State var PhoneNumber = ""
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            TextField("Enter your local geologist's phone number", text: $PhoneNumber)
                .padding(.leading, 30)
            
            Spacer()
            
            Button {
                <#code#>
            } label: {
                <#code#>
            }

            
            Spacer()
        }
        
    }
}

struct CallGeologist_Previews: PreviewProvider {
    static var previews: some View {
        CallGeologist()
    }
}
