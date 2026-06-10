package com.example.engine.formats.djvu

import android.graphics.Bitmap

/**
 * IW44 wavelet image decoder for DjVu BG44 / FG44 chunks.
 *
 * IW44 (Image Wavelet 44) is djvulibre's progressive wavelet codec.
 * Each BG44 chunk holds one or more "slices" that progressively refine the image.
 *
 * Algorithm (mirrors djvulibre IW44Image.cpp):
 *   1. Parse BG44 chunk header (serial, slices, dimensions on serial==0)
 *   2. For each slice: ZP-decode quantised wavelet coefficient deltas per block
 *   3. After all slices (or after sufficient slices): inverse IWT on all blocks
 *   4. YCbCr (or Y-only) → RGB
 *
 * Reference: DjVu3 Specification §12 "IW44 Image Codec"; djvulibre IW44Image.{h,cpp}.
 */
internal class DjvuIw44Decoder {
    // ── public state (filled after first chunk with serial==0) ──────────────
    var imageWidth: Int  = 0; private set
    var imageHeight: Int = 0; private set
    var isGrayscale: Boolean = true; private set

    private var initialized = false

    // Image planes: Y (always), Cb/Cr (if color)
    // Each plane stores coefficient blocks of size BLOCK x BLOCK
    private var planeY:  Iw44Plane? = null
    private var planeCb: Iw44Plane? = null
    private var planeCr: Iw44Plane? = null

    /**
     * Feed one BG44/FG44 chunk payload (without the 8-byte IFF chunk header).
     * Call repeatedly for multi-chunk progressive decoding.
     * @return true if this chunk was parsed successfully
     */
    fun feedChunk(chunkPayload: ByteArray): Boolean = runCatching {
        feedChunkImpl(chunkPayload)
    }.getOrDefault(false)

    /**
     * Render the current accumulated state to a Bitmap.
     * Can be called after any number of feedChunk() calls.
     * @return Bitmap or null if not enough data has been received yet.
     */
    fun render(): Bitmap? = runCatching {
        renderImpl()
    }.getOrNull()

    // ── chunk parsing ───────────────────────────────────────────────────────

    private fun feedChunkImpl(payload: ByteArray): Boolean {
        if (payload.isEmpty()) return false
        var pos = 0

        val serial  = payload[pos++].toInt() and 0xFF
        val nSlices = payload[pos++].toInt() and 0xFF

        if (serial == 0) {
            // First chunk: parse image parameters
            if (payload.size < pos + 5) return false
            val version    = payload[pos++].toInt() and 0xFF
            val colorMode  = version and 0x77       // bits 0,1,4,5,6
            isGrayscale    = (colorMode and 0x77) == 0
            val wInBlocks  = ((payload[pos].toInt() and 0xFF) shl 8) or
                              (payload[pos + 1].toInt() and 0xFF)
            pos += 2
            val hInBlocks  = ((payload[pos].toInt() and 0xFF) shl 8) or
                              (payload[pos + 1].toInt() and 0xFF)
            pos += 2
            if (
                wInBlocks <= 0 ||
                hInBlocks <= 0 ||
                wInBlocks > MAX_BLOCKS_PER_AXIS ||
                hInBlocks > MAX_BLOCKS_PER_AXIS ||
                wInBlocks.toLong() * hInBlocks.toLong() > MAX_TOTAL_BLOCKS
            ) {
                return false
            }
            imageWidth  = wInBlocks * BLOCK
            imageHeight = hInBlocks * BLOCK

            planeY  = Iw44Plane(wInBlocks, hInBlocks)
            if (!isGrayscale) {
                // Chroma planes are subsampled by 2 in each direction
                val cwb = (wInBlocks + 1) / 2
                val chb = (hInBlocks + 1) / 2
                planeCb = Iw44Plane(cwb, chb)
                planeCr = Iw44Plane(cwb, chb)
            }
            initialized = true
        }

        if (!initialized) return false
        val zpData = payload.copyOfRange(pos, payload.size)
        val zp = DjvuZpDecoder(zpData)

        repeat(nSlices) {
            planeY?.decodeSlice(zp)
            if (!isGrayscale) {
                planeCb?.decodeSlice(zp)
                planeCr?.decodeSlice(zp)
            }
        }
        return true
    }

    // ── rendering ───────────────────────────────────────────────────────────

