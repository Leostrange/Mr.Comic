package io.leostrange.mrcomic.feature.reader.harness

/**
 * Верификация прогресса чтения.
 * Проверяет консистентность между page-based и CFI-based прогрессом.
 */
object ProgressVerifier {

    data class ProgressSnapshot(
        val page: Int,
        val totalPages: Int,
        val percentage: Double,
        val cfi: String?,
        val spineIndex: Int,
        val textOffset: Int
    )

    fun verifyConsistency(
        snapshots: List<ProgressSnapshot>,
        tolerance: Double = 0.02
    ): List<String> {
        val errors = mutableListOf<String>()

        // 1. Процент должен быть монотонно возрастающим
        for (i in 1 until snapshots.size) {
            if (snapshots[i].percentage < snapshots[i - 1].percentage - tolerance) {
                errors.add(
                    "Progress decreased: ${snapshots[i - 1].percentage} → ${snapshots[i].percentage} " +
                        "at page ${snapshots[i].page}"
                )
            }
        }

        // 2. Процент должен соответствовать page/totalPages
        for (snapshot in snapshots) {
            if (snapshot.totalPages > 0) {
                val expectedPercentage = snapshot.page.toDouble() / snapshot.totalPages
                if (Math.abs(snapshot.percentage - expectedPercentage) > tolerance) {
                    errors.add(
                        "Percentage mismatch at page ${snapshot.page}: " +
                            "expected $expectedPercentage, got ${snapshot.percentage}"
                    )
                }
            }
        }

        // 3. CFI должен быть стабильным при том же контенте
        val cfiByPage = snapshots.groupBy { it.page }
        for ((page, pageSnapshots) in cfiByPage) {
            val cfis = pageSnapshots.mapNotNull { it.cfi }.distinct()
            if (cfis.size > 1) {
                errors.add(
                    "Multiple CFIs for page $page: $cfis"
                )
            }
        }

        return errors
    }
}
