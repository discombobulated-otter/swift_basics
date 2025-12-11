//
//  traffic.swift
//  TextModifier
//
//  Created by GU on 11/12/25.
//

import SwiftUI

struct traffic: View {
    var body: some View {
        VStack
        {
            Circle()
                .fill(.red)
                .padding(10)
            Circle()
                .fill(.yellow)
                .padding(10)
            Circle()
                .fill(.green)
                .padding(10)
        }
        .frame(height: 250)
//        .padding()
        .background(.black)
        .cornerRadius(20)
    }
}

#Preview {
    traffic()
}
