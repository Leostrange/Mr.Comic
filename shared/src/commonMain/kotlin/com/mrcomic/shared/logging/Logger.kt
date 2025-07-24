package com.mrcomic.shared.logging

interface Logger {
    fun d(tag: String, message: String)
    fun e(tag: String, message: String, throwable: Throwable? = null)
}

expect class DefaultLogger() : Logger

object Log {
    var logger: Logger = DefaultLogger()

    fun d(tag: String, message: String) = logger.d(tag, message)
    fun e(tag: String, message: String, throwable: Throwable? = null) =
        logger.e(tag, message, throwable)
}
