package com.example.mrcomic.di;

import android.content.Context;
import com.example.mrcomic.data.ComicDao;
import com.example.mrcomic.data.ComicRepository;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import javax.annotation.processing.Generated;
import javax.inject.Provider;

@ScopeMetadata("javax.inject.Singleton")
@QualifierMetadata("dagger.hilt.android.qualifiers.ApplicationContext")
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
public final class DatabaseModule_ProvideComicRepositoryFactory implements Factory<ComicRepository> {
  private final Provider<ComicDao> comicDaoProvider;

  private final Provider<Context> contextProvider;

  public DatabaseModule_ProvideComicRepositoryFactory(Provider<ComicDao> comicDaoProvider,
      Provider<Context> contextProvider) {
    this.comicDaoProvider = comicDaoProvider;
    this.contextProvider = contextProvider;
  }

  @Override
  public ComicRepository get() {
    return provideComicRepository(comicDaoProvider.get(), contextProvider.get());
  }

  public static DatabaseModule_ProvideComicRepositoryFactory create(
      Provider<ComicDao> comicDaoProvider, Provider<Context> contextProvider) {
    return new DatabaseModule_ProvideComicRepositoryFactory(comicDaoProvider, contextProvider);
  }

  public static ComicRepository provideComicRepository(ComicDao comicDao, Context context) {
    return Preconditions.checkNotNullFromProvides(DatabaseModule.INSTANCE.provideComicRepository(comicDao, context));
  }
}
