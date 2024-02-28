//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Fuad Fadlila Surenggana on 28/02/24.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundStyle(Color.gray)
                
                Spacer()
                
                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && linkDestination != nil {
                    Link(destination: URL(string: "https://\(linkDestination!)")!, label: {
                        Text(linkLabel!)
                        Image(systemName: "arrow.up.right.square")
                            .foregroundColor(.pink)
                    })
                } else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    Group {
        SettingsRowView(name: "Developer", content: "John Doe")
        SettingsRowView(name: "Developer", linkLabel: "MAster SWIFTUI", linkDestination: "swiftuimasterclass.com")
        
    }
}
