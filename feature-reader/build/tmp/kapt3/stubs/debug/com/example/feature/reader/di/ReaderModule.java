package com.example.feature.reader.di;

@dagger.Module()
@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u0004H\u0007\u00a8\u0006\r"}, d2 = {"Lcom/example/feature/reader/di/ReaderModule;", "", "()V", "provideReaderDatabase", "Lcom/example/feature/reader/data/ReaderDatabase;", "context", "Landroid/content/Context;", "provideReaderRepository", "Lcom/example/feature/reader/ReaderRepository;", "dao", "Lcom/example/feature/reader/data/ReaderStateDao;", "provideReaderStateDao", "db", "feature-reader_debug"})
@dagger.hilt.InstallIn(value = {dagger.hilt.components.SingletonComponent.class})
public final class ReaderModule {
    @org.jetbrains.annotations.NotNull()
    public static final com.example.feature.reader.di.ReaderModule INSTANCE = null;
    
    private ReaderModule() {
        super();
    }
    
    @dagger.Provides()
    @javax.inject.Singleton()
    @org.jetbrains.annotations.NotNull()
    public final com.example.feature.reader.data.ReaderDatabase provideReaderDatabase(@dagger.hilt.android.qualifiers.ApplicationContext()
    @org.jetbrains.annotations.NotNull()
    android.content.Context context) {
        return null;
    }
    
    @dagger.Provides()
    @org.jetbrains.annotations.NotNull()
    public final com.example.feature.reader.data.ReaderStateDao provideReaderStateDao(@org.jetbrains.annotations.NotNull()
    com.example.feature.reader.data.ReaderDatabase db) {
        return null;
    }
    
    @dagger.Provides()
    @javax.inject.Singleton()
    @org.jetbrains.annotations.NotNull()
    public final com.example.feature.reader.ReaderRepository provideReaderRepository(@org.jetbrains.annotations.NotNull()
    com.example.feature.reader.data.ReaderStateDao dao) {
        return null;
    }
}