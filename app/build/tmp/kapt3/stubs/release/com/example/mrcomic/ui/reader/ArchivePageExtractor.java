package com.example.mrcomic.ui.reader;

/**
 * Извлекает страницы из архивных файлов (CBZ, CBR).
 */
@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\b\u0010\f\u001a\u00020\rH\u0016J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0096@\u00a2\u0006\u0002\u0010\u0012J\u000e\u0010\u0013\u001a\u00020\u0011H\u0096@\u00a2\u0006\u0002\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\tH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"}, d2 = {"Lcom/example/mrcomic/ui/reader/ArchivePageExtractor;", "Lcom/example/mrcomic/ui/reader/PageExtractor;", "context", "Landroid/content/Context;", "uri", "Landroid/net/Uri;", "(Landroid/content/Context;Landroid/net/Uri;)V", "imageEntries", "", "", "tempFile", "Ljava/io/File;", "close", "", "getPage", "Landroid/graphics/Bitmap;", "pageIndex", "", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPageCount", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isImageFile", "", "fileName", "app_release"})
public final class ArchivePageExtractor implements com.example.mrcomic.ui.reader.PageExtractor {
    @org.jetbrains.annotations.NotNull()
    private final android.content.Context context = null;
    @org.jetbrains.annotations.NotNull()
    private final android.net.Uri uri = null;
    @org.jetbrains.annotations.NotNull()
    private final java.util.List<java.lang.String> imageEntries = null;
    @org.jetbrains.annotations.NotNull()
    private final java.io.File tempFile = null;
    
    public ArchivePageExtractor(@org.jetbrains.annotations.NotNull()
    android.content.Context context, @org.jetbrains.annotations.NotNull()
    android.net.Uri uri) {
        super();
    }
    
    @java.lang.Override()
    @org.jetbrains.annotations.Nullable()
    public java.lang.Object getPageCount(@org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.lang.Integer> $completion) {
        return null;
    }
    
    @java.lang.Override()
    @org.jetbrains.annotations.Nullable()
    public java.lang.Object getPage(int pageIndex, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super android.graphics.Bitmap> $completion) {
        return null;
    }
    
    @java.lang.Override()
    public void close() {
    }
    
    private final boolean isImageFile(java.lang.String fileName) {
        return false;
    }
}