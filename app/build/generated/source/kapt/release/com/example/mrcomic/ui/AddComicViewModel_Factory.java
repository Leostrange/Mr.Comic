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
public final class AddComicViewModel_Factory implements Factory<AddComicViewModel> {
  private final Provider<ComicRepository> comicRepositoryProvider;

  public AddComicViewModel_Factory(Provider<ComicRepository> comicRepositoryProvider) {
    this.comicRepositoryProvider = comicRepositoryProvider;
  }

  @Override
  public AddComicViewModel get() {
    return newInstance(comicRepositoryProvider.get());
  }

  public static AddComicViewModel_Factory create(
      Provider<ComicRepository> comicRepositoryProvider) {
    return new AddComicViewModel_Factory(comicRepositoryProvider);
  }

  public static AddComicViewModel newInstance(ComicRepository comicRepository) {
    return new AddComicViewModel(comicRepository);
  }
}
