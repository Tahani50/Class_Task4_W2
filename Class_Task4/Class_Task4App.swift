//
//  Class_Task4App.swift
//  Class_Task4
//
//  Created by Taibah Valley Academy on 3/18/25.
//

import SwiftUI

@main
struct Class_Task4App: App {
    @StateObject var viewModel = TaskModelView()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
