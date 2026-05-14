# Mr.Comic ProGuard Rules

# Keep app entry points
-keep class com.example.mrcomic.** { *; }

# Hilt
-keepclassmembers,allowobfuscation class * {
    @javax.inject.Inject <init>(...);
    @javax.inject.Inject <fields>;
}

# Room
-keep class * extends androidx.room.RoomDatabase
-keep @androidx.room.Entity class *
-keep @androidx.room.Dao class *

# Gson
-keepattributes Signature
-keepattributes *Annotation*
-dontwarn sun.misc.**
-keep class com.google.gson.** { *; }

# Coil
-dontwarn okhttp3.**
-dontwarn okio.**

# junrar
-keep class com.github.junrar.** { *; }

# zip4j
-keep class net.lingala.zip4j.** { *; }

# Jsoup can reference its optional re2j regex backend even when the dependency
# is absent; the default regex backend works without these classes.
-dontwarn com.google.re2j.**

# slf4j binder is optional at runtime; libraries fall back gracefully when it's absent.
-dontwarn org.slf4j.impl.StaticLoggerBinder

# PDF: используем встроенный android.graphics.pdf.PdfRenderer — внешние lib убраны
-dontwarn org.apache.**

# Media3 / ExoPlayer
-keep class androidx.media3.** { *; }
-dontwarn androidx.media3.**

# MLKit
-keep class com.google.mlkit.** { *; }
-dontwarn com.google.mlkit.**

# Kotlin coroutines
-keepnames class kotlinx.coroutines.internal.MainDispatcherFactory {}
-keepnames class kotlinx.coroutines.CoroutineExceptionHandler {}
-keepclassmembernames class kotlinx.** {
    volatile <fields>;
}

# Keep Serializable
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}
