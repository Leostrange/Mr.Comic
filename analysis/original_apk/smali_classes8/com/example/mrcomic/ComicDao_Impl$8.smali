.class Lcom/example/mrcomic/ComicDao_Impl$8;
.super Ljava/lang/Object;
.source "ComicDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mrcomic/ComicDao_Impl;->getComicById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/example/mrcomic/Comic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/mrcomic/ComicDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/example/mrcomic/ComicDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/mrcomic/ComicDao_Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_statement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lcom/example/mrcomic/ComicDao_Impl$8;->this$0:Lcom/example/mrcomic/ComicDao_Impl;

    iput-object p2, p0, Lcom/example/mrcomic/ComicDao_Impl$8;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/example/mrcomic/Comic;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 230
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/example/mrcomic/ComicDao_Impl$8;->this$0:Lcom/example/mrcomic/ComicDao_Impl;

    invoke-static {v0}, Lcom/example/mrcomic/ComicDao_Impl;->-$$Nest$fget__db(Lcom/example/mrcomic/ComicDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lcom/example/mrcomic/ComicDao_Impl$8;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 232
    .local v2, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 233
    .local v0, "_cursorIndexOfId":I
    const-string v3, "name"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 234
    .local v3, "_cursorIndexOfName":I
    const-string v4, "path"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 235
    .local v4, "_cursorIndexOfPath":I
    const-string v5, "type"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 236
    .local v5, "_cursorIndexOfType":I
    const-string v6, "dateAdded"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 237
    .local v6, "_cursorIndexOfDateAdded":I
    const-string v7, "lastReadPage"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 238
    .local v7, "_cursorIndexOfLastReadPage":I
    const-string v8, "totalPages"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 239
    .local v8, "_cursorIndexOfTotalPages":I
    const-string v9, "coverImagePath"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 241
    .local v9, "_cursorIndexOfCoverImagePath":I
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 243
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 245
    .local v12, "_tmpId":J
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 247
    .local v14, "_tmpName":Ljava/lang/String;
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 249
    .local v15, "_tmpPath":Ljava/lang/String;
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 251
    .local v16, "_tmpType":Ljava/lang/String;
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 253
    .local v17, "_tmpDateAdded":J
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 255
    .local v19, "_tmpLastReadPage":I
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 257
    .local v20, "_tmpTotalPages":I
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 258
    const/4 v10, 0x0

    .local v10, "_tmpCoverImagePath":Ljava/lang/String;
    goto :goto_0

    .line 260
    .end local v10    # "_tmpCoverImagePath":Ljava/lang/String;
    :cond_0
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 262
    .restart local v10    # "_tmpCoverImagePath":Ljava/lang/String;
    :goto_0
    new-instance v22, Lcom/example/mrcomic/Comic;

    move-object/from16 v11, v22

    move-object/from16 v21, v10

    invoke-direct/range {v11 .. v21}, Lcom/example/mrcomic/Comic;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v10, v22

    .line 263
    .end local v12    # "_tmpId":J
    .end local v14    # "_tmpName":Ljava/lang/String;
    .end local v15    # "_tmpPath":Ljava/lang/String;
    .end local v16    # "_tmpType":Ljava/lang/String;
    .end local v17    # "_tmpDateAdded":J
    .end local v19    # "_tmpLastReadPage":I
    .end local v20    # "_tmpTotalPages":I
    .local v10, "_result":Lcom/example/mrcomic/Comic;
    goto :goto_1

    .line 264
    .end local v10    # "_result":Lcom/example/mrcomic/Comic;
    :cond_1
    const/4 v10, 0x0

    .line 266
    .restart local v10    # "_result":Lcom/example/mrcomic/Comic;
    :goto_1
    nop

    .line 268
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 269
    iget-object v11, v1, Lcom/example/mrcomic/ComicDao_Impl$8;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v11}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 266
    return-object v10

    .line 268
    .end local v0    # "_cursorIndexOfId":I
    .end local v3    # "_cursorIndexOfName":I
    .end local v4    # "_cursorIndexOfPath":I
    .end local v5    # "_cursorIndexOfType":I
    .end local v6    # "_cursorIndexOfDateAdded":I
    .end local v7    # "_cursorIndexOfLastReadPage":I
    .end local v8    # "_cursorIndexOfTotalPages":I
    .end local v9    # "_cursorIndexOfCoverImagePath":I
    .end local v10    # "_result":Lcom/example/mrcomic/Comic;
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 269
    iget-object v3, v1, Lcom/example/mrcomic/ComicDao_Impl$8;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 270
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/example/mrcomic/ComicDao_Impl$8;->call()Lcom/example/mrcomic/Comic;

    move-result-object v0

    return-object v0
.end method
