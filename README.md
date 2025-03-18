# To-Do List App

## Description
The **To-Do List App** is a simple task management application built with SwiftUI. It allows users to create, view, and delete tasks while maintaining a clean and smooth user experience. The app now includes multi-screen navigation, custom theming, and smooth animations for adding and deleting tasks.

## Features
- **Multi-Screen Navigation**: Uses `NavigationStack` to navigate between the To-Do List view and a detailed task view.
- **Custom Theming**: Implements a `ColorSet` for consistent UI colors, supports dark mode, and applies custom fonts for better readability.
- **Smooth UI Animations**:
  - Fade-in animation when adding tasks.
  - Smooth `.transition()` effects when deleting tasks.

## How It Works
1. **Add a Task**: Tap the add button to create a new task, which appears with a fade-in animation.
2. **View Task Details**: Tap on a task to navigate to a detailed view with more information.
3. **Delete a Task**: Swipe left on a task to remove it, triggering a smooth transition effect.
4. **Theme Support**: The app automatically adapts to dark mode and applies custom colors and fonts for a consistent UI.

## Installation & Setup
1. Clone the repository:
   ```sh
   git clone <repository_url>
   ```
2. Open the project in Xcode.
3. Run the app on a simulator or a physical device.

## Technologies Used
- **SwiftUI** for UI design
- **NavigationStack** for screen navigation
- **ColorSet** for consistent theming
- **Animation Modifiers** for smooth UI interactions

