
# 🌱 Riverpod Example Repository

This repository contains simple and clean examples of how to use [**Riverpod**](https://riverpod.dev/) in your Flutter applications for effective and scalable state management.

## 🧠 What is Riverpod?
Riverpod is a robust and compile-safe state management library for Flutter, offering improved testability, modularity, and performance compared to other solutions.

---

## 📱 Current Examples

### 1. 🔢 Counter App

A simple app that demonstrates how to use `StateProvider` to manage integer state.

- ✅ Increment & decrement functionality
- ✅ Live UI updates using `ref.watch()`

> 📂 Path: `lib/examples/counter_app/`

---

### 2. 💡 Switch Button App

An interactive switch button example using `StateProvider<bool>`.

- ✅ Toggle switch state
- ✅ Reactive UI with `ConsumerWidget`

> 📂 Path: `lib/examples/switch_btn/`

---

### 3. 🎚️ Slider & Opacity Example

An animated UI where a slider controls the opacity of a colored container using `StateProvider<double>`.

- ✅ Smooth slider interaction
- ✅ Real-time opacity change
- ✅ Clean and minimal implementation

> 📂 Path: `lib/examples/slider_widget/`

---

### 4. 🎨 Multi State Example (Radial, Sweep, Linear Gradient)

An advanced example managing multiple UI states using a **single `StateProvider` with custom model class**.

- ✅ Uses `AppState` model with `copyWith()`
- ✅ One provider, multiple sliders (Radial, Sweep, Linear)
- ✅ Each slider affects different gradient container in UI

> 📂 Path: `lib/examples/multiple_states/`

---

### 5. 🔐 Password TextField with Toggle Visibility

An elegant password input field with eye icon to toggle visibility. Built using `StateNotifierProvider` for managing input value and visibility state.

- ✅ Uses `TextFieldState` model with `copyWith()`
- ✅ Real-time preview of input text
- ✅ Toggle password visibility using eye icon
- ✅ Clean state separation in notifier

> 📂 Path: `lib/examples/text_field_example/`
---

### 6. 📄 ToDo App

A fully functional task management app using StateNotifierProvider for managing a list of tasks. This example demonstrates the use of advanced provider logic, separation of concerns, and widget composition.

- ✅ Add, edit, and delete todos
- ✅ Dynamic state management with StateNotifier
- ✅ Clean architecture using models, providers, widgets, and screens
- ✅ Responsive and minimal UI

> 📂 Path: lib/examples/todo_app/

## 📂 Project Structure:

```
lib/examples/todo_app/
│
├── models/
│   └── todo_model.dart          # Data model for todo items
│
├── providers/
│   └── todo_provider.dart       # StateNotifier managing todo list
│
├── screens/
│   ├── todo_screen.dart         # Main screen displaying todo list
│   └── add_edit_screen.dart     # Screen to add or edit a todo
│
├── widgets/
│   └── todo_tile.dart           # Reusable tile widget for todos
│
└── main.dart                    # App entry point
```

---
### 7. ❤️ Favourite App

A real-world example of search, filter, and mark items as favourite using StateNotifierProvider. This app demonstrates how to:

- ✅ Manage a list of items with dynamic search and favourite toggle
- ✅ Implement clean filtering logic using a custom state class FavouriteStats
- ✅ Use PopupMenuButton for filtering between All & Favourite items
- ✅ Clean architecture with proper model and notifier separation
- ✅ Smooth UI updates and Riverpod logic separation

> 📂 Path: lib/examples/favourite_app/

## 📂 Project Structure:

```
lib/examples/favourite_app/
│
├── model/
│   └── item_model.dart           # Data model for each item
│
├── provider/
│   └── favourite_provider.dart   # StateNotifier managing item list, search, filter
│
└── screens/
    └── favourite_screen.dart     # Main screen with search field, filter, and UI
```
---
### 8. 👤 User List App (FutureProvider Example)

A practical example showing how to fetch user data from an API using `FutureProvider`. This demonstrates clean separation of network logic, model, provider, and UI.

- ✅ Uses `FutureProvider` to call REST API (https://reqres.in/api/users?page=2)
- ✅ Clean JSON to model conversion (`UserModel`, `Data`)
- ✅ Displays user name, email, and avatar in list
- ✅ Error and loading handling built-in

> 📂 Path: lib/examples/user_list_app/
```
lib/examples/user_list_app/
│
├── model/
│   └── user_model.dart           # Data model for User API response
│
├── provider/
│   └── user_list_provider.dart    # FutureProvider fetching user data
│
└── screens/
    └── user_screen.dart     # Screen displaying user list with avatar & name
```
---
### 9. ⏱ Live Time App (StreamProvider Example)

An example showing how to use `StreamProvider` to handle real-time updates. This app displays the current time updating every second.

- ✅ Uses `Stream.periodic` to emit current `DateTime` every second
- ✅ Real-time updates on screen
- ✅ Demonstrates stream handling, loading & error state
- ✅ Fully responsive for any screen
- 🕓 Bold centered time (HH:MM:SS)
- 🌌 Dark gradient background
- ✨ Smooth glass-style card

> 📂 Path: lib/examples/time_app/
---
### 10. 👨‍💼 User Detail App (FutureProvider.family Example)

This example showcases the use of `FutureProvider.family` to dynamically fetch user details based on a passed `userId`. It demonstrates how to pass arguments to providers for reusable logic.

- ✅ Uses `FutureProvider.family<User, int>` for ID-based user fetching
- ✅ Fetches from REST API (`https://reqres.in/api/users/{id}`)
- ✅ Navigates from user list to user detail screen
- ✅ Real-time loading, error, and data display
- ✅ Clean separation of model, provider, and screens

> 📂 Path: `lib/examples/user_detail_app/`
```
lib/examples/user_list_app/
│
├── model/
│   └── user_model.dart           # Data model for User API response
│
├── provider/
│   └── user_list_provider.dart    # FutureProvider fetching user data
│
└── screens/
    └── user_screen.dart     # Screen displaying user list with avatar & name
```
---
## 🚀 Getting Started

### 🔧 Setup
```bash
git clone https://github.com/Shehryar-dev/riverpod_example.git
cd riverpod_example
flutter pub get
flutter run
```

---

## 📦 Dependencies

```yaml
flutter_riverpod: ^2.4.0
```

---

## 📚 Upcoming Examples

More Riverpod examples will be added soon:
- 📄 Todo List App
- 🛒 Cart Management
- 🎨 Theme Switcher
- 📍 Location Provider

Stay tuned!

---

## 🙌 Contributing

Feel free to fork the repo and add your own examples. If you make something cool with Riverpod, submit a pull request!

---

## 🧑‍💻 Author

**Shehriyar Saleem**  
[GitHub](https://github.com/Shehryar-dev) | [LinkedIn](https://www.linkedin.com/in/shehryarkhandiv)

---
