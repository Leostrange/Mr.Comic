package com.example.mrcomic

import android.app.Application
import com.google.firebase.analytics.FirebaseAnalytics
import timber.log.Timber

class MainApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        Timber.plant(Timber.DebugTree())
        FirebaseAnalytics.getInstance(this)
    }
} 