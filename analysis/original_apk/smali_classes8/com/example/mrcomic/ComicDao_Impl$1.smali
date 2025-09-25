.class Lcom/example/mrcomic/ComicDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
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
        "Landroidx/room/EntityInsertionAdapter<",
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

    .line 44
    iput-object p1, p0, Lcom/example/mrcomic/ComicDao_Impl$1;->this$0:Lcom/example/mrcomic/ComicDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

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

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/example/mrcomic/Comic;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 55
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/example/mrcomic/Comic;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 56
    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/example/mrcomic/Comic;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 57
    const/4 v0, 0x4

    invoke-virtual {p2}, Lcom/example/mrcomic/Comic;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 58
    const/4 v0, 0x5

    invoke-virtual {p2}, Lcom/example/mrcomic/Comic;->getDateAdded()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 59
    invoke-virtual {p2}, Lcom/example/mrcomic/Comic;->getLastReadPage()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 60
    invoke-virtual {p2}, Lcom/example/mrcomic/Comic;->getTotalPages()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 61
    invoke-virtual {p2}, Lcom/example/mrcomic/Comic;->getCoverImagePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 62
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p2}, Lcom/example/mrcomic/Comic;->getCoverImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 66
    :goto_0
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

    .line 44
    check-cast p2, Lcom/example/mrcomic/Comic;

    invoke-virtual {p0, p1, p2}, Lcom/example/mrcomic/ComicDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/example/mrcomic/Comic;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "INSERT OR ABORT INTO `comics` (`id`,`name`,`path`,`type`,`dateAdded`,`lastReadPage`,`totalPages`,`coverImagePath`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)"

    return-object v0
.end method
