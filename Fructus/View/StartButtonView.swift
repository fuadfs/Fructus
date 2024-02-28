//
//  StartButtonView.swift
//  Fructus
//
//  Created by Fuad Fadlila Surenggana on 28/02/24.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
        Button(action: {
            print("exit screenq")
            isOnboarding = false
        }, label: {
            HStack(spacing: 8, content: {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            })
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(Color.white, lineWidth: 1.25)
            )
        })
        .accentColor(Color.white)
    }
}

#Preview {
    StartButtonView()
        .preferredColorScheme(.dark)
}
