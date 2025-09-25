.class Lcom/example/mrcomic/ComicDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "ComicDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mrcomic/ComicDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/example/mrcomic/Comic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/mrcomic/ComicDao_Impl;


# direct methods
.method constructor <init>(Lcom/example/mrcomic/ComicDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/mrcomic/ComicDao_Impl;
    .param p2, "database"    # Landroidx/room/RoomDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/example/mrcomic/ComicDao_Impl$2;->this$0:Lcom/example/mrcomic/ComicDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/example/mrcomic/Comic;)V
    .locals 3
    .param p1, "statement"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "entity"    # Lcom/example/mrcomic/Comic;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "statement",
            "entity"
        }
    .end annotation

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/example/mrcomic/Comic;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 79
    return-void
.end method

.method protected bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "statement",
            "entity"
        }
    .end annotation

    .line 68
    check-cast p2, Lcom/example/mrcomic/Comic;

    invoke-virtual {p0, p1, p2}, Lcom/example/mrcomic/ComicDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/example/mrcomic/Comic;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 72
    const-string v0, "DELETE FROM `comics` WHERE `id` = ?"

    return-object v0
.end method
