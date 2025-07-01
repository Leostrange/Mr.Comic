package com.example.mrcomic.ui;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0017\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\rH\u0002J\u0006\u0010\u001d\u001a\u00020\u0019J\u0006\u0010\u001e\u001a\u00020\u0019J\u0010\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\rH\u0002R\u0016\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0011\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0019\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0011\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u0017\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\r0\u0011\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"}, d2 = {"Lcom/example/mrcomic/ui/ComicReaderViewModel;", "Landroidx/lifecycle/ViewModel;", "repository", "Lcom/example/mrcomic/data/ComicRepository;", "savedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "(Lcom/example/mrcomic/data/ComicRepository;Landroidx/lifecycle/SavedStateHandle;)V", "_comicState", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/example/mrcomic/data/ComicEntity;", "_currentPageBitmap", "Landroid/graphics/Bitmap;", "_currentPageIndex", "", "comicId", "", "comicState", "Lkotlinx/coroutines/flow/StateFlow;", "getComicState", "()Lkotlinx/coroutines/flow/StateFlow;", "currentPageBitmap", "getCurrentPageBitmap", "currentPageIndex", "getCurrentPageIndex", "loadPage", "", "filePath", "", "pageIndex", "nextPage", "prevPage", "updateAndLoadPage", "newPageIndex", "app_debug"})
@dagger.hilt.android.lifecycle.HiltViewModel()
public final class ComicReaderViewModel extends androidx.lifecycle.ViewModel {
    @org.jetbrains.annotations.NotNull()
    private final com.example.mrcomic.data.ComicRepository repository = null;
    private final long comicId = 0L;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<com.example.mrcomic.data.ComicEntity> _comicState = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<com.example.mrcomic.data.ComicEntity> comicState = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<android.graphics.Bitmap> _currentPageBitmap = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<android.graphics.Bitmap> currentPageBitmap = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.lang.Integer> _currentPageIndex = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.lang.Integer> currentPageIndex = null;
    
    @javax.inject.Inject()
    public ComicReaderViewModel(@org.jetbrains.annotations.NotNull()
    com.example.mrcomic.data.ComicRepository repository, @org.jetbrains.annotations.NotNull()
    androidx.lifecycle.SavedStateHandle savedStateHandle) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<com.example.mrcomic.data.ComicEntity> getComicState() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<android.graphics.Bitmap> getCurrentPageBitmap() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<java.lang.Integer> getCurrentPageIndex() {
        return null;
    }
    
    public final void nextPage() {
    }
    
    public final void prevPage() {
    }
    
    private final void updateAndLoadPage(int newPageIndex) {
    }
    
    private final void loadPage(java.lang.String filePath, int pageIndex) {
    }
}