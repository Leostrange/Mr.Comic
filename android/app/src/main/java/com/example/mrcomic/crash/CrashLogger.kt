package com.example.mrcomic.crash

import android.content.Context
import java.io.File
import java.io.PrintWriter
import java.io.StringWriter

object CrashLogger {
    private const val CRASH_DIR = "crash_reports"
    private const val CRASH_FILE = "last_crash.txt"

    fun install(context: Context) {
        val defaultHandler = Thread.getDefaultUncaughtExceptionHandler()
        Thread.setDefaultUncaughtExceptionHandler { thread, throwable ->
            try {
                writeCrash(context, throwable)
            } catch (_: Exception) {
            } finally {
                defaultHandler?.uncaughtException(thread, throwable)
            }
        }
    }

    private fun writeCrash(context: Context, throwable: Throwable) {
        val dir = File(context.filesDir, CRASH_DIR)
        if (!dir.exists()) dir.mkdirs()
        val file = File(dir, CRASH_FILE)
        val sw = StringWriter()
        val pw = PrintWriter(sw)
        throwable.printStackTrace(pw)
        pw.flush()
        file.writeText(sw.toString())
    }

    fun getCrashText(context: Context): String? {
        val file = File(File(context.filesDir, CRASH_DIR), CRASH_FILE)
        return if (file.exists()) file.readText() else null
    }

    fun hasPendingCrash(context: Context): Boolean = getCrashText(context) != null

    fun clear(context: Context) {
        val file = File(File(context.filesDir, CRASH_DIR), CRASH_FILE)
        if (file.exists()) file.delete()
    }
}


