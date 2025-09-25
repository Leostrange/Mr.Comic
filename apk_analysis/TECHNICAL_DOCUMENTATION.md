# Technical Documentation
## Mr.Comic APK - Video Splash Screen and Icons Integration

### Architecture Overview

This document provides comprehensive technical documentation for the enhanced Mr.Comic application with video splash screen and dynamic app icon functionality.

### System Architecture

#### Module Structure
```
android/
├── app/                          # Main application module
│   ├── splash/                   # Video splash screen implementation
│   └── ui/settings/             # App icon settings UI
├── core-reader/                 # Book reading functionality
├── core-ui/                     # Shared UI components
├── feature-settings/            # Settings feature module
└── shared/                      # Shared utilities
```

#### Key Components

**1. Video Splash Screen System**
- `ModernSplashActivity` - Android 12+ implementation
- `VideoSplashActivity` - Legacy video splash (Android 7-11)
- `OptimizedVideoPlayer` - Hardware-accelerated video playback
- `SplashScreenManager` - Coordination and fallback logic

**2. Dynamic App Icon System**
- `AppIconRepository` - Icon management and persistence
- `AppIconSettingsViewModel` - UI state management
- `AppIconSettingsScreen` - Compose UI implementation
- `AppIconSettingsActivity` - Activity wrapper

### Implementation Details

#### Video Splash Screen Implementation

**Modern Splash Screen (Android 12+):**
```kotlin
class ModernSplashActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        installSplashScreen().apply {
            setKeepOnScreenCondition { false }
            setOnExitAnimationListener { splashScreenView ->
                // Custom exit animation
            }
        }
        super.onCreate(savedInstanceState)
    }
}
```

**Legacy Video Splash (Android 7-11):**
```kotlin
class VideoSplashActivity : ComponentActivity() {
    private lateinit var playerView: PlayerView
    private var exoPlayer: ExoPlayer? = null
    
    private fun initializePlayer() {
        exoPlayer = ExoPlayer.Builder(this)
            .setVideoScalingMode(C.VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING)
            .build()
    }
}
```#### App Ic
on System Implementation

**Icon Repository:**
```kotlin
@Singleton
class AppIconRepository @Inject constructor(
    @ApplicationContext private val context: Context,
    private val sharedPreferences: SharedPreferences
) {
    fun setActiveIcon(iconType: AppIconType) {
        val packageManager = context.packageManager
        
        // Disable all icon aliases
        AppIconType.values().forEach { type ->
            packageManager.setComponentEnabledSetting(
                ComponentName(context, type.activityAlias),
                PackageManager.COMPONENT_ENABLED_STATE_DISABLED,
                PackageManager.DONT_KILL_APP
            )
        }
        
        // Enable selected icon
        packageManager.setComponentEnabledSetting(
            ComponentName(context, iconType.activityAlias),
            PackageManager.COMPONENT_ENABLED_STATE_ENABLED,
            PackageManager.DONT_KILL_APP
        )
    }
}
```

**Icon Types Definition:**
```kotlin
enum class AppIconType(
    val displayName: String,
    val iconRes: Int,
    val activityAlias: String
) {
    DEFAULT("Classic", R.mipmap.ic_launcher, "DefaultIcon"),
    MODERN("Modern", R.mipmap.ic_launcher_modern, "ModernIcon"),
    COLORFUL("Colorful", R.mipmap.ic_launcher_colorful, "ColorfulIcon"),
    MINIMAL("Minimalist", R.mipmap.ic_launcher_minimal, "MinimalIcon")
}
```

### AndroidManifest.xml Configuration

#### Activity Aliases for Dynamic Icons
```xml
<!-- Default Icon (enabled by default) -->
<activity-alias
    android:name=".DefaultIcon"
    android:targetActivity=".MainActivity"
    android:enabled="true"
    android:exported="true"
    android:icon="@mipmap/ic_launcher"
    android:roundIcon="@mipmap/ic_launcher_round">
    <intent-filter>
        <action android:name="android.intent.action.MAIN" />
        <category android:name="android.intent.category.LAUNCHER" />
    </intent-filter>
</activity-alias>

<!-- Alternative Icons (disabled by default) -->
<activity-alias
    android:name=".ModernIcon"
    android:targetActivity=".MainActivity"
    android:enabled="false"
    android:exported="true"
    android:icon="@mipmap/ic_launcher_modern"
    android:roundIcon="@mipmap/ic_launcher_modern_round">
    <intent-filter>
        <action android:name="android.intent.action.MAIN" />
        <category android:name="android.intent.category.LAUNCHER" />
    </intent-filter>
</activity-alias>
```

#### Splash Screen Activities
```xml
<!-- Modern Splash Screen for Android 12+ -->
<activity
    android:name=".splash.ModernSplashActivity"
    android:theme="@style/Theme.App.Starting"
    android:exported="true">
    <intent-filter>
        <action android:name="android.intent.action.MAIN" />
        <category android:name="android.intent.category.LAUNCHER" />
    </intent-filter>
</activity>

<!-- Legacy Video Splash for Android 7-11 -->
<activity
    android:name=".splash.VideoSplashActivity"
    android:theme="@style/Theme.App.VideoSplash"
    android:screenOrientation="portrait"
    android:exported="false" />
```### Reso
urce Management

#### Video Assets
```
res/
├── raw/
│   └── splash_video.mp4         # Optimized video file (~8MB)
└── values/
    └── splash_config.xml        # Video configuration
```

