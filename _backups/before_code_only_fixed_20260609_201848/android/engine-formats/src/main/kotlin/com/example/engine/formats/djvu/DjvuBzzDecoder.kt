package com.example.engine.formats.djvu

/**
 * BZZ decoder for DjVu compressed text / annotation chunks (`TXTz`, `ANTz`).
 *
 * This implementation follows the real block structure used by DjVu:
 * - 24-bit block size via ZP passthrough bits
 * - 2-bit speed flag
 * - context-driven MTF index stream
 * - marker position inside the BWT shadow block
 * - inverse Burrows-Wheeler transform
 *
 * It is intentionally focused on the text/annotation path first. That is enough to
 * make `TXTz` / `ANTz`-backed book-like DjVu documents readable before full JB2 page
 * compositing is finished.
 */
internal object DjvuBzzDecoder {

    private const val MAX_BLOCK_SIZE = (1 shl 23)
    private const val NUM_CONTEXTS = 300

    fun decode(data: ByteArray): ByteArray? = runCatching {
        decodeImpl(data)
    }.getOrNull()

    private fun decodeImpl(data: ByteArray): ByteArray {
        if (data.isEmpty()) return ByteArray(0)
        val zp = DjvuZpDecoder(data)
        val output = ArrayList<Byte>()
        while (true) {
            val blockSize = decodeU24(zp)
            if (blockSize == 0) break
            if (blockSize < 0 || blockSize > MAX_BLOCK_SIZE) return ByteArray(0)

            val speed = when {
                zp.decodePassthrough() == 1 -> {
                    if (zp.decodePassthrough() == 1) 2 else 1
                }
                else -> 0
            }
            val block = decodeBlock(zp, blockSize, speed) ?: return ByteArray(0)
            output.addAll(block.toList())
        }
        return output.toByteArray()
    }

    private fun decodeU24(zp: DjvuZpDecoder): Int {
        var n = 1
        while (n < (1 shl 24)) {
            n = (n shl 1) or zp.decodePassthrough()
        }
        return n - (1 shl 24)
    }

    private fun decodeBlock(zp: DjvuZpDecoder, blockSize: Int, speed: Int): ByteArray? {
        val contexts = IntArray(NUM_CONTEXTS)
        val mtf = DjvuAdaptiveMtf(speed)
        val shadow = ByteArray(blockSize)
        var marker: Int? = null
        var mtfIndex: Int? = 3
        var i = 0
        while (i < blockSize) {
            val index = decodeSymbolIndex(zp, contexts, mtfIndex)
            if (index == null) {
                if (marker != null) return null
                marker = i
                shadow[i] = 0
                mtfIndex = null
            } else {
                mtfIndex = index
                shadow[i] = mtf.rotate(index).toByte()
            }
            i++
        }
        val markerPosition = marker ?: return null
        return inverseBurrowsWheeler(shadow, markerPosition)
    }

    private fun decodeSymbolIndex(
        zp: DjvuZpDecoder,
        contexts: IntArray,
        previousIndex: Int?
    ): Int? {
        val mtfIndex = previousIndex ?: 256
        val start = minOf(mtfIndex, 2)
        if (decodeContextBit(zp, contexts, start) == 1) {
            return 0
        }
        if (decodeContextBit(zp, contexts, start + 3) == 1) {
            return 1
        }
        for (symbolWidth in 1..7) {
            val branchContext = 4 + (1 shl symbolWidth)
            if (decodeContextBit(zp, contexts, branchContext) == 1) {
                return (1 shl symbolWidth) + decodeVariableIndex(
                    zp = zp,
                    contexts = contexts,
                    contextStart = 5 + (1 shl symbolWidth),
                    bitCount = symbolWidth
                )
            }
        }
        return null
    }

    private fun decodeVariableIndex(
        zp: DjvuZpDecoder,
        contexts: IntArray,
        contextStart: Int,
        bitCount: Int
    ): Int {
        var n = 1
        while (n < (1 shl bitCount)) {
            val contextIndex = contextStart + n - 1
            n = (n shl 1) or decodeContextBit(zp, contexts, contextIndex)
        }
        return n - (1 shl bitCount)
    }

    private fun decodeContextBit(
        zp: DjvuZpDecoder,
        contexts: IntArray,
        contextIndex: Int
    ): Int {
        val normalizedIndex = contextIndex.coerceIn(0, contexts.lastIndex)
        zp.setContext(normalizedIndex, contexts[normalizedIndex])
        val bit = zp.decode(normalizedIndex)
        contexts[normalizedIndex] = zp.getContextState(normalizedIndex)
        return bit
    }

    private fun inverseBurrowsWheeler(shadow: ByteArray, marker: Int): ByteArray {
        if (shadow.isEmpty()) return ByteArray(0)
        val counts = IntArray(256)
        val ranks = IntArray(shadow.size)
        for (i in shadow.indices) {
            if (i == marker) {
                ranks[i] = 0
            } else {
                val symbol = shadow[i].toInt() and 0xFF
                ranks[i] = counts[symbol]
                counts[symbol]++
            }
        }

        var accumulator = 1
        for (i in counts.indices) {
            val current = counts[i]
            counts[i] = accumulator
            accumulator += current
        }

        val output = ByteArray(shadow.size - 1)
        var position = 0
        for (outIndex in output.lastIndex downTo 0) {
            val symbol = shadow[position]
            output[outIndex] = symbol
            position = counts[symbol.toInt() and 0xFF] + ranks[position]
        }
        if (position != marker) return ByteArray(0)
        return output
    }
}

private class DjvuAdaptiveMtf(
    speed: Int
) {
    private val speedShift = speed.coerceIn(0, 2)
    private var accumulator = 4L
    private val frequencies = LongArray(4)
    private val symbols = ByteArray(256) { it.toByte() }

    fun rotate(index: Int): Int {
        val safeIndex = index.coerceIn(0, 255)
        val symbol = symbols[safeIndex].toInt() and 0xFF
        accumulator += accumulator shr speedShift
        if (accumulator > 0x1_0000_0000L) {
            accumulator = accumulator shr 24
            for (i in frequencies.indices) {
                frequencies[i] = frequencies[i] shr 24
            }
        }

        val threshold = accumulator + if (safeIndex < frequencies.size) frequencies[safeIndex] else 0L
        var stop = safeIndex
        while (stop > 3) {
            symbols[stop] = symbols[stop - 1]
            stop--
        }
        while (stop > 0 && frequencies[stop - 1] <= threshold) {
            symbols[stop] = symbols[stop - 1]
            frequencies[stop] = frequencies[stop - 1]
            stop--
        }
        symbols[stop] = symbol.toByte()
        frequencies[stop] = threshold
        return symbol
    }
}
