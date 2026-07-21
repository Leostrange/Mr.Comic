package io.leostrange.mrcomic.core.data.dictionary

import androidx.room.Dao
import androidx.room.Query
import androidx.room.Transaction

@Dao
interface DictionaryDao {
    @Transaction
    @Query(
        """
        SELECT DISTINCT e.*
        FROM entries e
        JOIN forms f ON f.entry_id = e.id
        WHERE f.lang = :lang
          AND f.normalized_form = :normalized
        ORDER BY
          CASE WHEN e.normalized_lemma = :normalized THEN 0 ELSE 1 END,
          CASE e.source
            WHEN 'wordnet' THEN 0
            WHEN 'jmdict' THEN 0
            WHEN 'cedict' THEN 0
            WHEN 'cc-cedict' THEN 0
            ELSE 1
          END,
          length(e.lemma) ASC,
          e.id ASC
        LIMIT :limit
        """
    )
    suspend fun lookupByNormalizedForm(
        lang: String,
        normalized: String,
        limit: Int = 8,
    ): List<DictionaryEntryBundle>

    @Transaction
    @Query(
        """
        SELECT *
        FROM entries
        WHERE lang = :lang
          AND normalized_lemma = :normalized
        ORDER BY
          CASE source
            WHEN 'wordnet' THEN 0
            WHEN 'jmdict' THEN 0
            WHEN 'cedict' THEN 0
            WHEN 'cc-cedict' THEN 0
            ELSE 1
          END,
          length(lemma) ASC,
          id ASC
        LIMIT :limit
        """
    )
    suspend fun lookupByNormalizedLemma(
        lang: String,
        normalized: String,
        limit: Int = 8,
    ): List<DictionaryEntryBundle>

    @Query(
        """
        SELECT DISTINCT form
        FROM forms
        WHERE lang = :lang
          AND normalized_form LIKE :normalizedPrefix || '%'
        ORDER BY length(form) ASC, form ASC
        LIMIT :limit
        """
    )
    suspend fun suggestForms(
        lang: String,
        normalizedPrefix: String,
        limit: Int = 12,
    ): List<String>

    @Query(
        """
        SELECT EXISTS(
            SELECT 1
            FROM entries e
            JOIN translations t ON t.entry_id = e.id
            WHERE e.lang = :lang
              AND t.target_lang = :targetLang
              AND trim(t.text) != ''
            LIMIT 1
        )
        """
    )
    suspend fun hasTranslationsForTarget(
        lang: String,
        targetLang: String,
    ): Boolean
}
