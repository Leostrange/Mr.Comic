package io.leostrange.mrcomic.core.data.di

import dagger.Binds
import dagger.Module
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import io.leostrange.mrcomic.core.data.repository.ComicRepository
import io.leostrange.mrcomic.core.model.repository.BackupRepository
import io.leostrange.mrcomic.core.model.repository.CoverRepository
import io.leostrange.mrcomic.core.model.repository.ImportRepository
import io.leostrange.mrcomic.core.model.repository.LibraryRepository

@Module
@InstallIn(SingletonComponent::class)
abstract class RepositoryModule {
    @Binds
    abstract fun bindLibraryRepository(impl: ComicRepository): LibraryRepository

    @Binds
    abstract fun bindImportRepository(impl: ComicRepository): ImportRepository

    @Binds
    abstract fun bindCoverRepository(impl: ComicRepository): CoverRepository

    @Binds
    abstract fun bindBackupRepository(impl: ComicRepository): BackupRepository
}
