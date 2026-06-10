package com.example.feature.reader.ui

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.Service
import android.content.Intent
import android.content.pm.ServiceInfo
import android.os.Build
import android.os.IBinder

class ReaderTtsPlaybackService : Service() {

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onCreate() {
        super.onCreate()
        startForegroundCompat(buildFallbackNotification())
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action) {
            ACTION_STOP -> {
                stopForegroundCompat()
                stopSelf()
                return START_NOT_STICKY
            }
        }

        val notification = ReaderTextToSpeechControllerStore.peek()?.currentNotificationOrNull()
            ?: buildFallbackNotification()
        startForegroundCompat(notification)
        return START_NOT_STICKY
    }

    override fun onDestroy() {
        ReaderTextToSpeechControllerStore.peek()?.onServiceDestroyed()
        super.onDestroy()
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

    private fun buildFallbackNotification(): Notification {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                ReaderTextToSpeechController.TTS_NOTIFICATION_CHANNEL_ID,
                "Озвучивание книг",
                NotificationManager.IMPORTANCE_LOW
            ).apply {
                description = "Управление чтением голосом"
                lockscreenVisibility = Notification.VISIBILITY_PUBLIC
                setShowBadge(false)
            }
            (getSystemService(NotificationManager::class.java))?.createNotificationChannel(channel)
        }
        return Notification.Builder(this, ReaderTextToSpeechController.TTS_NOTIFICATION_CHANNEL_ID)
            .setSmallIcon(android.R.drawable.ic_media_play)
            .setContentTitle("Чтение голосом")
            .setContentText("Запуск...")
            .setSubText("Mr.Comic")
            .setVisibility(Notification.VISIBILITY_PUBLIC)
            .setCategory(Notification.CATEGORY_TRANSPORT)
            .setOnlyAlertOnce(true)
            .setOngoing(true)
            .setShowWhen(false)
            .build()
    }

    companion object {
        const val ACTION_START_OR_UPDATE = "com.example.mrcomic.reader.tts.service.START_OR_UPDATE"
        const val ACTION_STOP = "com.example.mrcomic.reader.tts.service.STOP"
    }
}
