.class final Lcom/example/mrcomic/ComicArchiveReader$preloadPages$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ComicArchiveReader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mrcomic/ComicArchiveReader;->preloadPages(Landroid/net/Uri;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.example.mrcomic.ComicArchiveReader"
    f = "ComicArchiveReader.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x175,
        0x177
    }
    m = "preloadPages"
    n = {
        "this",
        "currentPage"
    }
    s = {
        "L$0",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/example/mrcomic/ComicArchiveReader;


# direct methods
.method constructor <init>(Lcom/example/mrcomic/ComicArchiveReader;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/mrcomic/ComicArchiveReader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/example/mrcomic/ComicArchiveReader$preloadPages$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/mrcomic/ComicArchiveReader$preloadPages$1;->this$0:Lcom/example/mrcomic/ComicArchiveReader;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lcom/example/mrcomic/ComicArchiveReader$preloadPages$1;->result:Ljava/lang/Object;

    iget v0, p0, Lcom/example/mrcomic/ComicArchiveReader$preloadPages$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/example/mrcomic/ComicArchiveReader$preloadPages$1;->label:I

    iget-object v1, p0, Lcom/example/mrcomic/ComicArchiveReader$preloadPages$1;->this$0:Lcom/example/mrcomic/ComicArchiveReader;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-virtual/range {v1 .. v6}, Lcom/example/mrcomic/ComicArchiveReader;->preloadPages(Landroid/net/Uri;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
