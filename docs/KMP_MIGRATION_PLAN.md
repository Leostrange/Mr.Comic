# KMP Migration Plan for Mr.Comic

## Status: Preparation Complete, Migration Pending

### Prerequisites (DONE)
- [x] Room annotations removed from core-model (4.2)
- [x] core-model is now pure Kotlin (no Android dependency)
- [x] Translation/analytics interfaces identified as KMP candidates

### Challenge
Hilt/KSP annotation processing requires interface definitions to be in the same
module as the implementing classes. Moving interfaces from `core-domain` to
`core-model` breaks Hilt's `@Binds` resolution.

### Recommended Approach
1. Create `shared/` KMP module with `commonMain` and `androidMain` source sets
2. Define platform-agnostic interfaces in `commonMain`
3. Create typealias/adapter layer in `androidMain` that bridges to `core-domain`
4. Gradually migrate `core-domain` implementations to use shared interfaces
5. Once all implementations use shared interfaces, remove `core-domain` translation/analytics

### Files to Migrate to commonMain
- `DictionaryEngine.kt` — dictionary lookup interface
- `LookupRouter.kt` — translation routing interface
- `LanguageDetector.kt` — language detection interface
- `LlmExplainEngine.kt` — LLM explanation interface
- `OfflineTranslationEngine.kt` — offline translation interface
- `OnlineTranslationEngine.kt` — online translation interface
- `ReadingAnalyticsTracker.kt` — analytics tracking interface
- `Result.kt` — sealed result type
- `DictionaryEntry.kt` — dictionary entry data class
- `Comic.kt` — main domain model (already pure Kotlin)
- `BookFormat.kt` — format enum
- `TocEntry.kt` — TOC entry data class

### Estimated Effort
- Phase 1 (shared module + interfaces): 2-3 days
- Phase 2 (adapter layer): 1-2 days
- Phase 3 (implementation migration): 3-5 days
- Phase 4 (testing + verification): 2-3 days
- Total: ~2 weeks
