@echo off
echo ========================================
echo Extracting crash log from device
echo ========================================
echo.

echo Checking for connected devices...
"%LOCALAPPDATA%\Android\Sdk\platform-tools\adb.exe" devices

echo.
echo Extracting last crash...
"%LOCALAPPDATA%\Android\Sdk\platform-tools\adb.exe" logcat -d > crash_log.txt

echo.
echo Filtering for errors...
findstr /i "FATAL AndroidRuntime Exception Error com.example.mrcomic" crash_log.txt > crash_filtered.txt

echo.
echo ========================================
echo Crash log saved to:
echo   - crash_log.txt (full log)
echo   - crash_filtered.txt (filtered)
echo ========================================
echo.

type crash_filtered.txt

pause
