package com.example.mrcomic.ui;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\u000bJ\u0006\u0010\r\u001a\u00020\u000bJ\u000e\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0010J\u000e\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0018R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007\u00a2\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t\u00a8\u0006\u0019"}, d2 = {"Lcom/example/mrcomic/ui/SettingsViewModel;", "Landroidx/lifecycle/ViewModel;", "()V", "_settingsState", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/example/mrcomic/ui/AppSettings;", "settingsState", "Lkotlinx/coroutines/flow/StateFlow;", "getSettingsState", "()Lkotlinx/coroutines/flow/StateFlow;", "clearCache", "", "exportData", "importData", "setDarkMode", "isDark", "", "setReadingDirection", "direction", "Lcom/example/mrcomic/ui/ReadingDirection;", "setShowPageNumbers", "show", "setSortOrder", "order", "Lcom/example/mrcomic/ui/SortOrder;", "app_release"})
public final class SettingsViewModel extends androidx.lifecycle.ViewModel {
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<com.example.mrcomic.ui.AppSettings> _settingsState = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<com.example.mrcomic.ui.AppSettings> settingsState = null;
    
    public SettingsViewModel() {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<com.example.mrcomic.ui.AppSettings> getSettingsState() {
        return null;
    }
    
    public final void setDarkMode(boolean isDark) {
    }
    
    public final void setReadingDirection(@org.jetbrains.annotations.NotNull()
    com.example.mrcomic.ui.ReadingDirection direction) {
    }
    
    public final void setShowPageNumbers(boolean show) {
    }
    
    public final void setSortOrder(@org.jetbrains.annotations.NotNull()
    com.example.mrcomic.ui.SortOrder order) {
    }
    
    public final void clearCache() {
    }
    
    public final void exportData() {
    }
    
    public final void importData() {
    }
}