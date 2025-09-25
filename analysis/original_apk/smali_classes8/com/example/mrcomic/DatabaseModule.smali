.class public final Lcom/example/mrcomic/DatabaseModule;
.super Ljava/lang/Object;
.source "MainActivity.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0003\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005H\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/example/mrcomic/DatabaseModule;",
        "",
        "<init>",
        "()V",
        "provideComicDatabase",
        "Lcom/example/mrcomic/ComicDatabase;",
        "context",
        "Landroid/content/Context;",
        "provideComicDao",
        "Lcom/example/mrcomic/ComicDao;",
        "database",
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

.field public static final INSTANCE:Lcom/example/mrcomic/DatabaseModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/example/mrcomic/DatabaseModule;

    invoke-direct {v0}, Lcom/example/mrcomic/DatabaseModule;-><init>()V

    sput-object v0, Lcom/example/mrcomic/DatabaseModule;->INSTANCE:Lcom/example/mrcomic/DatabaseModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideComicDao(Lcom/example/mrcomic/ComicDatabase;)Lcom/example/mrcomic/ComicDao;
    .locals 1
    .param p1, "database"    # Lcom/example/mrcomic/ComicDatabase;
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1}, Lcom/example/mrcomic/ComicDatabase;->comicDao()Lcom/example/mrcomic/ComicDao;

    move-result-object v0

    return-object v0
.end method

.method public final provideComicDatabase(Landroid/content/Context;)Lcom/example/mrcomic/ComicDatabase;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    nop

    .line 277
    const-class v0, Lcom/example/mrcomic/ComicDatabase;

    .line 278
    nop

    .line 275
    const-string v1, "comic_database"

    invoke-static {p1, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v0

    check-cast v0, Lcom/example/mrcomic/ComicDatabase;

    .line 275
    return-object v0
.end method
