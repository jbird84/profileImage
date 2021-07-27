//
//  ProfileView.swift
//  profileImage
//
//  Created by Kinney Kare on 7/26/21.
//

import SwiftUI

struct ProfileView: View {
    
    @State var changeProfileImage = false
    @State var openCameraRoll = false
    @State var imageSelected = UIImage()
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Button(action: {
                changeProfileImage = true
                openCameraRoll = true
                
            }, label: {
                if changeProfileImage {
                    Image(uiImage: imageSelected)
                        .profileImageMod()
                } else {
                    Image("profileImage")
                        .profileImageMod()
                }
        })
            
            Image(systemName: "plus")
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .background(Color.gray)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
        }.sheet(isPresented: $openCameraRoll) {
            ImagePicker(selectedImage: $imageSelected, sourceType: .camera)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
