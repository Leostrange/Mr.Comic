package io.leostrange.mrcomic.feature.reader.domain.session

import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit
import org.junit.Assert.*
import org.junit.Test

class ReaderOpenGuardTest {

    @Test
    fun `first token is current`() {
        val guard = ReaderOpenGuard()
        val token = guard.nextToken()
        assertTrue(guard.isCurrent(token))
    }

    @Test
    fun `previous token is stale after second advance`() {
        val guard = ReaderOpenGuard()
        val first = guard.nextToken()
        guard.nextToken()
        assertFalse(guard.isCurrent(first))
    }

    @Test
    fun `latest token is always current`() {
        val guard = ReaderOpenGuard()
        guard.nextToken()
        guard.nextToken()
        val third = guard.nextToken()
        assertTrue(guard.isCurrent(third))
    }

    @Test
    fun `token zero matches initial state`() {
        val guard = ReaderOpenGuard()
        // Before any nextToken() call, currentToken is 0
        assertTrue(guard.isCurrent(0L))
    }

    @Test
    fun `token zero is stale after first advance`() {
        val guard = ReaderOpenGuard()
        guard.nextToken() // currentToken becomes 1
        assertFalse(guard.isCurrent(0L))
    }

    @Test
    fun `rapid open sequence invalidates all but last`() {
        val guard = ReaderOpenGuard()
        val tokens = (1..10).map { guard.nextToken() }
        tokens.dropLast(1).forEach { token ->
            assertFalse("Token $token should be stale", guard.isCurrent(token))
        }
        assertTrue(guard.isCurrent(tokens.last()))
    }

    @Test
    fun `concurrent opens issue a unique token for every request`() {
        val guard = ReaderOpenGuard()
        val tokens = ConcurrentHashMap.newKeySet<Long>()
        val executor = Executors.newFixedThreadPool(4)

        repeat(100) {
            executor.submit { tokens += guard.nextToken() }
        }
        executor.shutdown()

        assertTrue(executor.awaitTermination(5, TimeUnit.SECONDS))
        assertEquals(100, tokens.size)
        assertTrue(guard.isCurrent(100L))
    }
}
