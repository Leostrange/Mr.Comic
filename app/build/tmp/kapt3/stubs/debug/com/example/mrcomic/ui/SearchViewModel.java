package com.example.mrcomic.ui;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\fR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R+\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\f8F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\u0015\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017\u00a8\u0006\u001b"}, d2 = {"Lcom/example/mrcomic/ui/SearchViewModel;", "Landroidx/lifecycle/ViewModel;", "()V", "_searchState", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/example/mrcomic/ui/SearchState;", "allComics", "", "Lcom/example/mrcomic/ui/SearchResult;", "searchJob", "Lkotlinx/coroutines/Job;", "<set-?>", "", "searchQuery", "getSearchQuery", "()Ljava/lang/String;", "setSearchQuery", "(Ljava/lang/String;)V", "searchQuery$delegate", "Landroidx/compose/runtime/MutableState;", "searchState", "Lkotlinx/coroutines/flow/StateFlow;", "getSearchState", "()Lkotlinx/coroutines/flow/StateFlow;", "onSearchQueryChanged", "", "query", "app_debug"})
public final class SearchViewModel extends androidx.lifecycle.ViewModel {
    @org.jetbrains.annotations.NotNull()
    private final androidx.compose.runtime.MutableState searchQuery$delegate = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<com.example.mrcomic.ui.SearchState> _searchState = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<com.example.mrcomic.ui.SearchState> searchState = null;
    @org.jetbrains.annotations.Nullable()
    private kotlinx.coroutines.Job searchJob;
    @org.jetbrains.annotations.NotNull()
    private final java.util.List<com.example.mrcomic.ui.SearchResult> allComics = null;
    
    public SearchViewModel() {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final java.lang.String getSearchQuery() {
        return null;
    }
    
    private final void setSearchQuery(java.lang.String p0) {
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<com.example.mrcomic.ui.SearchState> getSearchState() {
        return null;
    }
    
    public final void onSearchQueryChanged(@org.jetbrains.annotations.NotNull()
    java.lang.String query) {
    }
}