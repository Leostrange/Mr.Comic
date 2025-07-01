package com.example.mrcomic.data;

import android.app.Application;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import javax.annotation.processing.Generated;
import javax.inject.Provider;

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
    "KotlinInternalInJava"
})
public final class ComicRepository_Factory implements Factory<ComicRepository> {
  private final Provider<ComicDao> comicDaoProvider;

  private final Provider<Application> applicationProvider;

  public ComicRepository_Factory(Provider<ComicDao> comicDaoProvider,
      Provider<Application> applicationProvider) {
    this.comicDaoProvider = comicDaoProvider;
    this.applicationProvider = applicationProvider;
  }

  @Override
  public ComicRepository get() {
    return newInstance(comicDaoProvider.get(), applicationProvider.get());
  }

  public static ComicRepository_Factory create(Provider<ComicDao> comicDaoProvider,
      Provider<Application> applicationProvider) {
    return new ComicRepository_Factory(comicDaoProvider, applicationProvider);
  }

  public static ComicRepository newInstance(ComicDao comicDao, Application application) {
    return new ComicRepository(comicDao, application);
  }
}
