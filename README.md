# 💳 Astraw Cards Distribution System

A modern **Flutter + Firebase** application for managing and distributing digital Astraw cards between an admin and multiple distributors with custom pricing and wallet-based transactions.

---

## 🚀 Project Overview

This system allows:
- Admin to upload and manage Astraw card codes
- Distributors to purchase cards using their wallet balance
- Custom pricing per distributor
- Secure and real-time transactions using Firebase

---

## 🧩 Features

### 👨‍💼 Admin Features
- Upload card batches (5, 10, 20, 30, 40, 50, 100, 200, 300)
- Manage distributors
- Set custom prices per distributor
- View system statistics

### 🛒 Distributor Features
- Login securely
- View wallet balance
- Buy cards instantly
- View purchased card codes
- Track transaction history

---

## 🎯 Card Values Supported

- 5
- 10
- 20
- 30
- 40
- 50
- 100
- 200
- 300

---

## ⚙️ Tech Stack

### Frontend
- Flutter (Material 3)
- BLoC / Cubit State Management

### Backend
- Firebase Authentication
- Cloud Firestore
- Firebase Cloud Functions

---

## 🗄️ Database Structure

- users → Admin & Distributors
- cards → Card inventory
- prices → Custom pricing per distributor
- transactions → Purchase history

---

## 🔐 Security

- Role-based access (Admin / Distributor)
- Secure authentication via Firebase Auth
- Firestore security rules
- Prevent duplicate card usage
- Atomic transactions using Cloud Functions

---

## 📱 App Screens

- Login Screen
- Distributor Dashboard
- Buy Cards Screen
- Transactions Screen
- Admin Panel
- Upload Cards Screen

---

## 📦 Installation

```bash
git clone https://github.com/your-username/astraw-cards.git
cd astraw-cards
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
