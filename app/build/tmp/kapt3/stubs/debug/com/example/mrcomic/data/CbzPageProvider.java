package com.example.mrcomic.data;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u0012\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\tH\u0016R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"}, d2 = {"Lcom/example/mrcomic/data/CbzPageProvider;", "Lcom/example/mrcomic/data/PageProvider;", "zipFile", "Ljava/util/zip/ZipFile;", "imageEntries", "", "Ljava/util/zip/ZipEntry;", "(Ljava/util/zip/ZipFile;Ljava/util/List;)V", "pageCount", "", "getPageCount", "()I", "getPage", "Landroid/graphics/Bitmap;", "index", "Companion", "app_debug"})
public final class CbzPageProvider implements com.example.mrcomic.data.PageProvider {
    @org.jetbrains.annotations.NotNull()
    private final java.util.zip.ZipFile zipFile = null;
    @org.jetbrains.annotations.NotNull()
    private final java.util.List<java.util.zip.ZipEntry> imageEntries = null;
    @org.jetbrains.annotations.NotNull()
    private static final java.lang.String TAG = "CbzPageProvider";
    @org.jetbrains.annotations.NotNull()
    public static final com.example.mrcomic.data.CbzPageProvider.Companion Companion = null;
    
    public CbzPageProvider(@org.jetbrains.annotations.NotNull()
    java.util.zip.ZipFile zipFile, @org.jetbrains.annotations.NotNull()
    java.util.List<? extends java.util.zip.ZipEntry> imageEntries) {
        super();
    }
    
    @java.lang.Override()
    public int getPageCount() {
        return 0;
    }
    
    @java.lang.Override()
    @org.jetbrains.annotations.Nullable()
    public android.graphics.Bitmap getPage(int index) {
        return null;
    }
    
    @kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"}, d2 = {"Lcom/example/mrcomic/data/CbzPageProvider$Companion;", "", "()V", "TAG", "", "app_debug"})
    public static final class Companion {
        
        private Companion() {
            super();
        }
    }
}