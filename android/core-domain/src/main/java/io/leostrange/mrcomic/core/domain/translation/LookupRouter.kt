package io.leostrange.mrcomic.core.domain.translation

import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.model.TranslationRoutingDecision
import io.leostrange.mrcomic.core.model.TranslationRoutingRequest

interface LookupRouter {
    suspend fun route(request: TranslationRoutingRequest): Result<TranslationRoutingDecision>
}
