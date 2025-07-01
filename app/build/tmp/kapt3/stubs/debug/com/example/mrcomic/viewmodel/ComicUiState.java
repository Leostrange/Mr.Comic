package com.example.mrcomic.viewmodel;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\u0003\u0004\u0005\u0006B\u0007\b\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0004\u0007\b\t\n\u00a8\u0006\u000b"}, d2 = {"Lcom/example/mrcomic/viewmodel/ComicUiState;", "", "()V", "Error", "Idle", "Loading", "Success", "Lcom/example/mrcomic/viewmodel/ComicUiState$Error;", "Lcom/example/mrcomic/viewmodel/ComicUiState$Idle;", "Lcom/example/mrcomic/viewmodel/ComicUiState$Loading;", "Lcom/example/mrcomic/viewmodel/ComicUiState$Success;", "app_debug"})
public abstract class ComicUiState {
    
    private ComicUiState() {
        super();
    }
    
    @kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u00a8\u0006\u0010"}, d2 = {"Lcom/example/mrcomic/viewmodel/ComicUiState$Error;", "Lcom/example/mrcomic/viewmodel/ComicUiState;", "message", "", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app_debug"})
    public static final class Error extends com.example.mrcomic.viewmodel.ComicUiState {
        @org.jetbrains.annotations.NotNull()
        private final java.lang.String message = null;
        
        public Error(@org.jetbrains.annotations.NotNull()
        java.lang.String message) {
        }
        
        @org.jetbrains.annotations.NotNull()
        public final java.lang.String getMessage() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final java.lang.String component1() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final com.example.mrcomic.viewmodel.ComicUiState.Error copy(@org.jetbrains.annotations.NotNull()
        java.lang.String message) {
            return null;
        }
        
        @java.lang.Override()
        public boolean equals(@org.jetbrains.annotations.Nullable()
        java.lang.Object other) {
            return false;
        }
        
        @java.lang.Override()
        public int hashCode() {
            return 0;
        }
        
        @java.lang.Override()
        @org.jetbrains.annotations.NotNull()
        public java.lang.String toString() {
            return null;
        }
    }
    
    @kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"}, d2 = {"Lcom/example/mrcomic/viewmodel/ComicUiState$Idle;", "Lcom/example/mrcomic/viewmodel/ComicUiState;", "()V", "app_debug"})
    public static final class Idle extends com.example.mrcomic.viewmodel.ComicUiState {
        @org.jetbrains.annotations.NotNull()
        public static final com.example.mrcomic.viewmodel.ComicUiState.Idle INSTANCE = null;
        
        private Idle() {
        }
    }
    
    @kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"}, d2 = {"Lcom/example/mrcomic/viewmodel/ComicUiState$Loading;", "Lcom/example/mrcomic/viewmodel/ComicUiState;", "()V", "app_debug"})
    public static final class Loading extends com.example.mrcomic.viewmodel.ComicUiState {
        @org.jetbrains.annotations.NotNull()
        public static final com.example.mrcomic.viewmodel.ComicUiState.Loading INSTANCE = null;
        
        private Loading() {
        }
    }
    
    @kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\fJ\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\bH\u00c6\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003JE\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u00d6\u0003J\t\u0010!\u001a\u00020\bH\u00d6\u0001J\t\u0010\"\u001a\u00020\nH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\b\u00a2\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016\u00a8\u0006#"}, d2 = {"Lcom/example/mrcomic/viewmodel/ComicUiState$Success;", "Lcom/example/mrcomic/viewmodel/ComicUiState;", "comicType", "Lcom/example/mrcomic/viewmodel/ComicType;", "pages", "", "Landroid/net/Uri;", "currentPageIndex", "", "txtContent", "", "epubCoverUri", "(Lcom/example/mrcomic/viewmodel/ComicType;Ljava/util/List;ILjava/lang/String;Landroid/net/Uri;)V", "getComicType", "()Lcom/example/mrcomic/viewmodel/ComicType;", "getCurrentPageIndex", "()I", "getEpubCoverUri", "()Landroid/net/Uri;", "getPages", "()Ljava/util/List;", "getTxtContent", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "", "hashCode", "toString", "app_debug"})
    public static final class Success extends com.example.mrcomic.viewmodel.ComicUiState {
        @org.jetbrains.annotations.NotNull()
        private final com.example.mrcomic.viewmodel.ComicType comicType = null;
        @org.jetbrains.annotations.NotNull()
        private final java.util.List<android.net.Uri> pages = null;
        private final int currentPageIndex = 0;
        @org.jetbrains.annotations.Nullable()
        private final java.lang.String txtContent = null;
        @org.jetbrains.annotations.Nullable()
        private final android.net.Uri epubCoverUri = null;
        
        public Success(@org.jetbrains.annotations.NotNull()
        com.example.mrcomic.viewmodel.ComicType comicType, @org.jetbrains.annotations.NotNull()
        java.util.List<? extends android.net.Uri> pages, int currentPageIndex, @org.jetbrains.annotations.Nullable()
        java.lang.String txtContent, @org.jetbrains.annotations.Nullable()
        android.net.Uri epubCoverUri) {
        }
        
        @org.jetbrains.annotations.NotNull()
        public final com.example.mrcomic.viewmodel.ComicType getComicType() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final java.util.List<android.net.Uri> getPages() {
            return null;
        }
        
        public final int getCurrentPageIndex() {
            return 0;
        }
        
        @org.jetbrains.annotations.Nullable()
        public final java.lang.String getTxtContent() {
            return null;
        }
        
        @org.jetbrains.annotations.Nullable()
        public final android.net.Uri getEpubCoverUri() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final com.example.mrcomic.viewmodel.ComicType component1() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final java.util.List<android.net.Uri> component2() {
            return null;
        }
        
        public final int component3() {
            return 0;
        }
        
        @org.jetbrains.annotations.Nullable()
        public final java.lang.String component4() {
            return null;
        }
        
        @org.jetbrains.annotations.Nullable()
        public final android.net.Uri component5() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final com.example.mrcomic.viewmodel.ComicUiState.Success copy(@org.jetbrains.annotations.NotNull()
        com.example.mrcomic.viewmodel.ComicType comicType, @org.jetbrains.annotations.NotNull()
        java.util.List<? extends android.net.Uri> pages, int currentPageIndex, @org.jetbrains.annotations.Nullable()
        java.lang.String txtContent, @org.jetbrains.annotations.Nullable()
        android.net.Uri epubCoverUri) {
            return null;
        }
        
        @java.lang.Override()
        public boolean equals(@org.jetbrains.annotations.Nullable()
        java.lang.Object other) {
            return false;
        }
        
        @java.lang.Override()
        public int hashCode() {
            return 0;
        }
        
        @java.lang.Override()
        @org.jetbrains.annotations.NotNull()
        public java.lang.String toString() {
            return null;
        }
    }
}