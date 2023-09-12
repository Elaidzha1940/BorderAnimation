//  /*
//
//  Project: BorderAnimation
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 12.09.2023
//
//  Status: #in progress | Decorated
//
//  */

import SwiftUI

struct ContentView: View {
    @State var rotation: CGFloat = 0.0
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 250, height: 450)
                .foregroundColor(Color("col"))
                .rotationEffect(.degrees(rotation))
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 125, height: 460)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.gray, Color.yellow]), startPoint: .top, endPoint: .bottom))
            
        }
        .preferredColorScheme(.dark)
        .onAppear {
            withAnimation(.linear(duration: 3).repeatForever(autoreverses: false)) {
                rotation = 360
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
