//
//  LabelModifier.swift
//  TextModifier
//
//  Created by GU on 11/12/25.
//

import SwiftUI

struct LabelModifier: View {
    var body: some View {
        VStack{
            Label("Upload", systemImage: "square.and.arrow.up")
                .labelStyle(.titleAndIcon)
            Label("Setting", systemImage: "gearshape")
                .labelStyle(.iconOnly)
            
            Label
            {
                Text("Gallery")
                    .font(.headline)
                    .foregroundColor(.blue)
            }
            icon:{
                Image(systemName: "photo")
                    .font(.title2)
                    .foregroundColor(.purple)
            }
        }
    }
}

#Preview {
    LabelModifier()
}
