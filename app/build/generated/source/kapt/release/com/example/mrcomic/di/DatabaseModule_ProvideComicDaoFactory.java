package com.example.mrcomic.di;

import com.example.mrcomic.data.AppDatabase;
import com.example.mrcomic.data.ComicDao;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
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
public final class DatabaseModule_ProvideComicDaoFactory implements Factory<ComicDao> {
  private final Provider<AppDatabase> databaseProvider;

  public DatabaseModule_ProvideComicDaoFactory(Provider<AppDatabase> databaseProvider) {
    this.databaseProvider = databaseProvider;
  }

  @Override
  public ComicDao get() {
    return provideComicDao(databaseProvider.get());
  }

  public static DatabaseModule_ProvideComicDaoFactory create(
      Provider<AppDatabase> databaseProvider) {
    return new DatabaseModule_ProvideComicDaoFactory(databaseProvider);
  }

  public static ComicDao provideComicDao(AppDatabase database) {
    return Preconditions.checkNotNullFromProvides(DatabaseModule.INSTANCE.provideComicDao(database));
  }
}
