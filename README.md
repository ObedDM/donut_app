# 🍩 Donut Shop App

A colorful and interactive Flutter application inspired by a donut shop UI. Users can browse through delicious categories like donuts, burgers, and smoothies. Each product is displayed in a fun, responsive layout showing its flavor, price, and a beautiful image.

---

### ✨ Key Features

- Browse multiple food categories like Donuts, Burgers, and Pizza.
- View item details including flavor, brand, and price.
- An interactive and user-friendly interface.
- A responsive layout that works on different screen sizes.

---

### 🛠️ Main Widgets Used

| Widget | Description |
| :--- | :--- |
| **`HomePage`** | The main screen of the app, which holds the layout and interactive elements. |
| **`MyTab`** | A custom widget to handle the navigation between food categories. |
| **`DonutTile`** | A reusable card to display information for each individual donut or item. |
| **`Scaffold`** | Provides the basic structure (skeleton) for the app's screen, including the `AppBar`.|

---

### 💻 Technologies

This project was built using:
- **Flutter**
- **Dart**
  
---

### 📂 Project Structure

donut_app/
├── .gitignore
├── .metadata
├── README.md
├── analysis_options.yaml
├── pubspec.lock
├── pubspec.yaml
├── android/
├── ios/
├── lib/
│ ├── icons/
│ ├── images/
│ ├── screens/
│ │ └── home_page.dart
│ ├── tab/
│ │ ├── burger_tab.dart
│ │ ├── donut_tab.dart
│ │ ├── pancake_tab.dart
│ │ ├── pizza_tab.dart
│ │ └── smoothie_tab.dart
│ ├── utils/
│ │ ├── donut_tile.dart
│ │ └── my_tab.dart
│ └── main.dart
├── linux/
├── macos/
├── test/
├── web/
└── windows/

---

### 🎬 Demo

![App Demo GIF](/assets/demo.gif)

---

### 🎓 Academic Info

- **Course:** Mobile Applications Programming
- **Instructor:** Rodrigo Fidel Gaxiola Sosa

---

### 🎨 Credits

This project's UI/UX was inspired by a design found on Dribbble.

- **Original Design:** [App UI by Ishtiaq Khan Parag](https://dribbble.com/shots/19649140-App-UI)
