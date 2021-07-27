//
//  ProfileImageMod.swift
//  profileImage
//
//  Created by Kinney Kare on 7/26/21.
//

import SwiftUI

extension Image {
    
    func profileImageMod() -> some View {
        self
            .resizable()
            .frame(width: 120, height: 120)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
    
}
