package com.example.feature.reader;

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
public final class ReaderViewModel_Factory implements Factory<ReaderViewModel> {
  private final Provider<ReaderRepository> repositoryProvider;

  public ReaderViewModel_Factory(Provider<ReaderRepository> repositoryProvider) {
    this.repositoryProvider = repositoryProvider;
  }

  @Override
  public ReaderViewModel get() {
    return newInstance(repositoryProvider.get());
  }

  public static ReaderViewModel_Factory create(Provider<ReaderRepository> repositoryProvider) {
    return new ReaderViewModel_Factory(repositoryProvider);
  }

  public static ReaderViewModel newInstance(ReaderRepository repository) {
    return new ReaderViewModel(repository);
  }
}
