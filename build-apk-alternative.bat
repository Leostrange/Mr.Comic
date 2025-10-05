@echo off
echo ========================================
echo Alternative Mr.Comic APK Build Script
echo ========================================
echo.

echo Checking for Android Studio...
if exist "%LOCALAPPDATA%\Android\Sdk\platform-tools\adb.exe" (
    echo Android SDK found!
) else (
    echo WARNING: Android SDK not found in default location
)

echo.
echo Please try one of these options:
echo.
echo Option 1: Build in Android Studio
echo   1. Open Android Studio
echo   2. Open this project folder
echo   3. Go to Build ^> Build Bundle(s) / APK(s) ^> Build APK(s)
echo   4. Wait for build to complete
echo   5. APK will be in: android\app\build\outputs\apk\debug\
echo.
echo Option 2: Use gradlew with offline mode
echo   Run: gradlew :android:app:assembleDebug --offline
echo.
echo Option 3: Clear Gradle daemon and retry
echo   Run: gradlew --stop
echo   Then: gradlew :android:app:assembleDebug
echo.
echo ========================================
echo.
echo Press 1 to try stopping Gradle daemon and rebuilding
echo Press 2 to exit
echo.
choice /c 12 /n /m "Your choice: "

if errorlevel 2 goto :end
if errorlevel 1 goto :rebuild

:rebuild
echo.
echo Stopping Gradle daemon...
call gradlew --stop
timeout /t 3 /nobreak >nul

echo.
echo Attempting build...
call gradlew :android:app:assembleDebug --no-build-cache

:end
echo.
pause
