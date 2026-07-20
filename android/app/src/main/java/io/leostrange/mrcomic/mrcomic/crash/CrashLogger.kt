package io.leostrange.mrcomic.crash

import android.content.Context
import android.util.Log
import java.io.File
import java.io.PrintWriter
import java.io.StringWriter

object CrashLogger {
    private const val TAG = "CrashLogger"
    private const val CRASH_FILE = "crash_log.txt"

    fun install(context: Context) {
        val defaultHandler = Thread.getDefaultUncaughtExceptionHandler()
        Thread.setDefaultUncaughtExceptionHandler { thread, throwable ->
            try {
                val sw = StringWriter()
                throwable.printStackTrace(PrintWriter(sw))
                val crashText = "Thread: ${thread.name}\n$sw"
                val file = File(context.filesDir, CRASH_FILE)
                file.writeText(crashText)
                Log.e(TAG, "Crash saved to ${file.absolutePath}")
            } catch (e: Exception) {
                Log.e(TAG, "Failed to save crash", e)
            }
            defaultHandler?.uncaughtException(thread, throwable)
        }
    }

    fun getCrashText(context: Context): String? {
        val file = File(context.filesDir, CRASH_FILE)
        return if (file.exists() && file.length() > 0) file.readText() else null
    }

    fun clear(context: Context) {
        try { File(context.filesDir, CRASH_FILE).delete() } catch (_: Exception) {}
    }
}
