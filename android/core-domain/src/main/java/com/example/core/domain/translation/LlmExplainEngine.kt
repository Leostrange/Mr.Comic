package com.example.core.domain.translation

import com.example.core.domain.util.Result
import com.example.core.model.ExplainRequest
import com.example.core.model.ExplainResult

interface LlmExplainEngine {
    suspend fun isConfigured(): Result<Boolean>

    suspend fun explain(request: ExplainRequest): Result<ExplainResult>
}
