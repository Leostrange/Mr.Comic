package com.example.feature.reader.ui

import android.app.Notification
import android.app.Service
import android.content.Intent
import android.content.pm.ServiceInfo
import android.os.Build
import android.os.IBinder

class ReaderTtsPlaybackService : Service() {

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
            startForegroundCompat(notification)
        } else {
            stopForegroundCompat()
            stopSelf()
        }
        return START_NOT_STICKY
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
        const val ACTION_START_OR_UPDATE = "com.example.mrcomic.reader.tts.service.START_OR_UPDATE"
        const val ACTION_STOP = "com.example.mrcomic.reader.tts.service.STOP"
    }
}
