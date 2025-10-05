package com.example.mrcomic

import android.app.Application
import com.example.mrcomic.crash.CrashLogger
import dagger.hilt.android.HiltAndroidApp

@HiltAndroidApp
class ComicApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        CrashLogger.install(this)
    }
}
