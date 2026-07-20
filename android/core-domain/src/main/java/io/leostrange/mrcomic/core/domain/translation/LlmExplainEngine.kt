package io.leostrange.mrcomic.core.domain.translation

import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.model.ExplainRequest
import io.leostrange.mrcomic.core.model.ExplainResult

interface LlmExplainEngine {
    suspend fun isConfigured(): Result<Boolean>

    suspend fun explain(request: ExplainRequest): Result<ExplainResult>
}
