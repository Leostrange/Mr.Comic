package io.leostrange.mrcomic.engine.formats.djvu

/**
 * DjVu ZP arithmetic decoder.
 *
 * This is a close Kotlin port of the permissive `sndjvu` implementation,
 * keeping the simple context-index API that the rest of the project already uses.
 * Accurate ZP behaviour is required for `TXTz` / `ANTz` BZZ decoding and also
 * benefits future `JB2` / `IW44` work.
 */
internal class DjvuZpDecoder(private val data: ByteArray) {

    private var c: Long
    private var level: Int = 16
    private var fence: Int = 0
    private var a: Int = 0
    private var bytePos: Int

    private val ctx = IntArray(300) { 0 }

    init {
        val firstWord = when (data.size) {
            0 -> 0xFFFF
            1 -> ((data[0].toInt() and 0xFF) shl 8) or 0xFF
            else -> ((data[0].toInt() and 0xFF) shl 8) or (data[1].toInt() and 0xFF)
        }
        c = (firstWord.toLong() and 0xFFFFL) shl 48
        bytePos = minOf(2, data.size)
        updateFence()
    }

    fun decode(ctxIndex: Int): Int {
        ensureProvisioned()
        val normalizedIndex = ctxIndex.coerceIn(0, ctx.lastIndex)
        val state = ctx[normalizedIndex].coerceIn(0, ZP_TABLE.lastIndex)
        val entry = ZP_TABLE[state]
        val mps = state and 1

        val z0 = a + entry.delta
        if (z0 <= fence) {
            a = z0
            return mps
        }

        val d = 0x6000 + (z0 + a) / 4
        val z = minOf(z0, d).and(0xFFFF)
        return if ((c ushr 48) < z.toLong()) {
            ctx[normalizedIndex] = entry.down
            val nextA = (a - z).and(0xFFFF)
            val nextC = c - (z.toLong() shl 48)
            val shift = leadingOnes16(nextA)
            a = shiftLeft16(nextA, shift)
            c = nextC shl shift
            updateFence()
            level += shift
            mps xor 1
        } else {
            if (a >= entry.theta) {
                ctx[normalizedIndex] = entry.up
            }
            a = shiftLeft16(z, 1)
            c = c shl 1
            updateFence()
            level += 1
            mps
        }
    }

    /**
     * DjVu BZZ uses arithmetic passthrough bits for block headers and symbol branches.
     * Returns `1` for the LPS branch and `0` for the MPS branch.
     */
    fun decodePassthrough(): Int {
        ensureProvisioned()
        val z = 0x8000 + (a ushr 1)
        return if ((c ushr 48) < z.toLong()) {
            val nextA = (a - z).and(0xFFFF)
            val nextC = c - (z.toLong() shl 48)
            val shift = leadingOnes16(nextA)
            a = shiftLeft16(nextA, shift)
            c = nextC shl shift
            updateFence()
            level += shift
            1
        } else {
            a = shiftLeft16(z, 1)
            c = c shl 1
            updateFence()
            level += 1
            0
        }
    }

    fun resetContexts() {
        ctx.fill(0)
    }

    fun setContext(ctxIndex: Int, state: Int) {
        val normalizedIndex = ctxIndex.coerceIn(0, ctx.lastIndex)
        ctx[normalizedIndex] = state.coerceIn(0, ZP_TABLE.lastIndex)
    }

    fun getContextState(ctxIndex: Int): Int {
        val normalizedIndex = ctxIndex.coerceIn(0, ctx.lastIndex)
        return ctx[normalizedIndex]
    }

    private fun ensureProvisioned() {
        if (level > 0) {
            reload()
        }
    }

    private fun reload() {
        var word = 0L
        repeat(4) {
            word = (word shl 8) or nextByte().toLong()
        }
        c = c or (word shl level)
        level -= 32
    }

    private fun nextByte(): Int =
        if (bytePos < data.size) data[bytePos++].toInt() and 0xFF else 0xFF

    private fun updateFence() {
        fence = minOf((c ushr 48).toInt(), 0x7FFF)
    }

    private fun leadingOnes16(value: Int): Int =
        Integer.numberOfLeadingZeros((value and 0xFFFF).inv() and 0xFFFF) - 16

    private fun shiftLeft16(value: Int, amount: Int): Int {
        if (amount >= 16) return 0
        return (value shl amount).and(0xFFFF)
    }

