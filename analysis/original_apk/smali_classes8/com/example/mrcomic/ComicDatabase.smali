.class public abstract Lcom/example/mrcomic/ComicDatabase;
.super Landroidx/room/RoomDatabase;
.source "MainActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\'\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/example/mrcomic/ComicDatabase;",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "()V",
        "comicDao",
        "Lcom/example/mrcomic/ComicDao;",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 263
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    .line 258
    return-void
.end method


# virtual methods
.method public abstract comicDao()Lcom/example/mrcomic/ComicDao;
.end method
