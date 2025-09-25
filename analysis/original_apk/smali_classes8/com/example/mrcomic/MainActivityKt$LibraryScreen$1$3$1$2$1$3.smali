.class final Lcom/example/mrcomic/MainActivityKt$LibraryScreen$1$3$1$2$1$3;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mrcomic/MainActivityKt$LibraryScreen$1$3$1$2;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
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

.field final synthetic $viewModel:Lcom/example/mrcomic/ComicViewModel;


# direct methods
.method constructor <init>(Lcom/example/mrcomic/ComicViewModel;Lcom/example/mrcomic/Comic;)V
    .locals 0

    iput-object p1, p0, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$1$3$1$2$1$3;->$viewModel:Lcom/example/mrcomic/ComicViewModel;

    iput-object p2, p0, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$1$3$1$2$1$3;->$comic:Lcom/example/mrcomic/Comic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 668
    invoke-virtual {p0}, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$1$3$1$2$1$3;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 670
    iget-object v0, p0, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$1$3$1$2$1$3;->$viewModel:Lcom/example/mrcomic/ComicViewModel;

    iget-object v1, p0, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$1$3$1$2$1$3;->$comic:Lcom/example/mrcomic/Comic;

    invoke-virtual {v0, v1}, Lcom/example/mrcomic/ComicViewModel;->deleteComic(Lcom/example/mrcomic/Comic;)V

    .line 671
    return-void
.end method
