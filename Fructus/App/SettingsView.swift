//
//  SettingsView.swift
//  Fructus
//
//  Created by Fuad Fadlila Surenggana on 28/02/24.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(spacing: 20, content: {
                    GroupBox(label: SettingsLabelView(labelText: "Fructus", labelImage: "info.circle"), content: {
                        
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center , spacing: 10, content: {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        })
                    })
                    
                    GroupBox{
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again")
                            .multilineTextAlignment(.leading)
                            .font(.footnote)
                            .layoutPriority(1)
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                        
                        Toggle(isOn: $isOnboarding, label: {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.secondary)
                            }
                        })
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                        
                    } label: {
                        SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    }
                    
                    GroupBox{
                        SettingsRowView(name: "Developer", content: "John Doe")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "x.com/robertpetras")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    } label: {
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    }

                })
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "xmark")
                                .fontWeight(.bold)
                        })
                        .padding()
                    }
                }
                
            }
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
}
