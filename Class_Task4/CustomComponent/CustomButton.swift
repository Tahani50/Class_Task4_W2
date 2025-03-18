//
//  CustomButton.swift
//  Class_Task4
//
//  Created by Taibah Valley Academy on 3/18/25.
//

import SwiftUI

struct CustomButton: View {
    let title: String // The text displayed on the button
    let background: Color // The background color of the button
    let action: () -> Void // The action to be executed when the button is tapped

    // Environment property to detect the current color scheme (light or dark mode)
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Button {
            action() // Executes the provided action when the button is tapped
        } label: {
            ZStack {
                // Background shape with rounded corners
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background) // Sets the background color
                
                // Button title text
                Text(title)
                    .foregroundColor(colorScheme == .dark ? Color.black : Color.white) // White text color
                    .bold() // Makes the text bold
            }
        }
        .padding() // Adds padding around the button
    }
}

