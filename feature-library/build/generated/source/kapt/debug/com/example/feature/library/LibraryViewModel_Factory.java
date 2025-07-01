package com.example.feature.library;

import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
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
public final class LibraryViewModel_Factory implements Factory<LibraryViewModel> {
  private final Provider<LibraryRepository> repositoryProvider;

  public LibraryViewModel_Factory(Provider<LibraryRepository> repositoryProvider) {
    this.repositoryProvider = repositoryProvider;
  }

  @Override
  public LibraryViewModel get() {
    return newInstance(repositoryProvider.get());
  }

  public static LibraryViewModel_Factory create(Provider<LibraryRepository> repositoryProvider) {
    return new LibraryViewModel_Factory(repositoryProvider);
  }

  public static LibraryViewModel newInstance(LibraryRepository repository) {
    return new LibraryViewModel(repository);
  }
}
