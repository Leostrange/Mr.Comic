package com.example.feature.reader;

import com.example.feature.reader.data.ReaderStateDao;
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
public final class RoomReaderRepository_Factory implements Factory<RoomReaderRepository> {
  private final Provider<ReaderStateDao> daoProvider;

  public RoomReaderRepository_Factory(Provider<ReaderStateDao> daoProvider) {
    this.daoProvider = daoProvider;
  }

  @Override
  public RoomReaderRepository get() {
    return newInstance(daoProvider.get());
  }

  public static RoomReaderRepository_Factory create(Provider<ReaderStateDao> daoProvider) {
    return new RoomReaderRepository_Factory(daoProvider);
  }

  public static RoomReaderRepository newInstance(ReaderStateDao dao) {
    return new RoomReaderRepository(dao);
  }
}
