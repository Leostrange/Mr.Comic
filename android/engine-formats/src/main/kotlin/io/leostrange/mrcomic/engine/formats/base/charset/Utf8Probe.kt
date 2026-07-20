package io.leostrange.mrcomic.engine.formats.base.charset

internal fun hasUtf8Bom(bytes: ByteArray): Boolean =
    bytes.size >= 3 &&
        bytes[0] == 0xEF.toByte() &&
        bytes[1] == 0xBB.toByte() &&
        bytes[2] == 0xBF.toByte()

internal fun isStrictUtf8(bytes: ByteArray): Boolean {
    var index = 0
    while (index < bytes.size) {
        val value = bytes[index].toInt() and 0xFF
        when {
            value <= 0x7F -> index++
            value in 0xC2..0xDF -> {
                if (!hasUtf8Continuation(bytes, index, 1)) return false
                index += 2
            }
            value in 0xE0..0xEF -> {
                if (!hasUtf8Continuation(bytes, index, 2)) return false
                val b1 = bytes[index + 1].toInt() and 0xFF
                if ((value == 0xE0 && b1 < 0xA0) || (value == 0xED && b1 >= 0xA0)) return false
                index += 3
            }
            value in 0xF0..0xF4 -> {
                if (!hasUtf8Continuation(bytes, index, 3)) return false
                val b1 = bytes[index + 1].toInt() and 0xFF
                if ((value == 0xF0 && b1 < 0x90) || (value == 0xF4 && b1 >= 0x90)) return false
                index += 4
            }
            else -> return false
        }
    }
    return true
}

private fun hasUtf8Continuation(bytes: ByteArray, start: Int, count: Int): Boolean {
    if (start + count >= bytes.size) return false
    for (offset in 1..count) {
        val next = bytes[start + offset].toInt() and 0xFF
        if (next !in 0x80..0xBF) return false
    }
    return true
}
