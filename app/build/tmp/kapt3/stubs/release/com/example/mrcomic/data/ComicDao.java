package com.example.mrcomic.data;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\bg\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u00a7@\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u00a7@\u00a2\u0006\u0002\u0010\u000bJ\u0016\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u00a7@\u00a2\u0006\u0002\u0010\u000fJ\u0014\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u00120\u0011H\'J\u001c\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\n0\u00122\u0006\u0010\u0004\u001a\u00020\u0005H\u00a7@\u00a2\u0006\u0002\u0010\u0014J\u0018\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u00112\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0004\u001a\u00020\u0005H\u00a7@\u00a2\u0006\u0002\u0010\u0014J\u0014\u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u00120\u0011H\'J\u001e\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00122\b\b\u0002\u0010\u0019\u001a\u00020\u001aH\u00a7@\u00a2\u0006\u0002\u0010\u001bJ\u0016\u0010\u001c\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u00a7@\u00a2\u0006\u0002\u0010\u000bJ\u0016\u0010\u001d\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u00a7@\u00a2\u0006\u0002\u0010\u000fJ\u001e\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020 H\u00a7@\u00a2\u0006\u0002\u0010!J\u0016\u0010\"\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u00a7@\u00a2\u0006\u0002\u0010\u000fJ\u001e\u0010#\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u0005H\u00a7@\u00a2\u0006\u0002\u0010\u0007J\u001e\u0010%\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u001aH\u00a7@\u00a2\u0006\u0002\u0010\'\u00a8\u0006("}, d2 = {"Lcom/example/mrcomic/data/ComicDao;", "", "addReadingTime", "", "comicId", "", "delta", "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteBookmark", "bookmark", "Lcom/example/mrcomic/data/BookmarkEntity;", "(Lcom/example/mrcomic/data/BookmarkEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteComic", "comic", "Lcom/example/mrcomic/data/ComicEntity;", "(Lcom/example/mrcomic/data/ComicEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAllComics", "Lkotlinx/coroutines/flow/Flow;", "", "getBookmarksForComic", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getComicById", "getComicByIdSync", "getFavoriteComics", "getRecentComics", "limit", "", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "insertBookmark", "insertComic", "setFavorite", "isFavorite", "", "(JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateComic", "updateLastOpened", "timestamp", "updateProgress", "page", "(JILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app_release"})
@androidx.room.Dao()
public abstract interface ComicDao {
    
    @androidx.room.Insert(onConflict = 1)
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object insertComic(@org.jetbrains.annotations.NotNull()
    com.example.mrcomic.data.ComicEntity comic, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion);
    
    @androidx.room.Update()
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object updateComic(@org.jetbrains.annotations.NotNull()
    com.example.mrcomic.data.ComicEntity comic, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion);
    
    @androidx.room.Delete()
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object deleteComic(@org.jetbrains.annotations.NotNull()
    com.example.mrcomic.data.ComicEntity comic, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion);
    
    @androidx.room.Query(value = "SELECT * FROM comics WHERE id = :comicId")
    @org.jetbrains.annotations.NotNull()
    public abstract kotlinx.coroutines.flow.Flow<com.example.mrcomic.data.ComicEntity> getComicById(long comicId);
    
    @androidx.room.Query(value = "SELECT * FROM comics ORDER BY addedDate DESC")
    @org.jetbrains.annotations.NotNull()
    public abstract kotlinx.coroutines.flow.Flow<java.util.List<com.example.mrcomic.data.ComicEntity>> getAllComics();
    
    @androidx.room.Query(value = "SELECT * FROM comics WHERE isFavorite = 1 ORDER BY title ASC")
    @org.jetbrains.annotations.NotNull()
    public abstract kotlinx.coroutines.flow.Flow<java.util.List<com.example.mrcomic.data.ComicEntity>> getFavoriteComics();
    
    @androidx.room.Query(value = "SELECT * FROM comics WHERE id = :comicId")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object getComicByIdSync(long comicId, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super com.example.mrcomic.data.ComicEntity> $completion);
    
    @androidx.room.Query(value = "UPDATE comics SET currentPage = :page WHERE id = :comicId")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object updateProgress(long comicId, int page, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion);
    
    @androidx.room.Query(value = "UPDATE comics SET isFavorite = :isFavorite WHERE id = :comicId")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object setFavorite(long comicId, boolean isFavorite, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion);
    
    @androidx.room.Insert()
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object insertBookmark(@org.jetbrains.annotations.NotNull()
    com.example.mrcomic.data.BookmarkEntity bookmark, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.lang.Long> $completion);
    
    @androidx.room.Delete()
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object deleteBookmark(@org.jetbrains.annotations.NotNull()
    com.example.mrcomic.data.BookmarkEntity bookmark, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion);
    
    @androidx.room.Query(value = "SELECT * FROM bookmarks WHERE comicId = :comicId ORDER BY page ASC")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object getBookmarksForComic(long comicId, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.util.List<com.example.mrcomic.data.BookmarkEntity>> $completion);
    
    @androidx.room.Query(value = "UPDATE comics SET lastOpened = :timestamp WHERE id = :comicId")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object updateLastOpened(long comicId, long timestamp, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion);
    
    @androidx.room.Query(value = "SELECT * FROM comics WHERE lastOpened > 0 ORDER BY lastOpened DESC LIMIT :limit")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object getRecentComics(int limit, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.util.List<com.example.mrcomic.data.ComicEntity>> $completion);
    
    @androidx.room.Query(value = "UPDATE comics SET readingTime = readingTime + :delta WHERE id = :comicId")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object addReadingTime(long comicId, long delta, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion);
    
    @kotlin.Metadata(mv = {1, 9, 0}, k = 3, xi = 48)
    public static final class DefaultImpls {
    }
}