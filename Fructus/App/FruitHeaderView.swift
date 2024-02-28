//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Fuad Fadlila Surenggana on 28/02/24.
//

import SwiftUI

struct FruitHeaderView: View {
    
    var fruit: Fruit
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.3), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1 : 0.6)
                .animation(.easeOut(duration: 0.5), value: isAnimating)
        }
        .frame(height: 440)
        .onAppear(perform: {
            isAnimating = true
        })
    }
}

#Preview {
    FruitHeaderView(fruit: fruitsData[0])
}