#### Icon Resources
```
res/
├── mipmap-mdpi/
│   ├── ic_launcher.png          # 48x48px
│   ├── ic_launcher_modern.png
│   ├── ic_launcher_colorful.png
│   └── ic_launcher_minimal.png
├── mipmap-hdpi/                 # 72x72px variants
├── mipmap-xhdpi/                # 96x96px variants
├── mipmap-xxhdpi/               # 144x144px variants
└── mipmap-xxxhdpi/              # 192x192px variants
```

### Performance Optimizations

#### Video Playback Optimization
```kotlin
class OptimizedVideoPlayer {
    private fun configurePlayer(): ExoPlayer {
        return ExoPlayer.Builder(context)
            .setVideoScalingMode(C.VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING)
            .setLoadControl(
                DefaultLoadControl.Builder()
                    .setBufferDurationsMs(
                        DefaultLoadControl.DEFAULT_MIN_BUFFER_MS,
                        DefaultLoadControl.DEFAULT_MAX_BUFFER_MS,
                        DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS,
                        DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS
                    )
                    .build()
            )
            .build()
    }
}
```

#### Memory Management
```kotlin
class BitmapCache private constructor(context: Context) {
    private val maxMemory = (Runtime.getRuntime().maxMemory() / 1024).toInt()
    private val cacheSize = maxMemory / 8
    
    private val memoryCache = object : LruCache<String, Bitmap>(cacheSize) {
        override fun sizeOf(key: String, bitmap: Bitmap): Int {
            return bitmap.byteCount / 1024
        }
    }
}
```

### Build Configuration

#### Gradle Configuration
```kotlin
android {
    compileSdk = 34
    
    defaultConfig {
        minSdk = 24
        targetSdk = 34
        versionCode = 1
        versionName = "1.0"
    }
    
    buildTypes {
        release {
            isMinifyEnabled = true
            isShrinkResources = true
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
    }
}
```

#### Dependencies
```kotlin
dependencies {
    // Splash Screen
    implementation("androidx.core:core-splashscreen:1.0.1")
    
    // Video Player
    implementation("com.google.android.exoplayer:exoplayer:2.19.1")
    
    // Compose UI
    implementation("androidx.compose.ui:ui:1.5.4")
    implementation("androidx.compose.material3:material3:1.1.2")
    
    // Architecture Components
    implementation("androidx.lifecycle:lifecycle-viewmodel-compose:2.7.0")
    implementation("androidx.hilt:hilt-navigation-compose:1.1.0")
}
```##
# Testing Strategy

#### Unit Tests
```kotlin
@Test
fun `app icon repository changes icon correctly`() = runTest {
    // Given
    val iconType = AppIconType.MODERN
    
    // When
    repository.setActiveIcon(iconType)
    
    // Then
    assertEquals(iconType, repository.getCurrentIcon())
}
```

#### Integration Tests
```kotlin
@Test
fun `video splash screen displays and transitions correctly`() {
    // Test video splash screen functionality
    val scenario = ActivityScenario.launch(VideoSplashActivity::class.java)
    
    scenario.use {
        // Verify video starts playing
        onView(withId(R.id.player_view)).check(matches(isDisplayed()))
        
        // Verify tap to skip works
        onView(withId(R.id.player_view)).perform(click())
        
        // Verify transition to main activity
        intended(hasComponent(MainActivity::class.java.name))
    }
}
```

### Troubleshooting Guide

#### Common Issues and Solutions

**Issue: Video splash screen not playing**
- Check video file exists in res/raw/
- Verify ExoPlayer dependencies
- Check device hardware acceleration support

**Issue: App icon not changing**
- Verify activity-alias configuration in manifest
- Check PackageManager permissions
- Test on different launchers

**Issue: Performance degradation**
- Monitor memory usage with profiler
- Check video file size and compression
- Verify bitmap caching is working

### Deployment Considerations

#### APK Optimization
- Enable ProGuard/R8 minification
- Use resource shrinking
- Optimize video compression
- Implement APK splitting for different architectures

#### Version Compatibility
- Test on minimum SDK (API 24)
- Verify modern splash screen on API 31+
- Check icon system across different launchers
- Validate performance on low-end devices

### Security Considerations

#### Video Asset Protection
- Video files are embedded in APK
- No external network dependencies
- Content is protected by APK signing

#### Icon System Security
- Uses standard Android component system
- No custom permissions required
- Follows Android security best practices

### Maintenance Guidelines

#### Code Maintenance
- Follow MVVM architecture patterns
- Use dependency injection (Hilt)
- Implement proper error handling
- Maintain comprehensive test coverage

#### Asset Maintenance
- Keep video files optimized
- Update icons for new Android versions
- Monitor APK size growth
- Regular performance profiling

### Future Enhancement Opportunities

#### Potential Improvements
1. **Dynamic Video Content**: Load different videos based on themes
2. **Advanced Icon System**: Support for more icon variations
3. **Performance Analytics**: Track splash screen engagement
4. **Accessibility Enhancements**: Better screen reader support

#### Technical Debt
- Migrate to Jetpack Compose for all UI components
- Implement modern Android architecture patterns
- Optimize for foldable devices
- Add support for Android 15+ features

---

**Document Version**: 1.0  
**Last Updated**: $(Get-Date -Format 'yyyy-MM-dd')  
**Maintained By**: Development Team  
**Review Cycle**: Quarterly