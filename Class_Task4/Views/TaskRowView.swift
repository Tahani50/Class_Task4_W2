//
//  TaskListView.swift
//  Class_Task4
//
//  Created by Taibah Valley Academy on 3/18/25.
//

import SwiftUI

struct TaskRowView: View {
    
    // The task item to be displayed in the row
    var task: Task
    
    // Environment property to detect the current color scheme (light or dark mode)
    @Environment(\.colorScheme) var colorScheme
    
    var viewModel: TaskModelView
    
    var body: some View {
        HStack {
            Text(task.title)
                .font(.headline)
                .foregroundColor(colorScheme == .dark ? .white : .black) // Adjusts text color for dark/light mode
            
            Spacer()
            
            // Button to toggle task completion
            Button(action: {
                withAnimation {
                    viewModel.toggleTaskCompletion(task)
                }
            }) {
                Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle") // Uses different icons for completed/incomplete tasks
                    .foregroundColor(task.isCompleted ? Color("Color1") : .gray) // Changes color based on completion status
                    .imageScale(.large) // Makes the icon slightly larger
            }
        }
        .padding() // Adds padding around the row
        .background(.gray.opacity(0.2))
        .cornerRadius(10) // Rounds the corners of the row
        .transition(.opacity.combined(with: .scale)) // Smooth transition when appearing/disappearing
    }
}



