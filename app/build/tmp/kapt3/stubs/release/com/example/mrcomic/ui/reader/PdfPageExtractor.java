package com.example.mrcomic.ui.reader;

/**
 * Извлекает страницы из PDF файлов.
 */
@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\b\u0010\u000b\u001a\u00020\fH\u0016J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0096@\u00a2\u0006\u0002\u0010\u0011J\u000e\u0010\u0012\u001a\u00020\u0010H\u0096@\u00a2\u0006\u0002\u0010\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"}, d2 = {"Lcom/example/mrcomic/ui/reader/PdfPageExtractor;", "Lcom/example/mrcomic/ui/reader/PageExtractor;", "context", "Landroid/content/Context;", "uri", "Landroid/net/Uri;", "(Landroid/content/Context;Landroid/net/Uri;)V", "parcelFileDescriptor", "Landroid/os/ParcelFileDescriptor;", "pdfRenderer", "Landroid/graphics/pdf/PdfRenderer;", "close", "", "getPage", "Landroid/graphics/Bitmap;", "pageIndex", "", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPageCount", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app_release"})
public final class PdfPageExtractor implements com.example.mrcomic.ui.reader.PageExtractor {
    @org.jetbrains.annotations.NotNull()
    private final android.content.Context context = null;
    @org.jetbrains.annotations.NotNull()
    private final android.net.Uri uri = null;
    @org.jetbrains.annotations.NotNull()
    private final android.os.ParcelFileDescriptor parcelFileDescriptor = null;
    @org.jetbrains.annotations.NotNull()
    private final android.graphics.pdf.PdfRenderer pdfRenderer = null;
    
    public PdfPageExtractor(@org.jetbrains.annotations.NotNull()
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
}