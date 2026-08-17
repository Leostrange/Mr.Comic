package io.leostrange.mrcomic.feature.reader.ui

import org.json.JSONObject
import org.json.JSONTokener

internal object ReaderWebViewProtocolCodec {
    const val VERSION = 1

    /**
     * Returns null for NaN, infinities and any value outside [0, 1], so a corrupted or
     * transient WebView payload can never construct an invalid [ReaderWebViewRestoreTarget].
     * A null progression falls back to the safe page/character scroll restore path.
     */
    fun sanitizeProgression(value: Double?): Double? =
        value?.takeIf { it.isFinite() }?.takeIf { it in 0.0..1.0 }

    fun encodeCommand(command: ReaderWebViewCommand): String {
        require(command.generation > 0L) { "generation must be positive" }
        val payload = JSONObject()
        val type = when (command) {
            is ReaderWebViewCommand.ApplyPagedLayout -> {
                payload.put("targetPage", command.targetPage)
                "applyPagedLayout"
            }
            is ReaderWebViewCommand.TurnPage -> {
                payload.put("delta", command.delta)
                "turnPage"
            }
            is ReaderWebViewCommand.Restore -> {
                payload.putRestoreTarget(command.target)
                "restore"
            }
            is ReaderWebViewCommand.ProbeContent -> "probeContent"
        }
        return JSONObject()
            .put("version", VERSION)
            .put("type", type)
            .put("generation", command.generation)
            .put("payload", payload)
            .toString()
    }

    fun decodeEvent(rawValue: String?): ReaderWebViewProtocolDecodeResult {
        val root = decodeObject(rawValue)
            ?: return ReaderWebViewProtocolDecodeResult.Failure("Malformed protocol JSON")
        val version = root.optInt("version", -1)
        if (version != VERSION) {
            return ReaderWebViewProtocolDecodeResult.Failure("Unsupported protocol version=$version")
        }
        val generation = root.optLong("generation", 0L)
        if (generation <= 0L) {
            return ReaderWebViewProtocolDecodeResult.Failure("Missing or invalid generation")
        }
        val type = root.optString("type")
        val payload = root.optJSONObject("payload") ?: JSONObject()
        val event = runCatching { decodeTypedEvent(type, generation, payload) }
            .getOrElse { error ->
                return ReaderWebViewProtocolDecodeResult.Failure(
                    error.message ?: "Invalid $type payload"
                )
            }
            ?: return ReaderWebViewProtocolDecodeResult.Failure("Unknown event type=$type")
        return ReaderWebViewProtocolDecodeResult.Success(event)
    }

    /** Compatibility decoder used while the existing paged script returns a legacy payload. */
    fun decodePagedLayoutMetrics(rawValue: String?): ReaderPagedLayoutMetrics? {
        val protocolEvent = (decodeEvent(rawValue) as? ReaderWebViewProtocolDecodeResult.Success)?.event
        if (protocolEvent is ReaderWebViewEvent.LayoutReady) return protocolEvent.metrics

        val json = decodeObject(rawValue) ?: return null
        return ReaderPagedLayoutMetrics(
            handled = json.optBoolean("handled", false),
            pageIndex = json.optInt("pageIndex", 0).coerceAtLeast(0),
            pageCount = json.optInt("pageCount", 1).coerceAtLeast(1),
            characterOffset = json.optInt("characterOffset", 0).coerceAtLeast(0),
            clipHeight = json.optInt("clipHeight", 0).coerceAtLeast(0),
            usableHeight = json.optInt("usableHeight", 0).coerceAtLeast(0)
        )
    }

    fun decodeRestoreTarget(rawValue: String?): ReaderWebViewRestoreTarget? =
        decodeObject(rawValue)?.toRestoreTarget(required = false)

    private fun decodeTypedEvent(
        type: String,
        generation: Long,
        payload: JSONObject
    ): ReaderWebViewEvent? = when (type) {
        "committed" -> ReaderWebViewEvent.Committed(generation)
        "layoutReady" -> ReaderWebViewEvent.LayoutReady(
            generation = generation,
            metrics = payload.toPagedLayoutMetrics()
        )
        "positionChanged" -> ReaderWebViewEvent.PositionChanged(
            generation = generation,
            target = payload.toRestoreTarget(required = true)!!
        )
        "restoreAcknowledged" -> ReaderWebViewEvent.RestoreAcknowledged(
            generation = generation,
            target = payload.toRestoreTarget(required = false)
        )
        "contentMeasured" -> ReaderWebViewEvent.ContentMeasured(
            generation = generation,
            metrics = ReaderWebViewContentMetrics(
                textLength = payload.nonNegativeInt("text"),
                rawTextLength = payload.nonNegativeInt("rawText"),
                imageCount = payload.nonNegativeInt("images"),
                mediaCount = payload.nonNegativeInt("media"),
                contentHeight = payload.nonNegativeInt("height")
            )
        )
        "error" -> ReaderWebViewEvent.Error(
            generation = generation,
            code = payload.optString("code", "unknown"),
            message = payload.optString("message", "WebView protocol error"),
            recoverable = payload.optBoolean("recoverable", false)
        )
        else -> null
    }

    private fun JSONObject.toPagedLayoutMetrics(): ReaderPagedLayoutMetrics {
        val metrics = ReaderPagedLayoutMetrics(
            handled = optBoolean("handled", false),
            pageIndex = nonNegativeInt("pageIndex"),
            pageCount = optInt("pageCount", 0),
            characterOffset = nonNegativeInt("characterOffset"),
            clipHeight = nonNegativeInt("clipHeight"),
            usableHeight = nonNegativeInt("usableHeight")
        )
        require(metrics.pageCount > 0) { "pageCount must be positive" }
        require(metrics.pageIndex < metrics.pageCount) { "pageIndex must be inside pageCount" }
        return metrics
    }

    private fun JSONObject.toRestoreTarget(required: Boolean): ReaderWebViewRestoreTarget? {
        val fragment = optString("fragment").takeIf { it.isNotBlank() }
        val sectionIndex = optionalNonNegativeInt("sectionIndex")
        val characterOffset = optionalNonNegativeInt("characterOffset")
        val progression = sanitizeProgression(optDoubleOrNull("progression"))
        if (fragment == null && sectionIndex == null && characterOffset == null && progression == null) {
            if (required) error("Restore target is missing")
            return null
        }
        return ReaderWebViewRestoreTarget(fragment, sectionIndex, characterOffset, progression)
    }

    private fun JSONObject.putRestoreTarget(target: ReaderWebViewRestoreTarget) {
        target.fragment?.let { put("fragment", it) }
        target.sectionIndex?.let { put("sectionIndex", it) }
        target.characterOffset?.let { put("characterOffset", it) }
        target.progression?.let { put("progression", it) }
    }

    private fun JSONObject.nonNegativeInt(name: String): Int =
        optInt(name, 0).also { require(it >= 0) { "$name must be non-negative" } }

    private fun JSONObject.optIntOrNull(name: String): Int? =
        if (has(name) && !isNull(name)) getInt(name) else null

    private fun JSONObject.optionalNonNegativeInt(name: String): Int? =
        optIntOrNull(name)?.takeIf { it >= 0 }

    private fun JSONObject.optDoubleOrNull(name: String): Double? =
        if (has(name) && !isNull(name)) getDouble(name) else null

    private fun decodeObject(rawValue: String?): JSONObject? = runCatching {
        when (val first = JSONTokener(rawValue ?: return null).nextValue()) {
            is JSONObject -> first
            is String -> JSONTokener(first).nextValue() as? JSONObject
            else -> null
        }
    }.getOrNull()
}
