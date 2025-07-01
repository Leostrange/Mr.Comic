package com.example.mrcomic.data;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\u0007H\u0016R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\b\b\u0010\t\u00a8\u0006\u000e"}, d2 = {"Lcom/example/mrcomic/data/CbrPageProvider;", "Lcom/example/mrcomic/data/PageProvider;", "imageFiles", "", "Ljava/io/File;", "(Ljava/util/List;)V", "pageCount", "", "getPageCount", "()I", "getPage", "Landroid/graphics/Bitmap;", "index", "Companion", "app_debug"})
public final class CbrPageProvider implements com.example.mrcomic.data.PageProvider {
    @org.jetbrains.annotations.NotNull()
    private final java.util.List<java.io.File> imageFiles = null;
    @org.jetbrains.annotations.NotNull()
    private static final java.lang.String TAG = "CbrPageProvider";
    @org.jetbrains.annotations.NotNull()
    public static final com.example.mrcomic.data.CbrPageProvider.Companion Companion = null;
    
    public CbrPageProvider(@org.jetbrains.annotations.NotNull()
    java.util.List<? extends java.io.File> imageFiles) {
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
    
    @kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"}, d2 = {"Lcom/example/mrcomic/data/CbrPageProvider$Companion;", "", "()V", "TAG", "", "app_debug"})
    public static final class Companion {
        
        private Companion() {
            super();
        }
    }
}