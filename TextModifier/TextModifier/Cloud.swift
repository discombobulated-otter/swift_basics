//
//  Cloud.swift
//  TextModifier
//
//  Created by GU on 11/12/25.
//

import SwiftUI

struct Cloud: View {
    var body: some View {
        VStack(alignment: .leading)
        {
            Image("cloud")
                .resizable()
                .frame(height: 150)
                .cornerRadius(20)
                .shadow(radius: 10)
                .padding()
            Text("Cloudy")
                .foregroundStyle(.white)
                .font(.body)
                .padding()
            Text("21*")
                .foregroundStyle(.white)
                .font(.title)
                .padding()
        }
        
        .background(Rectangle().fill(.black).opacity(0.4)).cornerRadius(10)
        .padding()
        
    }
}

#Preview {
    Cloud()
}
