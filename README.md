# 🌤️ Weather App

A simple and modern **Flutter Weather Application** that displays real-time weather information for any city using a weather API.

---

## 🚀 Features

- Search weather by city name
- Display current temperature
- Show weather condition (sunny, cloudy, rain, etc.)
- Humidity and wind speed info
- Dynamic UI based on weather state
- Clean and responsive design

---

## 🧰 Tech Stack

- Flutter 💙
- Dart
- REST API (OpenWeatherMap or similar)
- BLoC / Cubit (State Management)

---

## 📱 Screens

- Home Screen
  - Search bar for city input
  - Weather display card
- Loading State
- Error State (invalid city / network error)

---

## 🔌 API Used

This app uses a weather API such as:

- OpenWeatherMap API  
(You need to add your API key in the project)

---

## ⚙️ Installation

```bash
git clone https://github.com/your-username/weather-app.git
cd weather-app
flutter pub get
flutter run
---
📦 Project Structure
lib/
│
├── cubits/
├── models/
├── services/
├── views/
├── widgets/
└── main.dart
