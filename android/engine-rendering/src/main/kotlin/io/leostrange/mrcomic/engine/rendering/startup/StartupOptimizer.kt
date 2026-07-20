package io.leostrange.mrcomic.engine.rendering.startup

import android.util.Log
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class StartupOptimizer @Inject constructor() {
    companion object { private const val TAG = "StartupOptimizer" }
    private var appStartTime = 0L

    fun onAppStart() {
        appStartTime = System.currentTimeMillis()
        Log.d(TAG, "App started")
    }

    fun onMainActivityReady() {
        val elapsed = System.currentTimeMillis() - appStartTime
        Log.d(TAG, "MainActivity ready in ${elapsed}ms")
    }
}
