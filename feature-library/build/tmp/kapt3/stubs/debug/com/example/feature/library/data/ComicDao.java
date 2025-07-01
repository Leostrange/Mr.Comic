package com.example.feature.library.data;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u00a7@\u00a2\u0006\u0002\u0010\u0006J\u0014\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\bH\'J\u0016\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\nH\u00a7@\u00a2\u0006\u0002\u0010\rJ\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u00a7@\u00a2\u0006\u0002\u0010\u0011J\u001e\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0014H\u00a7@\u00a2\u0006\u0002\u0010\u0015\u00a8\u0006\u0016"}, d2 = {"Lcom/example/feature/library/data/ComicDao;", "", "deleteComicById", "", "id", "", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAllComics", "Lkotlinx/coroutines/flow/Flow;", "", "Lcom/example/feature/library/data/ComicEntity;", "insertComic", "comic", "(Lcom/example/feature/library/data/ComicEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "searchComics", "query", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateFavorite", "isFavorite", "", "(JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "feature-library_debug"})
@androidx.room.Dao()
public abstract interface ComicDao {
    
    @androidx.room.Query(value = "SELECT * FROM comics")
    @org.jetbrains.annotations.NotNull()
    public abstract kotlinx.coroutines.flow.Flow<java.util.List<com.example.feature.library.data.ComicEntity>> getAllComics();
    
    @androidx.room.Insert(onConflict = 1)
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object insertComic(@org.jetbrains.annotations.NotNull()
    com.example.feature.library.data.ComicEntity comic, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion);
    
    @androidx.room.Query(value = "DELETE FROM comics WHERE id = :id")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object deleteComicById(long id, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion);
    
    @androidx.room.Query(value = "SELECT * FROM comics WHERE title LIKE :query OR author LIKE :query")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object searchComics(@org.jetbrains.annotations.NotNull()
    java.lang.String query, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.util.List<com.example.feature.library.data.ComicEntity>> $completion);
    
    @androidx.room.Query(value = "UPDATE comics SET isFavorite = :isFavorite WHERE id = :id")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object updateFavorite(long id, boolean isFavorite, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion);
}