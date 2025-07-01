package com.example.mrcomic.utils;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ:\u0010\r\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\fH\u0086@\u00a2\u0006\u0002\u0010\u0014J,\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\fH\u0086@\u00a2\u0006\u0002\u0010\u0014J,\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\fH\u0086@\u00a2\u0006\u0002\u0010\u0014J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0005H\u0002J\u001e\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000fH\u0086@\u00a2\u0006\u0002\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0005H\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"}, d2 = {"Lcom/example/mrcomic/utils/FormatProcessor;", "", "()V", "EPUB_EXTENSIONS", "", "", "IMAGE_EXTENSIONS", "TAG", "TEXT_EXTENSIONS", "clearDirectory", "", "directory", "Ljava/io/File;", "extractEpub", "Lkotlin/Pair;", "Landroid/net/Uri;", "context", "Landroid/content/Context;", "uri", "outputDir", "(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "extractRar", "extractZip", "isImageFile", "", "fileName", "readTxt", "(Landroid/content/Context;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sanitizeFileName", "app_release"})
public final class FormatProcessor {
    @org.jetbrains.annotations.NotNull()
    private static final java.lang.String TAG = "FormatProcessor";
    @org.jetbrains.annotations.NotNull()
    private static final java.util.List<java.lang.String> IMAGE_EXTENSIONS = null;
    @org.jetbrains.annotations.NotNull()
    private static final java.util.List<java.lang.String> TEXT_EXTENSIONS = null;
    @org.jetbrains.annotations.NotNull()
    private static final java.util.List<java.lang.String> EPUB_EXTENSIONS = null;
    @org.jetbrains.annotations.NotNull()
    public static final com.example.mrcomic.utils.FormatProcessor INSTANCE = null;
    
    private FormatProcessor() {
        super();
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object extractZip(@org.jetbrains.annotations.NotNull()
    android.content.Context context, @org.jetbrains.annotations.NotNull()
    android.net.Uri uri, @org.jetbrains.annotations.NotNull()
    java.io.File outputDir, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.util.List<? extends android.net.Uri>> $completion) {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object extractRar(@org.jetbrains.annotations.NotNull()
    android.content.Context context, @org.jetbrains.annotations.NotNull()
    android.net.Uri uri, @org.jetbrains.annotations.NotNull()
    java.io.File outputDir, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.util.List<? extends android.net.Uri>> $completion) {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object readTxt(@org.jetbrains.annotations.NotNull()
    android.content.Context context, @org.jetbrains.annotations.NotNull()
    android.net.Uri uri, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.lang.String> $completion) {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object extractEpub(@org.jetbrains.annotations.NotNull()
    android.content.Context context, @org.jetbrains.annotations.NotNull()
    android.net.Uri uri, @org.jetbrains.annotations.NotNull()
    java.io.File outputDir, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Pair<? extends java.util.List<? extends android.net.Uri>, ? extends android.net.Uri>> $completion) {
        return null;
    }
    
    private final boolean isImageFile(java.lang.String fileName) {
        return false;
    }
    
    private final java.lang.String sanitizeFileName(java.lang.String fileName) {
        return null;
    }
    
    public final void clearDirectory(@org.jetbrains.annotations.NotNull()
    java.io.File directory) {
    }
}