    internal data class ZpEntry(
        val delta: Int,
        val theta: Int,
        val up: Int,
        val down: Int
    )

    companion object {
        val ZP_TABLE: Array<ZpEntry> = arrayOf(
            ZpEntry(0x8000, 0x0000, 84, 145),
            ZpEntry(0x8000, 0x0000, 3, 4),
            ZpEntry(0x8000, 0x0000, 4, 3),
            ZpEntry(0x6BBD, 0x10A5, 5, 1),
            ZpEntry(0x6BBD, 0x10A5, 6, 2),
            ZpEntry(0x5D45, 0x1F28, 7, 3),
            ZpEntry(0x5D45, 0x1F28, 8, 4),
            ZpEntry(0x51B9, 0x2BD3, 9, 5),
            ZpEntry(0x51B9, 0x2BD3, 10, 6),
            ZpEntry(0x4813, 0x36E3, 11, 7),
            ZpEntry(0x4813, 0x36E3, 12, 8),
            ZpEntry(0x3FD5, 0x408C, 13, 9),
            ZpEntry(0x3FD5, 0x408C, 14, 10),
            ZpEntry(0x38B1, 0x48FD, 15, 11),
            ZpEntry(0x38B1, 0x48FD, 16, 12),
            ZpEntry(0x3275, 0x505D, 17, 13),
            ZpEntry(0x3275, 0x505D, 18, 14),
            ZpEntry(0x2CFD, 0x56D0, 19, 15),
            ZpEntry(0x2CFD, 0x56D0, 20, 16),
            ZpEntry(0x2825, 0x5C71, 21, 17),
            ZpEntry(0x2825, 0x5C71, 22, 18),
            ZpEntry(0x23AB, 0x615B, 23, 19),
            ZpEntry(0x23AB, 0x615B, 24, 20),
            ZpEntry(0x1F87, 0x65A5, 25, 21),
            ZpEntry(0x1F87, 0x65A5, 26, 22),
            ZpEntry(0x1BBB, 0x6962, 27, 23),
            ZpEntry(0x1BBB, 0x6962, 28, 24),
            ZpEntry(0x1845, 0x6CA2, 29, 25),
            ZpEntry(0x1845, 0x6CA2, 30, 26),
            ZpEntry(0x1523, 0x6F74, 31, 27),
            ZpEntry(0x1523, 0x6F74, 32, 28),
            ZpEntry(0x1253, 0x71E6, 33, 29),
            ZpEntry(0x1253, 0x71E6, 34, 30),
            ZpEntry(0x0FCF, 0x7404, 35, 31),
            ZpEntry(0x0FCF, 0x7404, 36, 32),
            ZpEntry(0x0D95, 0x75D6, 37, 33),
            ZpEntry(0x0D95, 0x75D6, 38, 34),
            ZpEntry(0x0B9D, 0x7768, 39, 35),
            ZpEntry(0x0B9D, 0x7768, 40, 36),
            ZpEntry(0x09E3, 0x78C2, 41, 37),
            ZpEntry(0x09E3, 0x78C2, 42, 38),
            ZpEntry(0x0861, 0x79EA, 43, 39),
            ZpEntry(0x0861, 0x79EA, 44, 40),
            ZpEntry(0x0711, 0x7AE7, 45, 41),
            ZpEntry(0x0711, 0x7AE7, 46, 42),
            ZpEntry(0x05F1, 0x7BBE, 47, 43),
            ZpEntry(0x05F1, 0x7BBE, 48, 44),
            ZpEntry(0x04F9, 0x7C75, 49, 45),
            ZpEntry(0x04F9, 0x7C75, 50, 46),
            ZpEntry(0x0425, 0x7D0F, 51, 47),
            ZpEntry(0x0425, 0x7D0F, 52, 48),
            ZpEntry(0x0371, 0x7D91, 53, 49),
            ZpEntry(0x0371, 0x7D91, 54, 50),
            ZpEntry(0x02D9, 0x7DFE, 55, 51),
            ZpEntry(0x02D9, 0x7DFE, 56, 52),
            ZpEntry(0x0259, 0x7E5A, 57, 53),
            ZpEntry(0x0259, 0x7E5A, 58, 54),
            ZpEntry(0x01ED, 0x7EA6, 59, 55),
            ZpEntry(0x01ED, 0x7EA6, 60, 56),
            ZpEntry(0x0193, 0x7EE6, 61, 57),
            ZpEntry(0x0193, 0x7EE6, 62, 58),
            ZpEntry(0x0149, 0x7F1A, 63, 59),
            ZpEntry(0x0149, 0x7F1A, 64, 60),
            ZpEntry(0x010B, 0x7F45, 65, 61),
            ZpEntry(0x010B, 0x7F45, 66, 62),
            ZpEntry(0x00D5, 0x7F6B, 67, 63),
            ZpEntry(0x00D5, 0x7F6B, 68, 64),
            ZpEntry(0x00A5, 0x7F8D, 69, 65),
            ZpEntry(0x00A5, 0x7F8D, 70, 66),
            ZpEntry(0x007B, 0x7FAA, 71, 67),
            ZpEntry(0x007B, 0x7FAA, 72, 68),
            ZpEntry(0x0057, 0x7FC3, 73, 69),
            ZpEntry(0x0057, 0x7FC3, 74, 70),
            ZpEntry(0x003B, 0x7FD7, 75, 71),
            ZpEntry(0x003B, 0x7FD7, 76, 72),
            ZpEntry(0x0023, 0x7FE7, 77, 73),
            ZpEntry(0x0023, 0x7FE7, 78, 74),
            ZpEntry(0x0013, 0x7FF2, 79, 75),
            ZpEntry(0x0013, 0x7FF2, 80, 76),
            ZpEntry(0x0007, 0x7FFA, 81, 77),
            ZpEntry(0x0007, 0x7FFA, 82, 78),
            ZpEntry(0x0001, 0x7FFF, 81, 79),
            ZpEntry(0x0001, 0x7FFF, 82, 80),
            ZpEntry(0x5695, 0x0000, 9, 85),
            ZpEntry(0x24EE, 0x0000, 86, 226),
            ZpEntry(0x8000, 0x0000, 5, 6),
            ZpEntry(0x0D30, 0x0000, 88, 176),
            ZpEntry(0x481A, 0x0000, 89, 143),
            ZpEntry(0x0481, 0x0000, 90, 138),
            ZpEntry(0x3579, 0x0000, 91, 141),
            ZpEntry(0x017A, 0x0000, 92, 112),
            ZpEntry(0x24EF, 0x0000, 93, 135),
            ZpEntry(0x007B, 0x0000, 94, 104),
            ZpEntry(0x1978, 0x0000, 95, 133),
            ZpEntry(0x0028, 0x0000, 96, 100),
            ZpEntry(0x10CA, 0x0000, 97, 129),
            ZpEntry(0x000D, 0x0000, 82, 98),
            ZpEntry(0x0B5D, 0x0000, 99, 127),
            ZpEntry(0x0034, 0x0000, 76, 72),
            ZpEntry(0x078A, 0x0000, 101, 125),
            ZpEntry(0x00A0, 0x0000, 70, 102),
            ZpEntry(0x050F, 0x0000, 103, 123),
            ZpEntry(0x0117, 0x0000, 66, 60),
            ZpEntry(0x0358, 0x0000, 105, 121),
            ZpEntry(0x01EA, 0x0000, 106, 110),
            ZpEntry(0x0234, 0x0000, 107, 119),
            ZpEntry(0x0144, 0x0000, 66, 108),
            ZpEntry(0x0173, 0x0000, 109, 117),
            ZpEntry(0x0234, 0x0000, 60, 54),
            ZpEntry(0x00F5, 0x0000, 111, 115),
            ZpEntry(0x0353, 0x0000, 56, 48),
            ZpEntry(0x00A1, 0x0000, 69, 113),
            ZpEntry(0x05C5, 0x0000, 114, 134),
            ZpEntry(0x011A, 0x0000, 65, 59),
            ZpEntry(0x03CF, 0x0000, 116, 132),
            ZpEntry(0x01AA, 0x0000, 61, 55),
            ZpEntry(0x0285, 0x0000, 118, 130),
            ZpEntry(0x0286, 0x0000, 57, 51),
            ZpEntry(0x01AB, 0x0000, 120, 128),
            ZpEntry(0x03D3, 0x0000, 53, 47),
            ZpEntry(0x011A, 0x0000, 122, 126),
            ZpEntry(0x05C5, 0x0000, 49, 41),
            ZpEntry(0x00BA, 0x0000, 124, 62),
            ZpEntry(0x08AD, 0x0000, 43, 37),
            ZpEntry(0x007A, 0x0000, 72, 66),
            ZpEntry(0x0CCC, 0x0000, 39, 31),
            ZpEntry(0x01EB, 0x0000, 60, 54),
            ZpEntry(0x1302, 0x0000, 33, 25),
            ZpEntry(0x02E6, 0x0000, 56, 50),
            ZpEntry(0x1B81, 0x0000, 29, 131),
            ZpEntry(0x045E, 0x0000, 52, 46),
            ZpEntry(0x24EF, 0x0000, 23, 17),
            ZpEntry(0x0690, 0x0000, 48, 40),
            ZpEntry(0x2865, 0x0000, 23, 15),
            ZpEntry(0x09DE, 0x0000, 42, 136),
            ZpEntry(0x3987, 0x0000, 137, 7),
            ZpEntry(0x0DC8, 0x0000, 38, 32),
            ZpEntry(0x2C99, 0x0000, 21, 139),
            ZpEntry(0x10CA, 0x0000, 140, 172),
            ZpEntry(0x3B5F, 0x0000, 15, 9),
            ZpEntry(0x0B5D, 0x0000, 142, 170),
            ZpEntry(0x5695, 0x0000, 9, 85),
            ZpEntry(0x078A, 0x0000, 144, 168),
            ZpEntry(0x8000, 0x0000, 141, 248),
            ZpEntry(0x050F, 0x0000, 146, 166),
            ZpEntry(0x24EE, 0x0000, 147, 247),
            ZpEntry(0x0358, 0x0000, 148, 164),
            ZpEntry(0x0D30, 0x0000, 149, 197),
            ZpEntry(0x0234, 0x0000, 150, 162),
            ZpEntry(0x0481, 0x0000, 151, 95),
            ZpEntry(0x0173, 0x0000, 152, 160),
            ZpEntry(0x017A, 0x0000, 153, 173),
            ZpEntry(0x00F5, 0x0000, 154, 158),
            ZpEntry(0x007B, 0x0000, 155, 165),
            ZpEntry(0x00A1, 0x0000, 70, 156),
            ZpEntry(0x0028, 0x0000, 157, 161),
            ZpEntry(0x011A, 0x0000, 66, 60),
            ZpEntry(0x000D, 0x0000, 81, 159),
            ZpEntry(0x01AA, 0x0000, 62, 56),
            ZpEntry(0x0034, 0x0000, 75, 71),
            ZpEntry(0x0286, 0x0000, 58, 52),
            ZpEntry(0x00A0, 0x0000, 69, 163),
            ZpEntry(0x03D3, 0x0000, 54, 48),
            ZpEntry(0x0117, 0x0000, 65, 59),
            ZpEntry(0x05C5, 0x0000, 50, 42),
            ZpEntry(0x01EA, 0x0000, 167, 171),
            ZpEntry(0x08AD, 0x0000, 44, 38),
            ZpEntry(0x0144, 0x0000, 65, 169),
            ZpEntry(0x0CCC, 0x0000, 40, 32),
            ZpEntry(0x0234, 0x0000, 59, 53),
            ZpEntry(0x1302, 0x0000, 34, 26),
            ZpEntry(0x0353, 0x0000, 55, 47),
            ZpEntry(0x1B81, 0x0000, 30, 174),
            ZpEntry(0x05C5, 0x0000, 175, 193),
            ZpEntry(0x24EF, 0x0000, 24, 18),
            ZpEntry(0x03CF, 0x0000, 177, 191),
            ZpEntry(0x2B74, 0x0000, 178, 222),
            ZpEntry(0x0285, 0x0000, 179, 189),
            ZpEntry(0x201D, 0x0000, 180, 218),
            ZpEntry(0x01AB, 0x0000, 181, 187),
            ZpEntry(0x1715, 0x0000, 182, 216),
            ZpEntry(0x011A, 0x0000, 183, 185),
            ZpEntry(0x0FB7, 0x0000, 184, 214),
            ZpEntry(0x00BA, 0x0000, 69, 61),
            ZpEntry(0x0A67, 0x0000, 186, 212),
            ZpEntry(0x01EB, 0x0000, 59, 53),
            ZpEntry(0x06E7, 0x0000, 188, 210),
            ZpEntry(0x02E6, 0x0000, 55, 49),
            ZpEntry(0x0496, 0x0000, 190, 208),
            ZpEntry(0x045E, 0x0000, 51, 45),
            ZpEntry(0x030D, 0x0000, 192, 206),
            ZpEntry(0x0690, 0x0000, 47, 39),
            ZpEntry(0x0206, 0x0000, 194, 204),
            ZpEntry(0x09DE, 0x0000, 41, 195),
            ZpEntry(0x0155, 0x0000, 196, 202),
            ZpEntry(0x0DC8, 0x0000, 37, 31),
            ZpEntry(0x00E1, 0x0000, 198, 200),
            ZpEntry(0x2B74, 0x0000, 199, 243),
            ZpEntry(0x0094, 0x0000, 72, 64),
            ZpEntry(0x201D, 0x0000, 201, 239),
            ZpEntry(0x0188, 0x0000, 62, 56),
            ZpEntry(0x1715, 0x0000, 203, 237),
            ZpEntry(0x0252, 0x0000, 58, 52),
            ZpEntry(0x0FB7, 0x0000, 205, 235),
            ZpEntry(0x0383, 0x0000, 54, 48),
            ZpEntry(0x0A67, 0x0000, 207, 233),
            ZpEntry(0x0547, 0x0000, 50, 44),
            ZpEntry(0x06E7, 0x0000, 209, 231),
            ZpEntry(0x07E2, 0x0000, 46, 38),
            ZpEntry(0x0496, 0x0000, 211, 229),
            ZpEntry(0x0BC0, 0x0000, 40, 34),
            ZpEntry(0x030D, 0x0000, 213, 227),
            ZpEntry(0x1178, 0x0000, 36, 28),
            ZpEntry(0x0206, 0x0000, 215, 225),
            ZpEntry(0x19DA, 0x0000, 30, 22),
            ZpEntry(0x0155, 0x0000, 217, 223),
            ZpEntry(0x24EF, 0x0000, 26, 16),
            ZpEntry(0x00E1, 0x0000, 219, 221),
            ZpEntry(0x320E, 0x0000, 20, 220),
            ZpEntry(0x0094, 0x0000, 71, 63),
            ZpEntry(0x432A, 0x0000, 14, 8),
            ZpEntry(0x0188, 0x0000, 61, 55),
            ZpEntry(0x447D, 0x0000, 14, 224),
            ZpEntry(0x0252, 0x0000, 57, 51),
            ZpEntry(0x5ECE, 0x0000, 8, 2),
            ZpEntry(0x0383, 0x0000, 53, 47),
            ZpEntry(0x8000, 0x0000, 228, 87),
            ZpEntry(0x0547, 0x0000, 49, 43),
            ZpEntry(0x481A, 0x0000, 230, 246),
            ZpEntry(0x07E2, 0x0000, 45, 37),
            ZpEntry(0x3579, 0x0000, 232, 244),
            ZpEntry(0x0BC0, 0x0000, 39, 33),
            ZpEntry(0x24EF, 0x0000, 234, 238),
            ZpEntry(0x1178, 0x0000, 35, 27),
            ZpEntry(0x1978, 0x0000, 138, 236),
            ZpEntry(0x19DA, 0x0000, 29, 21),
            ZpEntry(0x2865, 0x0000, 24, 16),
            ZpEntry(0x24EF, 0x0000, 25, 15),
            ZpEntry(0x3987, 0x0000, 240, 8),
            ZpEntry(0x320E, 0x0000, 19, 241),
            ZpEntry(0x2C99, 0x0000, 22, 242),
            ZpEntry(0x432A, 0x0000, 13, 7),
            ZpEntry(0x3B5F, 0x0000, 16, 10),
            ZpEntry(0x447D, 0x0000, 13, 245),
            ZpEntry(0x5695, 0x0000, 10, 2),
            ZpEntry(0x5ECE, 0x0000, 7, 1),
            ZpEntry(0x8000, 0x0000, 244, 83),
            ZpEntry(0x8000, 0x0000, 249, 250),
            ZpEntry(0x5695, 0x0000, 10, 2),
            ZpEntry(0x481A, 0x0000, 89, 143),
            ZpEntry(0x481A, 0x0000, 230, 246)
        )
    }
}
