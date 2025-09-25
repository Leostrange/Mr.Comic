.class public final Lcom/example/mrcomic/ComicViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "MainActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u001eJ \u0010!\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\"\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020$H\u0082@\u00a2\u0006\u0002\u0010%J\u000e\u0010&\u001a\u00020\u001c2\u0006\u0010\'\u001a\u00020\u0012J\u0016\u0010(\u001a\u00020\u001c2\u0006\u0010\'\u001a\u00020\u00122\u0006\u0010)\u001a\u00020*J\u001c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020,0\u00112\u0006\u0010\'\u001a\u00020\u0012H\u0086@\u00a2\u0006\u0002\u0010-J \u0010.\u001a\u0004\u0018\u00010$2\u0006\u0010\'\u001a\u00020\u00122\u0006\u0010/\u001a\u00020*H\u0086@\u00a2\u0006\u0002\u00100J\u0016\u00101\u001a\u00020\u001c2\u0006\u0010\'\u001a\u00020\u00122\u0006\u0010)\u001a\u00020*J\u000e\u00102\u001a\u00020\u001c2\u0006\u00103\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001d\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00110\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u0015\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u00064"
    }
    d2 = {
        "Lcom/example/mrcomic/ComicViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "comicDao",
        "Lcom/example/mrcomic/ComicDao;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Lcom/example/mrcomic/ComicDao;Landroid/content/Context;)V",
        "_sortOrder",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/example/mrcomic/SortOrder;",
        "sortOrder",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getSortOrder",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "comics",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "Lcom/example/mrcomic/Comic;",
        "getComics",
        "()Lkotlinx/coroutines/flow/Flow;",
        "archiveReader",
        "Lcom/example/mrcomic/ComicArchiveReader;",
        "getArchiveReader",
        "()Lcom/example/mrcomic/ComicArchiveReader;",
        "archiveReader$delegate",
        "Lkotlin/Lazy;",
        "addComic",
        "",
        "name",
        "",
        "path",
        "type",
        "saveCoverToCache",
        "comicName",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "(Ljava/lang/String;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteComic",
        "comic",
        "updateComicProgress",
        "currentPage",
        "",
        "getComicPages",
        "Lcom/example/mrcomic/ComicArchiveReader$ComicPage;",
        "(Lcom/example/mrcomic/Comic;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "loadComicPage",
        "pageNumber",
        "(Lcom/example/mrcomic/Comic;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "preloadComicPages",
        "setSortOrder",
        "order",
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


# instance fields
.field private final _sortOrder:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/example/mrcomic/SortOrder;",
            ">;"
        }
    .end annotation
.end field

.field private final archiveReader$delegate:Lkotlin/Lazy;

.field private final comicDao:Lcom/example/mrcomic/ComicDao;

.field private final comics:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/Comic;",
            ">;>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final sortOrder:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/example/mrcomic/SortOrder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$tyciPX09bKdvQlQi2rN2uFK_5N0(Lcom/example/mrcomic/ComicViewModel;)Lcom/example/mrcomic/ComicArchiveReader;
    .locals 0

    invoke-static {p0}, Lcom/example/mrcomic/ComicViewModel;->archiveReader_delegate$lambda$0(Lcom/example/mrcomic/ComicViewModel;)Lcom/example/mrcomic/ComicArchiveReader;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/example/mrcomic/ComicViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/example/mrcomic/ComicDao;Landroid/content/Context;)V
    .locals 4
    .param p1, "comicDao"    # Lcom/example/mrcomic/ComicDao;
    .param p2, "context"    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "comicDao"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 293
    iput-object p1, p0, Lcom/example/mrcomic/ComicViewModel;->comicDao:Lcom/example/mrcomic/ComicDao;

    .line 294
    iput-object p2, p0, Lcom/example/mrcomic/ComicViewModel;->context:Landroid/content/Context;

    .line 297
    sget-object v0, Lcom/example/mrcomic/SortOrder;->DATE_ADDED:Lcom/example/mrcomic/SortOrder;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/example/mrcomic/ComicViewModel;->_sortOrder:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 298
    iget-object v0, p0, Lcom/example/mrcomic/ComicViewModel;->_sortOrder:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/example/mrcomic/ComicViewModel;->sortOrder:Lkotlinx/coroutines/flow/StateFlow;

    .line 300
    iget-object v0, p0, Lcom/example/mrcomic/ComicViewModel;->comicDao:Lcom/example/mrcomic/ComicDao;

    invoke-interface {v0}, Lcom/example/mrcomic/ComicDao;->getAllComics()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iget-object v1, p0, Lcom/example/mrcomic/ComicViewModel;->sortOrder:Lkotlinx/coroutines/flow/StateFlow;

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    new-instance v2, Lcom/example/mrcomic/ComicViewModel$comics$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/example/mrcomic/ComicViewModel$comics$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v0, p0, Lcom/example/mrcomic/ComicViewModel;->comics:Lkotlinx/coroutines/flow/Flow;

    .line 309
    new-instance v0, Lcom/example/mrcomic/ComicViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/example/mrcomic/ComicViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/example/mrcomic/ComicViewModel;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/example/mrcomic/ComicViewModel;->archiveReader$delegate:Lkotlin/Lazy;

    .line 292
    return-void
