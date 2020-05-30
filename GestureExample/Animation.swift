//
//  Animation.swift
//  GestureExample
//
//  Created by venkata sudhakar on 27/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct Animation: View {
    @State private var animation:Bool = false
    @State private var scale:CGFloat = 1.0
    let gradientColor = Gradient(colors: [.red,.green])
    var body: some View {
    
        VStack{
            Button(action: {
                withAnimation(.easeInOut(duration: 4)) {
                    self.animation.toggle()
                    
                }
            }) {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            
            HStack {
                Text("🚗")
                    .font(.system(size: 100))
                    .offset(x: self.animation ? 0 - UIScreen.main.bounds.width+100 : 0)
            }
            
            Image("photo")
            .resizable()
            .scaleEffect(scale)
            .frame(width: 100, height: 100)
            .gesture(MagnificationGesture()
                .onChanged({ value in
                    self.scale = value.magnitude
                })
                
            )
            Rectangle()
                .foregroundColor(.clear)
                .background(LinearGradient(gradient: gradientColor, startPoint: .leading, endPoint: .trailing))
                .opacity(0.5)
                .edgesIgnoringSafeArea(.all)
        }
        .edgesIgnoringSafeArea(.all)
        .background(LinearGradient(gradient: gradientColor, startPoint: .leading, endPoint: .trailing))
    }
}

struct Animation_Previews: PreviewProvider {
    static var previews: some View {
        Animation()
    }
}
