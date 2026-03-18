package com.example.core.data.dictionary

import androidx.room.Embedded
import androidx.room.Relation

data class DictionaryEntryBundle(
    @Embedded
    val entry: DictionaryEntryEntity,
    @Relation(parentColumn = "id", entityColumn = "entry_id")
    val senses: List<DictionarySenseEntity>,
    @Relation(parentColumn = "id", entityColumn = "entry_id")
    val translations: List<DictionaryTranslationEntity>,
    @Relation(parentColumn = "id", entityColumn = "entry_id")
    val readings: List<DictionaryReadingEntity>,
    @Relation(parentColumn = "id", entityColumn = "entry_id")
    val examples: List<DictionaryExampleEntity>,
)
