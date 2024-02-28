//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Fuad Fadlila Surenggana on 28/02/24.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox {
            HStack(content: {
                Text("Content source")
                
                Spacer()
                
                Link(destination: URL(string: "https://www.wikipedia.com")!, label: {
                    Text("Wikipedia")
                })
                
                Image(systemName: "arrow.up.right.square")
            })
            .font(.footnote)
        }
    }
}

#Preview {
    SourceLinkView()
        .padding()
}
