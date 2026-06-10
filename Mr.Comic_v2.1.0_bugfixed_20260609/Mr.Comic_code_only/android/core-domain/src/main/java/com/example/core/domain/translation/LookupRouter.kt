package com.example.core.domain.translation

import com.example.core.domain.util.Result
import com.example.core.model.TranslationRoutingDecision
import com.example.core.model.TranslationRoutingRequest

interface LookupRouter {
    suspend fun route(request: TranslationRoutingRequest): Result<TranslationRoutingDecision>
}
