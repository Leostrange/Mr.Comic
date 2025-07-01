package com.example.mrcomic.viewmodel;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\b\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010\u0012\u001a\u00020\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\tJ\u0006\u0010\u0014\u001a\u00020\u0011J\b\u0010\u0015\u001a\u00020\u0011H\u0014J\u0006\u0010\u0016\u001a\u00020\u0011R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\r\u00a2\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f\u00a8\u0006\u0017"}, d2 = {"Lcom/example/mrcomic/viewmodel/ComicViewModel;", "Landroidx/lifecycle/ViewModel;", "application", "Landroid/app/Application;", "(Landroid/app/Application;)V", "_uiState", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/example/mrcomic/viewmodel/ComicUiState;", "currentComicFileUri", "Landroid/net/Uri;", "tempComicDir", "Ljava/io/File;", "uiState", "Lkotlinx/coroutines/flow/StateFlow;", "getUiState", "()Lkotlinx/coroutines/flow/StateFlow;", "clearCurrentComic", "", "loadComic", "uri", "nextPage", "onCleared", "prevPage", "app_release"})
@dagger.hilt.android.lifecycle.HiltViewModel()
public final class ComicViewModel extends androidx.lifecycle.ViewModel {
    @org.jetbrains.annotations.NotNull()
    private final android.app.Application application = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<com.example.mrcomic.viewmodel.ComicUiState> _uiState = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<com.example.mrcomic.viewmodel.ComicUiState> uiState = null;
    @org.jetbrains.annotations.Nullable()
    private android.net.Uri currentComicFileUri;
    @org.jetbrains.annotations.Nullable()
    private java.io.File tempComicDir;
    
    @javax.inject.Inject()
    public ComicViewModel(@org.jetbrains.annotations.NotNull()
    android.app.Application application) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<com.example.mrcomic.viewmodel.ComicUiState> getUiState() {
        return null;
    }
    
    public final void loadComic(@org.jetbrains.annotations.Nullable()
    android.net.Uri uri) {
    }
    
    public final void nextPage() {
    }
    
    public final void prevPage() {
    }
    
    private final void clearCurrentComic() {
    }
    
    @java.lang.Override()
    protected void onCleared() {
    }
}