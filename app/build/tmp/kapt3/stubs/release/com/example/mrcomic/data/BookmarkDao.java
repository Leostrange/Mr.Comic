package com.example.mrcomic.data;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u00a7@\u00a2\u0006\u0002\u0010\u0006J\u0016\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH\u00a7@\u00a2\u0006\u0002\u0010\nJ \u0010\u000b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\rH\u00a7@\u00a2\u0006\u0002\u0010\u000eJ\u001c\u0010\u000f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u00110\u00102\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0016\u0010\u0012\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH\u00a7@\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u0013"}, d2 = {"Lcom/example/mrcomic/data/BookmarkDao;", "", "deleteAllBookmarksForComic", "", "comicId", "", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteBookmark", "bookmark", "Lcom/example/mrcomic/data/BookmarkEntity;", "(Lcom/example/mrcomic/data/BookmarkEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getBookmarkAtPage", "page", "", "(JILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getBookmarksForComic", "Lkotlinx/coroutines/flow/Flow;", "", "insertBookmark", "app_release"})
@androidx.room.Dao()
public abstract interface BookmarkDao {
    
    @androidx.room.Query(value = "SELECT * FROM bookmarks WHERE comicId = :comicId ORDER BY page ASC")
    @org.jetbrains.annotations.NotNull()
    public abstract kotlinx.coroutines.flow.Flow<java.util.List<com.example.mrcomic.data.BookmarkEntity>> getBookmarksForComic(long comicId);
    
    @androidx.room.Insert(onConflict = 1)
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object insertBookmark(@org.jetbrains.annotations.NotNull()
    com.example.mrcomic.data.BookmarkEntity bookmark, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.lang.Long> $completion);
    
    @androidx.room.Delete()
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object deleteBookmark(@org.jetbrains.annotations.NotNull()
    com.example.mrcomic.data.BookmarkEntity bookmark, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion);
    
    @androidx.room.Query(value = "DELETE FROM bookmarks WHERE comicId = :comicId")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object deleteAllBookmarksForComic(long comicId, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion);
    
    @androidx.room.Query(value = "SELECT * FROM bookmarks WHERE comicId = :comicId AND page = :page LIMIT 1")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object getBookmarkAtPage(long comicId, int page, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super com.example.mrcomic.data.BookmarkEntity> $completion);
}