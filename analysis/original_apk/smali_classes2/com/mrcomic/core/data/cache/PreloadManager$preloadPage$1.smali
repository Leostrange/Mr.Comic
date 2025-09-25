.class final Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "PreloadManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrcomic/core/data/cache/PreloadManager;->preloadPage(Ljava/lang/String;ILcom/mrcomic/core/data/cache/PageLoader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.mrcomic.core.data.cache.PreloadManager"
    f = "PreloadManager.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2
    }
    l = {
        0xd8,
        0xe1,
        0xe5
    }
    m = "preloadPage"
    n = {
        "this",
        "loader",
        "pageKey",
        "pageIndex",
        "this",
        "pageKey",
        "pageIndex",
        "this",
        "pageKey",
        "pageIndex"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "L$0",
        "L$1",
        "I$0",
        "L$0",
        "L$1",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/mrcomic/core/data/cache/PreloadManager;


# direct methods
.method constructor <init>(Lcom/mrcomic/core/data/cache/PreloadManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mrcomic/core/data/cache/PreloadManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->this$0:Lcom/mrcomic/core/data/cache/PreloadManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iput-object p1, p0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->result:Ljava/lang/Object;

    iget v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->label:I

    iget-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->this$0:Lcom/mrcomic/core/data/cache/PreloadManager;

    const/4 v1, 0x0

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Lcom/mrcomic/core/data/cache/PreloadManager;->access$preloadPage(Lcom/mrcomic/core/data/cache/PreloadManager;Ljava/lang/String;ILcom/mrcomic/core/data/cache/PageLoader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