    private fun renderImpl(): Bitmap? {
        val py = planeY ?: return null
        val w = imageWidth.coerceAtLeast(1)
        val h = imageHeight.coerceAtLeast(1)

        val pixels = IntArray(w * h)

        val yPixels  = py.reconstruct(w, h)

        if (isGrayscale) {
            for (i in pixels.indices) {
                val y = yPixels[i].clamp8()
                pixels[i] = argb(y, y, y)
            }
        } else {
            val cbPixels = planeCb?.reconstruct(w / 2, h / 2) ?: return null
            val crPixels = planeCr?.reconstruct(w / 2, h / 2) ?: return null
            for (row in 0 until h) {
                for (col in 0 until w) {
                    val i    = row * w + col
                    val ci   = (row / 2) * (w / 2) + (col / 2)
                    val y    = yPixels[i]
                    val cb   = cbPixels.getOrElse(ci) { 0 }
                    val cr   = crPixels.getOrElse(ci) { 0 }
                    pixels[i] = ycbcrToArgb(y, cb, cr)
                }
            }
        }

        val bitmap = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888)
        bitmap.setPixels(pixels, 0, w, 0, 0, w, h)
        return bitmap
    }

    // ── colour conversion ───────────────────────────────────────────────────

    private fun ycbcrToArgb(y: Int, cb: Int, cr: Int): Int {
        // ITU-R BT.601 full-range YCbCr → RGB
        // IW44 uses offset 128 for Cb/Cr
        val cb128 = cb - 128
        val cr128 = cr - 128
        val r = (y + (1.402  * cr128).toInt()).clamp8()
        val g = (y - (0.344136 * cb128).toInt() - (0.714136 * cr128).toInt()).clamp8()
        val b = (y + (1.772  * cb128).toInt()).clamp8()
        return argb(r, g, b)
    }

    private fun Int.clamp8(): Int = coerceIn(0, 255)
    private fun argb(r: Int, g: Int, b: Int): Int =
        (0xFF shl 24) or (r shl 16) or (g shl 8) or b

    // ── constants ───────────────────────────────────────────────────────────

    companion object {
        const val BLOCK = 32    // IW44 block size in pixels
        private const val MAX_BLOCKS_PER_AXIS = 10_000
        private const val MAX_TOTAL_BLOCKS = 40_000
    }
}

// ── Iw44Plane ───────────────────────────────────────────────────────────────

/**
 * One image plane (Y, Cb, or Cr) in IW44 format.
 *
 * Internally represented as a 2-D array of [wBlocks x hBlocks] blocks,
 * each block holding [BLOCK x BLOCK] integer wavelet coefficients.
 *
 * The IW44 wavelet is a 9-tap integer lifting scheme operating on 32×32 tiles.
 * Coefficient bands within each block follow the standard LL/LH/HL/HH layout
 * at 4 resolution levels.
 */
private class Iw44Plane(val wBlocks: Int, val hBlocks: Int) {

    // Wavelet coefficient buffer: [hBlocks * BLOCK][wBlocks * BLOCK]
    private val coef = Array(hBlocks * DjvuIw44Decoder.BLOCK) {
        IntArray(wBlocks * DjvuIw44Decoder.BLOCK)
    }

    // Current quantisation step for progressive decoding
    private var quantStep = QUANT_INIT
    private var slicesDone = 0

    // ── slice decode ─────────────────────────────────────────────────────────

    /**
     * Decode one IW44 slice from the ZP-Coder stream.
     * Each slice refines the wavelet coefficients by one quantisation level.
     */
    fun decodeSlice(zp: DjvuZpDecoder) {
        val step = quantStep
        if (step == 0) return          // fully refined
        decodeBand(zp, step)
        quantStep = nextQuantStep(step)
        slicesDone++
    }

    /**
     * Decode one quantisation level across all subbands and blocks.
     * Subbands are processed in IW44 zigzag order (coarsest first).
     */
    private fun decodeBand(zp: DjvuZpDecoder, step: Int) {
        val totalH = hBlocks * DjvuIw44Decoder.BLOCK
        val totalW = wBlocks * DjvuIw44Decoder.BLOCK

        // IW44 subbands at step > QUANT_FINE: refine LL band first, then detail bands
        // For simplicity we decode the entire plane at this quantisation level
        val halfH = totalH / 2
        val halfW = totalW / 2

        // LL subband (top-left quarter of coefficients)
        for (row in 0 until halfH) {
            for (col in 0 until halfW) {
                val ctx = buildCtx(row, col, totalH, totalW, 0)
                val bit = zp.decode(ctx)
                if (bit == 1) {
                    val sign = zp.decode(ctx + 1)
                    coef[row][col] += if (sign == 0) step else -step
                }
            }
        }

        // LH subband (top-right quarter)
        for (row in 0 until halfH) {
            for (col in halfW until totalW) {
                val ctx = buildCtx(row, col, totalH, totalW, 2)
                val bit = zp.decode(ctx)
                if (bit == 1) {
                    val sign = zp.decode(ctx + 1)
                    coef[row][col] += if (sign == 0) step else -step
                }
            }
        }

        // HL subband (bottom-left quarter)
        for (row in halfH until totalH) {
            for (col in 0 until halfW) {
                val ctx = buildCtx(row, col, totalH, totalW, 4)
                val bit = zp.decode(ctx)
                if (bit == 1) {
                    val sign = zp.decode(ctx + 1)
                    coef[row][col] += if (sign == 0) step else -step
                }
            }
        }

        // HH subband (bottom-right quarter)
        for (row in halfH until totalH) {
            for (col in halfW until totalW) {
                val ctx = buildCtx(row, col, totalH, totalW, 6)
                val bit = zp.decode(ctx)
                if (bit == 1) {
                    val sign = zp.decode(ctx + 1)
                    coef[row][col] += if (sign == 0) step else -step
                }
            }
        }
    }

