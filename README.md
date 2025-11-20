# 🎯 Flutter Quiz App

An interactive mobile quiz application to test your knowledge about Flutter. Makes learning Flutter fun with a modern and user-friendly interface.

## ✨ Features

- 📱 **Mobile Platform Support**: Android and iOS
- 🎨 **Modern Design**: Elegant interface with gradient background and Google Fonts
- 🎯 **6 Question Quiz**: Questions testing fundamental Flutter knowledge
- ✅ **Instant Feedback**: Correct/incorrect indicators for each question
- 📊 **Detailed Results Screen**: View results for all questions
- 🔄 **Restart Feature**: Ability to retake the quiz
- 🎲 **Shuffled Answers**: Answers are randomly ordered in each quiz

## 📸 Screenshots

### Start Screen
Welcome screen that appears when you open the app.

### Question Screen
Multiple choice questions with 4 options for each question.

### Results Screen
View your correct/incorrect answers and overall score when the quiz is completed.

## 🚀 Installation

### Requirements

- Flutter SDK (3.5.4 or higher)
- Dart SDK
- Android Studio (for Android development)
- Xcode (for iOS development - macOS only)
- VS Code or Android Studio (development environment)

### Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/username/quiz_app.git
   cd quiz_app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

## 📦 Platform-Specific Builds

### Android

**Build APK:**
```bash
flutter build apk --release
```

**Build App Bundle (for Google Play Store):**
```bash
flutter build appbundle --release
```

### iOS

**Build iOS:**
```bash
flutter build ios --release
```

**Note:** macOS and Xcode are required for iOS builds.

## 🏗️ Project Structure

```
lib/
├── main.dart                 # Application entry point
├── test.dart                 # Main test widget
├── baslangic_ekrani.dart     # Start screen
├── soru_ekrani.dart          # Question display screen
├── sonuc_ekrani.dart         # Results display screen
├── cevap_butonu.dart         # Answer button widget
├── modeller/
│   └── test_sorulari.dart   # Question model
├── veri/
│   └── sorular.dart          # Question data
└── sonuclar/
    ├── sonuclar.dart         # Results list widget
    ├── sonuc_itemler.dart    # Result item widget
    └── sonuc_isaretler.dart  # Correct/incorrect indicators
```

## 🛠️ Technologies Used

- **Flutter**: Cross-platform mobile UI framework
- **Dart**: Programming language
- **Google Fonts**: Custom font support
- **Material Design**: UI components

## 📝 Questions

The app includes questions on the following topics:
- Widget structure
- StatelessWidget vs StatefulWidget
- setState() usage
- Flutter UI creation

## 📱 Supported Platforms

- ✅ Android (minimum SDK: 21)
- ✅ iOS (minimum iOS: 12.0)

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork this repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is open source and licensed under the MIT License.

## 👨‍💻 Developer

This project was developed as an educational mobile quiz app for those who want to learn Flutter.

## 🔗 Useful Links

- [Flutter Documentation](https://docs.flutter.dev/)
- [Dart Documentation](https://dart.dev/)
- [Flutter Packages](https://pub.dev/)
- [Flutter Mobile Development Guide](https://docs.flutter.dev/deployment/android)

## 📊 Version

**v1.0.0** - Initial release

---

⭐ If you liked this project, don't forget to give it a star!

