package io.leostrange.mrcomic.media

import android.app.PendingIntent
import androidx.media3.common.AudioAttributes
import androidx.media3.common.C
import androidx.media3.common.MediaItem
import androidx.media3.common.MediaMetadata
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.session.MediaSession
import androidx.media3.session.MediaSessionService
import io.leostrange.mrcomic.core.model.Audiobook

/**
 * Media3 playback service for audiobooks.
 *
 * Handles ExoPlayer lifecycle, Android notification (via Media3 auto-notification),
 * and MediaSession so the lock screen / Bluetooth controls work.
 *
 * The service is started by [AudiobookPlaybackController] in feature-library;
 * it stays alive while audio is playing or paused (foreground service).
 */
class AudiobookPlaybackService : MediaSessionService() {

    private lateinit var player: ExoPlayer
    private lateinit var mediaSession: MediaSession

    override fun onCreate() {
        super.onCreate()
        player = ExoPlayer.Builder(this)
            .setAudioAttributes(
                AudioAttributes.Builder()
                    .setUsage(C.USAGE_MEDIA)
                    .setContentType(C.AUDIO_CONTENT_TYPE_SPEECH)
                    .build(),
                /* handleAudioFocus= */ true
            )
            .setHandleAudioBecomingNoisy(true)
            .build()

        val sessionActivityIntent = packageManager
            .getLaunchIntentForPackage(packageName)
            ?.let { intent ->
                PendingIntent.getActivity(
                    this, 0, intent,
                    PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT
                )
            }

        mediaSession = MediaSession.Builder(this, player)
            .apply { if (sessionActivityIntent != null) setSessionActivity(sessionActivityIntent) }
            .build()
    }

    override fun onGetSession(controllerInfo: MediaSession.ControllerInfo): MediaSession = mediaSession

    override fun onDestroy() {
        mediaSession.release()
        player.release()
        super.onDestroy()
    }

    // ── Static helpers ────────────────────────────────────────────────────────

    companion object {
        /**
         * Build a [MediaItem] list from an [Audiobook] so the service player can
         * be populated from outside via [MediaController].
         */
        fun buildMediaItems(audiobook: Audiobook): List<MediaItem> =
            audiobook.chapters.map { chapter ->
                MediaItem.Builder()
                    .setMediaId(chapter.uri)
                    .setUri(chapter.uri)
                    .setMediaMetadata(
                        MediaMetadata.Builder()
                            .setTitle(chapter.title)
                            .setArtist(audiobook.title)
                            .setAlbumTitle(audiobook.title)
                            .setArtworkUri(
                                audiobook.coverUri?.let {
                                    android.net.Uri.parse(it)
                                }
                            )
                            .build()
                    )
                    .build()
            }
    }
}
