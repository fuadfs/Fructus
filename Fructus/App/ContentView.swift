//
//  ContentView.swift
//  Fructus
//
//  Created by Fuad Fadlila Surenggana on 28/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
//        NavigationView(content: {
//            List {
//                ForEach(fruits.shuffled()) { item in
//                    NavigationLink(destination: FruitDetailView(fruit: item)) {
//                        FruitRowView(fruit: item)
//                            .padding(.vertical, 4)
//                    }
//                }
//            }
//            .navigationTitle("Fruits")
//            .toolbar {
//                ToolbarItem(placement: .topBarTrailing) {
//                    Button(action: {
//                        isShowingSettings = true
//                    }, label: {
//                        Image(systemName: "slider.horizontal.3")
//                    })
//                    .sheet(isPresented: $isShowingSettings, content: {
//                        SettingsView()
//                    })
//                }
//            }
//        })
//        .navigationViewStyle(StackNavigationViewStyle())
        
        NavigationStack {
            List {
                ForEach(fruits[0...2], id: \.self) { fruit in
                    NavigationLink(value: fruit){
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationDestination(for: Fruit.self, destination: { item in
                FruitDetailView(fruit: item)
            })
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        isShowingSettings = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    })
                    .sheet(isPresented: $isShowingSettings, content: {
                        SettingsView()
                    })
                }
            }
        }
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
