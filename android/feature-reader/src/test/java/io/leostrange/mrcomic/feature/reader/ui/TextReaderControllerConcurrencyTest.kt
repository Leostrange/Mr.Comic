package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicReference

class TextReaderControllerConcurrencyTest {

    private fun newController(): TextReaderController = TextReaderController(
        TextWebtoonSessionController(
            scope = kotlinx.coroutines.CoroutineScope(kotlinx.coroutines.Dispatchers.Unconfined),
            builder = WebtoonDocumentBuilder { pages ->
                TextWebtoonCachedDocument(html = pages.joinToString { it.html }, assetBasePath = null)
            }
        ),
        TextPagePaginationController(testSectionPaginator())
    )

    private fun testSectionPaginator(): io.leostrange.mrcomic.engine.api.SectionPaginator =
        object : io.leostrange.mrcomic.engine.api.SectionPaginator {
            override suspend fun paginateSections(
                sections: List<io.leostrange.mrcomic.engine.api.TextDocumentSection>,
                constraints: io.leostrange.mrcomic.engine.api.TextPaginationConstraints
            ): io.leostrange.mrcomic.engine.api.SectionPaginationResult =
                io.leostrange.mrcomic.engine.api.SectionPaginationResult(
                    sections = sections,
                    pages = sections.mapIndexed { index, section ->
                        io.leostrange.mrcomic.engine.api.TextPaginationSubPage(section.html, index, index)
                    }
                )
        }

    /**
     * Bug #1 — htmlPageCache used accessOrder=true without synchronization. Concurrent
     * get/put/clear from prewarm (Dispatchers.IO) + main thread corrupted the LRU linked
     * list (ConcurrentModificationException or NPE). Hammer all three ops from many threads;
     * the test fails (CME/exception) before the fix and passes after.
     */
    @Test
    fun htmlPageCacheSurvivesConcurrentAccessPutAndClear() {
        val controller = newController()
        val threadCount = 8
        val opsPerThread = 500
        val startGate = CountDownLatch(1)
        val doneLatch = CountDownLatch(threadCount)
        val error = AtomicReference<Throwable?>(null)

        repeat(threadCount) { workerId ->
            Thread {
                try {
                    startGate.await()
                    repeat(opsPerThread) { op ->
                        val index = (workerId * opsPerThread + op) % 16
                        when (op % 5) {
                            0, 1 -> controller.cacheHtmlPage(
                                index,
                                CachedHtmlPage(html = "<p>$index</p>", assetBasePath = null)
                            )
                            2 -> controller.cachedHtmlPage(index)
                            3 -> controller.cachedHtmlPage((index + 1) % 16)
                            4 -> if (op % 50 == 0) controller.clearHtmlPageCache()
                        }
                    }
                } catch (t: Throwable) {
                    error.set(t)
                } finally {
                    doneLatch.countDown()
                }
            }.also { it.isDaemon = true }.start()
        }

        startGate.countDown()
        val completed = doneLatch.await(30, TimeUnit.SECONDS)
        assertTrue("workers did not finish in time (deadlock/hang?)", completed)
        error.get()?.let { throw AssertionError("concurrent access threw: ${it.message}", it) }

        // After the storm, a fresh write+read must still work (cache not permanently wedged).
        controller.clearHtmlPageCache()
        controller.cacheHtmlPage(0, CachedHtmlPage(html = "<p>final</p>", assetBasePath = null))
        val result = controller.cachedHtmlPage(0)
        assertNotNull("cache read after storm returned null", result)
        assertEquals("<p>final</p>", result?.html)
    }

    /**
     * Bug #1 (subset) — clearHtmlPageCache racing with cachedHtmlPage must not throw and
     * must leave the cache empty after clear wins.
     */
    @Test
    fun clearHtmlPageCacheConcurrentWithReadsLeavesEmptyCache() {
        val controller = newController()
        repeat(12) { controller.cacheHtmlPage(it, CachedHtmlPage(html = "<p>$it</p>", assetBasePath = null)) }
        val startGate = CountDownLatch(1)
        val doneLatch = CountDownLatch(2)
        val error = AtomicReference<Throwable?>(null)

        val reader = Thread {
            try {
                startGate.await()
                repeat(2000) { i -> controller.cachedHtmlPage(i % 12) }
            } catch (t: Throwable) {
                error.set(t)
            } finally {
                doneLatch.countDown()
            }
        }.also { it.isDaemon = true }

        val clearer = Thread {
            try {
                startGate.await()
                repeat(500) { controller.clearHtmlPageCache() }
            } catch (t: Throwable) {
                error.set(t)
            } finally {
                doneLatch.countDown()
            }
        }.also { it.isDaemon = true }

        reader.start()
        clearer.start()
        startGate.countDown()
        assertTrue("timed out", doneLatch.await(30, TimeUnit.SECONDS))
        error.get()?.let { throw AssertionError("race threw: ${it.message}", it) }

        controller.clearHtmlPageCache()
        assertNull("cache should be empty after final clear", controller.cachedHtmlPage(0))
    }
}
