package com.example.mrcomic.ui.reader;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u000fJ\b\u0010\u0010\u001a\u00020\u0011H\u0014R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\t\u00a2\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"}, d2 = {"Lcom/example/mrcomic/ui/reader/ReaderViewModel;", "Landroidx/lifecycle/ViewModel;", "pageExtractor", "Lcom/example/mrcomic/ui/reader/PageExtractor;", "(Lcom/example/mrcomic/ui/reader/PageExtractor;)V", "_pageCount", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "pageCount", "Lkotlinx/coroutines/flow/StateFlow;", "getPageCount", "()Lkotlinx/coroutines/flow/StateFlow;", "getPage", "Landroid/graphics/Bitmap;", "pageIndex", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onCleared", "", "Companion", "app_release"})
public final class ReaderViewModel extends androidx.lifecycle.ViewModel {
    @org.jetbrains.annotations.NotNull()
    private final com.example.mrcomic.ui.reader.PageExtractor pageExtractor = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.lang.Integer> _pageCount = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.lang.Integer> pageCount = null;
    @org.jetbrains.annotations.NotNull()
    public static final com.example.mrcomic.ui.reader.ReaderViewModel.Companion Companion = null;
    
    public ReaderViewModel(@org.jetbrains.annotations.NotNull()
    com.example.mrcomic.ui.reader.PageExtractor pageExtractor) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<java.lang.Integer> getPageCount() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object getPage(int pageIndex, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super android.graphics.Bitmap> $completion) {
        return null;
    }
    
    @java.lang.Override()
    protected void onCleared() {
    }
    
    @kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b\u00a8\u0006\u000b"}, d2 = {"Lcom/example/mrcomic/ui/reader/ReaderViewModel$Companion;", "", "()V", "createExtractor", "Lcom/example/mrcomic/ui/reader/PageExtractor;", "context", "Landroid/content/Context;", "uri", "Landroid/net/Uri;", "createFactory", "Landroidx/lifecycle/ViewModelProvider$Factory;", "app_release"})
    public static final class Companion {
        
        private Companion() {
            super();
        }
        
        @org.jetbrains.annotations.NotNull()
        public final androidx.lifecycle.ViewModelProvider.Factory createFactory(@org.jetbrains.annotations.NotNull()
        android.content.Context context, @org.jetbrains.annotations.NotNull()
        android.net.Uri uri) {
            return null;
        }
        
        private final com.example.mrcomic.ui.reader.PageExtractor createExtractor(android.content.Context context, android.net.Uri uri) {
            return null;
        }
    }
}