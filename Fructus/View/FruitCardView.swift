//
//  FruitCardView.swift
//  Fructus
//
//  Created by Fuad Fadlila Surenggana on 28/02/24.
//

import SwiftUI

struct FruitCardView: View {
    
    @State private var isAnimating: Bool = false
    
    var fruit: Fruit
    
    var body: some View {
        ZStack {
            VStack(spacing: 20, content: {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1 : 0.6)
                    .animation(.easeOut(duration: 0.5), value: isAnimating)
                
                Text(fruit.title)
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
                
                Text(fruit.headline)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                StartButtonView()
                    
            })//: VSTACK
        }
        .onAppear( perform: {
            isAnimating = true
        }
        )
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

#Preview {
    FruitCardView(fruit: fruitsData[0])
        .previewLayout(.fixed(width: 320, height: 640))
}
