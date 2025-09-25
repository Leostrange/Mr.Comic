.class public final Lcom/example/mrcomic/MainActivityKt$LibraryScreen$lambda$26$lambda$25$$inlined$items$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyGridDsl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mrcomic/MainActivityKt;->LibraryScreen(Landroidx/navigation/NavController;Lcom/example/mrcomic/ComicViewModel;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0001\n\u0002\u0008\u0005\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "it",
        "invoke",
        "(Ljava/lang/Object;)Ljava/lang/Void;",
        "androidx/compose/foundation/lazy/grid/LazyGridDslKt$items$1"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/example/mrcomic/MainActivityKt$LibraryScreen$lambda$26$lambda$25$$inlined$items$default$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$lambda$26$lambda$25$$inlined$items$default$1;

    invoke-direct {v0}, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$lambda$26$lambda$25$$inlined$items$default$1;-><init>()V

    sput-object v0, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$lambda$26$lambda$25$$inlined$items$default$1;->INSTANCE:Lcom/example/mrcomic/MainActivityKt$LibraryScreen$lambda$26$lambda$25$$inlined$items$default$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 454
    invoke-virtual {p0, p1}, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$lambda$26$lambda$25$$inlined$items$default$1;->invoke(Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .param p1, "it"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/mrcomic/Comic;",
            ")",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 454
    const/4 v0, 0x0

    return-object v0
.end method
