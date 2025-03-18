//
//  TaskAddView.swift
//  Class_Task4
//
//  Created by Taibah Valley Academy on 3/18/25.
//

import SwiftUI

struct TaskAddView: View {
    
    // Access the shared TaskModelView using @EnvironmentObject
    @EnvironmentObject var viewModel: TaskModelView
    
    // Environment property to dismiss the view when needed
    @Environment(\.dismiss) private var dismiss
    
    // State variables to store user input for a new task
    @State var title = "" // Task title
    @State var description = "" // Task description
    @State var isCompleted = false // Task completion status (default: false)
    
    var body: some View {
        NavigationStack {
            VStack {
                // Form container for structured input fields
                Form {
                    // Text field for entering the task title
                    TextField("Title", text: $title)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .padding()

                    // Text field for entering the task description
                    TextField("Description", text: $description)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .padding()

                    // Custom button to add a new task and dismiss the view
                    CustomButton(title: "Add", background: Color("Color2")) {
                        viewModel.addTask(title: title, description: description)
                        dismiss()
                    }
                }
            }
            .navigationTitle("Add To-Do") // Sets the navigation title
        }
    }
}

