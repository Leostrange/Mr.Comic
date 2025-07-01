package com.example.feature.reader.di;

import com.example.feature.reader.data.ReaderDatabase;
import com.example.feature.reader.data.ReaderStateDao;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
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
public final class ReaderModule_ProvideReaderStateDaoFactory implements Factory<ReaderStateDao> {
  private final Provider<ReaderDatabase> dbProvider;

  public ReaderModule_ProvideReaderStateDaoFactory(Provider<ReaderDatabase> dbProvider) {
    this.dbProvider = dbProvider;
  }

  @Override
  public ReaderStateDao get() {
    return provideReaderStateDao(dbProvider.get());
  }

  public static ReaderModule_ProvideReaderStateDaoFactory create(
      Provider<ReaderDatabase> dbProvider) {
    return new ReaderModule_ProvideReaderStateDaoFactory(dbProvider);
  }

  public static ReaderStateDao provideReaderStateDao(ReaderDatabase db) {
    return Preconditions.checkNotNullFromProvides(ReaderModule.INSTANCE.provideReaderStateDao(db));
  }
}
