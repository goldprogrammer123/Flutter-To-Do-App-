
# 📝 Flutter To-Do List App

A beautiful, fully-featured To-Do List mobile application built with Flutter for **IS 325: Mobile Application Development**.

---

## 👥 Group Members

| # | Full Name | Student ID | Role |
|---|-----------|------------|------|
| 1 | [Member 1 Name] | [Student ID] | Lead Developer |
| 2 | [Member 2 Name] | [Student ID] | UI/UX Design |
| 3 | [Member 3 Name] | [Student ID] | Testing & Documentation |
| 4 | [Member 4 Name] | [Student ID] | State Management |

---

## ✨ Features

- ✅ **Add tasks** — Tap the `+` FAB or "Add First Task" button to create a new task with a title
- 📋 **View tasks** — Scrollable task list with All / Pending / Done filter tabs
- ☑️ **Complete tasks** — Tap a task or swipe right to mark it complete (with animated strikethrough)
- 🗑️ **Delete tasks** — Swipe left and tap Delete, or long-press to edit/delete
- 💾 **Local persistence** — Tasks are saved using `shared_preferences` and survive app restarts
- ✏️ **Edit tasks** — Long-press any task or swipe left → Edit to update the title
- 📊 **Progress summary** — Header bar showing total / done / pending counts with a progress bar
- 🧹 **Clear completed** — Bulk-remove all completed tasks from the overflow menu

---

## 🗂️ Project Structure

```
lib/
├── main.dart                     # App entry point
├── models/
│   └── task.dart                 # Task data model with JSON serialization
├── providers/
│   └── task_provider.dart        # State management (ChangeNotifier)
├── services/
│   └── task_service.dart         # SharedPreferences persistence layer
├── screens/
│   └── home_screen.dart          # Main screen with tab navigation
├── widgets/
│   ├── task_card.dart            # Individual task card with swipe actions
│   ├── add_task_sheet.dart       # Bottom sheet for adding/editing tasks
│   ├── task_summary_bar.dart     # Stats header widget
│   └── empty_state.dart          # Empty list placeholder
└── theme/
    └── app_theme.dart            # App-wide theme & colour palette
```

---

## 🚀 How to Run the App

### Prerequisites

| Tool | Minimum Version |
|------|----------------|
| Flutter SDK | 3.0.0 |
| Dart SDK | 3.0.0 |
| Android Studio / VS Code | Latest |
| Android Emulator or physical device | Android 5.0+ / iOS 12+ |

### Steps

**1. Clone the repository**
```bash
git clone https://github.com/<your-username>/flutter-todo-app.git
cd flutter-todo-app
```

**2. Install dependencies**
```bash
flutter pub get
```

**3. Run on a connected device / emulator**
```bash
flutter run
```

**4. Build a release APK (optional)**
```bash
flutter build apk --release
```
The APK will be at `build/app/outputs/flutter-apk/app-release.apk`.

---

## 📸 Screenshots

| Screen | Preview |
|--------|---------|
| Main task list | ![Main Screen](screenshots/main_screen.png) |
| Adding a task | ![Add Task](screenshots/add_task.png) |
| Completing a task | ![Complete Task](screenshots/complete_task.png) |
| Deleting a task | ![Delete Task](screenshots/delete_task.png) |

---

## 📦 Dependencies

| Package | Version | Purpose |
|---------|---------|---------|
| `provider` | ^6.1.1 | State management |
| `shared_preferences` | ^2.2.2 | Local data persistence |
| `uuid` | ^4.2.1 | Unique task ID generation |
| `intl` | ^0.18.1 | Date formatting |
| `flutter_slidable` | ^3.0.1 | Swipe-to-action on task cards |
| `google_fonts` | ^6.1.0 | Poppins font family |

---

## 📋 Assignment Checklist

- [x] Add new tasks with a title
- [x] View tasks in a scrollable list
- [x] Mark tasks as complete
- [x] Delete tasks
- [x] Persist tasks locally (SharedPreferences)
- [x] At least 5 demonstration tasks included
- [x] GitHub repository with all source files
- [x] README with group members table
- [x] Run instructions
- [x] Screenshots demonstrating key features

---

## 📧 Submission

**Subject:** Flutter To-Do App Assignment Submission – [Group Name]

**Instructor:** [Instructor Name]

---

*IS 325: Mobile Application Development — Group Assignment 2026*