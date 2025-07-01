package com.example.mrcomic.ui;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010\u001d\u001a\u00020\u0017J\b\u0010\u001e\u001a\u00020\u0017H\u0002J\u0016\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u0007R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u000e\u00a2\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u001d\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u000e\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\f0\u000e\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0010\u00a8\u0006!"}, d2 = {"Lcom/example/mrcomic/ui/LibraryViewModel;", "Landroidx/lifecycle/ViewModel;", "repository", "Lcom/example/mrcomic/data/ComicRepository;", "(Lcom/example/mrcomic/data/ComicRepository;)V", "_isLoading", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "_recentComics", "", "Lcom/example/mrcomic/data/ComicEntity;", "_uiState", "Lcom/example/mrcomic/ui/LibraryUiState;", "comics", "Lkotlinx/coroutines/flow/StateFlow;", "getComics", "()Lkotlinx/coroutines/flow/StateFlow;", "isLoading", "recentComics", "getRecentComics", "uiState", "getUiState", "addComicFromUri", "", "uri", "Landroid/net/Uri;", "deleteComic", "comicId", "", "dismissError", "loadRecentComics", "toggleFavorite", "isFavorite", "app_release"})
@dagger.hilt.android.lifecycle.HiltViewModel()
public final class LibraryViewModel extends androidx.lifecycle.ViewModel {
    @org.jetbrains.annotations.NotNull()
    private final com.example.mrcomic.data.ComicRepository repository = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.util.List<com.example.mrcomic.data.ComicEntity>> comics = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<com.example.mrcomic.ui.LibraryUiState> _uiState = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<com.example.mrcomic.ui.LibraryUiState> uiState = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.lang.Boolean> _isLoading = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.lang.Boolean> isLoading = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.util.List<com.example.mrcomic.data.ComicEntity>> _recentComics = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.util.List<com.example.mrcomic.data.ComicEntity>> recentComics = null;
    
    @javax.inject.Inject()
    public LibraryViewModel(@org.jetbrains.annotations.NotNull()
    com.example.mrcomic.data.ComicRepository repository) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<java.util.List<com.example.mrcomic.data.ComicEntity>> getComics() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<com.example.mrcomic.ui.LibraryUiState> getUiState() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<java.lang.Boolean> isLoading() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<java.util.List<com.example.mrcomic.data.ComicEntity>> getRecentComics() {
        return null;
    }
    
    public final void addComicFromUri(@org.jetbrains.annotations.NotNull()
    android.net.Uri uri) {
    }
    
    public final void dismissError() {
    }
    
    public final void toggleFavorite(long comicId, boolean isFavorite) {
    }
    
    private final void loadRecentComics() {
    }
    
    public final void deleteComic(long comicId) {
    }
}