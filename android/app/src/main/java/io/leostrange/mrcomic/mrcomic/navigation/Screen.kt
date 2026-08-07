package io.leostrange.mrcomic.navigation

import io.leostrange.mrcomic.core.model.ReaderLocator
import java.net.URLEncoder
import java.nio.charset.StandardCharsets

sealed class Screen(val route: String) {
    data object Continue : Screen("continue")
    data object Library : Screen("library")
    data object Onboarding : Screen("onboarding")
    data object Settings : Screen("settings")
    data object ProgressProfile : Screen("progress_profile")
    data object AppIconSettings : Screen("app_icon_settings")
    data object Translation : Screen("translation?imagePath={imagePath}&comicId={comicId}&page={page}") {
        fun create(imagePath: String? = null, comicId: String? = null, page: Int? = null): String {
            val params = buildList {
                if (imagePath != null) add("imagePath=${encodeRouteComponent(imagePath)}")
                if (comicId != null) add("comicId=${encodeRouteComponent(comicId)}")
                if (page != null) add("page=$page")
            }
            return if (params.isEmpty()) "translation" else "translation?${params.joinToString("&")}"
        }
    }

    data object OpdsCatalog : Screen("opds_catalog")

    data object AudiobookPlayer : Screen("audiobook_player/{audiobookId}") {
        fun create(audiobookId: String) = "audiobook_player/$audiobookId"
    }

    data object Reader : Screen("reader?comicId={comicId}&uri={uri}&page={page}&locatorHref={locatorHref}&locatorProgression={locatorProgression}&locatorPosition={locatorPosition}&locatorTitle={locatorTitle}&locatorFragment={locatorFragment}") {
        fun createForComic(comicId: String, page: Int? = null, locator: ReaderLocator? = null): String {
            val params = buildList {
                add("comicId=${encodeRouteComponent(comicId)}")
                if (page != null) add("page=$page")
                locator?.href?.takeIf { it.isNotBlank() }?.let { add("locatorHref=${encodeRouteComponent(it)}") }
                locator?.progression?.let { add("locatorProgression=${encodeRouteComponent(it.toString())}") }
                locator?.position?.let { add("locatorPosition=$it") }
                locator?.title?.takeIf { it.isNotBlank() }?.let { add("locatorTitle=${encodeRouteComponent(it)}") }
                locator?.fragment?.takeIf { it.isNotBlank() }?.let { add("locatorFragment=${encodeRouteComponent(it)}") }
            }
            return "reader?${params.joinToString("&")}"
        }
        fun createForUri(encodedUri: String, page: Int? = null, locator: ReaderLocator? = null): String {
            val params = buildList {
                add("uri=$encodedUri")
                if (page != null) add("page=$page")
                locator?.href?.takeIf { it.isNotBlank() }?.let { add("locatorHref=${encodeRouteComponent(it)}") }
                locator?.progression?.let { add("locatorProgression=${encodeRouteComponent(it.toString())}") }
                locator?.position?.let { add("locatorPosition=$it") }
                locator?.title?.takeIf { it.isNotBlank() }?.let { add("locatorTitle=${encodeRouteComponent(it)}") }
                locator?.fragment?.takeIf { it.isNotBlank() }?.let { add("locatorFragment=${encodeRouteComponent(it)}") }
            }
            return "reader?${params.joinToString("&")}"
        }
    }
}

internal fun encodeRouteComponent(value: String): String {
    return URLEncoder.encode(value, StandardCharsets.UTF_8.name()).replace("+", "%20")
}
