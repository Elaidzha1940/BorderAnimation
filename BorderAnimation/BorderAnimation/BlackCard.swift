//  /*
//
//  Project: BorderAnimation
//  File: BlackCard.swift
//  Created by: Elaidzha Shchukin
//  Date: 16.09.2023
//
//  Status: #Completed | Decorated
//
//  */

import SwiftUI

struct BlackCard: View {
    @State var rotation: CGFloat = 0.0

    var body: some View {
        
        ZStack {
            Color("colone")
                .ignoresSafeArea()
            
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 370, height: 270)
                .foregroundColor(Color("col").opacity(0.9))
                .shadow(color: .black.opacity(0.5), radius: 10, x: 0, y: 0)
            
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 130, height: 500)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.7), Color.green.opacity(0.8)]), startPoint: .top, endPoint: .bottom))
                .rotationEffect(.degrees(rotation))
                .mask {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(lineWidth: 8)
                    .frame(width: 366, height: 266)
                }
         Text("Visa")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .offset(x: 120, y: 90)
        }
        .preferredColorScheme(.dark)
        .onAppear {
            withAnimation(.linear(duration: 3).repeatForever(autoreverses: false)) {
                rotation = 360
            }
        }
    }
}

struct BlackCard_Previews: PreviewProvider {
    static var previews: some View {
        BlackCard()
    }
}
