//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Fuad Fadlila Surenggana on 28/02/24.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText)
                .textCase(.uppercase)
                .fontWeight(.bold)
            
            Spacer()
            
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingsLabelView(labelText: "label", labelImage: "info.circle")
}
