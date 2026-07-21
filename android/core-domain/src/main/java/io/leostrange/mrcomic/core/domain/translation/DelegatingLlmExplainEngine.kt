package io.leostrange.mrcomic.core.domain.translation

import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.domain.translation.LlmExplainEngine
import io.leostrange.mrcomic.core.model.ExplainRequest
import io.leostrange.mrcomic.core.model.ExplainResult
import javax.inject.Inject
import javax.inject.Named
import javax.inject.Singleton

/**
 * Delegates to either a local or online explain engine
 * based on the current explain provider preference.
 * Falls back to local if the online engine fails.
 */
@Singleton
class DelegatingLlmExplainEngine @Inject constructor(
    @Named("local_explain_engine") private val localEngine: LlmExplainEngine,
    @Named("online_explain_engine") private val onlineEngine: LlmExplainEngine,
    private val explainProviderSupplier: ExplainProviderSupplier
) : LlmExplainEngine {

    override suspend fun isConfigured(): Result<Boolean> {
        return when (explainProviderSupplier.getProvider()) {
            "ONLINE" -> onlineEngine.isConfigured()
            else -> localEngine.isConfigured()
        }
    }

    override suspend fun explain(request: ExplainRequest): Result<ExplainResult> {
        return when (explainProviderSupplier.getProvider()) {
            "ONLINE" -> {
                val result = onlineEngine.explain(request)
                when (result) {
                    is Result.Success -> result
                    is Result.Error -> localEngine.explain(request)
                    Result.Loading -> localEngine.explain(request)
                }
            }
            else -> localEngine.explain(request)
        }
    }
}

fun interface ExplainProviderSupplier {
    suspend fun getProvider(): String
}
