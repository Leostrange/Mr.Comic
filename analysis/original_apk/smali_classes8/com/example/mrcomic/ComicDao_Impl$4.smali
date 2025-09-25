.class Lcom/example/mrcomic/ComicDao_Impl$4;
.super Ljava/lang/Object;
.source "ComicDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mrcomic/ComicDao_Impl;->insertComic(Lcom/example/mrcomic/Comic;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/mrcomic/ComicDao_Impl;

.field final synthetic val$comic:Lcom/example/mrcomic/Comic;


# direct methods
.method constructor <init>(Lcom/example/mrcomic/ComicDao_Impl;Lcom/example/mrcomic/Comic;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/mrcomic/ComicDao_Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$comic"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/example/mrcomic/ComicDao_Impl$4;->this$0:Lcom/example/mrcomic/ComicDao_Impl;

    iput-object p2, p0, Lcom/example/mrcomic/ComicDao_Impl$4;->val$comic:Lcom/example/mrcomic/Comic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/example/mrcomic/ComicDao_Impl$4;->this$0:Lcom/example/mrcomic/ComicDao_Impl;

    invoke-static {v0}, Lcom/example/mrcomic/ComicDao_Impl;->-$$Nest$fget__db(Lcom/example/mrcomic/ComicDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/example/mrcomic/ComicDao_Impl$4;->this$0:Lcom/example/mrcomic/ComicDao_Impl;

    invoke-static {v0}, Lcom/example/mrcomic/ComicDao_Impl;->-$$Nest$fget__insertionAdapterOfComic(Lcom/example/mrcomic/ComicDao_Impl;)Landroidx/room/EntityInsertionAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/example/mrcomic/ComicDao_Impl$4;->val$comic:Lcom/example/mrcomic/Comic;

    invoke-virtual {v0, v1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 117
    .local v0, "_result":Ljava/lang/Long;
    iget-object v1, p0, Lcom/example/mrcomic/ComicDao_Impl$4;->this$0:Lcom/example/mrcomic/ComicDao_Impl;

    invoke-static {v1}, Lcom/example/mrcomic/ComicDao_Impl;->-$$Nest$fget__db(Lcom/example/mrcomic/ComicDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    nop

    .line 120
    iget-object v1, p0, Lcom/example/mrcomic/ComicDao_Impl$4;->this$0:Lcom/example/mrcomic/ComicDao_Impl;

    invoke-static {v1}, Lcom/example/mrcomic/ComicDao_Impl;->-$$Nest$fget__db(Lcom/example/mrcomic/ComicDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 118
    return-object v0

    .line 120
    .end local v0    # "_result":Ljava/lang/Long;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/example/mrcomic/ComicDao_Impl$4;->this$0:Lcom/example/mrcomic/ComicDao_Impl;

    invoke-static {v1}, Lcom/example/mrcomic/ComicDao_Impl;->-$$Nest$fget__db(Lcom/example/mrcomic/ComicDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 121
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lcom/example/mrcomic/ComicDao_Impl$4;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
