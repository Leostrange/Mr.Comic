package com.example.engine.formats.base.log

import android.util.Log

/** Logging helpers that must never turn a recoverable format-read failure into a crash. */
internal fun safeLogW(tag: String, message: String, throwable: Throwable? = null) {
    runCatching { Log.w(tag, message, throwable) }
}

internal fun safeLogE(tag: String, message: String, throwable: Throwable? = null) {
    runCatching { Log.e(tag, message, throwable) }
}

/** Monotonic clock suitable for parser-performance measurements in Android and JVM tests. */
internal fun perfNowMs(): Long = System.nanoTime() / 1_000_000L
