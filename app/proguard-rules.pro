# Add project specific ProGuard rules here.
# By default, the flags in this file are applied to all build types.
# You can find the rules for consumer pro-guards of libraries in the META-INF/proguard/ directory.

# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in C:\Users\xmeta\projects\Mr.Comic-Reborn/app/build/intermediates/proguard-files/proguard-android-optimize.txt
# Note that proguard-android-optimize.txt contains the same rules as proguard-android.txt
# but with aditional optimizations.
-keep class com.mrcomic.** { *; }
-keep class * extends androidx.room.RoomDatabase 