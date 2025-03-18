//
//  TaskListView.swift
//  Class_Task4
//
//  Created by Taibah Valley Academy on 3/18/25.
//

import SwiftUI

struct ToDoListView: View {
    
    // Access the shared TaskModelView using @EnvironmentObject
    @EnvironmentObject var viewModel: TaskModelView
    
    var body: some View {
        NavigationStack {
                ScrollView { // Enables vertical scrolling for tasks
                    VStack {
                        ForEach(viewModel.items) { item in // Loops through all tasks
                            HStack {
                                // Navigation link to open the TaskDetailView when tapped
                                NavigationLink(destination: TaskDetailView(task: item)) {
                                    TaskRowView(task: item, viewModel: viewModel)
                                        .transition(.opacity.combined(with: .scale)) // Smooth appearance transition
                                        .animation(.easeInOut, value: viewModel.items) // Animates task list changes
                                }
                                
                                // Button to delete a task
                                Button(action: {
                                    withAnimation {
                                        viewModel.deleteTaskById(item) // Deletes the selected task
                                    }
                                }) {
                                    Image(systemName: "trash") // Trash icon
                                        .foregroundColor(Color("Color2")) // Makes the icon red for visibility
                                }
                            }
                        }
                    }
                    .padding() // Adds spacing around the list
                }
            
            .navigationTitle("To-Do List") // Sets the screen title
            .toolbar {
                // Add task button (top-right corner)
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: TaskAddView()) {
                        Label("New", systemImage: "plus") // "+" icon for adding tasks
                    }
                }
                   
                    
                }
            }
        }
      
    }





