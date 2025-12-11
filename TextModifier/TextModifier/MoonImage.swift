//
//  MoonImage.swift
//  TextModifier
//
//  Created by GU on 11/12/25.
//

import SwiftUI

struct MoonImage: View {
    var body: some View {
//        .opacity(0.5)
        Image("moon")
            .resizable()
            .scaledToFit()
            .frame(width: 150)
            .clipShape(Circle())
        
    }
}

#Preview {
    MoonImage()
}
