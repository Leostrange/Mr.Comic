package com.example.mrcomic.ui;

import com.example.mrcomic.data.ComicRepository;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import javax.annotation.processing.Generated;
import javax.inject.Provider;

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
    "KotlinInternalInJava"
})
public final class ReaderViewModel_Factory implements Factory<ReaderViewModel> {
  private final Provider<ComicRepository> repositoryProvider;

  public ReaderViewModel_Factory(Provider<ComicRepository> repositoryProvider) {
    this.repositoryProvider = repositoryProvider;
  }

  @Override
  public ReaderViewModel get() {
    return newInstance(repositoryProvider.get());
  }

  public static ReaderViewModel_Factory create(Provider<ComicRepository> repositoryProvider) {
    return new ReaderViewModel_Factory(repositoryProvider);
  }

  public static ReaderViewModel newInstance(ComicRepository repository) {
    return new ReaderViewModel(repository);
  }
}
