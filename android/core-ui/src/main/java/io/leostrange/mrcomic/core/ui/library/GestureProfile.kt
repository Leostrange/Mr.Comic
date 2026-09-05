package io.leostrange.mrcomic.core.ui.library

import org.json.JSONObject

/**
 * §7.4: snapshot of all gesture-related settings for a single reading mode.
 * Serialized to/from JSON for per-mode storage in DataStore.
 */
data class GestureProfile(
    val edgeZoneFraction: Float = 0.12f,
    val swipeInverted: Boolean = false,
    val longPressDurationMs: Int = 500,
    val swipeSensitivity: Float = 0.5f,
    val swipeMinLengthDp: Int = 32,
    val swipeMaxTimeMs: Int = 900,
    val selectionCancelDp: Int = 4
) {
    fun serialize(): String = JSONObject()
        .put("edgeZoneFraction", edgeZoneFraction.toDouble())
        .put("swipeInverted", swipeInverted)
        .put("longPressDurationMs", longPressDurationMs)
        .put("swipeSensitivity", swipeSensitivity.toDouble())
        .put("swipeMinLengthDp", swipeMinLengthDp)
        .put("swipeMaxTimeMs", swipeMaxTimeMs)
        .put("selectionCancelDp", selectionCancelDp)
        .toString()

    companion object {
        val DEFAULT = GestureProfile()

        fun parse(json: String?): GestureProfile {
            if (json.isNullOrBlank()) return DEFAULT
            return runCatching {
                val obj = JSONObject(json)
                GestureProfile(
                    edgeZoneFraction = obj.optDouble("edgeZoneFraction", 0.12).toFloat().coerceIn(0.05f, 0.30f),
                    swipeInverted = obj.optBoolean("swipeInverted", false),
                    longPressDurationMs = obj.optInt("longPressDurationMs", 500).coerceIn(200, 1500),
                    swipeSensitivity = obj.optDouble("swipeSensitivity", 0.5).toFloat().coerceIn(0.1f, 1.0f),
                    swipeMinLengthDp = obj.optInt("swipeMinLengthDp", 32).coerceIn(8, 120),
                    swipeMaxTimeMs = obj.optInt("swipeMaxTimeMs", 900).coerceIn(200, 2000),
                    selectionCancelDp = obj.optInt("selectionCancelDp", 4).coerceIn(2, 30)
                )
            }.getOrDefault(DEFAULT)
        }
    }
}
