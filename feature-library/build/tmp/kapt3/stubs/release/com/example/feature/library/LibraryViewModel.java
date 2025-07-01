package com.example.feature.library;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\rJ\u000e\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0017J\u0016\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aR\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\t\u00a2\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b\u00a8\u0006\u001b"}, d2 = {"Lcom/example/feature/library/LibraryViewModel;", "Landroidx/lifecycle/ViewModel;", "repository", "Lcom/example/feature/library/LibraryRepository;", "(Lcom/example/feature/library/LibraryRepository;)V", "_uiState", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/example/feature/library/UiState;", "uiState", "Lkotlinx/coroutines/flow/StateFlow;", "getUiState", "()Lkotlinx/coroutines/flow/StateFlow;", "addComic", "", "comic", "Lcom/example/feature/library/data/ComicEntity;", "deleteComic", "id", "", "loadComics", "removeComic", "searchComics", "query", "", "toggleFavorite", "isFavorite", "", "feature-library_release"})
@dagger.hilt.android.lifecycle.HiltViewModel()
public final class LibraryViewModel extends androidx.lifecycle.ViewModel {
    @org.jetbrains.annotations.NotNull()
    private final com.example.feature.library.LibraryRepository repository = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<com.example.feature.library.UiState> _uiState = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<com.example.feature.library.UiState> uiState = null;
    
    @javax.inject.Inject()
    public LibraryViewModel(@org.jetbrains.annotations.NotNull()
    com.example.feature.library.LibraryRepository repository) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<com.example.feature.library.UiState> getUiState() {
        return null;
    }
    
    public final void loadComics() {
    }
    
    public final void addComic(@org.jetbrains.annotations.NotNull()
    com.example.feature.library.data.ComicEntity comic) {
    }
    
    public final void deleteComic(long id) {
    }
    
    public final void searchComics(@org.jetbrains.annotations.NotNull()
    java.lang.String query) {
    }
    
    public final void toggleFavorite(long id, boolean isFavorite) {
    }
    
    public final void removeComic(long id) {
    }
}