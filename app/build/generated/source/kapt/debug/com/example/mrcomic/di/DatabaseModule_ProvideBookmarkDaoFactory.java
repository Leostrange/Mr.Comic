package com.example.mrcomic.di;

import com.example.mrcomic.data.AppDatabase;
import com.example.mrcomic.data.BookmarkDao;
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
public final class DatabaseModule_ProvideBookmarkDaoFactory implements Factory<BookmarkDao> {
  private final Provider<AppDatabase> appDatabaseProvider;

  public DatabaseModule_ProvideBookmarkDaoFactory(Provider<AppDatabase> appDatabaseProvider) {
    this.appDatabaseProvider = appDatabaseProvider;
  }

  @Override
  public BookmarkDao get() {
    return provideBookmarkDao(appDatabaseProvider.get());
  }

  public static DatabaseModule_ProvideBookmarkDaoFactory create(
      Provider<AppDatabase> appDatabaseProvider) {
    return new DatabaseModule_ProvideBookmarkDaoFactory(appDatabaseProvider);
  }

  public static BookmarkDao provideBookmarkDao(AppDatabase appDatabase) {
    return Preconditions.checkNotNullFromProvides(DatabaseModule.INSTANCE.provideBookmarkDao(appDatabase));
  }
}
