package com.example.feature.reader.di;

import android.content.Context;
import com.example.feature.reader.data.ReaderDatabase;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import javax.annotation.processing.Generated;

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
    "KotlinInternalInJava",
    "cast",
    "deprecation",
    "nullness:initialization.field.uninitialized"
})
public final class ReaderModule_ProvideReaderDatabaseFactory implements Factory<ReaderDatabase> {
  private final Provider<Context> contextProvider;

  public ReaderModule_ProvideReaderDatabaseFactory(Provider<Context> contextProvider) {
    this.contextProvider = contextProvider;
  }

  @Override
  public ReaderDatabase get() {
    return provideReaderDatabase(contextProvider.get());
  }

  public static ReaderModule_ProvideReaderDatabaseFactory create(
      Provider<Context> contextProvider) {
    return new ReaderModule_ProvideReaderDatabaseFactory(contextProvider);
  }

  public static ReaderDatabase provideReaderDatabase(Context context) {
    return Preconditions.checkNotNullFromProvides(ReaderModule.INSTANCE.provideReaderDatabase(context));
  }
}
