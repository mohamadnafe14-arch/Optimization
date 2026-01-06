# To-Do App

A modern, persistent To-Do application built with Flutter. Keep track of your tasks efficiently with a clean dark-themed interface.

## 🚀 Features

- **Task Management**: Add, edit, delete, and toggle tasks as completed.
- **Persistence**: All data is stored locally using **Hive**, ensuring your tasks are saved even after closing the app.
- **Filtering**: Easily filter tasks by state (All, Completed, Pending).
- **Search**: Real-time search functionality to find specific tasks.
- **Responsive Design**: Built with `flutter_screenutil` to adapt to different screen sizes.
- **Dark Mode**: Sleek dark theme for reduced eye strain.

## 🛠️ Tech Stack

- **Framework**: [Flutter](https://flutter.dev/)
- **State Management**: [Provider](https://pub.dev/packages/provider)
- **Local Database**: [Hive](https://pub.dev/packages/hive)
- **Routing**: [GoRouter](https://pub.dev/packages/go_router)
- **Responsiveness**: [flutter_screenutil](https://pub.dev/packages/flutter_screenutil)

## 📂 Project Structure

```
lib/
├── core/
│   ├── models/      # Data models (Hive adapters)
│   ├── providers/   # State management logic
│   └── utils/       # Constants and Routes
├── features/
│   ├── home/        # Home screen & Add Task screen
│   └── splash/      # Splash screen
└── main.dart        # Entry point & App Config
```

## 🏁 Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) installed.

### Installation

1. **Clone the repository**:
   ```bash
   git clone <repository-url>
   cd to_do_app
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the app**:
   ```bash
   flutter run
   ```

### Code Generation (Hive)

If you modify the models, run the build runner to regenerate Hive adapters:

```bash
dart run build_runner build
```
