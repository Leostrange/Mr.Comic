package io.leostrange.mrcomic.core.data.opds

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class OpdsRepositoryTest {

    @Test
    fun searchTermsTemplatePercentEncodesSpacesUnicodeAndAmpersands() {
        val url = buildOpdsSearchUrl(
            "https://example.test/search?q={searchTerms}",
            "война и мир & peace"
        )

        assertEquals(
            "https://example.test/search?q=%D0%B2%D0%BE%D0%B9%D0%BD%D0%B0%20%D0%B8%20%D0%BC%D0%B8%D1%80%20%26%20peace",
            url
        )
        assertFalse(url.contains("+"))
    }

    @Test
    fun optionalSearchTermsTemplateAddsQueryParameter() {
        val url = buildOpdsSearchUrl(
            "https://example.test/search{?searchTerms}",
            "hello world"
        )

        assertEquals("https://example.test/search?q=hello%20world", url)
    }

    @Test
    fun searchUrlWithoutTemplatePreservesExistingQueryParameters() {
        val url = buildOpdsSearchUrl(
            "https://example.test/search?lang=en",
            "a&b"
        )

        assertEquals("https://example.test/search?lang=en&q=a%26b", url)
        assertTrue(url.contains("lang=en"))
    }
}
