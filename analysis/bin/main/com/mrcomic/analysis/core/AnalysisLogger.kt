package com.mrcomic.analysis.core

/**
 * Logger interface for analysis operations.
 */
interface AnalysisLogger {
    fun debug(message: String, vararg args: Any?)
    fun info(message: String, vararg args: Any?)
    fun warn(message: String, vararg args: Any?)
    fun error(message: String, throwable: Throwable? = null, vararg args: Any?)
}

/**
 * Simple console implementation of AnalysisLogger.
 */
class ConsoleAnalysisLogger(private val level: LogLevel = LogLevel.INFO) : AnalysisLogger {
    
    enum class LogLevel(val priority: Int) {
        DEBUG(0), INFO(1), WARN(2), ERROR(3)
    }
    
    override fun debug(message: String, vararg args: Any?) {
        if (level.priority <= LogLevel.DEBUG.priority) {
            println("[DEBUG] ${formatMessage(message, *args)}")
        }
    }
    
    override fun info(message: String, vararg args: Any?) {
        if (level.priority <= LogLevel.INFO.priority) {
            println("[INFO] ${formatMessage(message, *args)}")
        }
    }
    
    override fun warn(message: String, vararg args: Any?) {
        if (level.priority <= LogLevel.WARN.priority) {
            println("[WARN] ${formatMessage(message, *args)}")
        }
    }
    
    override fun error(message: String, throwable: Throwable?, vararg args: Any?) {
        if (level.priority <= LogLevel.ERROR.priority) {
            println("[ERROR] ${formatMessage(message, *args)}")
            throwable?.printStackTrace()
        }
    }
    
    private fun formatMessage(message: String, vararg args: Any?): String {
        return if (args.isEmpty()) message else String.format(message, *args)
    }
}