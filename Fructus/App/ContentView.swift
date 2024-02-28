//
//  ContentView.swift
//  Fructus
//
//  Created by Fuad Fadlila Surenggana on 28/02/24.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView(content: {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                    
                }
                
            }
            .navigationTitle("Fruits")
        })
        
    }
}

#Preview {
    ContentView()
}
