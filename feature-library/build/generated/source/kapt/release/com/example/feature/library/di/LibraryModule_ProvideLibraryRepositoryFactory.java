package com.example.feature.library.di;

import com.example.feature.library.LibraryRepository;
import com.example.feature.library.data.ComicDao;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import javax.annotation.processing.Generated;

@ScopeMetadata("javax.inject.Singleton")
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
public final class LibraryModule_ProvideLibraryRepositoryFactory implements Factory<LibraryRepository> {
  private final Provider<ComicDao> daoProvider;

  public LibraryModule_ProvideLibraryRepositoryFactory(Provider<ComicDao> daoProvider) {
    this.daoProvider = daoProvider;
  }

  @Override
  public LibraryRepository get() {
    return provideLibraryRepository(daoProvider.get());
  }

  public static LibraryModule_ProvideLibraryRepositoryFactory create(
      Provider<ComicDao> daoProvider) {
    return new LibraryModule_ProvideLibraryRepositoryFactory(daoProvider);
  }

  public static LibraryRepository provideLibraryRepository(ComicDao dao) {
    return Preconditions.checkNotNullFromProvides(LibraryModule.INSTANCE.provideLibraryRepository(dao));
  }
}
