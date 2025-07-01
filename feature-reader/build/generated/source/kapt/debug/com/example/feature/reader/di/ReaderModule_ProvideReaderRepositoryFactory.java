package com.example.feature.reader.di;

import com.example.feature.reader.ReaderRepository;
import com.example.feature.reader.data.ReaderStateDao;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import javax.annotation.processing.Generated;

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
    "KotlinInternalInJava",
    "cast",
    "deprecation",
    "nullness:initialization.field.uninitialized"
})
public final class ReaderModule_ProvideReaderRepositoryFactory implements Factory<ReaderRepository> {
  private final Provider<ReaderStateDao> daoProvider;

  public ReaderModule_ProvideReaderRepositoryFactory(Provider<ReaderStateDao> daoProvider) {
    this.daoProvider = daoProvider;
  }

  @Override
  public ReaderRepository get() {
    return provideReaderRepository(daoProvider.get());
  }

  public static ReaderModule_ProvideReaderRepositoryFactory create(
      Provider<ReaderStateDao> daoProvider) {
    return new ReaderModule_ProvideReaderRepositoryFactory(daoProvider);
  }

  public static ReaderRepository provideReaderRepository(ReaderStateDao dao) {
    return Preconditions.checkNotNullFromProvides(ReaderModule.INSTANCE.provideReaderRepository(dao));
  }
}
