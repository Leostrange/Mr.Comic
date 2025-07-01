package com.example.mrcomic.ui.reader;

/**
 * Интерфейс для извлечения страниц из различных форматов комиксов.
 */
@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u00a6@\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u00020\u0005H\u00a6@\u00a2\u0006\u0002\u0010\b\u00a8\u0006\t"}, d2 = {"Lcom/example/mrcomic/ui/reader/PageExtractor;", "Ljava/lang/AutoCloseable;", "getPage", "Landroid/graphics/Bitmap;", "pageIndex", "", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPageCount", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app_debug"})
public abstract interface PageExtractor extends java.lang.AutoCloseable {
    
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object getPageCount(@org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.lang.Integer> $completion);
    
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object getPage(int pageIndex, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super android.graphics.Bitmap> $completion);
}