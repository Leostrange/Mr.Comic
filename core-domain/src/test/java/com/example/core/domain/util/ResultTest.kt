package com.example.core.domain.util

import org.junit.Test
import org.junit.Assert.*

class ResultTest {

    @Test
    fun `Result Success should contain correct data`() {
        // Given
        val testData = "test data"
        
        // When
        val result = Result.Success(testData)
        
        // Then
        assertEquals(testData, result.data)
        assertTrue(result is Result.Success)
    }

    @Test
    fun `Result Success should handle null data`() {
        // Given
        val testData: String? = null
        
        // When
        val result = Result.Success(testData)
        
        // Then
        assertNull(result.data)
        assertTrue(result is Result.Success)
    }

    @Test
    fun `Result Success should handle different data types`() {
        // Given
        val intData = 42
        val stringData = "test"
        val listData = listOf(1, 2, 3)
        
        // When
        val intResult = Result.Success(intData)
        val stringResult = Result.Success(stringData)
        val listResult = Result.Success(listData)
        
        // Then
        assertEquals(intData, intResult.data)
        assertEquals(stringData, stringResult.data)
        assertEquals(listData, listResult.data)
    }

    @Test
    fun `Result Error should contain correct exception`() {
        // Given
        val testException = RuntimeException("test error")
        
        // When
        val result = Result.Error(testException)
        
        // Then
        assertEquals(testException, result.exception)
        assertTrue(result is Result.Error)
    }

    @Test
    fun `Result Error should handle different exception types`() {
        // Given
        val runtimeException = RuntimeException("runtime error")
        val illegalArgumentException = IllegalArgumentException("illegal argument")
        val ioException = java.io.IOException("io error")
        
        // When
        val runtimeResult = Result.Error(runtimeException)
        val illegalArgResult = Result.Error(illegalArgumentException)
        val ioResult = Result.Error(ioException)
        
        // Then
        assertEquals(runtimeException, runtimeResult.exception)
        assertEquals(illegalArgumentException, illegalArgResult.exception)
        assertEquals(ioException, ioResult.exception)
    }

    @Test
    fun `Result Success and Error should be different types`() {
        // Given
        val successResult = Result.Success("data")
        val errorResult = Result.Error(RuntimeException("error"))
        
        // When & Then
        assertTrue(successResult is Result.Success)
        assertTrue(errorResult is Result.Error)
        assertFalse(successResult is Result.Error)
        assertFalse(errorResult is Result.Success)
    }

    @Test
    fun `Result should support equality comparison`() {
        // Given
        val data = "test data"
        val exception = RuntimeException("test error")
        
        // When
        val success1 = Result.Success(data)
        val success2 = Result.Success(data)
        val error1 = Result.Error(exception)
        val error2 = Result.Error(exception)
        
        // Then
        assertEquals(success1, success2)
        assertEquals(error1, error2)
        assertNotEquals(success1, error1)
    }
}