//
//  ContentView.swift
//  TextModifier
//
//  Created by GU on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .fontWeight(.heavy)
            Text("""
                Hello, world!
                I am saying something
                Hey you, listen here!
                """)
            .multilineTextAlignment(.center)
            .lineSpacing(5)
            .lineLimit(2)
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
