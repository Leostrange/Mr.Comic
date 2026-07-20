package io.leostrange.mrcomic.core.domain.util

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class ResultTest {

    @Test
    fun success_isSuccessTrue() {
        val result = Result.Success("hello")
        assertTrue(result.isSuccess)
        assertFalse(result.isError)
        assertFalse(result.isLoading)
    }

    @Test
    fun success_dataAccessible() {
        val result = Result.Success(42)
        assertEquals(42, result.getOrNull())
    }

    @Test
    fun success_onSuccess_executesAction() {
        var executed = false
        Result.Success("test").onSuccess { executed = true }
        assertTrue(executed)
    }

    @Test
    fun success_onError_doesNotExecute() {
        var executed = false
        Result.Success("test").onError { executed = true }
        assertFalse(executed)
    }

    @Test
    fun error_isErrorTrue() {
        val result = Result.Error(RuntimeException("fail"))
        assertTrue(result.isError)
        assertFalse(result.isSuccess)
        assertFalse(result.isLoading)
    }

    @Test
    fun error_getOrNull_returnsNull() {
        val result = Result.Error(RuntimeException("fail"))
        assertNull(result.getOrNull())
    }

    @Test
    fun error_message_defaultsToExceptionMessage() {
        val error = RuntimeException("boom")
        val result = Result.Error(error)
        assertEquals("boom", result.message)
    }

    @Test
    fun error_message_canBeOverridden() {
        val result = Result.Error(RuntimeException("boom"), "custom")
        assertEquals("custom", result.message)
    }

    @Test
    fun error_onError_executesAction() {
        var captured: Throwable? = null
        val expected = RuntimeException("fail")
        Result.Error(expected).onError { captured = it }
        assertEquals(expected, captured)
    }

    @Test
    fun error_onSuccess_doesNotExecute() {
        var executed = false
        Result.Error(RuntimeException("fail")).onSuccess { executed = true }
        assertFalse(executed)
    }

    @Test
    fun loading_isLoadingTrue() {
        val result = Result.Loading
        assertTrue(result.isLoading)
        assertFalse(result.isSuccess)
        assertFalse(result.isError)
    }

    @Test
    fun loading_getOrNull_returnsNull() {
        assertNull(Result.Loading.getOrNull())
    }

    @Test
    fun runCatchingResult_success_returnsSuccess() {
        val result = runCatchingResult { "ok" }
        assertTrue(result is Result.Success)
        assertEquals("ok", (result as Result.Success).data)
    }

    @Test
    fun runCatchingResult_exception_returnsError() {
        val result = runCatchingResult {
            throw IllegalArgumentException("bad input")
        }
        assertTrue(result is Result.Error)
        assertTrue((result as Result.Error).exception is IllegalArgumentException)
        assertEquals("bad input", result.exception.message)
    }

    @Test
    fun runCatchingResult_runtimeException_returnsError() {
        val result = runCatchingResult {
            throw IllegalStateException("state")
        }
        assertTrue(result is Result.Error)
    }

    @Test
    fun success_chainedOnSuccess_returnsSelf() {
        val result = Result.Success(1)
        val returned = result.onSuccess { }
        assertTrue(returned === result)
    }

    @Test
    fun error_chainedOnError_returnsSelf() {
        val result = Result.Error(RuntimeException())
        val returned = result.onError { }
        assertTrue(returned === result)
    }
}