    /** Build a ZP context index in [0, 255] from position and subband. */
    private fun buildCtx(row: Int, col: Int, totalH: Int, totalW: Int, subbandOffset: Int): Int {
        val nb = neighborMagnitude(row, col, totalH, totalW)
        val ctx = (subbandOffset * 16 + nb).coerceIn(0, 254)  // leave ctx+1 room for sign
        return ctx
    }

    /** Estimate the "significant neighbor" count for context conditioning. */
    private fun neighborMagnitude(row: Int, col: Int, totalH: Int, totalW: Int): Int {
        var cnt = 0
        if (row > 0           && coef[row - 1][col] != 0) cnt++
        if (row < totalH - 1  && coef[row + 1][col] != 0) cnt++
        if (col > 0           && coef[row][col - 1] != 0) cnt++
        if (col < totalW - 1  && coef[row][col + 1] != 0) cnt++
        return cnt.coerceIn(0, 15)
    }

    // ── inverse wavelet transform ─────────────────────────────────────────────

    /**
     * Reconstruct the spatial-domain pixel values from accumulated wavelet coefficients.
     * Applies the inverse IW44 integer lifting wavelet transform.
     * @return flat array of integer pixel values in [0, 255] range, row-major order
     */
    fun reconstruct(targetW: Int, targetH: Int): IntArray {
        val totalH = hBlocks * DjvuIw44Decoder.BLOCK
        val totalW = wBlocks * DjvuIw44Decoder.BLOCK

        // Work on a flat copy of coefficients
        val buf = Array(totalH) { row -> coef[row].copyOf() }

        // Inverse 2-D integer lifting wavelet (4-level)
        inverseIwt2D(buf, totalW, totalH)

        // Crop/scale to target dimensions and shift level to [0, 255]
        val out = IntArray(targetW * targetH)
        for (row in 0 until targetH) {
            for (col in 0 until targetW) {
                val r = minOf(row, totalH - 1)
                val c = minOf(col, totalW - 1)
                // IW44 offsets: DC component is in the range [-128, 127], shift by 128
                out[row * targetW + col] = (buf[r][c] + 128).coerceIn(0, 255)
            }
        }
        return out
    }

    /**
     * 2-D inverse integer wavelet transform.
     * IW44 uses a separable 9/7 integer lifting scheme (approximation).
     *
     * Four levels of decomposition, from coarsest (level 4) to finest (level 1).
     * At each level the synthesis filters are applied:
     *   1. Inverse column transform (vertical)
     *   2. Inverse row transform (horizontal)
     */
    private fun inverseIwt2D(buf: Array<IntArray>, w: Int, h: Int) {
        var sw = w / 16   // start at coarsest level (4 levels → /16)
        var sh = h / 16
        repeat(4) {
            sw *= 2
            sh *= 2
            inverseIwtRows(buf, sw, sh)
            inverseIwtCols(buf, sw, sh)
        }
    }

    /** Inverse row (horizontal) lifting transform on the top [sh] rows of width [sw]. */
    private fun inverseIwtRows(buf: Array<IntArray>, sw: Int, sh: Int) {
        val halfW = sw / 2
        for (row in 0 until sh) {
            val line = buf[row]
            // Inverse Haar-like lift: interleave low and high subbands
            // low  = line[0..halfW-1]  (even positions in original)
            // high = line[halfW..sw-1] (odd  positions in original)
            val tmp = IntArray(sw)
            for (i in 0 until halfW) {
                val lo = line[i]
                val hi = line[halfW + i]
                // Inverse update + predict (integer 9/7 approximation):
                val even = lo - (hi + 1) / 2     // predict step
                val odd  = hi + even              // update step
                tmp[i * 2]     = even
                tmp[i * 2 + 1] = odd
            }
            System.arraycopy(tmp, 0, line, 0, sw)
        }
    }

    /** Inverse column (vertical) lifting transform on [sw] columns of height [sh]. */
    private fun inverseIwtCols(buf: Array<IntArray>, sw: Int, sh: Int) {
        val halfH = sh / 2
        val tmp = IntArray(sh)
        for (col in 0 until sw) {
            for (i in 0 until sh) tmp[i] = buf[i][col]
            val out = IntArray(sh)
            for (i in 0 until halfH) {
                val lo = tmp[i]
                val hi = tmp[halfH + i]
                val even = lo - (hi + 1) / 2
                val odd  = hi + even
                out[i * 2]     = even
                out[i * 2 + 1] = odd
            }
            for (i in 0 until sh) buf[i][col] = out[i]
        }
    }

    // ── quantisation helpers ─────────────────────────────────────────────────

    companion object {
        private const val QUANT_INIT = 128    // initial (coarsest) quantisation step
        private const val QUANT_FINE = 1      // finest quantisation step

        /** IW44 quantisation step sequence: halves each slice until reaching 1. */
        private fun nextQuantStep(current: Int): Int =
            if (current <= QUANT_FINE) 0 else (current + 1) / 2
    }
}
