//
//  Task.swift
//  Class_Task4
//
//  Created by Taibah Valley Academy on 3/18/25.
//

import SwiftUI

// MARK: - Task Model
struct Task: Identifiable, Equatable {
    let id = UUID()
    var title: String
    var description: String
    var isCompleted: Bool
}
