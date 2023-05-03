//
//  TakePicture.swift
//  Rock App
//
//  Created by Bert Bennett on 5/2/23.
//

import SwiftUI


class TakePicture: ObservableObject {
    @Published var name = ""
    @Published var image: UIImage?
}

struct TakePictureView: View {
    
        @State private var showSheet: Bool = false
        @State private var showImagePicker: Bool = false
        @State private var sourceType: UIImagePickerController.SourceType = .camera
        @StateObject var takePicture = TakePicture()

    
        @State var name = ""
        @State var image: UIImage?
        
        var body: some View {
            
            NavigationView {
                
                    
                    VStack {
                        
                        Image(uiImage: image ?? UIImage(named: "background")!)
                            .resizable()
                            .frame(width: 300, height: 300)
                        
                        Button("Choose Picture") {
                            self.showSheet = true
                        }.padding()
                            .actionSheet(isPresented: $showSheet) {
                                ActionSheet(title: Text("Select Photo"), message: Text("Choose"), buttons: [
                                    .default(Text("Photo Library")) {
                                        self.showImagePicker = true
                                        self.sourceType = .photoLibrary
                                    },
                                    .default(Text("Camera")) {
                                        self.showImagePicker = true
                                        self.sourceType = .camera
                                    },
                                    .cancel()
                                ])
                        }
                        
                        TextField("type the name of your rock here", text: $name)
                            .padding(.leading, 65)
                        
                    }
                        .navigationBarTitle("Add A Rock Image")
                
            }.sheet(isPresented: $showImagePicker) {
                ImagePicker(image: self.$image, isShown: self.$showImagePicker, sourceType: self.sourceType)
            }

    }
}

struct TakePicture_Previews: PreviewProvider {
    static var previews: some View {
        TakePictureView()
    }
}
