package io.leostrange.mrcomic.core.data.dictionary

import androidx.room.ColumnInfo
import androidx.room.Entity
import androidx.room.ForeignKey
import androidx.room.Index
import androidx.room.PrimaryKey

@Entity(
    tableName = "entries",
    indices = [
        Index(
            value = ["lang", "normalized_lemma", "pos", "source"],
            unique = true,
            name = "idx_entries_unique"
        )
    ]
)
data class DictionaryEntryEntity(
    @PrimaryKey
    val id: Long,
    val lang: String,
    val lemma: String,
    @ColumnInfo(name = "normalized_lemma")
    val normalizedLemma: String,
    val pos: String,
    val source: String,
)

@Entity(
    tableName = "forms",
    foreignKeys = [
        ForeignKey(
            entity = DictionaryEntryEntity::class,
            parentColumns = ["id"],
            childColumns = ["entry_id"],
            onDelete = ForeignKey.CASCADE,
        )
    ],
    indices = [
        Index(value = ["lang", "normalized_form"], name = "idx_forms_lang_norm"),
        Index(value = ["entry_id"], name = "idx_forms_entry_id")
    ]
)
data class DictionaryFormEntity(
    @PrimaryKey
    val id: Long,
    val lang: String,
    val form: String,
    @ColumnInfo(name = "normalized_form")
    val normalizedForm: String,
    @ColumnInfo(name = "entry_id")
    val entryId: Long,
)

@Entity(
    tableName = "senses",
    indices = [
        Index(value = ["entry_id"], name = "idx_senses_entry_id")
    ],
    foreignKeys = [
        ForeignKey(
            entity = DictionaryEntryEntity::class,
            parentColumns = ["id"],
            childColumns = ["entry_id"],
            onDelete = ForeignKey.CASCADE,
        )
    ]
)
data class DictionarySenseEntity(
    @PrimaryKey
    val id: Long,
    @ColumnInfo(name = "entry_id")
    val entryId: Long,
    val ord: Int,
    val gloss: String,
)

@Entity(
    tableName = "translations",
    indices = [
        Index(value = ["entry_id"], name = "idx_translations_entry_id")
    ],
    foreignKeys = [
        ForeignKey(
            entity = DictionaryEntryEntity::class,
            parentColumns = ["id"],
            childColumns = ["entry_id"],
            onDelete = ForeignKey.CASCADE,
        )
    ]
)
data class DictionaryTranslationEntity(
    @PrimaryKey
    val id: Long,
    @ColumnInfo(name = "entry_id")
    val entryId: Long,
    @ColumnInfo(name = "target_lang")
    val targetLang: String,
    val text: String,
    val ord: Int,
)

@Entity(
    tableName = "readings",
    indices = [
        Index(value = ["entry_id"], name = "idx_readings_entry_id")
    ],
    foreignKeys = [
        ForeignKey(
            entity = DictionaryEntryEntity::class,
            parentColumns = ["id"],
            childColumns = ["entry_id"],
            onDelete = ForeignKey.CASCADE,
        )
    ]
)
data class DictionaryReadingEntity(
    @PrimaryKey
    val id: Long,
    @ColumnInfo(name = "entry_id")
    val entryId: Long,
    val script: String,
    val text: String,
)

@Entity(
    tableName = "examples",
    indices = [
        Index(value = ["entry_id"], name = "idx_examples_entry_id")
    ],
    foreignKeys = [
        ForeignKey(
            entity = DictionaryEntryEntity::class,
            parentColumns = ["id"],
            childColumns = ["entry_id"],
            onDelete = ForeignKey.CASCADE,
        )
    ]
)
data class DictionaryExampleEntity(
    @PrimaryKey
    val id: Long,
    @ColumnInfo(name = "entry_id")
    val entryId: Long,
    val text: String,
    val translation: String?,
)
