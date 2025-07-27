# Add project specific ProGuard rules here.
# By default, the flags in this file are applied to all build types.
# You can find the rules for consumer pro-guards of libraries in the META-INF/proguard/ directory.

# === PERFORMANCE OPTIMIZATIONS ===

# Keep main application classes
-keep class com.mrcomic.** { *; }
-keep class com.example.mrcomic.** { *; }

# Keep Room database classes
-keep class * extends androidx.room.RoomDatabase
-keep @androidx.room.Entity class * { *; }
-keep @androidx.room.Dao class * { *; }

# Keep analytics classes for proper functioning
-keep class com.example.core.analytics.** { *; }

# Keep Hilt classes
-keep class dagger.hilt.** { *; }
-keep class javax.inject.** { *; }
-keep @dagger.hilt.android.lifecycle.HiltViewModel class * { *; }

# Keep Compose runtime classes for proper performance
-keep class androidx.compose.runtime.** { *; }
-keep class androidx.compose.ui.** { *; }

# Keep Retrofit and OkHttp classes
-keep class retrofit2.** { *; }
-keep class okhttp3.** { *; }

# Keep Kotlin Coroutines
-keep class kotlinx.coroutines.** { *; }

# Keep model classes (prevent obfuscation of data classes)
-keep class com.example.**.model.** { *; }
-keep class com.example.**.data.** { *; }

# Keep classes with native methods
-keepclasseswithmembernames class * {
    native <methods>;
}

# Keep enum classes
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# Keep Parcelable classes
-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}

# Remove logging in release builds for performance
-assumenosideeffects class android.util.Log {
    public static boolean isLoggable(java.lang.String, int);
    public static int v(...);
    public static int i(...);
    public static int w(...);
    public static int d(...);
    public static int e(...);
}

# Optimize reflection usage
-keepattributes Signature
-keepattributes *Annotation*
-keepattributes EnclosingMethod
-keepattributes InnerClasses
-keepattributes SourceFile,LineNumberTable

# Archive handling libraries
-keep class org.apache.commons.compress.** { *; }
-keep class com.github.junrar.** { *; }
-keep class net.sf.sevenzipjbinding.** { *; }

# PDF libraries
-keep class com.shockwave.pdfium.** { *; }
-keep class org.vudroid.djvulibre.** { *; }

# Image processing optimizations
-keep class android.graphics.** { *; }
-keep class androidx.compose.ui.graphics.** { *; }

# Performance monitoring
-keep class com.example.core.analytics.PerformanceProfiler { *; }
-keep class com.example.core.reader.ImageOptimizer { *; }

# Optimization flags
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*
-optimizationpasses 5
-allowaccessmodification
-dontpreverify 