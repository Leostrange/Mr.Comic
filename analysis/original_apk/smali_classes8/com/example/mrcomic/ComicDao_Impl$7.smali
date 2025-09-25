.class Lcom/example/mrcomic/ComicDao_Impl$7;
.super Ljava/lang/Object;
.source "ComicDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mrcomic/ComicDao_Impl;->getAllComics()Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/example/mrcomic/Comic;",
        ">;>;"
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

    .line 166
    iput-object p1, p0, Lcom/example/mrcomic/ComicDao_Impl$7;->this$0:Lcom/example/mrcomic/ComicDao_Impl;

    iput-object p2, p0, Lcom/example/mrcomic/ComicDao_Impl$7;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lcom/example/mrcomic/ComicDao_Impl$7;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/Comic;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 170
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/example/mrcomic/ComicDao_Impl$7;->this$0:Lcom/example/mrcomic/ComicDao_Impl;

    invoke-static {v0}, Lcom/example/mrcomic/ComicDao_Impl;->-$$Nest$fget__db(Lcom/example/mrcomic/ComicDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lcom/example/mrcomic/ComicDao_Impl$7;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 172
    .local v2, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 173
    .local v0, "_cursorIndexOfId":I
    const-string v3, "name"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 174
    .local v3, "_cursorIndexOfName":I
    const-string v4, "path"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 175
    .local v4, "_cursorIndexOfPath":I
    const-string v5, "type"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 176
    .local v5, "_cursorIndexOfType":I
    const-string v6, "dateAdded"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 177
    .local v6, "_cursorIndexOfDateAdded":I
    const-string v7, "lastReadPage"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 178
    .local v7, "_cursorIndexOfLastReadPage":I
    const-string v8, "totalPages"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 179
    .local v8, "_cursorIndexOfTotalPages":I
    const-string v9, "coverImagePath"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 180
    .local v9, "_cursorIndexOfCoverImagePath":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    .local v10, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/example/mrcomic/Comic;>;"
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 184
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 186
    .local v13, "_tmpId":J
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 188
    .local v15, "_tmpName":Ljava/lang/String;
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 190
    .local v16, "_tmpPath":Ljava/lang/String;
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 192
    .local v17, "_tmpType":Ljava/lang/String;
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 194
    .local v18, "_tmpDateAdded":J
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 196
    .local v20, "_tmpLastReadPage":I
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 198
    .local v21, "_tmpTotalPages":I
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 199
    const/4 v11, 0x0

    .local v11, "_tmpCoverImagePath":Ljava/lang/String;
    goto :goto_1

    .line 201
    .end local v11    # "_tmpCoverImagePath":Ljava/lang/String;
    :cond_0
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 203
    .restart local v11    # "_tmpCoverImagePath":Ljava/lang/String;
    :goto_1
    new-instance v23, Lcom/example/mrcomic/Comic;

    move-object/from16 v12, v23

    move-object/from16 v22, v11

    invoke-direct/range {v12 .. v22}, Lcom/example/mrcomic/Comic;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;)V

    move-object/from16 v12, v23

    .line 204
    .local v12, "_item":Lcom/example/mrcomic/Comic;
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    nop

    .end local v11    # "_tmpCoverImagePath":Ljava/lang/String;
    .end local v12    # "_item":Lcom/example/mrcomic/Comic;
    .end local v13    # "_tmpId":J
    .end local v15    # "_tmpName":Ljava/lang/String;
    .end local v16    # "_tmpPath":Ljava/lang/String;
    .end local v17    # "_tmpType":Ljava/lang/String;
    .end local v18    # "_tmpDateAdded":J
    .end local v20    # "_tmpLastReadPage":I
    .end local v21    # "_tmpTotalPages":I
    goto :goto_0

    .line 206
    :cond_1
    nop

    .line 208
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 206
    return-object v10

    .line 208
    .end local v0    # "_cursorIndexOfId":I
    .end local v3    # "_cursorIndexOfName":I
    .end local v4    # "_cursorIndexOfPath":I
    .end local v5    # "_cursorIndexOfType":I
    .end local v6    # "_cursorIndexOfDateAdded":I
    .end local v7    # "_cursorIndexOfLastReadPage":I
    .end local v8    # "_cursorIndexOfTotalPages":I
    .end local v9    # "_cursorIndexOfCoverImagePath":I
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/example/mrcomic/Comic;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 209
    throw v0
.end method

.method protected finalize()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/example/mrcomic/ComicDao_Impl$7;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 215
    return-void
.end method
