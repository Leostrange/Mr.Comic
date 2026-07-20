package io.leostrange.mrcomic.engine.epub.readium

import io.leostrange.mrcomic.core.model.ReaderLocator
import org.readium.r2.shared.publication.Locator
import org.readium.r2.shared.publication.Publication

interface ReadiumPublicationSessionAccess {
    val publication: Publication?

    fun resolveReadiumLocator(locator: ReaderLocator?): Locator? =
        publication?.resolveReadiumLocator(locator)

    fun resolveReaderPageIndex(locator: ReaderLocator?): Int? =
        publication?.resolveReaderPageIndex(locator)

    fun resolveReadiumReaderLocator(locator: ReaderLocator?): ReaderLocator? =
        publication?.resolveReadiumReaderLocator(locator)

    fun readingOrderSize(): Int? =
        publication?.readingOrder?.size?.takeIf { it > 0 }
}
