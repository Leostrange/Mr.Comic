package com.example.engine.formats.base.charset

import java.nio.charset.Charset

internal fun detectBomCharset(bytes: ByteArray): Charset? = when {
    hasUtf8Bom(bytes) -> Charsets.UTF_8
    bytes.hasPrefix(UTF16_LE_BOM) -> Charsets.UTF_16LE
    bytes.hasPrefix(UTF16_BE_BOM) -> Charsets.UTF_16BE
    else -> null
}

internal fun bomLength(bytes: ByteArray): Int = when {
    hasUtf8Bom(bytes) -> UTF8_BOM.size
    bytes.hasPrefix(UTF16_LE_BOM) || bytes.hasPrefix(UTF16_BE_BOM) -> UTF16_LE_BOM.size
    else -> 0
}

internal fun ByteArray.hasPrefix(prefix: ByteArray): Boolean =
    size >= prefix.size && prefix.indices.all { this[it] == prefix[it] }

private val UTF8_BOM = byteArrayOf(0xEF.toByte(), 0xBB.toByte(), 0xBF.toByte())
private val UTF16_LE_BOM = byteArrayOf(0xFF.toByte(), 0xFE.toByte())
private val UTF16_BE_BOM = byteArrayOf(0xFE.toByte(), 0xFF.toByte())
