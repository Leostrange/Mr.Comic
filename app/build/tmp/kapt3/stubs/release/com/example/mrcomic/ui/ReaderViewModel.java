package com.example.mrcomic.ui;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0019\u001a\u00020\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cJ\u001e\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\fJ\b\u0010\u001f\u001a\u00020\u001aH\u0002J\u0006\u0010 \u001a\u00020\u001aJ\u0006\u0010!\u001a\u00020\u001aJ\u000e\u0010\"\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020\bJ\b\u0010$\u001a\u00020\u001aH\u0002J\u000e\u0010%\u001a\u00020\u001a2\u0006\u0010&\u001a\u00020\fR\u001a\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u000e\u00a2\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000e\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u000e\u0010\u0014\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\f0\u000e\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0010R\u000e\u0010\u0017\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"}, d2 = {"Lcom/example/mrcomic/ui/ReaderViewModel;", "Landroidx/lifecycle/ViewModel;", "repository", "Lcom/example/mrcomic/data/ComicRepository;", "(Lcom/example/mrcomic/data/ComicRepository;)V", "_bookmarks", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "Lcom/example/mrcomic/data/BookmarkEntity;", "_comicId", "", "_currentPage", "", "bookmarks", "Lkotlinx/coroutines/flow/StateFlow;", "getBookmarks", "()Lkotlinx/coroutines/flow/StateFlow;", "comic", "Lcom/example/mrcomic/data/ComicEntity;", "getComic", "comicId", "currentPage", "getCurrentPage", "readingStart", "totalPages", "addBookmark", "", "label", "", "init", "startPage", "loadBookmarks", "onStartReading", "onStopReading", "removeBookmark", "bookmark", "saveProgress", "setPage", "page", "app_release"})
@dagger.hilt.android.lifecycle.HiltViewModel()
@kotlin.OptIn(markerClass = {kotlinx.coroutines.ExperimentalCoroutinesApi.class})
public final class ReaderViewModel extends androidx.lifecycle.ViewModel {
    @org.jetbrains.annotations.NotNull()
    private final com.example.mrcomic.data.ComicRepository repository = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.lang.Integer> _currentPage = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.lang.Integer> currentPage = null;
    private long comicId = 0L;
    private int totalPages = 0;
    private long readingStart = 0L;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.util.List<com.example.mrcomic.data.BookmarkEntity>> _bookmarks = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.util.List<com.example.mrcomic.data.BookmarkEntity>> bookmarks = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.lang.Long> _comicId = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<com.example.mrcomic.data.ComicEntity> comic = null;
    
    @javax.inject.Inject()
    public ReaderViewModel(@org.jetbrains.annotations.NotNull()
    com.example.mrcomic.data.ComicRepository repository) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<java.lang.Integer> getCurrentPage() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<java.util.List<com.example.mrcomic.data.BookmarkEntity>> getBookmarks() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<com.example.mrcomic.data.ComicEntity> getComic() {
        return null;
    }
    
    public final void init(long comicId, int startPage, int totalPages) {
    }
    
    public final void setPage(int page) {
    }
    
    private final void saveProgress() {
    }
    
    public final void addBookmark(@org.jetbrains.annotations.Nullable()
    java.lang.String label) {
    }
    
    public final void removeBookmark(@org.jetbrains.annotations.NotNull()
    com.example.mrcomic.data.BookmarkEntity bookmark) {
    }
    
    private final void loadBookmarks() {
    }
    
    public final void onStartReading() {
    }
    
    public final void onStopReading() {
    }
}