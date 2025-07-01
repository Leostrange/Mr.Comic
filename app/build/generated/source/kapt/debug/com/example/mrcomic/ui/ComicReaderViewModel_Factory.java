package com.example.mrcomic.ui;

import androidx.lifecycle.SavedStateHandle;
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
public final class ComicReaderViewModel_Factory implements Factory<ComicReaderViewModel> {
  private final Provider<ComicRepository> repositoryProvider;

  private final Provider<SavedStateHandle> savedStateHandleProvider;

  public ComicReaderViewModel_Factory(Provider<ComicRepository> repositoryProvider,
      Provider<SavedStateHandle> savedStateHandleProvider) {
    this.repositoryProvider = repositoryProvider;
    this.savedStateHandleProvider = savedStateHandleProvider;
  }

  @Override
  public ComicReaderViewModel get() {
    return newInstance(repositoryProvider.get(), savedStateHandleProvider.get());
  }

  public static ComicReaderViewModel_Factory create(Provider<ComicRepository> repositoryProvider,
      Provider<SavedStateHandle> savedStateHandleProvider) {
    return new ComicReaderViewModel_Factory(repositoryProvider, savedStateHandleProvider);
  }

  public static ComicReaderViewModel newInstance(ComicRepository repository,
      SavedStateHandle savedStateHandle) {
    return new ComicReaderViewModel(repository, savedStateHandle);
  }
}
