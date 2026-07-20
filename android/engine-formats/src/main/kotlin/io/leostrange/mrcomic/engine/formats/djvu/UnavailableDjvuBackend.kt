package io.leostrange.mrcomic.engine.formats.djvu

import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class UnavailableDjvuBackend @Inject constructor() : DjvuBackend {

    override val status: DjvuBackendStatus = DjvuBackendStatus.Unavailable(
        backendName = "placeholder",
        summary = "Safe DjVu placeholder mode",
        details = "This build keeps DjVu in an explicit placeholder path until a renderer with acceptable integration and licensing tradeoffs is chosen."
    )

    override suspend fun open(path: String): DjvuDocument? = null
}
