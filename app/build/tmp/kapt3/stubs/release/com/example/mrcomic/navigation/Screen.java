package com.example.mrcomic.navigation;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\u0007\b\t\nB\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0004\u000b\f\r\u000e\u00a8\u0006\u000f"}, d2 = {"Lcom/example/mrcomic/navigation/Screen;", "", "route", "", "(Ljava/lang/String;)V", "getRoute", "()Ljava/lang/String;", "Details", "Library", "Reader", "Settings", "Lcom/example/mrcomic/navigation/Screen$Details;", "Lcom/example/mrcomic/navigation/Screen$Library;", "Lcom/example/mrcomic/navigation/Screen$Reader;", "Lcom/example/mrcomic/navigation/Screen$Settings;", "app_release"})
public abstract class Screen {
    @org.jetbrains.annotations.NotNull()
    private final java.lang.String route = null;
    
    private Screen(java.lang.String route) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final java.lang.String getRoute() {
        return null;
    }
    
    @kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\b\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"}, d2 = {"Lcom/example/mrcomic/navigation/Screen$Details;", "Lcom/example/mrcomic/navigation/Screen;", "()V", "createRoute", "", "comicId", "", "app_release"})
    public static final class Details extends com.example.mrcomic.navigation.Screen {
        @org.jetbrains.annotations.NotNull()
        public static final com.example.mrcomic.navigation.Screen.Details INSTANCE = null;
        
        private Details() {
        }
        
        @org.jetbrains.annotations.NotNull()
        public final java.lang.String createRoute(long comicId) {
            return null;
        }
    }
    
    @kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"}, d2 = {"Lcom/example/mrcomic/navigation/Screen$Library;", "Lcom/example/mrcomic/navigation/Screen;", "()V", "app_release"})
    public static final class Library extends com.example.mrcomic.navigation.Screen {
        @org.jetbrains.annotations.NotNull()
        public static final com.example.mrcomic.navigation.Screen.Library INSTANCE = null;
        
        private Library() {
        }
    }
    
    @kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\b\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"}, d2 = {"Lcom/example/mrcomic/navigation/Screen$Reader;", "Lcom/example/mrcomic/navigation/Screen;", "()V", "createRoute", "", "comicId", "", "app_release"})
    public static final class Reader extends com.example.mrcomic.navigation.Screen {
        @org.jetbrains.annotations.NotNull()
        public static final com.example.mrcomic.navigation.Screen.Reader INSTANCE = null;
        
        private Reader() {
        }
        
        @org.jetbrains.annotations.NotNull()
        public final java.lang.String createRoute(long comicId) {
            return null;
        }
    }
    
    @kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"}, d2 = {"Lcom/example/mrcomic/navigation/Screen$Settings;", "Lcom/example/mrcomic/navigation/Screen;", "()V", "app_release"})
    public static final class Settings extends com.example.mrcomic.navigation.Screen {
        @org.jetbrains.annotations.NotNull()
        public static final com.example.mrcomic.navigation.Screen.Settings INSTANCE = null;
        
        private Settings() {
        }
    }
}