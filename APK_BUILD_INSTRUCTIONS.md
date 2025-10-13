# 📱 MrComic APK Build Instructions

## 🎯 APK v1.1.0 Ready for Download

**APK файл успешно собран и готов к использованию!**

### 📊 Build Information
- **Version**: 1.1.0 (debug)
- **Size**: 151.8 MB
- **Target SDK**: Android 34 (API 34)
- **Min SDK**: Android 8.0 (API 26)
- **Build Date**: October 13, 2025

### 🔧 How to Build APK

If you want to build the APK yourself, follow these steps:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Leostrange/Mr.Comic.git
   cd Mr.Comic
   ```

2. **Set up Android SDK:**
   - Install Android Studio
   - Set up Android SDK API 34
   - Configure `ANDROID_HOME` environment variable

3. **Build the APK:**
   ```bash
   ./gradlew :android:app:assembleDebug
   ```

4. **Find the APK:**
   - Location: `android/app/build/outputs/apk/debug/app-debug.apk`
   - Size: ~151.8 MB

### 🚀 Features Included

- ✅ **Comic Reading**: CBZ, CBR, PDF support
- ✅ **Advanced Gestures**: Zoom, pan, tap controls
- ✅ **Theme Customization**: Multiple themes available
- ✅ **Settings Persistence**: Settings saved between sessions
- ✅ **Page Caching**: Preloading for smooth reading
- ✅ **OCR Features**: Text recognition capabilities
- ✅ **Modern UI**: Material Design 3 interface

### 📱 Installation

1. Download the APK file
2. Enable "Install from unknown sources" in Android settings
3. Install the APK on your Android device
4. Launch MrComic and start reading!

### 🛠️ Technical Details

- **Architecture**: Clean Architecture with modular design
- **UI Framework**: Jetpack Compose
- **Database**: Room
- **Dependency Injection**: Hilt
- **Image Loading**: Coil
- **Navigation**: Navigation Compose

### 📋 Recent Improvements (v1.1.0)

- Fixed reader gestures and scaling modes
- Enhanced CBZ file support from file manager
- Improved settings persistence between sessions
- Semi-transparent reader interface for better visibility
- Updated to Android SDK 34
- Enhanced zoom controls and tap zones

---

**APK is ready for testing and deployment!** 🎉

*Built successfully on October 13, 2025*