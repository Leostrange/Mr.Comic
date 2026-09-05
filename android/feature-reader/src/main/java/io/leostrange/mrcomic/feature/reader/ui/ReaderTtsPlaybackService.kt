package io.leostrange.mrcomic.feature.reader.ui

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.Service
import android.content.Intent
import android.content.pm.ServiceInfo
import android.os.Build
import android.os.IBinder

class ReaderTtsPlaybackService : Service() {

    override fun onCreate() {
        super.onCreate()
        ensureNotificationChannel()
        try {
            startForegroundCompat(buildFallbackNotification())
        } catch (_: android.app.ForegroundServiceStartNotAllowedException) {
            stopSelf()
        }
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action) {
            ACTION_STOP -> {
                stopForegroundCompat()
                stopSelf()
                return START_NOT_STICKY
            }
        }

        val notification = ReaderTextToSpeechControllerStore.peek()?.currentNotificationOrNull()
        if (notification != null) {
            try {
                startForegroundCompat(notification)
            } catch (_: android.app.ForegroundServiceStartNotAllowedException) {
                stopSelf()
            }
        }
        return START_NOT_STICKY
    }

    private fun buildFallbackNotification(): Notification {
        return Notification.Builder(this, ReaderTextToSpeechController.TTS_NOTIFICATION_CHANNEL_ID)
            .setSmallIcon(android.R.drawable.ic_media_play)
            .setContentTitle("Чтение голосом")
            .setContentText("Инициализация...")
            .setVisibility(Notification.VISIBILITY_PUBLIC)
            .setCategory(Notification.CATEGORY_TRANSPORT)
            .setOnlyAlertOnce(true)
            .setOngoing(true)
            .setShowWhen(false)
            .build()
    }

    private fun ensureNotificationChannel() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) return
        val channel = NotificationChannel(
            ReaderTextToSpeechController.TTS_NOTIFICATION_CHANNEL_ID,
            "Озвучивание книг",
            NotificationManager.IMPORTANCE_LOW
        ).apply {
            description = "Управление чтением голосом"
            lockscreenVisibility = Notification.VISIBILITY_PUBLIC
            setShowBadge(false)
        }
        val notificationManager = getSystemService(NotificationManager::class.java)
        notificationManager.createNotificationChannel(channel)
    }

    private fun startForegroundCompat(notification: Notification) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            startForeground(
                ReaderTextToSpeechController.TTS_NOTIFICATION_ID,
                notification,
                ServiceInfo.FOREGROUND_SERVICE_TYPE_MEDIA_PLAYBACK
            )
        } else {
            startForeground(ReaderTextToSpeechController.TTS_NOTIFICATION_ID, notification)
        }
    }

    private fun stopForegroundCompat() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            stopForeground(STOP_FOREGROUND_REMOVE)
        } else {
            @Suppress("DEPRECATION")
            stopForeground(true)
        }
    }

    companion object {
        const val ACTION_START_OR_UPDATE = "io.leostrange.mrcomic.reader.tts.service.START_OR_UPDATE"
        const val ACTION_STOP = "io.leostrange.mrcomic.reader.tts.service.STOP"
    }
}
