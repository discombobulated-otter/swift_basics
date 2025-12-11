//
//  CustomGradientBadge.swift
//  TextModifier
//
//  Created by GU on 11/12/25.
//

import SwiftUI

struct CustomGradientBadge: View
{
    var body: some View
    {
        VStack
        {
            Text("30")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.white)
            Text("min")
                .font(.body)
                .foregroundStyle(.white)
        }
        .padding()
        .frame(width: 100,height: 100)
        .background(
            Circle()
                .fill(
                    LinearGradient(
                        colors: [.blue, .purple],
                        startPoint: .topLeading, endPoint: .bottomLeading
                    )
            
                )
                .shadow(radius: 10)
                
        )
    }
}

#Preview
{
    CustomGradientBadge()
}
