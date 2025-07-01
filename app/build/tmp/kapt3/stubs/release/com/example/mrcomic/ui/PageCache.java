package com.example.mrcomic.ui;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u0005J\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0006R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"}, d2 = {"Lcom/example/mrcomic/ui/PageCache;", "", "()V", "cache", "Landroid/util/LruCache;", "", "Landroid/graphics/Bitmap;", "get", "index", "has", "", "put", "", "bmp", "app_release"})
public final class PageCache {
    @org.jetbrains.annotations.NotNull()
    private static final android.util.LruCache<java.lang.Integer, android.graphics.Bitmap> cache = null;
    @org.jetbrains.annotations.NotNull()
    public static final com.example.mrcomic.ui.PageCache INSTANCE = null;
    
    private PageCache() {
        super();
    }
    
    @org.jetbrains.annotations.Nullable()
    public final android.graphics.Bitmap get(int index) {
        return null;
    }
    
    public final void put(int index, @org.jetbrains.annotations.NotNull()
    android.graphics.Bitmap bmp) {
    }
    
    public final boolean has(int index) {
        return false;
    }
}