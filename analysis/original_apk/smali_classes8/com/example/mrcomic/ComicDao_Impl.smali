.class public final Lcom/example/mrcomic/ComicDao_Impl;
.super Ljava/lang/Object;
.source "ComicDao_Impl.java"

# interfaces
.implements Lcom/example/mrcomic/ComicDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfComic:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/example/mrcomic/Comic;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfComic:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/example/mrcomic/Comic;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfComic:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/example/mrcomic/Comic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fget__db(Lcom/example/mrcomic/ComicDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lcom/example/mrcomic/ComicDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__deletionAdapterOfComic(Lcom/example/mrcomic/ComicDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    iget-object p0, p0, Lcom/example/mrcomic/ComicDao_Impl;->__deletionAdapterOfComic:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__insertionAdapterOfComic(Lcom/example/mrcomic/ComicDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/example/mrcomic/ComicDao_Impl;->__insertionAdapterOfComic:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__updateAdapterOfComic(Lcom/example/mrcomic/ComicDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    iget-object p0, p0, Lcom/example/mrcomic/ComicDao_Impl;->__updateAdapterOfComic:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroidx/room/RoomDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "__db"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/example/mrcomic/ComicDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 44
    new-instance v0, Lcom/example/mrcomic/ComicDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/example/mrcomic/ComicDao_Impl$1;-><init>(Lcom/example/mrcomic/ComicDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/example/mrcomic/ComicDao_Impl;->__insertionAdapterOfComic:Landroidx/room/EntityInsertionAdapter;

    .line 68
    new-instance v0, Lcom/example/mrcomic/ComicDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/example/mrcomic/ComicDao_Impl$2;-><init>(Lcom/example/mrcomic/ComicDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/example/mrcomic/ComicDao_Impl;->__deletionAdapterOfComic:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 81
    new-instance v0, Lcom/example/mrcomic/ComicDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/example/mrcomic/ComicDao_Impl$3;-><init>(Lcom/example/mrcomic/ComicDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/example/mrcomic/ComicDao_Impl;->__updateAdapterOfComic:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 106
    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 277
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteComic(Lcom/example/mrcomic/Comic;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "comic"    # Lcom/example/mrcomic/Comic;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "comic",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/mrcomic/Comic;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 128
    .local p2, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lkotlin/Unit;>;"
    iget-object v0, p0, Lcom/example/mrcomic/ComicDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/example/mrcomic/ComicDao_Impl$5;

    invoke-direct {v1, p0, p1}, Lcom/example/mrcomic/ComicDao_Impl$5;-><init>(Lcom/example/mrcomic/ComicDao_Impl;Lcom/example/mrcomic/Comic;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAllComics()Lkotlinx/coroutines/flow/Flow;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/Comic;",
            ">;>;"
        }
    .end annotation

    .line 164
    const-string v0, "SELECT * FROM comics ORDER BY dateAdded DESC"

    .line 165
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM comics ORDER BY dateAdded DESC"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 166
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Lcom/example/mrcomic/ComicDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v4, "comics"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/example/mrcomic/ComicDao_Impl$7;

    invoke-direct {v5, p0, v1}, Lcom/example/mrcomic/ComicDao_Impl$7;-><init>(Lcom/example/mrcomic/ComicDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v3, v2, v4, v5}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    return-object v2
.end method

.method public getComicById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/example/mrcomic/Comic;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 221
    .local p3, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lcom/example/mrcomic/Comic;>;"
    const-string v0, "SELECT * FROM comics WHERE id = ?"

    .line 222
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM comics WHERE id = ?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 223
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 224
    .local v2, "_argIndex":I
    invoke-virtual {v1, v2, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 225
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v3

    .line 226
    .local v3, "_cancellationSignal":Landroid/os/CancellationSignal;
    iget-object v4, p0, Lcom/example/mrcomic/ComicDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v5, Lcom/example/mrcomic/ComicDao_Impl$8;

    invoke-direct {v5, p0, v1}, Lcom/example/mrcomic/ComicDao_Impl$8;-><init>(Lcom/example/mrcomic/ComicDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v5, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public insertComic(Lcom/example/mrcomic/Comic;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "comic"    # Lcom/example/mrcomic/Comic;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "comic",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/mrcomic/Comic;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 110
    .local p2, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/example/mrcomic/ComicDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/example/mrcomic/ComicDao_Impl$4;

    invoke-direct {v1, p0, p1}, Lcom/example/mrcomic/ComicDao_Impl$4;-><init>(Lcom/example/mrcomic/ComicDao_Impl;Lcom/example/mrcomic/Comic;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public updateComic(Lcom/example/mrcomic/Comic;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "comic"    # Lcom/example/mrcomic/Comic;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "comic",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/mrcomic/Comic;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 146
    .local p2, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lkotlin/Unit;>;"
    iget-object v0, p0, Lcom/example/mrcomic/ComicDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/example/mrcomic/ComicDao_Impl$6;

    invoke-direct {v1, p0, p1}, Lcom/example/mrcomic/ComicDao_Impl$6;-><init>(Lcom/example/mrcomic/ComicDao_Impl;Lcom/example/mrcomic/Comic;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
