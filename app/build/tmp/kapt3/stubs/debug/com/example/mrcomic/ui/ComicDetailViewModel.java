package com.example.mrcomic.ui;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\rJ\u0006\u0010\u0012\u001a\u00020\rR\u0016\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\t\u00a2\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"}, d2 = {"Lcom/example/mrcomic/ui/ComicDetailViewModel;", "Landroidx/lifecycle/ViewModel;", "repository", "Lcom/example/mrcomic/data/ComicRepository;", "(Lcom/example/mrcomic/data/ComicRepository;)V", "_comic", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/example/mrcomic/data/ComicEntity;", "comic", "Lkotlinx/coroutines/flow/StateFlow;", "getComic", "()Lkotlinx/coroutines/flow/StateFlow;", "deleteComic", "", "loadComic", "comicId", "", "resetProgress", "toggleFavorite", "app_debug"})
@dagger.hilt.android.lifecycle.HiltViewModel()
public final class ComicDetailViewModel extends androidx.lifecycle.ViewModel {
    @org.jetbrains.annotations.NotNull()
    private final com.example.mrcomic.data.ComicRepository repository = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<com.example.mrcomic.data.ComicEntity> _comic = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<com.example.mrcomic.data.ComicEntity> comic = null;
    
    @javax.inject.Inject()
    public ComicDetailViewModel(@org.jetbrains.annotations.NotNull()
    com.example.mrcomic.data.ComicRepository repository) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<com.example.mrcomic.data.ComicEntity> getComic() {
        return null;
    }
    
    public final void loadComic(long comicId) {
    }
    
    public final void toggleFavorite() {
    }
    
    public final void resetProgress() {
    }
    
    public final void deleteComic() {
    }
}