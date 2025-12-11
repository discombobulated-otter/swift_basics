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
            .clipShape(UnevenRoundedRectangle(
                                                topLeadingRadius: 50.0,
                                              bottomLeadingRadius: 0.0,
                                              bottomTrailingRadius: 30.0,
                                   
                                                topTrailingRadius: 0.0))
//            .border(.blue, width: 5)
            .overlay(UnevenRoundedRectangle(
                topLeadingRadius: 50.0,
              bottomLeadingRadius: 0.0,
              bottomTrailingRadius: 30.0,
   
                topTrailingRadius: 0.0).stroke(.yellow,lineWidth: 6))
        
    }
}

#Preview {
    MoonImage()
}
