package io.leostrange.mrcomic.engine.epub.readium

import android.content.Context
import dagger.hilt.android.qualifiers.ApplicationContext
import java.io.File
import javax.inject.Inject
import javax.inject.Singleton
import org.readium.r2.shared.publication.Publication
import org.readium.r2.shared.util.asset.AssetRetriever
import org.readium.r2.shared.util.format.FormatHints
import org.readium.r2.shared.util.http.DefaultHttpClient
import org.readium.r2.shared.util.logging.ConsoleWarningLogger
import org.readium.r2.streamer.PublicationOpener
import org.readium.r2.streamer.parser.DefaultPublicationParser

@Singleton
class ReadiumPublicationFactory @Inject constructor(
    @ApplicationContext private val context: Context
) {

    private val httpClient by lazy { DefaultHttpClient() }
    private val assetRetriever by lazy { AssetRetriever(context.contentResolver, httpClient) }
    private val publicationParser by lazy { DefaultPublicationParser(context, httpClient, assetRetriever, null) }
    private val publicationOpener by lazy { PublicationOpener(publicationParser) }
    private val warningLogger by lazy { ConsoleWarningLogger() }

    suspend fun open(file: File): Publication {
        val asset = assetRetriever.retrieve(file, FormatHints()).fold(
            { it },
            { error -> error("Readium asset retrieval failed for ${file.absolutePath}: $error") }
        )
        val noOpPublicationTransform: (Publication.Builder) -> Unit = { }
        return publicationOpener.open(
            asset,
            null,
            false,
            noOpPublicationTransform,
            warningLogger
        ).fold(
            { it },
            { error -> error("Readium publication open failed for ${file.absolutePath}: $error") }
        )
    }
}
