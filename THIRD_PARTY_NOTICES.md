# Third-party Notices

Mr.Comic depends on third-party libraries and platform components. Each dependency remains under its own license.

## Android And Kotlin

- Android SDK, AndroidX, Jetpack Compose, Material 3, Navigation, Lifecycle, Room, DataStore and SplashScreen.
- Kotlin, Kotlin Gradle plugin, Kotlin standard library and KSP.
- Hilt and related Google dependency-injection components.

## Reader, Media And Storage

- Media3 for playback and media session support.
- Coil for image loading.
- Retrofit, OkHttp and Gson for network/API flows.
- Zip4j, Junrar and Apache Commons Compress for archive support.
- Readium-oriented EPUB integration code paths and related EPUB handling.

## Dictionaries And Assets

Packaged dictionary database files, fonts, sample documents, screenshots, videos and other media may have separate licenses or attribution requirements. Do not assume they are covered by the Mr.Comic source license.

Large private samples, local QA captures, generated logs, APK outputs and reverse-engineering dumps are intentionally excluded from git. Release binaries belong on GitHub Releases rather than in the repository tree.

## Release Builds

APK files produced by CI or local Gradle builds include third-party compiled code. Review the dependency licenses before redistributing a public binary.
