
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

**Shehryar Saleem**  
[GitHub](https://github.com/Shehryar-dev) | [LinkedIn](https://www.linkedin.com/in/shehryarkhandiv)

---
