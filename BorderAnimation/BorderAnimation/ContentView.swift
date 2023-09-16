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
                .frame(width: 260, height: 440)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.8), Color.yellow.opacity(0.7)]), startPoint: .top, endPoint: .bottom))                
            
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 130, height: 450)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.yellow.opacity(0.7), Color.gray.opacity(0.8)]), startPoint: .top, endPoint: .bottom))
                .rotationEffect(.degrees(rotation))
         
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
