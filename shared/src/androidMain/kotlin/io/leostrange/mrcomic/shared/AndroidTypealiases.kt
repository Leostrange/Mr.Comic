package io.leostrange.mrcomic.shared

/**
 * Android typealias bridge: maps shared KMP interfaces to core-domain implementations.
 *
 * Import from `io.leostrange.mrcomic.shared.*` in feature modules
 * to use the platform-agnostic interfaces. Hilt binds the core-domain
 * implementations behind these typealiases.
 */

// Translation
typealias SharedDictionaryEngine = io.leostrange.mrcomic.shared.translation.DictionaryEngine
typealias SharedLookupRouter = io.leostrange.mrcomic.shared.translation.LookupRouter
typealias SharedLanguageDetector = io.leostrange.mrcomic.shared.translation.LanguageDetector
typealias SharedOfflineTranslationEngine = io.leostrange.mrcomic.shared.translation.OfflineTranslationEngine
typealias SharedOnlineTranslationEngine = io.leostrange.mrcomic.shared.translation.OnlineTranslationEngine

// Analytics
typealias SharedReadingAnalyticsTracker = io.leostrange.mrcomic.shared.analytics.ReadingAnalyticsTracker
