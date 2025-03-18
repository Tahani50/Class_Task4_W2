//
//  ContentView.swift
//  Class_Task4
//
//  Created by Taibah Valley Academy on 3/18/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // TabView to provide a tab-based navigation interface
        TabView {
            // First tab: Displays TaskListView
            ToDoListView()
                .tabItem {
                    Label("Home", systemImage: "house") // Tab label with icon
                }
    
            // Second tab: Displays SettingsView
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "person.circle") // Tab label with icon
            }
        }
        .accentColor(Color("Color1"))
        
    }
}
