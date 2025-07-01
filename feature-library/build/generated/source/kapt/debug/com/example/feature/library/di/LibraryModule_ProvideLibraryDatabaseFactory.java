package com.example.feature.library.di;

import android.content.Context;
import com.example.feature.library.data.LibraryDatabase;
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
public final class LibraryModule_ProvideLibraryDatabaseFactory implements Factory<LibraryDatabase> {
  private final Provider<Context> contextProvider;

  public LibraryModule_ProvideLibraryDatabaseFactory(Provider<Context> contextProvider) {
    this.contextProvider = contextProvider;
  }

  @Override
  public LibraryDatabase get() {
    return provideLibraryDatabase(contextProvider.get());
  }

  public static LibraryModule_ProvideLibraryDatabaseFactory create(
      Provider<Context> contextProvider) {
    return new LibraryModule_ProvideLibraryDatabaseFactory(contextProvider);
  }

  public static LibraryDatabase provideLibraryDatabase(Context context) {
    return Preconditions.checkNotNullFromProvides(LibraryModule.INSTANCE.provideLibraryDatabase(context));
  }
}
