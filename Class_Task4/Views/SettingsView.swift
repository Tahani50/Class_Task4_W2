//
//  SettingsView.swift
//  M1_W2
//
//  Created by Tahani Ayman on 15/09/1446 AH.
//

import SwiftUI

struct SettingsView: View {
    // State variable to track dark mode preference
    @State private var isDarkMode = false

    var body: some View {
        VStack {
            // Toggle switch to enable or disable dark mode
            Toggle("Enable Dark Mode", isOn: $isDarkMode)
                .padding() // Adds padding around the toggle for better spacing
        }
        // Applies the selected color scheme (light or dark mode)
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}

