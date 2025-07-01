package com.example.mrcomic.data;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0005H&J\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u0005H\u0016\u00a8\u0006\t"}, d2 = {"Lcom/example/mrcomic/data/ComicPageProvider;", "", "getPage", "Landroid/graphics/Bitmap;", "page", "", "getPageCount", "getThumbnail", "size", "app_debug"})
public abstract interface ComicPageProvider {
    
    public abstract int getPageCount();
    
    @org.jetbrains.annotations.Nullable()
    public abstract android.graphics.Bitmap getPage(int page);
    
    @org.jetbrains.annotations.Nullable()
    public abstract android.graphics.Bitmap getThumbnail(int page, int size);
    
    @kotlin.Metadata(mv = {1, 9, 0}, k = 3, xi = 48)
    public static final class DefaultImpls {
        
        @org.jetbrains.annotations.Nullable()
        public static android.graphics.Bitmap getThumbnail(@org.jetbrains.annotations.NotNull()
        com.example.mrcomic.data.ComicPageProvider $this, int page, int size) {
            return null;
        }
    }
}