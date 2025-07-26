package com.example.feature.reader;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0007\u001a\u00020\b\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0017J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0015H\u0002J\u0006\u0010\u001a\u001a\u00020\u0017J\u000e\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001dJ\b\u0010\u001e\u001a\u00020\u0017H\u0014J\u000e\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020!R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\rR\u0010\u0010\u0006\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\rR\u0010\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\rR\u0010\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\rR\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\f0\u000f\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011\u00a8\u0006\""}, d2 = {"Lcom/example/feature/reader/ReaderViewModel;", "Landroidx/lifecycle/ViewModel;", "loadComicUseCase", "error/NonExistentClass", "getComicPagesUseCase", "saveReadingProgressUseCase", "getReadingProgressUseCase", "context", "Landroid/content/Context;", "(Lerror/NonExistentClass;Lerror/NonExistentClass;Lerror/NonExistentClass;Lerror/NonExistentClass;Landroid/content/Context;)V", "_uiState", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/example/feature/reader/ReaderUiState;", "Lerror/NonExistentClass;", "uiState", "Lkotlinx/coroutines/flow/StateFlow;", "getUiState", "()Lkotlinx/coroutines/flow/StateFlow;", "getPage", "Landroid/graphics/Bitmap;", "pageIndex", "", "goToNextPage", "", "goToPage", "index", "goToPreviousPage", "loadComic", "uriString", "", "onCleared", "setReadingMode", "mode", "Lcom/example/feature/reader/ReadingMode;", "feature-reader_debug"})
@dagger.hilt.android.lifecycle.HiltViewModel()
public final class ReaderViewModel extends androidx.lifecycle.ViewModel {
    @org.jetbrains.annotations.NotNull()
    private final error.NonExistentClass loadComicUseCase = null;
    @org.jetbrains.annotations.NotNull()
    private final error.NonExistentClass getComicPagesUseCase = null;
    @org.jetbrains.annotations.NotNull()
    private final error.NonExistentClass saveReadingProgressUseCase = null;
    @org.jetbrains.annotations.NotNull()
    private final error.NonExistentClass getReadingProgressUseCase = null;
    @org.jetbrains.annotations.NotNull()
    private final android.content.Context context = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<com.example.feature.reader.ReaderUiState> _uiState = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<com.example.feature.reader.ReaderUiState> uiState = null;
    
    @javax.inject.Inject()
    public ReaderViewModel(@org.jetbrains.annotations.NotNull()
    error.NonExistentClass loadComicUseCase, @org.jetbrains.annotations.NotNull()
    error.NonExistentClass getComicPagesUseCase, @org.jetbrains.annotations.NotNull()
    error.NonExistentClass saveReadingProgressUseCase, @org.jetbrains.annotations.NotNull()
    error.NonExistentClass getReadingProgressUseCase, @dagger.hilt.android.qualifiers.ApplicationContext()
    @org.jetbrains.annotations.NotNull()
    android.content.Context context) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<com.example.feature.reader.ReaderUiState> getUiState() {
        return null;
    }
    
    public final void loadComic(@org.jetbrains.annotations.NotNull()
    java.lang.String uriString) {
    }
    
    public final void goToNextPage() {
    }
    
    public final void goToPreviousPage() {
    }
    
    private final void goToPage(int index) {
    }
    
    @org.jetbrains.annotations.Nullable()
    public final android.graphics.Bitmap getPage(int pageIndex) {
        return null;
    }
    
    public final void setReadingMode(@org.jetbrains.annotations.NotNull()
    com.example.feature.reader.ReadingMode mode) {
    }
    
    @java.lang.Override()
    protected void onCleared() {
    }
}