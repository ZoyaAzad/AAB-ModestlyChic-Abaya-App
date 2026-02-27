# 🖤 Modestly Chic – Abaya Fashion App

A modern Flutter-based mobile application designed to showcase and manage modest fashion, specifically abayas. The app provides a seamless experience for users to explore collections, save favorites, and interact with the platform, while also offering admin functionality for content management.

---

## 📌 Project Overview

**Modestly Chic** is a digital platform built to promote modest fashion through an interactive and visually appealing mobile application. The app allows users to browse different categories of abayas, like their favorite designs, and provide feedback. Admin users can manage the content by uploading new designs and descriptions.

This project was developed as part of a **Mobile Computing / Flutter-based application project**, focusing on both frontend UI design and backend integration.

---

## ✨ Features

### 👤 User Side

* 🔐 **User Authentication**

  * Secure login and signup functionality
  * Separate access for users and admins

* 🛍️ **Browse Abaya Categories**

  * Categories include:

    * Kaftan
    * Event Wear
    * Daily Wear
    * Prayer Abayas

* ❤️ **Favorites System**

  * Users can like abayas
  * Liked items are stored in a favorites section

* 📝 **Feedback System**

  * Users can submit feedback with:

    * Email
    * Comments
  * Stored in backend database

---

### 🛠️ Admin Side

* ➕ **Add New Products**

  * Upload images from device
  * Add name and description
  * Assign to specific category

* 📂 **Content Management**

  * Dynamically update app content without changing code

---

## 🏗️ Tech Stack

* **Frontend:** Flutter (Dart)
* **Backend:** Supabase
* **Database:** Supabase Database
* **Storage:** Supabase Storage (for images)
* **Authentication:** Supabase Auth

---

## 📁 Project Structure

```
mobilecomputing_project/
│
├── lib/                # Main application code (UI + logic)
├── android/            # Android-specific configuration
├── ios/                # iOS-specific configuration
├── assets/             # Images and resources
├── pubspec.yaml        # Dependencies and assets
├── pubspec.lock        # Locked dependencies
```

---

## 🔄 Application Flow

1. User opens the app
2. Login or Signup screen appears
3. After authentication:

   * User navigates through categories
   * Views abaya images
   * Likes items or submits feedback
4. Admin can:

   * Add new abayas
   * Update content dynamically

---

## 🧠 Concepts Implemented

* Flutter UI Design
* Navigation & Routing
* State Management (basic)
* Backend Integration (Supabase)
* Authentication System
* Cloud Storage Integration
* CRUD Operations

---

## 🚀 How to Run the Project

1. Install Flutter SDK
2. Clone the repository:

   ```
   git clone https://github.com/your-username/your-repo-name.git
   ```
3. Navigate to the project folder:

   ```
   cd mobilecomputing_project
   ```
4. Install dependencies:

   ```
   flutter pub get
   ```
5. Run the app:

   ```
   flutter run
   ```

---

## 📸 Screenshots



---

## 🎯 Future Improvements

* 🔍 Search functionality
* 🛒 Add-to-cart feature
* 💳 Payment integration
* 🌐 Multi-language support
* 🔔 Notifications

---

## 📜 License

This project is developed for educational purposes.

---

## 🙌 Acknowledgements

* Flutter Documentation
* Supabase Documentation

---

## 👩‍💻 Author

**Zoya Azad**

---

> Built with Flutter 💙 to promote modest fashion digitally
