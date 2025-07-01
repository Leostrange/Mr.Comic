package com.example.feature.reader;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u001a\u0010\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\b0\u00070\u0006H\u0016J\u001e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\bH\u0096@\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e"}, d2 = {"Lcom/example/feature/reader/InMemoryReaderRepository;", "Lcom/example/feature/reader/ReaderRepository;", "()V", "getCurrentComic", "", "getStateFlow", "Lkotlinx/coroutines/flow/Flow;", "Lkotlin/Pair;", "", "setState", "", "comicTitle", "page", "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "feature-reader_debug"})
public final class InMemoryReaderRepository implements com.example.feature.reader.ReaderRepository {
    
    public InMemoryReaderRepository() {
        super();
    }
    
    @java.lang.Override()
    @org.jetbrains.annotations.NotNull()
    public java.lang.String getCurrentComic() {
        return null;
    }
    
    @java.lang.Override()
    @org.jetbrains.annotations.NotNull()
    public kotlinx.coroutines.flow.Flow<kotlin.Pair<java.lang.String, java.lang.Integer>> getStateFlow() {
        return null;
    }
    
    @java.lang.Override()
    @org.jetbrains.annotations.Nullable()
    public java.lang.Object setState(@org.jetbrains.annotations.NotNull()
    java.lang.String comicTitle, int page, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion) {
        return null;
    }
}