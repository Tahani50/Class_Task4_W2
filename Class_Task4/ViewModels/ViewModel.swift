//
//  ViewModel.swift
//  Class_Task4
//
//  Created by Taibah Valley Academy on 3/18/25.
//

import SwiftUI

// ViewModel class that manages the task
class TaskModelView: ObservableObject {
    // List of tasks, stored as an array of Task objects
    @Published var items = [
        Task(
            title: "Buy Groceries",
            description: "Purchase vegetables, fruits, and dairy products.",
            isCompleted: false
        ),
        Task(
            title: "Workout",
            description: "Go for a morning run and do strength training.",
            isCompleted: false
        ),
        Task(
            title: "Read Book",
            description: "Read 30 pages of 'Atomic Habits'.",
            isCompleted: false
        ),
        Task(
            title: "Call Mom",
            description: "Check in with Mom and catch up on family updates.",
            isCompleted: false
        )
    ]
    
    // MARK: - Task Actions
    
    // Toggles the completion status of a task.
    func toggleTaskCompletion(_ item: Task) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            withAnimation {
                items[index].isCompleted.toggle() // Toggle completion status
            }
        }
    }
    
    // Adds a new task to the task list.
    func addTask(title: String, description: String) {
        let newTask = Task(
            title: title,
            description: description,
            isCompleted: false
        )
        
        withAnimation {
            items.append(newTask) // Append the new task to the list
        }
    }
    
    // Deletes a task from the list by its ID.
    func deleteTaskById(_ item: Task) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            withAnimation {
                items.remove(at: index) // Remove the task
            }
        }
    }
}
