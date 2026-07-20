package com.example.engine.formats.base.charset

internal fun looksLikeUtf16(bytes: ByteArray, littleEndian: Boolean): Boolean {
    if (bytes.size < 4) return false
    val sampleSize = bytes.size.coerceAtMost(512)
    var zeroEven = 0
    var zeroOdd = 0
    var pairs = 0
    var index = 0
    while (index + 1 < sampleSize) {
        if (bytes[index] == 0.toByte()) zeroEven++
        if (bytes[index + 1] == 0.toByte()) zeroOdd++
        pairs++
        index += 2
    }
    if (pairs == 0) return false
    val dominantZeros = if (littleEndian) zeroOdd else zeroEven
    val nonDominantZeros = if (littleEndian) zeroEven else zeroOdd
    return dominantZeros * 1.0 / pairs >= 0.3 && nonDominantZeros * 1.0 / pairs <= 0.1
}
