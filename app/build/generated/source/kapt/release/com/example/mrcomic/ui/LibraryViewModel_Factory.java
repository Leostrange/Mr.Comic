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
public final class LibraryViewModel_Factory implements Factory<LibraryViewModel> {
  private final Provider<ComicRepository> repositoryProvider;

  public LibraryViewModel_Factory(Provider<ComicRepository> repositoryProvider) {
    this.repositoryProvider = repositoryProvider;
  }

  @Override
  public LibraryViewModel get() {
    return newInstance(repositoryProvider.get());
  }

  public static LibraryViewModel_Factory create(Provider<ComicRepository> repositoryProvider) {
    return new LibraryViewModel_Factory(repositoryProvider);
  }

  public static LibraryViewModel newInstance(ComicRepository repository) {
    return new LibraryViewModel(repository);
  }
}
