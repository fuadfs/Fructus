//
//  FruitRowView.swift
//  Fructus
//
//  Created by Fuad Fadlila Surenggana on 28/02/24.
//

import SwiftUI

struct FruitRowView: View {
    var fruit: Fruit
    
    var body: some View {
        HStack(content: {
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: .black.opacity(0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5, content: {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundStyle(Color.secondary)
            })
        })
            
        
    }
}

#Preview {
    FruitRowView(fruit: fruitsData[0])
        .padding()
}
