//
//  TaskDetailView.swift
//  Class_Task4
//
//  Created by Taibah Valley Academy on 3/18/25.
//

import SwiftUI

struct TaskDetailView: View {
    
    // The task item whose details will be displayed
    let task: Task
    
    // Detects the current color scheme (light or dark mode)
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
                VStack(spacing: 30) {
                    
                    // Section for displaying the task description
                    Section(header: Text("Description:").font(.largeTitle)) {
                        Text(task.description)
                            .bold() // Makes the description text bold
                            .multilineTextAlignment(.center) // Aligns text to center
                            .foregroundColor(Color("Color2"))
                    }
                    
                    Spacer()
                }
                .navigationTitle(task.title) // Sets the navigation bar title to the task title
                .frame(width: 300, height: 380) // Fixed size for the content box
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(colorScheme == .dark ? Color.black : Color.white) // Background color adapts to dark/light mode
                )
                .border(Color("Color2"), width: 2)
                .cornerRadius(10)
                .shadow(radius: 5)
            
        }
    }
}

