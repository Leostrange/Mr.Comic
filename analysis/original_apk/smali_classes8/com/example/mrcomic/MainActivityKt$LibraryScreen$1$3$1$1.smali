.class final Lcom/example/mrcomic/MainActivityKt$LibraryScreen$1$3$1$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mrcomic/MainActivityKt;->LibraryScreen(Landroidx/navigation/NavController;Lcom/example/mrcomic/ComicViewModel;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $comic:Lcom/example/mrcomic/Comic;

.field final synthetic $navController:Landroidx/navigation/NavController;


# direct methods
.method constructor <init>(Landroidx/navigation/NavController;Lcom/example/mrcomic/Comic;)V
    .locals 0

    iput-object p1, p0, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$1$3$1$1;->$navController:Landroidx/navigation/NavController;

    iput-object p2, p0, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$1$3$1$1;->$comic:Lcom/example/mrcomic/Comic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 588
    invoke-virtual {p0}, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$1$3$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .line 594
    iget-object v0, p0, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$1$3$1$1;->$navController:Landroidx/navigation/NavController;

    iget-object v1, p0, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$1$3$1$1;->$comic:Lcom/example/mrcomic/Comic;

    invoke-virtual {v1}, Lcom/example/mrcomic/Comic;->getId()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reader/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->navigate$default(Landroidx/navigation/NavController;Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    .line 595
    return-void
.end method