.end method

.method public static final synthetic access$getArchiveReader(Lcom/example/mrcomic/ComicViewModel;)Lcom/example/mrcomic/ComicArchiveReader;
    .locals 1
    .param p0, "$this"    # Lcom/example/mrcomic/ComicViewModel;

    .line 291
    invoke-direct {p0}, Lcom/example/mrcomic/ComicViewModel;->getArchiveReader()Lcom/example/mrcomic/ComicArchiveReader;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getComicDao$p(Lcom/example/mrcomic/ComicViewModel;)Lcom/example/mrcomic/ComicDao;
    .locals 1
    .param p0, "$this"    # Lcom/example/mrcomic/ComicViewModel;

    .line 291
    iget-object v0, p0, Lcom/example/mrcomic/ComicViewModel;->comicDao:Lcom/example/mrcomic/ComicDao;

    return-object v0
.end method

.method public static final synthetic access$saveCoverToCache(Lcom/example/mrcomic/ComicViewModel;Ljava/lang/String;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/example/mrcomic/ComicViewModel;
    .param p1, "comicName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 291
    invoke-direct {p0, p1, p2, p3}, Lcom/example/mrcomic/ComicViewModel;->saveCoverToCache(Ljava/lang/String;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final archiveReader_delegate$lambda$0(Lcom/example/mrcomic/ComicViewModel;)Lcom/example/mrcomic/ComicArchiveReader;
    .locals 7
    .param p0, "this$0"    # Lcom/example/mrcomic/ComicViewModel;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    new-instance v0, Lcom/example/mrcomic/ComicArchiveReader;

    .line 311
    iget-object v1, p0, Lcom/example/mrcomic/ComicViewModel;->context:Landroid/content/Context;

    .line 312
    new-instance v2, Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    iget-object v3, p0, Lcom/example/mrcomic/ComicViewModel;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;-><init>(Landroid/content/Context;)V

    .line 313
    new-instance v3, Lcom/mrcomic/core/data/cache/PreloadManager;

    .line 314
    new-instance v4, Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    iget-object v5, p0, Lcom/example/mrcomic/ComicViewModel;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;-><init>(Landroid/content/Context;)V

    .line 315
    new-instance v5, Lcom/mrcomic/core/data/cache/MemoryManager;

    iget-object v6, p0, Lcom/example/mrcomic/ComicViewModel;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/mrcomic/core/data/cache/MemoryManager;-><init>(Landroid/content/Context;)V

    .line 313
    invoke-direct {v3, v4, v5}, Lcom/mrcomic/core/data/cache/PreloadManager;-><init>(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lcom/mrcomic/core/data/cache/MemoryManager;)V

    .line 310
    invoke-direct {v0, v1, v2, v3}, Lcom/example/mrcomic/ComicArchiveReader;-><init>(Landroid/content/Context;Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lcom/mrcomic/core/data/cache/PreloadManager;)V

    .line 317
    return-object v0
.end method

.method private final getArchiveReader()Lcom/example/mrcomic/ComicArchiveReader;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/example/mrcomic/ComicViewModel;->archiveReader$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/mrcomic/ComicArchiveReader;

    return-object v0
.end method

.method private final saveCoverToCache(Ljava/lang/String;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1, "comicName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 355
    nop

    .line 356
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cover_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/example/mrcomic/ComicViewModel;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    .line 358
    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v3, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v4, v3

    check-cast v4, Ljava/io/FileOutputStream;

    .local v4, "outputStream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 359
    .local v5, "$i$a$-use-ComicViewModel$saveCoverToCache$2":I
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v7, v4

    check-cast v7, Ljava/io/OutputStream;

    const/16 v8, 0x50

    invoke-virtual {p2, v6, v8, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .end local v5    # "$i$a$-use-ComicViewModel$saveCoverToCache$2":I
    :try_start_2
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 361
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    goto :goto_0

    .line 358
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    :catchall_0
    move-exception v4

    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local p1    # "comicName":Ljava/lang/String;
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    .restart local p1    # "comicName":Ljava/lang/String;
    .restart local p2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_1
    move-exception v5

    :try_start_4
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p1    # "comicName":Ljava/lang/String;
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 362
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .restart local p1    # "comicName":Ljava/lang/String;
    .restart local p2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 364
    nop

    .line 355
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final addComic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/example/mrcomic/ComicViewModel$addComic$1;

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p2

    move-object v6, p0

    move-object v7, p3

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/example/mrcomic/ComicViewModel$addComic$1;-><init>(Ljava/lang/String;Lcom/example/mrcomic/ComicViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 352
    return-void
.end method

.method public final deleteComic(Lcom/example/mrcomic/Comic;)V
    .locals 7
    .param p1, "comic"    # Lcom/example/mrcomic/Comic;

    const-string v0, "comic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/example/mrcomic/ComicViewModel$deleteComic$1;

    const/4 v4, 0x0

    invoke-direct {v0, p1, p0, v4}, Lcom/example/mrcomic/ComicViewModel$deleteComic$1;-><init>(Lcom/example/mrcomic/Comic;Lcom/example/mrcomic/ComicViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 380
    return-void
.end method

.method public final getComicPages(Lcom/example/mrcomic/Comic;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/mrcomic/Comic;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/ComicArchiveReader$ComicPage;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/example/mrcomic/ComicViewModel$getComicPages$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/example/mrcomic/ComicViewModel$getComicPages$1;

    iget v1, v0, Lcom/example/mrcomic/ComicViewModel$getComicPages$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/example/mrcomic/ComicViewModel$getComicPages$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/example/mrcomic/ComicViewModel$getComicPages$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/example/mrcomic/ComicViewModel$getComicPages$1;

    invoke-direct {v0, p0, p2}, Lcom/example/mrcomic/ComicViewModel$getComicPages$1;-><init>(Lcom/example/mrcomic/ComicViewModel;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lcom/example/mrcomic/ComicViewModel$getComicPages$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 388
    iget v3, v0, Lcom/example/mrcomic/ComicViewModel$getComicPages$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    goto :goto_1

    .line 392
    :catch_0
    move-exception p1

    goto :goto_2

    .line 388
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 389
    .local v3, "this":Lcom/example/mrcomic/ComicViewModel;
    .local p1, "comic":Lcom/example/mrcomic/Comic;
    nop

    .line 390
    :try_start_1
    invoke-virtual {p1}, Lcom/example/mrcomic/Comic;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 391
    .local v4, "uri":Landroid/net/Uri;
    invoke-direct {v3}, Lcom/example/mrcomic/ComicViewModel;->getArchiveReader()Lcom/example/mrcomic/ComicArchiveReader;

    move-result-object v5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/example/mrcomic/Comic;->getType()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    iput v7, v0, Lcom/example/mrcomic/ComicViewModel$getComicPages$1;->label:I

    invoke-virtual {v5, v4, v6, v0}, Lcom/example/mrcomic/ComicArchiveReader;->getPageList(Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v3    # "this":Lcom/example/mrcomic/ComicViewModel;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local p1    # "comic":Lcom/example/mrcomic/Comic;
    if-ne v5, v2, :cond_1

    .line 388
    return-object v2

    .line 391
    :cond_1
    :goto_1
    check-cast v5, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 393
    .local p1, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 389
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getComics()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/Comic;",
            ">;>;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/example/mrcomic/ComicViewModel;->comics:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getSortOrder()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/example/mrcomic/SortOrder;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/example/mrcomic/ComicViewModel;->sortOrder:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final loadComicPage(Lcom/example/mrcomic/Comic;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/mrcomic/Comic;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/example/mrcomic/ComicViewModel$loadComicPage$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/example/mrcomic/ComicViewModel$loadComicPage$1;

    iget v1, v0, Lcom/example/mrcomic/ComicViewModel$loadComicPage$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/example/mrcomic/ComicViewModel$loadComicPage$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/example/mrcomic/ComicViewModel$loadComicPage$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/example/mrcomic/ComicViewModel$loadComicPage$1;

    invoke-direct {v0, p0, p3}, Lcom/example/mrcomic/ComicViewModel$loadComicPage$1;-><init>(Lcom/example/mrcomic/ComicViewModel;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lcom/example/mrcomic/ComicViewModel$loadComicPage$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 398
    iget v3, v0, Lcom/example/mrcomic/ComicViewModel$loadComicPage$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    goto :goto_1

    .line 402
    :catch_0
    move-exception p1

    goto :goto_2

    .line 398
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 399
    .local v3, "this":Lcom/example/mrcomic/ComicViewModel;
    .local p1, "comic":Lcom/example/mrcomic/Comic;
    .local p2, "pageNumber":I
    nop

    .line 400
    :try_start_1
    invoke-virtual {p1}, Lcom/example/mrcomic/Comic;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 401
    .local v4, "uri":Landroid/net/Uri;
    invoke-direct {v3}, Lcom/example/mrcomic/ComicViewModel;->getArchiveReader()Lcom/example/mrcomic/ComicArchiveReader;

    move-result-object v5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/example/mrcomic/Comic;->getType()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    iput v7, v0, Lcom/example/mrcomic/ComicViewModel$loadComicPage$1;->label:I

    invoke-virtual {v5, v4, v6, p2, v0}, Lcom/example/mrcomic/ComicArchiveReader;->loadPage(Landroid/net/Uri;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v3    # "this":Lcom/example/mrcomic/ComicViewModel;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local p1    # "comic":Lcom/example/mrcomic/Comic;
    .end local p2    # "pageNumber":I
    if-ne v5, v2, :cond_1

    .line 398
    return-object v2

    .line 401
    :cond_1
    :goto_1
    check-cast v5, Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 403
    .local p1, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 404
    const/4 v5, 0x0

    .line 399
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final preloadComicPages(Lcom/example/mrcomic/Comic;I)V
    .locals 7
    .param p1, "comic"    # Lcom/example/mrcomic/Comic;
    .param p2, "currentPage"    # I

    const-string v0, "comic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;

    const/4 v4, 0x0

    invoke-direct {v0, p1, p0, p2, v4}, Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;-><init>(Lcom/example/mrcomic/Comic;Lcom/example/mrcomic/ComicViewModel;ILkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 417
    return-void
.end method

.method public final setSortOrder(Lcom/example/mrcomic/SortOrder;)V
    .locals 1
    .param p1, "order"    # Lcom/example/mrcomic/SortOrder;

    const-string v0, "order"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/example/mrcomic/ComicViewModel;->_sortOrder:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 421
    return-void
.end method

.method public final updateComicProgress(Lcom/example/mrcomic/Comic;I)V
    .locals 7
    .param p1, "comic"    # Lcom/example/mrcomic/Comic;
    .param p2, "currentPage"    # I

    const-string v0, "comic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, p2, v4}, Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;-><init>(Lcom/example/mrcomic/ComicViewModel;Lcom/example/mrcomic/Comic;ILkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 386
    return-void
.end method
