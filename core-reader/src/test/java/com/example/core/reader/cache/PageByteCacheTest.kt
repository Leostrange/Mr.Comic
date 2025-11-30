package com.example.core.reader.cache

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class PageByteCacheTest {

    @Before
    fun setup() {
        // 4 KB cache to force eviction logic in tests
        PageByteCache.resetForTests(4 * 1024)
    }

    @Test
    fun `stores and retrieves raw bytes`() {
        val cache = PageByteCache.getInstance()
        val key = PageByteCache.createKey(null, 0)
        val payload = ByteArray(512) { 1 }

        cache.put(key, payload)

        val restored = cache.get(key)
        assertArrayEquals(payload, restored)
        assertTrue(cache.snapshotSizeBytes() >= payload.size)
    }

    @Test
    fun `evicts least recently used items when exceeding size`() {
        val cache = PageByteCache.getInstance()
        val key1 = PageByteCache.createKey(null, 0)
        val key2 = PageByteCache.createKey(null, 1)

        cache.put(key1, ByteArray(3 * 1024) { 2 })
        // This put should evict the previous entry because cache size is 4 KB
        cache.put(key2, ByteArray(3 * 1024) { 3 })

        assertNull("First entry should be evicted", cache.get(key1))
        assertEquals(3 * 1024, cache.get(key2)?.size)
    }
}

