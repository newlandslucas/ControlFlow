//
//  ContentView.swift
//  ControlFlow-SwiftUI
//
//  Created by Lucas Machado (Estudos) on 01/06/22.
//

import SwiftUI

struct ContentView: View {
    @State var darkModeEnabled: Bool = false
    @State var notificationEnabled: Bool = false
    @State var faceIdEnabled: Bool = false
    
    var backgoundColor: Color {
        return darkModeEnabled ? .black : .white
    }
    
    var rowBackgroundColor: Color {
        return darkModeEnabled ? Color.white.opacity(0.1) : Color(.systemGroupedBackground)
    }
    
    var body: some View {
        VStack(alignment: .leading) {
        
            Text("Settings")
                .font(.largeTitle)
                .foregroundColor( darkModeEnabled ? Color.white : Color.black)
                .fontWeight(.bold)
                .padding()
            
            VStack(alignment: .leading) {
                Text("Appearance")
                    .font(.headline)
                    .foregroundColor(darkModeEnabled ? Color.white : Color.black)
                
                Toggle(isOn: $darkModeEnabled) {
                    Image(systemName: "moon.circle.fill")
                        .font(.title3)
                        .imageScale(.medium)
                        .foregroundColor(.blue)
                    
                    if darkModeEnabled {
                        Text("Disable dark mode")
                            .font(.subheadline)
                            .foregroundColor(darkModeEnabled ? Color.white : Color.black)
                    } else {
                        Text("Enable dark mode")
                            .font(.subheadline)
                            .foregroundColor(darkModeEnabled ? Color.white : Color.black)
                    }
                    
                }
                .padding(.horizontal)
                .frame(height: 44)
                .background(rowBackgroundColor)
                .cornerRadius(10)
                .toggleStyle(SwitchToggleStyle(tint: Color.blue))
                
            }
            .padding()
            
            VStack(alignment: .leading) {
                Text("Account")
                    .font(.headline)
                    .foregroundColor(darkModeEnabled ? Color.white : Color.black)
                
                VStack {
                    Toggle(isOn: $notificationEnabled) {
                        Image(systemName: "bell.circle.fill")
                            .font(.title3)
                            .imageScale(.medium)
                            .foregroundColor(.blue)
                        
                        VStack(alignment: .leading) {
                            Text("Notifications")
                                .font(.subheadline)
                            .foregroundColor(darkModeEnabled ? Color.white : Color.black)
                            
                            if notificationEnabled {
                                Text("Push notifications enabled")
                                    .font(.caption)
                                    .foregroundColor(Color.gray)
                            }
                        }
                        
                       
                    }
                    .padding(.horizontal)
                    .frame(height: 44)
                    .toggleStyle(SwitchToggleStyle(tint: Color.blue))
                    
                    Divider()
                    
                    Toggle(isOn: $faceIdEnabled) {
                        Image(systemName: "faceid")
                            .font(.title3)
                            .imageScale(.medium)
                            .foregroundColor(.blue)
                        
                        Text("Enable Face ID")
                            .font(.subheadline)
                            .foregroundColor(darkModeEnabled ? Color.white : Color.black)
                    }
                    .padding(.horizontal)
                    .frame(height: 44)
                    .toggleStyle(SwitchToggleStyle(tint: Color.blue))
                }
                .background(rowBackgroundColor)
                .cornerRadius(10)
                
            }
            .padding()
            
            Spacer()
            
        }
        .background(backgoundColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
