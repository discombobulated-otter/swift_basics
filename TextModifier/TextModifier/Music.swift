//
//  Music.swift
//  TextModifier
//
//  Created by GU on 11/12/25.
//

import SwiftUI

struct Music: View {
    var body: some View {
        
        VStack
        {
            Image("Image")
                .cornerRadius(10)
                .shadow(radius: 10)
            Text("SSLP")
                .font(.title)
            Text("by Eminem")
            Button("2015") { }
                .padding(3)
                .background(.blue.opacity(0.2))
                .cornerRadius(10)
            
        }
        
    }
}

#Preview {
    Music()
}
