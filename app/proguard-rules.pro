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
# Keep PDFBox-Android classes (Java package uses underscore)
-keep class com.tom_roush.** { *; }
-dontwarn com.tom_roush.**
# Keep SLF4J bindings
-keep class org.slf4j.** { *; }
-dontwarn org.slf4j.**

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

# XML PARSER CONFLICT RESOLUTION
# Fix R8 error: Library class android.content.res.XmlResourceParser implements program class org.xmlpull.v1.XmlPullParser
-dontwarn org.xmlpull.v1.**
-dontwarn org.kxml2.**
-dontwarn android.content.res.XmlResourceParser

# Keep XML parser classes but allow R8 to handle conflicts
-keep class org.xmlpull.v1.XmlPullParser { *; }
-keep class org.xmlpull.v1.XmlPullParserFactory { *; }

# Ignore XML parser implementation conflicts
-dontnote org.xmlpull.v1.**
-dontnote android.content.res.XmlResourceParser

# Allow R8 to optimize XML parsing
-keepclassmembers class * implements org.xmlpull.v1.XmlPullParser {
    public <methods>;
}

# EPUB library XML handling (disabled for now)
-dontwarn nl.siegmann.epublib.**

# === MISSING CLASSES HANDLING ===

# Apache Commons Compress optional dependencies
-dontwarn com.gemalto.jp2.**
-dontwarn com.github.luben.zstd.**
-dontwarn org.apache.commons.codec.**
-dontwarn org.brotli.dec.**
-dontwarn org.objectweb.asm.**
-dontwarn org.tukaani.xz.**

# Keep commons compress core classes
-keep class org.apache.commons.compress.** { *; }

# Optional compression libraries - ignore if not present
-dontwarn com.gemalto.jp2.JP2Decoder
-dontwarn com.gemalto.jp2.JP2Encoder
-dontwarn com.github.luben.zstd.BufferPool
-dontwarn com.github.luben.zstd.ZstdInputStream
-dontwarn com.github.luben.zstd.ZstdOutputStream
-dontwarn org.apache.commons.codec.Charsets
-dontwarn org.apache.commons.codec.digest.PureJavaCrc32C
-dontwarn org.apache.commons.codec.digest.XXHash32
-dontwarn org.brotli.dec.BrotliInputStream

# ASM library (used by commons compress for pack200)
-dontwarn org.objectweb.asm.AnnotationVisitor
-dontwarn org.objectweb.asm.Attribute
-dontwarn org.objectweb.asm.ClassReader
-dontwarn org.objectweb.asm.ClassVisitor
-dontwarn org.objectweb.asm.FieldVisitor
-dontwarn org.objectweb.asm.Label
-dontwarn org.objectweb.asm.MethodVisitor
-dontwarn org.objectweb.asm.Type

# XZ compression library
-dontwarn org.tukaani.xz.ARMOptions
-dontwarn org.tukaani.xz.ARMThumbOptions
-dontwarn org.tukaani.xz.DeltaOptions
-dontwarn org.tukaani.xz.FilterOptions
-dontwarn org.tukaani.xz.FinishableOutputStream
-dontwarn org.tukaani.xz.FinishableWrapperOutputStream
-dontwarn org.tukaani.xz.IA64Options
-dontwarn org.tukaani.xz.LZMA2InputStream
-dontwarn org.tukaani.xz.LZMA2Options
-dontwarn org.tukaani.xz.LZMAInputStream
-dontwarn org.tukaani.xz.LZMAOutputStream
-dontwarn org.tukaani.xz.MemoryLimitException
-dontwarn org.tukaani.xz.PowerPCOptions
-dontwarn org.tukaani.xz.SPARCOptions
-dontwarn org.tukaani.xz.SingleXZInputStream
-dontwarn org.tukaani.xz.UnsupportedOptionsException
-dontwarn org.tukaani.xz.X86Options
-dontwarn org.tukaani.xz.XZ
-dontwarn org.tukaani.xz.XZInputStream
-dontwarn org.tukaani.xz.XZOutputStream