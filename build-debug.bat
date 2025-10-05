@echo off
echo ========================================
echo Building Mr.Comic Debug APK
echo ========================================
echo.

echo Step 1: Cleaning previous builds...
call gradlew clean

echo.
echo Step 2: Building debug APK...
call gradlew :android:app:assembleDebug

echo.
echo ========================================
echo Build completed!
echo ========================================
echo.
echo APK location: android\app\build\outputs\apk\debug\app-debug.apk
echo.
pause
