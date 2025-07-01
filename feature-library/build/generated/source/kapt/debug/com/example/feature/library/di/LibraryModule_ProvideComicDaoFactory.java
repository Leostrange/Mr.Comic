package com.example.feature.library.di;

import com.example.feature.library.data.ComicDao;
import com.example.feature.library.data.LibraryDatabase;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import javax.annotation.processing.Generated;

@ScopeMetadata
@QualifierMetadata
@DaggerGenerated
@Generated(
    value = "dagger.internal.codegen.ComponentProcessor",
    comments = "https://dagger.dev"
)
@SuppressWarnings({
    "unchecked",
    "rawtypes",
    "KotlinInternal",
    "KotlinInternalInJava",
    "cast",
    "deprecation",
    "nullness:initialization.field.uninitialized"
})
public final class LibraryModule_ProvideComicDaoFactory implements Factory<ComicDao> {
  private final Provider<LibraryDatabase> dbProvider;

  public LibraryModule_ProvideComicDaoFactory(Provider<LibraryDatabase> dbProvider) {
    this.dbProvider = dbProvider;
  }

  @Override
  public ComicDao get() {
    return provideComicDao(dbProvider.get());
  }

  public static LibraryModule_ProvideComicDaoFactory create(Provider<LibraryDatabase> dbProvider) {
    return new LibraryModule_ProvideComicDaoFactory(dbProvider);
  }

  public static ComicDao provideComicDao(LibraryDatabase db) {
    return Preconditions.checkNotNullFromProvides(LibraryModule.INSTANCE.provideComicDao(db));
  }
}
