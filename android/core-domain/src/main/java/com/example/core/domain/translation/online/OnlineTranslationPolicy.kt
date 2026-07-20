package com.example.core.domain.translation.online

import android.content.Context
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import dagger.hilt.android.qualifiers.ApplicationContext
import java.util.Calendar
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Privacy and cost control policy for online translation.
 *
 * Enforces:
 * - Wi-Fi only mode (block mobile data usage)
 * - Daily character limit (prevent runaway API costs)
 * - Content sensitivity: block NSFW/personal documents from online APIs
 * - Whole-book translation requires explicit user confirmation
 */
@Singleton
class OnlineTranslationPolicy @Inject constructor(
    @ApplicationContext private val context: Context
) {
    private var wifiOnly: Boolean = false
    private var dailyCharLimit: Int = 100_000
    private var blockSensitiveContent: Boolean = true
    private var allowWholeBookOnline: Boolean = false

    // Daily usage tracking (resets at midnight)
    private var dailyUsageDate: String = ""
    private var dailyCharsUsed: Int = 0

    // User confirmations for this session
    private var userConfirmedWholeBook: Boolean = false
    private var userConfirmedSensitive: Boolean = false

    fun configure(
        wifiOnly: Boolean = this.wifiOnly,
        dailyCharLimit: Int = this.dailyCharLimit,
        blockSensitiveContent: Boolean = this.blockSensitiveContent,
        allowWholeBookOnline: Boolean = this.allowWholeBookOnline
    ) {
        this.wifiOnly = wifiOnly
        this.dailyCharLimit = dailyCharLimit
        this.blockSensitiveContent = blockSensitiveContent
        this.allowWholeBookOnline = allowWholeBookOnline
    }

    /**
     * Check if an online translation request is allowed.
     * Returns null if allowed, or a reason if blocked.
     */
    fun checkAllowed(
        charCount: Int = 0,
        isWholeBook: Boolean = false,
        isSensitive: Boolean = false
    ): OnlineBlockReason? {
        if (wifiOnly && !isOnWifi()) {
            return OnlineBlockReason.WIFI_REQUIRED
        }
        if (isDailyLimitExceeded()) {
            return OnlineBlockReason.DAILY_LIMIT_EXCEEDED
        }
        if (charCount > 0 && dailyCharsUsed + charCount > dailyCharLimit) {
            return OnlineBlockReason.DAILY_LIMIT_EXCEEDED
        }
        if (isWholeBook && !allowWholeBookOnline && !userConfirmedWholeBook) {
            return OnlineBlockReason.WHOLE_BOOK_REQUIRES_CONFIRMATION
        }
        if (isSensitive && blockSensitiveContent && !userConfirmedSensitive) {
            return OnlineBlockReason.SENSITIVE_CONTENT_BLOCKED
        }
        return null
    }

    /** Record that [charCount] characters were sent to an online API. */
    fun recordUsage(charCount: Int) {
        ensureToday()
        dailyCharsUsed += charCount
    }

    /** User confirms they want to translate a whole book online. */
    fun confirmWholeBook() {
        userConfirmedWholeBook = true
    }

    /** User confirms they want to send sensitive content online. */
    fun confirmSensitiveContent() {
        userConfirmedSensitive = true
    }

    /** Reset session confirmations (call on app start). */
    fun resetSessionConfirmations() {
        userConfirmedWholeBook = false
        userConfirmedSensitive = false
    }

    /** Characters remaining in today's budget. */
    fun remainingDailyChars(): Int {
        ensureToday()
        return (dailyCharLimit - dailyCharsUsed).coerceAtLeast(0)
    }

    /** Total characters used today. */
    fun todayCharsUsed(): Int {
        ensureToday()
        return dailyCharsUsed
    }

    fun isOnWifi(): Boolean {
        val cm = context.getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
        val network = cm.activeNetwork ?: return false
        val caps = cm.getNetworkCapabilities(network) ?: return false
        return caps.hasTransport(NetworkCapabilities.TRANSPORT_WIFI)
    }

    fun isNetworkAvailable(): Boolean {
        val cm = context.getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
        val network = cm.activeNetwork ?: return false
        val caps = cm.getNetworkCapabilities(network) ?: return false
        return caps.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET)
    }

    private fun isDailyLimitExceeded(): Boolean {
        ensureToday()
        return dailyCharLimit > 0 && dailyCharsUsed >= dailyCharLimit
    }

    private fun ensureToday() {
        val today = Calendar.getInstance().let {
            "${it.get(Calendar.YEAR)}-${it.get(Calendar.DAY_OF_YEAR)}"
        }
        if (dailyUsageDate != today) {
            dailyUsageDate = today
            dailyCharsUsed = 0
        }
    }
}

enum class OnlineBlockReason {
    WIFI_REQUIRED,
    DAILY_LIMIT_EXCEEDED,
    NO_NETWORK,
    WHOLE_BOOK_REQUIRES_CONFIRMATION,
    SENSITIVE_CONTENT_BLOCKED
}
