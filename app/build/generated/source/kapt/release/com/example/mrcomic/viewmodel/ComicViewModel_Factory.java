package com.example.mrcomic.viewmodel;

import android.app.Application;
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
public final class ComicViewModel_Factory implements Factory<ComicViewModel> {
  private final Provider<Application> applicationProvider;

  public ComicViewModel_Factory(Provider<Application> applicationProvider) {
    this.applicationProvider = applicationProvider;
  }

  @Override
  public ComicViewModel get() {
    return newInstance(applicationProvider.get());
  }

  public static ComicViewModel_Factory create(Provider<Application> applicationProvider) {
    return new ComicViewModel_Factory(applicationProvider);
  }

  public static ComicViewModel newInstance(Application application) {
    return new ComicViewModel(application);
  }
}
