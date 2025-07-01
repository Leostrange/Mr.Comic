package com.example.feature.library;

import com.example.feature.library.data.ComicDao;
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
public final class RoomLibraryRepository_Factory implements Factory<RoomLibraryRepository> {
  private final Provider<ComicDao> daoProvider;

  public RoomLibraryRepository_Factory(Provider<ComicDao> daoProvider) {
    this.daoProvider = daoProvider;
  }

  @Override
  public RoomLibraryRepository get() {
    return newInstance(daoProvider.get());
  }

  public static RoomLibraryRepository_Factory create(Provider<ComicDao> daoProvider) {
    return new RoomLibraryRepository_Factory(daoProvider);
  }

  public static RoomLibraryRepository newInstance(ComicDao dao) {
    return new RoomLibraryRepository(dao);
  }
}
