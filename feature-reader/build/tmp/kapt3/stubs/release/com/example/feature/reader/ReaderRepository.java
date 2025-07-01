package com.example.feature.reader;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u001a\u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00070\u00060\u0005H&J\u001e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0007H\u00a6@\u00a2\u0006\u0002\u0010\f\u00a8\u0006\r"}, d2 = {"Lcom/example/feature/reader/ReaderRepository;", "", "getCurrentComic", "", "getStateFlow", "Lkotlinx/coroutines/flow/Flow;", "Lkotlin/Pair;", "", "setState", "", "comicTitle", "page", "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "feature-reader_release"})
public abstract interface ReaderRepository {
    
    @org.jetbrains.annotations.NotNull()
    public abstract java.lang.String getCurrentComic();
    
    @org.jetbrains.annotations.NotNull()
    public abstract kotlinx.coroutines.flow.Flow<kotlin.Pair<java.lang.String, java.lang.Integer>> getStateFlow();
    
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object setState(@org.jetbrains.annotations.NotNull()
    java.lang.String comicTitle, int page, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion);
}