package io.leostrange.mrcomic.core.data.di

import android.content.Context
import androidx.room.Room
import io.leostrange.mrcomic.core.data.db.AppDatabase
import io.leostrange.mrcomic.core.data.db.AppDatabaseMigrations
import io.leostrange.mrcomic.core.data.db.AudiobookDao
import io.leostrange.mrcomic.core.data.db.EpubManifestCacheAdapter
import io.leostrange.mrcomic.core.data.db.EpubManifestCacheDao
import io.leostrange.mrcomic.core.data.db.EpubStructureCacheAdapter
import io.leostrange.mrcomic.core.data.db.EpubStructureCacheDao
import io.leostrange.mrcomic.engine.api.EpubCacheStore
import javax.inject.Named
import io.leostrange.mrcomic.core.data.db.QuoteDao
import io.leostrange.mrcomic.core.data.db.TextHighlightDao
import io.leostrange.mrcomic.core.data.db.TranslationCacheDao
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.android.qualifiers.ApplicationContext
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object DatabaseModule {

    @Provides
    @Singleton
    fun provideAppDatabase(@ApplicationContext context: Context): AppDatabase =
        Room.databaseBuilder(context, AppDatabase::class.java, "comics_db")
            .addMigrations(
                AppDatabaseMigrations.MIGRATION_1_2,
                AppDatabaseMigrations.MIGRATION_2_3,
                AppDatabaseMigrations.MIGRATION_3_4,
                AppDatabaseMigrations.MIGRATION_4_5,
                AppDatabaseMigrations.MIGRATION_5_6,
                AppDatabaseMigrations.MIGRATION_6_7,
                AppDatabaseMigrations.MIGRATION_7_8,
                AppDatabaseMigrations.MIGRATION_8_9,
                AppDatabaseMigrations.MIGRATION_9_10
            )
            // Never silently drop the user's library on a forward-migration gap (a missing
            // migration is a bug to fix, not data to wipe). Destructive recovery is kept only for
            // genuine downgrades, which SQLite cannot roll back.
            .fallbackToDestructiveMigrationOnDowngrade(dropAllTables = true)
            .build()

    @Provides
    @Singleton
    fun provideQuoteDao(appDatabase: AppDatabase): QuoteDao = appDatabase.quoteDao()

    @Provides
    @Singleton
    fun provideAudiobookDao(db: AppDatabase): AudiobookDao = db.audiobookDao()

    @Provides
    @Singleton
    fun provideEpubStructureCacheDao(db: AppDatabase): EpubStructureCacheDao = db.epubStructureCacheDao()

    @Provides
    @Singleton
    fun provideEpubManifestCacheDao(db: AppDatabase): EpubManifestCacheDao = db.epubManifestCacheDao()

    @Provides
    @Singleton
    @Named("epubStructureCache")
    fun provideEpubStructureCache(dao: EpubStructureCacheDao): EpubCacheStore =
        EpubStructureCacheAdapter(dao)

    @Provides
    @Singleton
    @Named("epubManifestCache")
    fun provideEpubManifestCache(dao: EpubManifestCacheDao): EpubCacheStore =
        EpubManifestCacheAdapter(dao)

    @Provides
    @Singleton
    fun provideTextHighlightDao(db: AppDatabase): TextHighlightDao = db.textHighlightDao()

    @Provides
    @Singleton
    fun provideTranslationCacheDao(db: AppDatabase): TranslationCacheDao = db.translationCacheDao()
}
