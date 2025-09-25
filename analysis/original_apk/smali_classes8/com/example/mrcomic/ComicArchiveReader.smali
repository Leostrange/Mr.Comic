.class public final Lcom/example/mrcomic/ComicArchiveReader;
.super Ljava/lang/Object;
.source "ComicArchiveReader.kt"

# interfaces
.implements Lcom/mrcomic/core/data/cache/PageLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;,
        Lcom/example/mrcomic/ComicArchiveReader$ComicPage;,
        Lcom/example/mrcomic/ComicArchiveReader$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComicArchiveReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComicArchiveReader.kt\ncom/example/mrcomic/ComicArchiveReader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,388:1\n774#2:389\n865#2,2:390\n1053#2:392\n1872#2,3:393\n774#2:396\n865#2,2:397\n1053#2:399\n774#2:400\n865#2,2:401\n1053#2:403\n1872#2,3:404\n774#2:407\n865#2,2:408\n1053#2:410\n1872#2,3:411\n774#2:414\n865#2,2:415\n1053#2:417\n*S KotlinDebug\n*F\n+ 1 ComicArchiveReader.kt\ncom/example/mrcomic/ComicArchiveReader\n*L\n186#1:389\n186#1:390,2\n187#1:392\n189#1:393,3\n210#1:396\n210#1:397,2\n211#1:399\n238#1:400\n238#1:401,2\n239#1:403\n241#1:404,3\n267#1:407\n267#1:408,2\n268#1:410\n270#1:411,3\n291#1:414\n291#1:415,2\n292#1:417\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0007\u0018\u0000 82\u00020\u0001:\u000389:B!\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ$\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u0015J\u001e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u0015J(\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u000fH\u0086@\u00a2\u0006\u0002\u0010\u001bJ\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001c\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\u0019H\u0002J\u0016\u0010 \u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u000fH\u0086@\u00a2\u0006\u0002\u0010\u001dJ\u001c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u000bH\u0082@\u00a2\u0006\u0002\u0010\"J \u0010#\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000fH\u0082@\u00a2\u0006\u0002\u0010$J\u001c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u000bH\u0082@\u00a2\u0006\u0002\u0010\"J\u001c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u000bH\u0082@\u00a2\u0006\u0002\u0010\"J \u0010\'\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000fH\u0082@\u00a2\u0006\u0002\u0010$J\u001c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u000bH\u0082@\u00a2\u0006\u0002\u0010\"J \u0010)\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000fH\u0082@\u00a2\u0006\u0002\u0010$J\u0010\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020\rH\u0002J \u0010,\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u0015J\u000e\u0010-\u001a\u00020\u0017H\u0086@\u00a2\u0006\u0002\u0010.J\u000e\u0010/\u001a\u000200H\u0086@\u00a2\u0006\u0002\u0010.J\u001e\u00101\u001a\u0002022\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000fH\u0086@\u00a2\u0006\u0002\u0010$J.\u00103\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\r2\u0006\u00104\u001a\u00020\u000f2\u0006\u00105\u001a\u00020\u000fH\u0087@\u00a2\u0006\u0002\u00106J\u0006\u00107\u001a\u00020\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006;"
    }
    d2 = {
        "Lcom/example/mrcomic/ComicArchiveReader;",
        "Lcom/mrcomic/core/data/cache/PageLoader;",
        "context",
        "Landroid/content/Context;",
        "enhancedImageCache",
        "Lcom/mrcomic/core/data/cache/EnhancedImageCache;",
        "preloadManager",
        "Lcom/mrcomic/core/data/cache/PreloadManager;",
        "<init>",
        "(Landroid/content/Context;Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lcom/mrcomic/core/data/cache/PreloadManager;)V",
        "currentComicUri",
        "Landroid/net/Uri;",
        "currentComicType",
        "",
        "currentTotalPages",
        "",
        "getPageList",
        "",
        "Lcom/example/mrcomic/ComicArchiveReader$ComicPage;",
        "uri",
        "comicType",
        "(Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setComicContext",
        "",
        "loadPage",
        "Landroid/graphics/Bitmap;",
        "pageNumber",
        "(Landroid/net/Uri;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "pageIndex",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "optimizeBitmap",
        "bitmap",
        "updateCurrentPage",
        "getZipPageList",
        "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "loadZipPage",
        "(Landroid/net/Uri;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "extractFromZip",
        "getRarPageList",
        "loadRarPage",
        "getPdfPageList",
        "loadPdfPage",
        "createPlaceholderBitmap",
        "text",
        "getCoverImage",
        "clearCache",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getCacheStatistics",
        "Lcom/mrcomic/core/data/cache/CacheStatistics;",
        "isPageCached",
        "",
        "preloadPages",
        "currentPage",
        "totalPages",
        "(Landroid/net/Uri;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cleanup",
        "Companion",
        "ComicPage",
        "ComicArchive",
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

.field public static final Companion:Lcom/example/mrcomic/ComicArchiveReader$Companion;

.field private static final SCALE_LIMIT_MAX:F = 4.0f

.field private static final SCALE_LIMIT_MIN:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "ComicArchiveReader"


# instance fields
.field private final context:Landroid/content/Context;

.field private currentComicType:Ljava/lang/String;

.field private currentComicUri:Landroid/net/Uri;

.field private currentTotalPages:I

.field private final enhancedImageCache:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

.field private final preloadManager:Lcom/mrcomic/core/data/cache/PreloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/example/mrcomic/ComicArchiveReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/example/mrcomic/ComicArchiveReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/example/mrcomic/ComicArchiveReader;->Companion:Lcom/example/mrcomic/ComicArchiveReader$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/example/mrcomic/ComicArchiveReader;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lcom/mrcomic/core/data/cache/PreloadManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enhancedImageCache"    # Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    .param p3, "preloadManager"    # Lcom/mrcomic/core/data/cache/PreloadManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enhancedImageCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/example/mrcomic/ComicArchiveReader;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/example/mrcomic/ComicArchiveReader;->enhancedImageCache:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    .line 29
    iput-object p3, p0, Lcom/example/mrcomic/ComicArchiveReader;->preloadManager:Lcom/mrcomic/core/data/cache/PreloadManager;

    .line 26
    return-void
.end method

.method public static final synthetic access$extractFromZip(Lcom/example/mrcomic/ComicArchiveReader;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/example/mrcomic/ComicArchiveReader;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/example/mrcomic/ComicArchiveReader;->extractFromZip(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getEnhancedImageCache$p(Lcom/example/mrcomic/ComicArchiveReader;)Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    .locals 1
    .param p0, "$this"    # Lcom/example/mrcomic/ComicArchiveReader;

    .line 25
    iget-object v0, p0, Lcom/example/mrcomic/ComicArchiveReader;->enhancedImageCache:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    return-object v0
.end method

.method public static final synthetic access$getPdfPageList(Lcom/example/mrcomic/ComicArchiveReader;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/example/mrcomic/ComicArchiveReader;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/example/mrcomic/ComicArchiveReader;->getPdfPageList(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getRarPageList(Lcom/example/mrcomic/ComicArchiveReader;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/example/mrcomic/ComicArchiveReader;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/example/mrcomic/ComicArchiveReader;->getRarPageList(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getZipPageList(Lcom/example/mrcomic/ComicArchiveReader;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/example/mrcomic/ComicArchiveReader;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/example/mrcomic/ComicArchiveReader;->getZipPageList(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$loadPdfPage(Lcom/example/mrcomic/ComicArchiveReader;Landroid/net/Uri;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/example/mrcomic/ComicArchiveReader;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pageNumber"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/example/mrcomic/ComicArchiveReader;->loadPdfPage(Landroid/net/Uri;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$loadRarPage(Lcom/example/mrcomic/ComicArchiveReader;Landroid/net/Uri;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/example/mrcomic/ComicArchiveReader;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pageNumber"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/example/mrcomic/ComicArchiveReader;->loadRarPage(Landroid/net/Uri;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$loadZipPage(Lcom/example/mrcomic/ComicArchiveReader;Landroid/net/Uri;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/example/mrcomic/ComicArchiveReader;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pageNumber"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/example/mrcomic/ComicArchiveReader;->loadZipPage(Landroid/net/Uri;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$optimizeBitmap(Lcom/example/mrcomic/ComicArchiveReader;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "$this"    # Lcom/example/mrcomic/ComicArchiveReader;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 25
    invoke-direct {p0, p1}, Lcom/example/mrcomic/ComicArchiveReader;->optimizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private final createPlaceholderBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .line 322
    const/16 v0, 0x4b0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x320

    invoke-static {v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 324
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 326
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object v3, v2

    .local v3, "$this$createPlaceholderBitmap_u24lambda_u2429":Landroid/graphics/Paint;
    const/4 v4, 0x0

    .line 327
    .local v4, "$i$a$-apply-ComicArchiveReader$createPlaceholderBitmap$paint$1":I
    const/high16 v5, -0x1000000

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 328
    const/high16 v5, 0x42400000    # 48.0f

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 329
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 330
    nop

    .line 326
    .end local v3    # "$this$createPlaceholderBitmap_u24lambda_u2429":Landroid/graphics/Paint;
    .end local v4    # "$i$a$-apply-ComicArchiveReader$createPlaceholderBitmap$paint$1":I
    nop

    .line 332
    .local v2, "paint":Landroid/graphics/Paint;
    const/high16 v3, 0x43c80000    # 400.0f

    const/high16 v4, 0x44160000    # 600.0f

    invoke-virtual {v1, p1, v3, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 333
    return-object v0
.end method

.method private final extractFromZip(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 24
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/ComicArchiveReader$ComicPage;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 227
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 229
    .local v2, "pages":Ljava/util/List;
    iget-object v0, v1, Lcom/example/mrcomic/ComicArchiveReader;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object v4, v0

    check-cast v4, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v4

    check-cast v0, Ljava/io/InputStream;

    move-object v5, v0

    .local v5, "inputStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 230
    .local v6, "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    const-string v0, "comic"

    const-string v7, ".zip"

    iget-object v8, v1, Lcom/example/mrcomic/ComicArchiveReader;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-static {v0, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    move-object v7, v0

    .local v7, "tempFile":Ljava/io/File;
    new-instance v0, Ljava/io/FileOutputStream;

    .line 231
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v8, v0

    check-cast v8, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    :try_start_1
    move-object v0, v8

    check-cast v0, Ljava/io/FileOutputStream;

    .local v0, "outputStream":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 232
    .local v9, "$i$a$-use-ComicArchiveReader$extractFromZip$2$1":I
    move-object v10, v0

    check-cast v10, Ljava/io/OutputStream;

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v5, v10, v11, v12, v13}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 231
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    .end local v9    # "$i$a$-use-ComicArchiveReader$extractFromZip$2$1":I
    :try_start_2
    invoke-static {v8, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 235
    nop

    .line 236
    :try_start_3
    new-instance v0, Lnet/lingala/zip4j/ZipFile;

    invoke-direct {v0, v7}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/io/File;)V

    move-object v8, v0

    .line 237
    .local v8, "zipFile":Lnet/lingala/zip4j/ZipFile;
    invoke-virtual {v8}, Lnet/lingala/zip4j/ZipFile;->getFileHeaders()Ljava/util/List;

    move-result-object v0

    const-string v9, "getFileHeaders(...)"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 238
    nop

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 400
    .local v9, "$i$f$filter":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination$iv$iv":Ljava/util/Collection;
    move-object v11, v0

    .local v11, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 401
    .local v12, "$i$f$filterTo":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    const-string v13, "getFileName(...)"

    if-eqz v15, :cond_1

    :try_start_4
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .local v15, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    check-cast v16, Lnet/lingala/zip4j/model/FileHeader;

    .local v16, "it":Lnet/lingala/zip4j/model/FileHeader;
    const/16 v17, 0x0

    .line 238
    .local v17, "$i$a$-filter-ComicArchiveReader$extractFromZip$2$fileHeaders$1":I
    move-object/from16 v18, v0

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .local v18, "$this$filter$iv":Ljava/lang/Iterable;
    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v13, "toLowerCase(...)"

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v13, Lkotlin/text/Regex;

    const-string v1, ".*\\.(jpg|jpeg|png|gif|bmp|webp)$"

    invoke-direct {v13, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 401
    .end local v16    # "it":Lnet/lingala/zip4j/model/FileHeader;
    .end local v17    # "$i$a$-filter-ComicArchiveReader$extractFromZip$2$fileHeaders$1":I
    if-eqz v0, :cond_0

    invoke-interface {v10, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_0
    const/4 v13, 0x0

    move-object/from16 v1, p0

    move-object/from16 v0, v18

    goto :goto_0

    .line 248
    .end local v8    # "zipFile":Lnet/lingala/zip4j/ZipFile;
    .end local v9    # "$i$f$filter":I
    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$filterTo":I
    .end local v15    # "element$iv$iv":Ljava/lang/Object;
    .end local v18    # "$this$filter$iv":Ljava/lang/Iterable;
    :catchall_0
    move-exception v0

    move-object/from16 v22, v5

    move/from16 v23, v6

    goto/16 :goto_3

    .line 402
    .restart local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .restart local v8    # "zipFile":Lnet/lingala/zip4j/ZipFile;
    .restart local v9    # "$i$f$filter":I
    .restart local v10    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v11    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .restart local v12    # "$i$f$filterTo":I
    :cond_1
    move-object/from16 v18, v0

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$filterTo":I
    .restart local v18    # "$this$filter$iv":Ljava/lang/Iterable;
    :try_start_5
    move-object v0, v10

    check-cast v0, Ljava/util/List;

    .line 400
    nop

    .end local v9    # "$i$f$filter":I
    .end local v18    # "$this$filter$iv":Ljava/lang/Iterable;
    check-cast v0, Ljava/lang/Iterable;

    .line 239
    nop

    .local v0, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 403
    .local v1, "$i$f$sortedBy":I
    new-instance v9, Lcom/example/mrcomic/ComicArchiveReader$extractFromZip$lambda$17$$inlined$sortedBy$1;

    invoke-direct {v9}, Lcom/example/mrcomic/ComicArchiveReader$extractFromZip$lambda$17$$inlined$sortedBy$1;-><init>()V

    check-cast v9, Ljava/util/Comparator;

    invoke-static {v0, v9}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v9

    .line 239
    .end local v0    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$sortedBy":I
    nop

    .line 237
    move-object v1, v9

    .line 241
    .local v1, "fileHeaders":Ljava/util/List;
    move-object v0, v1

    check-cast v0, Ljava/lang/Iterable;

    move-object v9, v0

    .local v9, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 404
    .local v10, "$i$f$forEachIndexed":I
    const/4 v0, 0x0

    .line 405
    .local v0, "index$iv":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .local v12, "item$iv":Ljava/lang/Object;
    add-int/lit8 v14, v0, 0x1

    .end local v0    # "index$iv":I
    .local v14, "index$iv":I
    if-gez v0, :cond_2

    :try_start_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_2
    :try_start_7
    move-object v15, v12

    check-cast v15, Lnet/lingala/zip4j/model/FileHeader;

    move/from16 v16, v0

    .local v15, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .local v16, "index":I
    const/16 v17, 0x0

    .line 242
    .local v17, "$i$a$-forEachIndexed-ComicArchiveReader$extractFromZip$2$2":I
    invoke-virtual {v8, v15}, Lnet/lingala/zip4j/ZipFile;->getInputStream(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/io/inputstream/ZipInputStream;

    move-result-object v0

    move-object/from16 v18, v1

    .end local v1    # "fileHeaders":Ljava/util/List;
    .local v18, "fileHeaders":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    move-object v0, v1

    check-cast v0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;

    .local v0, "stream":Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    const/16 v19, 0x0

    .line 243
    .local v19, "$i$a$-use-ComicArchiveReader$extractFromZip$2$2$1":I
    move-object/from16 v20, v0

    check-cast v20, Ljava/io/InputStream;

    invoke-static/range {v20 .. v20}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v21, v20

    .line 244
    .local v21, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v20, v0

    .end local v0    # "stream":Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .local v20, "stream":Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    new-instance v0, Lcom/example/mrcomic/ComicArchiveReader$ComicPage;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    add-int/lit8 v3, v16, 0x1

    move-object/from16 v22, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .local v22, "inputStream":Ljava/io/InputStream;
    :try_start_9
    invoke-virtual {v15}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move/from16 v23, v6

    move-object/from16 v6, v21

    .end local v21    # "bitmap":Landroid/graphics/Bitmap;
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    .local v23, "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    :try_start_a
    invoke-direct {v0, v3, v5, v6}, Lcom/example/mrcomic/ComicArchiveReader$ComicPage;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    nop

    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v19    # "$i$a$-use-ComicArchiveReader$extractFromZip$2$2$1":I
    .end local v20    # "stream":Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 242
    const/4 v0, 0x0

    :try_start_b
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 246
    nop

    .line 405
    .end local v12    # "item$iv":Ljava/lang/Object;
    .end local v15    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v16    # "index":I
    .end local v17    # "$i$a$-forEachIndexed-ComicArchiveReader$extractFromZip$2$2":I
    move-object/from16 v3, p1

    move v0, v14

    move-object/from16 v1, v18

    move-object/from16 v5, v22

    move/from16 v6, v23

    goto :goto_1

    .line 242
    .restart local v12    # "item$iv":Ljava/lang/Object;
    .restart local v15    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .restart local v16    # "index":I
    .restart local v17    # "$i$a$-forEachIndexed-ComicArchiveReader$extractFromZip$2$2":I
    :catchall_1
    move-exception v0

    move-object v3, v0

    goto :goto_2

    .end local v23    # "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    .local v6, "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    :catchall_2
    move-exception v0

    move/from16 v23, v6

    move-object v3, v0

    .end local v6    # "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    .restart local v23    # "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    goto :goto_2

    .end local v22    # "inputStream":Ljava/io/InputStream;
    .end local v23    # "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    :catchall_3
    move-exception v0

    move-object/from16 v22, v5

    move/from16 v23, v6

    move-object v3, v0

    .end local v2    # "pages":Ljava/util/List;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    .end local v7    # "tempFile":Ljava/io/File;
    .end local v8    # "zipFile":Lnet/lingala/zip4j/ZipFile;
    .end local v9    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$forEachIndexed":I
    .end local v12    # "item$iv":Ljava/lang/Object;
    .end local v14    # "index$iv":I
    .end local v15    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v16    # "index":I
    .end local v17    # "$i$a$-forEachIndexed-ComicArchiveReader$extractFromZip$2$2":I
    .end local v18    # "fileHeaders":Ljava/util/List;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :goto_2
    :try_start_c
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .restart local v2    # "pages":Ljava/util/List;
    .restart local v7    # "tempFile":Ljava/io/File;
    .restart local v8    # "zipFile":Lnet/lingala/zip4j/ZipFile;
    .restart local v9    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .restart local v10    # "$i$f$forEachIndexed":I
    .restart local v12    # "item$iv":Ljava/lang/Object;
    .restart local v14    # "index$iv":I
    .restart local v15    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .restart local v16    # "index":I
    .restart local v17    # "$i$a$-forEachIndexed-ComicArchiveReader$extractFromZip$2$2":I
    .restart local v18    # "fileHeaders":Ljava/util/List;
    .restart local v22    # "inputStream":Ljava/io/InputStream;
    .restart local v23    # "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_4
    move-exception v0

    move-object v5, v0

    :try_start_d
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v2    # "pages":Ljava/util/List;
    .end local v7    # "tempFile":Ljava/io/File;
    .end local v22    # "inputStream":Ljava/io/InputStream;
    .end local v23    # "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    throw v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 248
    .end local v8    # "zipFile":Lnet/lingala/zip4j/ZipFile;
    .end local v9    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$forEachIndexed":I
    .end local v12    # "item$iv":Ljava/lang/Object;
    .end local v14    # "index$iv":I
    .end local v15    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v16    # "index":I
    .end local v17    # "$i$a$-forEachIndexed-ComicArchiveReader$extractFromZip$2$2":I
    .end local v18    # "fileHeaders":Ljava/util/List;
    .restart local v2    # "pages":Ljava/util/List;
    .restart local v7    # "tempFile":Ljava/io/File;
    .restart local v22    # "inputStream":Ljava/io/InputStream;
    .restart local v23    # "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_5
    move-exception v0

    goto :goto_3

    .line 406
    .end local v22    # "inputStream":Ljava/io/InputStream;
    .end local v23    # "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    .local v0, "index$iv":I
    .restart local v1    # "fileHeaders":Ljava/util/List;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    .restart local v8    # "zipFile":Lnet/lingala/zip4j/ZipFile;
    .restart local v9    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .restart local v10    # "$i$f$forEachIndexed":I
    :cond_3
    move-object/from16 v18, v1

    move-object/from16 v22, v5

    move/from16 v23, v6

    .line 248
    .end local v0    # "index$iv":I
    .end local v1    # "fileHeaders":Ljava/util/List;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    .end local v8    # "zipFile":Lnet/lingala/zip4j/ZipFile;
    .end local v9    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$forEachIndexed":I
    .restart local v22    # "inputStream":Ljava/io/InputStream;
    .restart local v23    # "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    :try_start_e
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 249
    nop

    .line 250
    nop

    .end local v7    # "tempFile":Ljava/io/File;
    .end local v22    # "inputStream":Ljava/io/InputStream;
    .end local v23    # "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 229
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 248
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    .restart local v7    # "tempFile":Ljava/io/File;
    :catchall_6
    move-exception v0

    move-object/from16 v22, v5

    move/from16 v23, v6

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    .restart local v22    # "inputStream":Ljava/io/InputStream;
    .restart local v23    # "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    :goto_3
    :try_start_f
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .end local v2    # "pages":Ljava/util/List;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 231
    .end local v22    # "inputStream":Ljava/io/InputStream;
    .end local v23    # "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    .restart local v2    # "pages":Ljava/util/List;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_7
    move-exception v0

    move-object/from16 v22, v5

    move/from16 v23, v6

    move-object v1, v0

    .end local v2    # "pages":Ljava/util/List;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    .end local v7    # "tempFile":Ljava/io/File;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_10
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .restart local v2    # "pages":Ljava/util/List;
    .restart local v7    # "tempFile":Ljava/io/File;
    .restart local v22    # "inputStream":Ljava/io/InputStream;
    .restart local v23    # "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_8
    move-exception v0

    move-object v3, v0

    :try_start_11
    invoke-static {v8, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v2    # "pages":Ljava/util/List;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 229
    .end local v7    # "tempFile":Ljava/io/File;
    .end local v22    # "inputStream":Ljava/io/InputStream;
    .end local v23    # "$i$a$-use-ComicArchiveReader$extractFromZip$2":I
    .restart local v2    # "pages":Ljava/util/List;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_9
    move-exception v0

    move-object v1, v0

    .end local v2    # "pages":Ljava/util/List;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_12
    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .restart local v2    # "pages":Ljava/util/List;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_a
    move-exception v0

    move-object v3, v0

    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 252
    :cond_4
    :goto_4
    return-object v2
.end method

.method private final getPdfPageList(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/ComicArchiveReader$ComicPage;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 310
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/example/mrcomic/ComicArchiveReader$ComicPage;

    new-instance v7, Lcom/example/mrcomic/ComicArchiveReader$ComicPage;

    const/4 v2, 0x1

    const-string v3, "page1.pdf"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/example/mrcomic/ComicArchiveReader$ComicPage;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    .line 311
    new-instance v1, Lcom/example/mrcomic/ComicArchiveReader$ComicPage;

    const/4 v9, 0x2

    const-string v10, "page2.pdf"

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/example/mrcomic/ComicArchiveReader$ComicPage;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v1, v0, v2

    .line 310
    nop

    .line 312
    new-instance v1, Lcom/example/mrcomic/ComicArchiveReader$ComicPage;

    const/4 v4, 0x3

    const-string v5, "page3.pdf"

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/example/mrcomic/ComicArchiveReader$ComicPage;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 310
    nop

    .line 309
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final getRarPageList(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 27
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/ComicArchiveReader$ComicPage;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 256
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 258
    .local v2, "pages":Ljava/util/List;
    iget-object v0, v1, Lcom/example/mrcomic/ComicArchiveReader;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_6

    move-object v4, v0

    check-cast v4, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v4

    check-cast v0, Ljava/io/InputStream;

    move-object v5, v0

    .local v5, "inputStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 259
    .local v6, "$i$a$-use-ComicArchiveReader$getRarPageList$2":I
    const-string v0, "comic"

    const-string v7, ".rar"

    iget-object v8, v1, Lcom/example/mrcomic/ComicArchiveReader;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-static {v0, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    move-object v7, v0

    .local v7, "tempFile":Ljava/io/File;
    new-instance v0, Ljava/io/FileOutputStream;

    .line 260
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v8, v0

    check-cast v8, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    move-object v0, v8

    check-cast v0, Ljava/io/FileOutputStream;

    .local v0, "outputStream":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 261
    .local v9, "$i$a$-use-ComicArchiveReader$getRarPageList$2$1":I
    move-object v10, v0

    check-cast v10, Ljava/io/OutputStream;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v5, v10, v12, v11, v13}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 260
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    .end local v9    # "$i$a$-use-ComicArchiveReader$getRarPageList$2$1":I
    :try_start_2
    invoke-static {v8, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 264
    nop

    .line 265
    :try_start_3
    new-instance v0, Lcom/github/junrar/Archive;

    invoke-direct {v0, v7}, Lcom/github/junrar/Archive;-><init>(Ljava/io/File;)V

    .line 266
    .local v0, "archive":Lcom/github/junrar/Archive;
    invoke-virtual {v0}, Lcom/github/junrar/Archive;->getFileHeaders()Ljava/util/List;

    move-result-object v8

    const-string v9, "getFileHeaders(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Iterable;

    .line 267
    nop

    .local v8, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 407
    .local v9, "$i$f$filter":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination$iv$iv":Ljava/util/Collection;
    move-object v11, v8

    .local v11, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 408
    .local v14, "$i$f$filterTo":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v12, "getFileName(...)"

    if-eqz v16, :cond_3

    :try_start_4
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v18, v16

    move-object/from16 v13, v18

    .local v13, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v13

    check-cast v18, Lcom/github/junrar/rarfile/FileHeader;

    .local v18, "it":Lcom/github/junrar/rarfile/FileHeader;
    const/16 v19, 0x0

    .line 267
    .local v19, "$i$a$-filter-ComicArchiveReader$getRarPageList$2$fileHeaders$1":I
    invoke-virtual/range {v18 .. v18}, Lcom/github/junrar/rarfile/FileHeader;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v20, v0

    .end local v0    # "archive":Lcom/github/junrar/Archive;
    .local v20, "archive":Lcom/github/junrar/Archive;
    invoke-virtual/range {v18 .. v18}, Lcom/github/junrar/rarfile/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "toLowerCase(...)"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v12, Lkotlin/text/Regex;

    const-string v1, ".*\\.(jpg|jpeg|png|gif|bmp|webp)$"

    invoke-direct {v12, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .end local v20    # "archive":Lcom/github/junrar/Archive;
    .restart local v0    # "archive":Lcom/github/junrar/Archive;
    :cond_0
    move-object/from16 v20, v0

    .end local v0    # "archive":Lcom/github/junrar/Archive;
    .restart local v20    # "archive":Lcom/github/junrar/Archive;
    :cond_1
    const/4 v0, 0x0

    .line 408
    .end local v18    # "it":Lcom/github/junrar/rarfile/FileHeader;
    .end local v19    # "$i$a$-filter-ComicArchiveReader$getRarPageList$2$fileHeaders$1":I
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v10, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v1, p0

    move-object/from16 v0, v20

    goto :goto_0

    .line 409
    .end local v13    # "element$iv$iv":Ljava/lang/Object;
    .end local v20    # "archive":Lcom/github/junrar/Archive;
    .restart local v0    # "archive":Lcom/github/junrar/Archive;
    :cond_3
    move-object/from16 v20, v0

    .end local v0    # "archive":Lcom/github/junrar/Archive;
    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v14    # "$i$f$filterTo":I
    .restart local v20    # "archive":Lcom/github/junrar/Archive;
    move-object v0, v10

    check-cast v0, Ljava/util/List;

    .line 407
    nop

    .end local v8    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$filter":I
    check-cast v0, Ljava/lang/Iterable;

    .line 268
    nop

    .local v0, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 410
    .local v1, "$i$f$sortedBy":I
    new-instance v8, Lcom/example/mrcomic/ComicArchiveReader$getRarPageList$lambda$22$$inlined$sortedBy$1;

    invoke-direct {v8}, Lcom/example/mrcomic/ComicArchiveReader$getRarPageList$lambda$22$$inlined$sortedBy$1;-><init>()V

    check-cast v8, Ljava/util/Comparator;

    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v8

    .line 268
    .end local v0    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$sortedBy":I
    nop

    .line 266
    move-object v0, v8

    .line 270
    .local v0, "fileHeaders":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 411
    .local v8, "$i$f$forEachIndexed":I
    const/4 v9, 0x0

    .line 412
    .local v9, "index$iv":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "item$iv":Ljava/lang/Object;
    add-int/lit8 v13, v9, 0x1

    .end local v9    # "index$iv":I
    .local v13, "index$iv":I
    if-gez v9, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_4
    move-object v14, v11

    check-cast v14, Lcom/github/junrar/rarfile/FileHeader;

    .local v9, "index":I
    .local v14, "fileHeader":Lcom/github/junrar/rarfile/FileHeader;
    const/4 v15, 0x0

    .line 271
    .local v15, "$i$a$-forEachIndexed-ComicArchiveReader$getRarPageList$2$2":I
    move-object/from16 v17, v0

    .end local v0    # "fileHeaders":Ljava/util/List;
    .local v17, "fileHeaders":Ljava/util/List;
    new-instance v0, Lcom/example/mrcomic/ComicArchiveReader$ComicPage;

    add-int/lit8 v22, v9, 0x1

    move-object/from16 v18, v1

    .end local v1    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .local v18, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    invoke-virtual {v14}, Lcom/github/junrar/rarfile/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v24, 0x0

    const/16 v25, 0x4

    const/16 v26, 0x0

    move-object/from16 v21, v0

    move-object/from16 v23, v1

    invoke-direct/range {v21 .. v26}, Lcom/example/mrcomic/ComicArchiveReader$ComicPage;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 272
    nop

    .line 412
    .end local v9    # "index":I
    .end local v11    # "item$iv":Ljava/lang/Object;
    .end local v14    # "fileHeader":Lcom/github/junrar/rarfile/FileHeader;
    .end local v15    # "$i$a$-forEachIndexed-ComicArchiveReader$getRarPageList$2$2":I
    move v9, v13

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    goto :goto_2

    .line 413
    .end local v13    # "index$iv":I
    .end local v17    # "fileHeaders":Ljava/util/List;
    .end local v18    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .restart local v0    # "fileHeaders":Ljava/util/List;
    .restart local v1    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .local v9, "index$iv":I
    :cond_5
    move-object/from16 v17, v0

    move-object/from16 v18, v1

    .line 274
    .end local v0    # "fileHeaders":Ljava/util/List;
    .end local v1    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEachIndexed":I
    .end local v9    # "index$iv":I
    .end local v20    # "archive":Lcom/github/junrar/Archive;
    :try_start_5
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 275
    nop

    .line 276
    nop

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "$i$a$-use-ComicArchiveReader$getRarPageList$2":I
    .end local v7    # "tempFile":Ljava/io/File;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 258
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 274
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "$i$a$-use-ComicArchiveReader$getRarPageList$2":I
    .restart local v7    # "tempFile":Ljava/io/File;
    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .end local v2    # "pages":Ljava/util/List;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 260
    .restart local v2    # "pages":Ljava/util/List;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_1
    move-exception v0

    move-object v1, v0

    .end local v2    # "pages":Ljava/util/List;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "$i$a$-use-ComicArchiveReader$getRarPageList$2":I
    .end local v7    # "tempFile":Ljava/io/File;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .restart local v2    # "pages":Ljava/util/List;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "$i$a$-use-ComicArchiveReader$getRarPageList$2":I
    .restart local v7    # "tempFile":Ljava/io/File;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_2
    move-exception v0

    move-object v9, v0

    :try_start_8
    invoke-static {v8, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v2    # "pages":Ljava/util/List;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 258
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "$i$a$-use-ComicArchiveReader$getRarPageList$2":I
    .end local v7    # "tempFile":Ljava/io/File;
    .restart local v2    # "pages":Ljava/util/List;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_3
    move-exception v0

    move-object v1, v0

    .end local v2    # "pages":Ljava/util/List;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .restart local v2    # "pages":Ljava/util/List;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_4
    move-exception v0

    move-object v5, v0

    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5

    .line 278
    :cond_6
    :goto_3
    return-object v2
.end method

.method private final getZipPageList(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/ComicArchiveReader$ComicPage;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 175
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 177
    .local v2, "pages":Ljava/util/List;
    iget-object v0, v1, Lcom/example/mrcomic/ComicArchiveReader;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object v4, v0

    check-cast v4, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v4

    check-cast v0, Ljava/io/InputStream;

    move-object v5, v0

    .local v5, "inputStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 178
    .local v6, "$i$a$-use-ComicArchiveReader$getZipPageList$2":I
    const-string v0, "comic"

    const-string v7, ".zip"

    iget-object v8, v1, Lcom/example/mrcomic/ComicArchiveReader;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-static {v0, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    move-object v7, v0

    .local v7, "tempFile":Ljava/io/File;
    new-instance v0, Ljava/io/FileOutputStream;

    .line 179
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v8, v0

    check-cast v8, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    move-object v0, v8

    check-cast v0, Ljava/io/FileOutputStream;

    .local v0, "outputStream":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 180
    .local v9, "$i$a$-use-ComicArchiveReader$getZipPageList$2$1":I
    move-object v10, v0

    check-cast v10, Ljava/io/OutputStream;

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v5, v10, v11, v12, v13}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    .end local v9    # "$i$a$-use-ComicArchiveReader$getZipPageList$2$1":I
    :try_start_2
    invoke-static {v8, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 183
    nop

    .line 184
    :try_start_3
    new-instance v0, Lnet/lingala/zip4j/ZipFile;

    invoke-direct {v0, v7}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/io/File;)V

    .line 185
    .local v0, "zipFile":Lnet/lingala/zip4j/ZipFile;
    invoke-virtual {v0}, Lnet/lingala/zip4j/ZipFile;->getFileHeaders()Ljava/util/List;

    move-result-object v8

    const-string v9, "getFileHeaders(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Iterable;

    .line 186
    nop

    .local v8, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 389
    .local v9, "$i$f$filter":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination$iv$iv":Ljava/util/Collection;
    move-object v11, v8

    .local v11, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 390
    .local v12, "$i$f$filterTo":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v13, "getFileName(...)"

    if-eqz v15, :cond_1

    :try_start_4
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .local v15, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    check-cast v16, Lnet/lingala/zip4j/model/FileHeader;

    .local v16, "it":Lnet/lingala/zip4j/model/FileHeader;
    const/16 v17, 0x0

    .line 186
    .local v17, "$i$a$-filter-ComicArchiveReader$getZipPageList$2$fileHeaders$1":I
    move-object/from16 v18, v0

    .end local v0    # "zipFile":Lnet/lingala/zip4j/ZipFile;
    .local v18, "zipFile":Lnet/lingala/zip4j/ZipFile;
    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v13, "toLowerCase(...)"

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v13, Lkotlin/text/Regex;

    const-string v1, ".*\\.(jpg|jpeg|png|gif|bmp|webp)$"

    invoke-direct {v13, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 390
    .end local v16    # "it":Lnet/lingala/zip4j/model/FileHeader;
    .end local v17    # "$i$a$-filter-ComicArchiveReader$getZipPageList$2$fileHeaders$1":I
    if-eqz v0, :cond_0

    invoke-interface {v10, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v13, 0x0

    move-object/from16 v1, p0

    move-object/from16 v0, v18

    goto :goto_0

    .line 391
    .end local v15    # "element$iv$iv":Ljava/lang/Object;
    .end local v18    # "zipFile":Lnet/lingala/zip4j/ZipFile;
    .restart local v0    # "zipFile":Lnet/lingala/zip4j/ZipFile;
    :cond_1
    move-object/from16 v18, v0

    .end local v0    # "zipFile":Lnet/lingala/zip4j/ZipFile;
    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$filterTo":I
    .restart local v18    # "zipFile":Lnet/lingala/zip4j/ZipFile;
    move-object v0, v10

    check-cast v0, Ljava/util/List;

    .line 389
    nop

    .end local v8    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$filter":I
    check-cast v0, Ljava/lang/Iterable;

    .line 187
    nop

    .local v0, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 392
    .local v1, "$i$f$sortedBy":I
    new-instance v8, Lcom/example/mrcomic/ComicArchiveReader$getZipPageList$lambda$5$$inlined$sortedBy$1;

    invoke-direct {v8}, Lcom/example/mrcomic/ComicArchiveReader$getZipPageList$lambda$5$$inlined$sortedBy$1;-><init>()V

    check-cast v8, Ljava/util/Comparator;

    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v8

    .line 187
    .end local v0    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$sortedBy":I
    nop

    .line 185
    move-object v0, v8

    .line 189
    .local v0, "fileHeaders":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 393
    .local v8, "$i$f$forEachIndexed":I
    const/4 v9, 0x0

    .line 394
    .local v9, "index$iv":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "item$iv":Ljava/lang/Object;
    add-int/lit8 v12, v9, 0x1

    .end local v9    # "index$iv":I
    .local v12, "index$iv":I
    if-gez v9, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    move-object v14, v11

    check-cast v14, Lnet/lingala/zip4j/model/FileHeader;

    .local v9, "index":I
    .local v14, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    const/4 v15, 0x0

    .line 190
    .local v15, "$i$a$-forEachIndexed-ComicArchiveReader$getZipPageList$2$2":I
    move-object/from16 v16, v0

    .end local v0    # "fileHeaders":Ljava/util/List;
    .local v16, "fileHeaders":Ljava/util/List;
    new-instance v0, Lcom/example/mrcomic/ComicArchiveReader$ComicPage;

    add-int/lit8 v20, v9, 0x1

    move-object/from16 v17, v1

    .end local v1    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .local v17, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    invoke-virtual {v14}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v22, 0x0

    const/16 v23, 0x4

    const/16 v24, 0x0

    move-object/from16 v19, v0

    move-object/from16 v21, v1

    invoke-direct/range {v19 .. v24}, Lcom/example/mrcomic/ComicArchiveReader$ComicPage;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 191
    nop

    .line 394
    .end local v9    # "index":I
    .end local v11    # "item$iv":Ljava/lang/Object;
    .end local v14    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v15    # "$i$a$-forEachIndexed-ComicArchiveReader$getZipPageList$2$2":I
    move v9, v12

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    goto :goto_1

    .line 395
    .end local v12    # "index$iv":I
    .end local v16    # "fileHeaders":Ljava/util/List;
    .end local v17    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .restart local v0    # "fileHeaders":Ljava/util/List;
    .restart local v1    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .local v9, "index$iv":I
    :cond_3
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .line 193
    .end local v0    # "fileHeaders":Ljava/util/List;
    .end local v1    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEachIndexed":I
    .end local v9    # "index$iv":I
    .end local v18    # "zipFile":Lnet/lingala/zip4j/ZipFile;
    :try_start_5
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 194
    nop

    .line 195
    nop

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "$i$a$-use-ComicArchiveReader$getZipPageList$2":I
    .end local v7    # "tempFile":Ljava/io/File;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 177
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 193
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "$i$a$-use-ComicArchiveReader$getZipPageList$2":I
    .restart local v7    # "tempFile":Ljava/io/File;
    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .end local v2    # "pages":Ljava/util/List;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 179
    .restart local v2    # "pages":Ljava/util/List;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_1
    move-exception v0

    move-object v1, v0

    .end local v2    # "pages":Ljava/util/List;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "$i$a$-use-ComicArchiveReader$getZipPageList$2":I
    .end local v7    # "tempFile":Ljava/io/File;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .restart local v2    # "pages":Ljava/util/List;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "$i$a$-use-ComicArchiveReader$getZipPageList$2":I
    .restart local v7    # "tempFile":Ljava/io/File;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_2
    move-exception v0

    move-object v9, v0

    :try_start_8
    invoke-static {v8, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v2    # "pages":Ljava/util/List;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 177
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "$i$a$-use-ComicArchiveReader$getZipPageList$2":I
    .end local v7    # "tempFile":Ljava/io/File;
    .restart local v2    # "pages":Ljava/util/List;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_3
    move-exception v0

    move-object v1, v0

    .end local v2    # "pages":Ljava/util/List;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .restart local v2    # "pages":Ljava/util/List;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_4
    move-exception v0

    move-object v5, v0

    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5

    .line 197
    :cond_4
    :goto_2
    return-object v2
.end method

.method private final loadPdfPage(Landroid/net/Uri;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pageNumber"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PDF \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0430 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/example/mrcomic/ComicArchiveReader;->createPlaceholderBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private final loadRarPage(Landroid/net/Uri;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pageNumber"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 282
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/example/mrcomic/ComicArchiveReader;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    move-object v4, v0

    check-cast v4, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v4

    check-cast v0, Ljava/io/InputStream;

    move-object v5, v0

    .local v5, "inputStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 283
    .local v6, "$i$a$-use-ComicArchiveReader$loadRarPage$2":I
    const-string v0, "comic"

    const-string v7, ".rar"

    iget-object v8, v1, Lcom/example/mrcomic/ComicArchiveReader;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-static {v0, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    move-object v7, v0

    .local v7, "tempFile":Ljava/io/File;
    new-instance v0, Ljava/io/FileOutputStream;

    .line 284
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v8, v0

    check-cast v8, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    move-object v0, v8

    check-cast v0, Ljava/io/FileOutputStream;

    .local v0, "outputStream":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 285
    .local v9, "$i$a$-use-ComicArchiveReader$loadRarPage$2$1":I
    move-object v10, v0

    check-cast v10, Ljava/io/OutputStream;

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v5, v10, v12, v11, v3}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 284
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    .end local v9    # "$i$a$-use-ComicArchiveReader$loadRarPage$2$1":I
    :try_start_2
    invoke-static {v8, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 288
    nop

    .line 289
    :try_start_3
    new-instance v0, Lcom/github/junrar/Archive;

    invoke-direct {v0, v7}, Lcom/github/junrar/Archive;-><init>(Ljava/io/File;)V

    move-object v8, v0

    .line 290
    .local v8, "archive":Lcom/github/junrar/Archive;
    invoke-virtual {v8}, Lcom/github/junrar/Archive;->getFileHeaders()Ljava/util/List;

    move-result-object v0

    const-string v9, "getFileHeaders(...)"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 291
    nop

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 414
    .local v9, "$i$f$filter":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination$iv$iv":Ljava/util/Collection;
    move-object v11, v0

    .local v11, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 415
    .local v13, "$i$f$filterTo":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .local v15, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    check-cast v16, Lcom/github/junrar/rarfile/FileHeader;

    .local v16, "it":Lcom/github/junrar/rarfile/FileHeader;
    const/16 v17, 0x0

    .line 291
    .local v17, "$i$a$-filter-ComicArchiveReader$loadRarPage$2$fileHeaders$1":I
    invoke-virtual/range {v16 .. v16}, Lcom/github/junrar/rarfile/FileHeader;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/github/junrar/rarfile/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v12

    const-string v3, "getFileName(...)"

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v12, "toLowerCase(...)"

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v12, Lkotlin/text/Regex;

    move-object/from16 v19, v0

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .local v19, "$this$filter$iv":Ljava/lang/Iterable;
    const-string v0, ".*\\.(jpg|jpeg|png|gif|bmp|webp)$"

    invoke-direct {v12, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .end local v19    # "$this$filter$iv":Ljava/lang/Iterable;
    .restart local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    :cond_0
    move-object/from16 v19, v0

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .restart local v19    # "$this$filter$iv":Ljava/lang/Iterable;
    :cond_1
    const/4 v0, 0x0

    .line 415
    .end local v16    # "it":Lcom/github/junrar/rarfile/FileHeader;
    .end local v17    # "$i$a$-filter-ComicArchiveReader$loadRarPage$2$fileHeaders$1":I
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v10, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v0, v19

    const/4 v3, 0x0

    const/4 v12, 0x0

    goto :goto_0

    .line 416
    .end local v15    # "element$iv$iv":Ljava/lang/Object;
    .end local v19    # "$this$filter$iv":Ljava/lang/Iterable;
    .restart local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    :cond_3
    move-object/from16 v19, v0

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$filterTo":I
    .restart local v19    # "$this$filter$iv":Ljava/lang/Iterable;
    move-object v0, v10

    check-cast v0, Ljava/util/List;

    .line 414
    nop

    .end local v9    # "$i$f$filter":I
    .end local v19    # "$this$filter$iv":Ljava/lang/Iterable;
    check-cast v0, Ljava/lang/Iterable;

    .line 292
    nop

    .local v0, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 417
    .local v3, "$i$f$sortedBy":I
    new-instance v9, Lcom/example/mrcomic/ComicArchiveReader$loadRarPage$lambda$28$$inlined$sortedBy$1;

    invoke-direct {v9}, Lcom/example/mrcomic/ComicArchiveReader$loadRarPage$lambda$28$$inlined$sortedBy$1;-><init>()V

    check-cast v9, Ljava/util/Comparator;

    invoke-static {v0, v9}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v9

    .line 292
    .end local v0    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$sortedBy":I
    nop

    .line 290
    move-object v3, v9

    .line 294
    .local v3, "fileHeaders":Ljava/util/List;
    add-int/lit8 v0, p2, -0x1

    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/junrar/rarfile/FileHeader;

    move-object v9, v0

    .line 295
    .local v9, "targetHeader":Lcom/github/junrar/rarfile/FileHeader;
    if-eqz v9, :cond_4

    move-object v10, v9

    .local v10, "header":Lcom/github/junrar/rarfile/FileHeader;
    const/4 v11, 0x0

    .line 296
    .local v11, "$i$a$-let-ComicArchiveReader$loadRarPage$2$2":I
    invoke-virtual {v8, v10}, Lcom/github/junrar/Archive;->getInputStream(Lcom/github/junrar/rarfile/FileHeader;)Ljava/io/InputStream;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/io/Closeable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    move-object v0, v12

    check-cast v0, Ljava/io/InputStream;

    .local v0, "stream":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 297
    .local v13, "$i$a$-use-ComicArchiveReader$loadRarPage$2$2$1":I
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 296
    .end local v0    # "stream":Ljava/io/InputStream;
    .end local v13    # "$i$a$-use-ComicArchiveReader$loadRarPage$2$2$1":I
    const/4 v0, 0x0

    :try_start_5
    invoke-static {v12, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 298
    nop

    .line 295
    .end local v10    # "header":Lcom/github/junrar/rarfile/FileHeader;
    .end local v11    # "$i$a$-let-ComicArchiveReader$loadRarPage$2$2":I
    goto :goto_2

    .line 296
    .restart local v10    # "header":Lcom/github/junrar/rarfile/FileHeader;
    .restart local v11    # "$i$a$-let-ComicArchiveReader$loadRarPage$2$2":I
    :catchall_0
    move-exception v0

    move-object v13, v0

    .end local v3    # "fileHeaders":Ljava/util/List;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "$i$a$-use-ComicArchiveReader$loadRarPage$2":I
    .end local v7    # "tempFile":Ljava/io/File;
    .end local v8    # "archive":Lcom/github/junrar/Archive;
    .end local v9    # "targetHeader":Lcom/github/junrar/rarfile/FileHeader;
    .end local v10    # "header":Lcom/github/junrar/rarfile/FileHeader;
    .end local v11    # "$i$a$-let-ComicArchiveReader$loadRarPage$2$2":I
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "pageNumber":I
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_6
    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .restart local v3    # "fileHeaders":Ljava/util/List;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "$i$a$-use-ComicArchiveReader$loadRarPage$2":I
    .restart local v7    # "tempFile":Ljava/io/File;
    .restart local v8    # "archive":Lcom/github/junrar/Archive;
    .restart local v9    # "targetHeader":Lcom/github/junrar/rarfile/FileHeader;
    .restart local v10    # "header":Lcom/github/junrar/rarfile/FileHeader;
    .restart local v11    # "$i$a$-let-ComicArchiveReader$loadRarPage$2$2":I
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "pageNumber":I
    .restart local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_1
    move-exception v0

    move-object v14, v0

    :try_start_7
    invoke-static {v12, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "$i$a$-use-ComicArchiveReader$loadRarPage$2":I
    .end local v7    # "tempFile":Ljava/io/File;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "pageNumber":I
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    throw v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 295
    .end local v10    # "header":Lcom/github/junrar/rarfile/FileHeader;
    .end local v11    # "$i$a$-let-ComicArchiveReader$loadRarPage$2$2":I
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "$i$a$-use-ComicArchiveReader$loadRarPage$2":I
    .restart local v7    # "tempFile":Ljava/io/File;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "pageNumber":I
    .restart local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :cond_4
    const/4 v14, 0x0

    .line 301
    .end local v3    # "fileHeaders":Ljava/util/List;
    .end local v8    # "archive":Lcom/github/junrar/Archive;
    .end local v9    # "targetHeader":Lcom/github/junrar/rarfile/FileHeader;
    :goto_2
    :try_start_8
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object v0, v8

    .local v0, "archive":Lcom/github/junrar/Archive;
    move-object v8, v9

    .line 295
    .end local v0    # "archive":Lcom/github/junrar/Archive;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "$i$a$-use-ComicArchiveReader$loadRarPage$2":I
    .end local v7    # "tempFile":Ljava/io/File;
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v14

    .line 301
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "$i$a$-use-ComicArchiveReader$loadRarPage$2":I
    .restart local v7    # "tempFile":Ljava/io/File;
    :catchall_2
    move-exception v0

    :try_start_9
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "pageNumber":I
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 284
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "pageNumber":I
    .restart local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_3
    move-exception v0

    move-object v3, v0

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "$i$a$-use-ComicArchiveReader$loadRarPage$2":I
    .end local v7    # "tempFile":Ljava/io/File;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "pageNumber":I
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "$i$a$-use-ComicArchiveReader$loadRarPage$2":I
    .restart local v7    # "tempFile":Ljava/io/File;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "pageNumber":I
    .restart local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_4
    move-exception v0

    move-object v9, v0

    :try_start_b
    invoke-static {v8, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "pageNumber":I
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    throw v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 301
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "$i$a$-use-ComicArchiveReader$loadRarPage$2":I
    .end local v7    # "tempFile":Ljava/io/File;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "pageNumber":I
    .restart local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_5
    move-exception v0

    move-object v3, v0

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "pageNumber":I
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_c
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "pageNumber":I
    .restart local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_6
    move-exception v0

    move-object v5, v0

    invoke-static {v4, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5

    .line 304
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private final loadZipPage(Landroid/net/Uri;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pageNumber"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 201
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/example/mrcomic/ComicArchiveReader;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    move-object v4, v0

    check-cast v4, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v4

    check-cast v0, Ljava/io/InputStream;

    move-object v5, v0

    .local v5, "inputStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 202
    .local v6, "$i$a$-use-ComicArchiveReader$loadZipPage$2":I
    const-string v0, "comic"

    const-string v7, ".zip"

    iget-object v8, v1, Lcom/example/mrcomic/ComicArchiveReader;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-static {v0, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    move-object v7, v0

    .local v7, "tempFile":Ljava/io/File;
    new-instance v0, Ljava/io/FileOutputStream;

    .line 203
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v8, v0

    check-cast v8, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    move-object v0, v8

    check-cast v0, Ljava/io/FileOutputStream;

    .local v0, "outputStream":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 204
    .local v9, "$i$a$-use-ComicArchiveReader$loadZipPage$2$1":I
    move-object v10, v0

    check-cast v10, Ljava/io/OutputStream;

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-static {v5, v10, v11, v12, v3}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 203
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    .end local v9    # "$i$a$-use-ComicArchiveReader$loadZipPage$2$1":I
    :try_start_2
    invoke-static {v8, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 207
    nop

    .line 208
    :try_start_3
    new-instance v0, Lnet/lingala/zip4j/ZipFile;

    invoke-direct {v0, v7}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/io/File;)V

    move-object v8, v0

    .line 209
    .local v8, "zipFile":Lnet/lingala/zip4j/ZipFile;
    invoke-virtual {v8}, Lnet/lingala/zip4j/ZipFile;->getFileHeaders()Ljava/util/List;

    move-result-object v0

    const-string v9, "getFileHeaders(...)"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 210
    nop

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 396
    .local v9, "$i$f$filter":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination$iv$iv":Ljava/util/Collection;
    move-object v11, v0

    .local v11, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 397
    .local v12, "$i$f$filterTo":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "element$iv$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Lnet/lingala/zip4j/model/FileHeader;

    .local v15, "it":Lnet/lingala/zip4j/model/FileHeader;
    const/16 v16, 0x0

    .line 210
    .local v16, "$i$a$-filter-ComicArchiveReader$loadZipPage$2$fileHeaders$1":I
    invoke-virtual {v15}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v0

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .local v17, "$this$filter$iv":Ljava/lang/Iterable;
    const-string v0, "getFileName(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "toLowerCase(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v3, Lkotlin/text/Regex;

    const-string v1, ".*\\.(jpg|jpeg|png|gif|bmp|webp)$"

    invoke-direct {v3, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 397
    .end local v15    # "it":Lnet/lingala/zip4j/model/FileHeader;
    .end local v16    # "$i$a$-filter-ComicArchiveReader$loadZipPage$2$fileHeaders$1":I
    if-eqz v0, :cond_0

    invoke-interface {v10, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v0, v17

    goto :goto_0

    .line 398
    .end local v14    # "element$iv$iv":Ljava/lang/Object;
    .end local v17    # "$this$filter$iv":Ljava/lang/Iterable;
    .restart local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    :cond_1
    move-object/from16 v17, v0

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$filterTo":I
    .restart local v17    # "$this$filter$iv":Ljava/lang/Iterable;
    move-object v0, v10

    check-cast v0, Ljava/util/List;

    .line 396
    nop

    .end local v9    # "$i$f$filter":I
    .end local v17    # "$this$filter$iv":Ljava/lang/Iterable;
    check-cast v0, Ljava/lang/Iterable;

    .line 211
    nop

    .local v0, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 399
    .local v1, "$i$f$sortedBy":I
    new-instance v3, Lcom/example/mrcomic/ComicArchiveReader$loadZipPage$lambda$11$$inlined$sortedBy$1;

    invoke-direct {v3}, Lcom/example/mrcomic/ComicArchiveReader$loadZipPage$lambda$11$$inlined$sortedBy$1;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v3

    .line 211
    .end local v0    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$sortedBy":I
    nop

    .line 209
    move-object v1, v3

    .line 213
    .local v1, "fileHeaders":Ljava/util/List;
    add-int/lit8 v0, p2, -0x1

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/FileHeader;

    move-object v3, v0

    .line 214
    .local v3, "targetHeader":Lnet/lingala/zip4j/model/FileHeader;
    if-eqz v3, :cond_2

    move-object v9, v3

    .local v9, "header":Lnet/lingala/zip4j/model/FileHeader;
    const/4 v10, 0x0

    .line 215
    .local v10, "$i$a$-let-ComicArchiveReader$loadZipPage$2$2":I
    invoke-virtual {v8, v9}, Lnet/lingala/zip4j/ZipFile;->getInputStream(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/io/inputstream/ZipInputStream;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/io/Closeable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    move-object v0, v11

    check-cast v0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;

    .local v0, "stream":Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    const/4 v12, 0x0

    .line 216
    .local v12, "$i$a$-use-ComicArchiveReader$loadZipPage$2$2$1":I
    move-object v13, v0

    check-cast v13, Ljava/io/InputStream;

    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 215
    .end local v0    # "stream":Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .end local v12    # "$i$a$-use-ComicArchiveReader$loadZipPage$2$2$1":I
    const/4 v0, 0x0

    :try_start_5
    invoke-static {v11, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 217
    nop

    .line 214
    .end local v9    # "header":Lnet/lingala/zip4j/model/FileHeader;
    .end local v10    # "$i$a$-let-ComicArchiveReader$loadZipPage$2$2":I
    goto :goto_1

    .line 215
    .restart local v9    # "header":Lnet/lingala/zip4j/model/FileHeader;
    .restart local v10    # "$i$a$-let-ComicArchiveReader$loadZipPage$2$2":I
    :catchall_0
    move-exception v0

    move-object v12, v0

    .end local v1    # "fileHeaders":Ljava/util/List;
    .end local v3    # "targetHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "$i$a$-use-ComicArchiveReader$loadZipPage$2":I
    .end local v7    # "tempFile":Ljava/io/File;
    .end local v8    # "zipFile":Lnet/lingala/zip4j/ZipFile;
    .end local v9    # "header":Lnet/lingala/zip4j/model/FileHeader;
    .end local v10    # "$i$a$-let-ComicArchiveReader$loadZipPage$2$2":I
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "pageNumber":I
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_6
    throw v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .restart local v1    # "fileHeaders":Ljava/util/List;
    .restart local v3    # "targetHeader":Lnet/lingala/zip4j/model/FileHeader;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "$i$a$-use-ComicArchiveReader$loadZipPage$2":I
    .restart local v7    # "tempFile":Ljava/io/File;
    .restart local v8    # "zipFile":Lnet/lingala/zip4j/ZipFile;
    .restart local v9    # "header":Lnet/lingala/zip4j/model/FileHeader;
    .restart local v10    # "$i$a$-let-ComicArchiveReader$loadZipPage$2$2":I
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "pageNumber":I
    .restart local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_1
    move-exception v0

    move-object v13, v0

    :try_start_7
    invoke-static {v11, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "$i$a$-use-ComicArchiveReader$loadZipPage$2":I
    .end local v7    # "tempFile":Ljava/io/File;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "pageNumber":I
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    throw v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 214
    .end local v9    # "header":Lnet/lingala/zip4j/model/FileHeader;
    .end local v10    # "$i$a$-let-ComicArchiveReader$loadZipPage$2$2":I
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "$i$a$-use-ComicArchiveReader$loadZipPage$2":I
    .restart local v7    # "tempFile":Ljava/io/File;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "pageNumber":I
    .restart local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :cond_2
    const/4 v13, 0x0

    .line 220
    .end local v1    # "fileHeaders":Ljava/util/List;
    .end local v3    # "targetHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v8    # "zipFile":Lnet/lingala/zip4j/ZipFile;
    :goto_1
    :try_start_8
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object v0, v8

    .line 214
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "$i$a$-use-ComicArchiveReader$loadZipPage$2":I
    .end local v7    # "tempFile":Ljava/io/File;
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v13

    .line 220
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "$i$a$-use-ComicArchiveReader$loadZipPage$2":I
    .restart local v7    # "tempFile":Ljava/io/File;
    :catchall_2
    move-exception v0

    :try_start_9
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "pageNumber":I
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 203
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "pageNumber":I
    .restart local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_3
    move-exception v0

    move-object v1, v0

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "$i$a$-use-ComicArchiveReader$loadZipPage$2":I
    .end local v7    # "tempFile":Ljava/io/File;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "pageNumber":I
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "$i$a$-use-ComicArchiveReader$loadZipPage$2":I
    .restart local v7    # "tempFile":Ljava/io/File;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "pageNumber":I
    .restart local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_4
    move-exception v0

    move-object v3, v0

    :try_start_b
    invoke-static {v8, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "pageNumber":I
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 220
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "$i$a$-use-ComicArchiveReader$loadZipPage$2":I
    .end local v7    # "tempFile":Ljava/io/File;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "pageNumber":I
    .restart local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_5
    move-exception v0

    move-object v1, v0

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "pageNumber":I
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "pageNumber":I
    .restart local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_6
    move-exception v0

    move-object v3, v0

    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 223
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private final optimizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 143
    const/16 v0, 0x800

    .line 144
    .local v0, "maxWidth":I
    const/16 v1, 0x800

    .line 146
    .local v1, "maxHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 147
    return-object p1

    .line 150
    :cond_0
    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 151
    .local v2, "scaleX":F
    int-to-float v3, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 152
    .local v3, "scaleY":F
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 154
    .local v4, "scale":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_1

    return-object p1

    .line 156
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    .line 157
    .local v5, "newWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    .line 159
    .local v6, "newHeight":I
    const/4 v7, 0x1

    invoke-static {p1, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v8, v7

    .local v8, "it":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 160
    .local v9, "$i$a$-also-ComicArchiveReader$optimizeBitmap$1":I
    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    :cond_2
    nop

    .line 159
    .end local v8    # "it":Landroid/graphics/Bitmap;
    .end local v9    # "$i$a$-also-ComicArchiveReader$optimizeBitmap$1":I
    const-string v8, "also(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public final cleanup()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/example/mrcomic/ComicArchiveReader;->preloadManager:Lcom/mrcomic/core/data/cache/PreloadManager;

    invoke-virtual {v0}, Lcom/mrcomic/core/data/cache/PreloadManager;->cleanup()V

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/mrcomic/ComicArchiveReader;->currentComicUri:Landroid/net/Uri;

    .line 384
    iput-object v0, p0, Lcom/example/mrcomic/ComicArchiveReader;->currentComicType:Ljava/lang/String;

    .line 385
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/mrcomic/ComicArchiveReader;->currentTotalPages:I

    .line 386
    const-string v0, "ComicArchiveReader"

    const-string v1, "ComicArchiveReader cleaned up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void
.end method

.method public final clearCache(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/example/mrcomic/ComicArchiveReader$clearCache$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/example/mrcomic/ComicArchiveReader$clearCache$1;

    iget v1, v0, Lcom/example/mrcomic/ComicArchiveReader$clearCache$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/example/mrcomic/ComicArchiveReader$clearCache$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/example/mrcomic/ComicArchiveReader$clearCache$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/example/mrcomic/ComicArchiveReader$clearCache$1;

    invoke-direct {v0, p0, p1}, Lcom/example/mrcomic/ComicArchiveReader$clearCache$1;-><init>(Lcom/example/mrcomic/ComicArchiveReader;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lcom/example/mrcomic/ComicArchiveReader$clearCache$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 343
    iget v3, v0, Lcom/example/mrcomic/ComicArchiveReader$clearCache$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v2, v0, Lcom/example/mrcomic/ComicArchiveReader$clearCache$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/example/mrcomic/ComicArchiveReader;

    .local v2, "this":Lcom/example/mrcomic/ComicArchiveReader;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v2    # "this":Lcom/example/mrcomic/ComicArchiveReader;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 344
    .local v3, "this":Lcom/example/mrcomic/ComicArchiveReader;
    iget-object v4, v3, Lcom/example/mrcomic/ComicArchiveReader;->enhancedImageCache:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    iput-object v3, v0, Lcom/example/mrcomic/ComicArchiveReader$clearCache$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v0, Lcom/example/mrcomic/ComicArchiveReader$clearCache$1;->label:I

    invoke-virtual {v4, v0}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->clearCache(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_1

    .line 343
    return-object v2

    .line 344
    :cond_1
    move-object v2, v3

    .line 345
    .end local v3    # "this":Lcom/example/mrcomic/ComicArchiveReader;
    .restart local v2    # "this":Lcom/example/mrcomic/ComicArchiveReader;
    :goto_1
    iget-object v3, v2, Lcom/example/mrcomic/ComicArchiveReader;->preloadManager:Lcom/mrcomic/core/data/cache/PreloadManager;

    invoke-virtual {v3}, Lcom/mrcomic/core/data/cache/PreloadManager;->clearPreloadedPages()V

    .line 346
    const-string v3, "ComicArchiveReader"

    const-string v4, "Cache cleared"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getCacheStatistics(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/mrcomic/core/data/cache/CacheStatistics;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/example/mrcomic/ComicArchiveReader;->enhancedImageCache:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    invoke-virtual {v0, p1}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->getStatistics(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getCoverImage(Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "comicType"    # Ljava/lang/String;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 337
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/example/mrcomic/ComicArchiveReader;->loadPage(Landroid/net/Uri;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getPageList(Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "comicType"    # Ljava/lang/String;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/ComicArchiveReader$ComicPage;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 56
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p0, p1, v2}, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;-><init>(Ljava/lang/String;Lcom/example/mrcomic/ComicArchiveReader;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    return-object v0
.end method

.method public final isPageCached(Landroid/net/Uri;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pageNumber"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 360
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/mrcomic/ComicArchiveReader;->enhancedImageCache:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    invoke-virtual {v1, v0}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->isInMemoryCache(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/example/mrcomic/ComicArchiveReader;->enhancedImageCache:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    invoke-virtual {v1, v0, p3}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->isInDiskCache(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .line 363
    return-object v1

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 361
    return-object v1
.end method

.method public loadPage(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "pageIndex"    # I
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/example/mrcomic/ComicArchiveReader;->currentComicUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 134
    .local v0, "uri":Landroid/net/Uri;
    :cond_0
    iget-object v2, p0, Lcom/example/mrcomic/ComicArchiveReader;->currentComicType:Ljava/lang/String;

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    move-object v1, v2

    .line 135
    .local v1, "comicType":Ljava/lang/String;
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/example/mrcomic/ComicArchiveReader;->loadPage(Landroid/net/Uri;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public final loadPage(Landroid/net/Uri;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "comicType"    # Ljava/lang/String;
    .param p3, "pageNumber"    # I
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 94
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v7, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move v3, p3

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;-><init>(Landroid/net/Uri;ILcom/example/mrcomic/ComicArchiveReader;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v7, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 127
    return-object v0
.end method

.method public final preloadPages(Landroid/net/Uri;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use PreloadManager instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "updateCurrentPage(currentPage)"
            imports = {}
        .end subannotation
    .end annotation

    instance-of p4, p5, Lcom/example/mrcomic/ComicArchiveReader$preloadPages$1;

    if-eqz p4, :cond_0

    move-object p4, p5

    check-cast p4, Lcom/example/mrcomic/ComicArchiveReader$preloadPages$1;

    iget v0, p4, Lcom/example/mrcomic/ComicArchiveReader$preloadPages$1;->label:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p4, Lcom/example/mrcomic/ComicArchiveReader$preloadPages$1;->label:I

    sub-int/2addr v0, v1

    iput v0, p4, Lcom/example/mrcomic/ComicArchiveReader$preloadPages$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p4, Lcom/example/mrcomic/ComicArchiveReader$preloadPages$1;

    invoke-direct {p4, p0, p5}, Lcom/example/mrcomic/ComicArchiveReader$preloadPages$1;-><init>(Lcom/example/mrcomic/ComicArchiveReader;Lkotlin/coroutines/Continuation;)V

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v0, p4, Lcom/example/mrcomic/ComicArchiveReader$preloadPages$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 369
    iget v2, p4, Lcom/example/mrcomic/ComicArchiveReader$preloadPages$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    iget p1, p4, Lcom/example/mrcomic/ComicArchiveReader$preloadPages$1;->I$0:I

    .local p1, "currentPage":I
    iget-object p2, p4, Lcom/example/mrcomic/ComicArchiveReader$preloadPages$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/example/mrcomic/ComicArchiveReader;

    .local p2, "this":Lcom/example/mrcomic/ComicArchiveReader;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p1    # "currentPage":I
    .end local p2    # "this":Lcom/example/mrcomic/ComicArchiveReader;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 372
    .local v2, "this":Lcom/example/mrcomic/ComicArchiveReader;
    .local p1, "uri":Landroid/net/Uri;
    .local p2, "comicType":Ljava/lang/String;
    .local p3, "currentPage":I
    iget-object v3, v2, Lcom/example/mrcomic/ComicArchiveReader;->currentComicUri:Landroid/net/Uri;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/example/mrcomic/ComicArchiveReader;->currentComicType:Ljava/lang/String;

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 373
    :cond_1
    iput-object v2, p4, Lcom/example/mrcomic/ComicArchiveReader$preloadPages$1;->L$0:Ljava/lang/Object;

    iput p3, p4, Lcom/example/mrcomic/ComicArchiveReader$preloadPages$1;->I$0:I

    const/4 v3, 0x1

    iput v3, p4, Lcom/example/mrcomic/ComicArchiveReader$preloadPages$1;->label:I

    invoke-virtual {v2, p1, p2, p4}, Lcom/example/mrcomic/ComicArchiveReader;->setComicContext(Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "comicType":Ljava/lang/String;
    if-ne p1, v1, :cond_2

    .line 369
    return-object v1

    .line 373
    :cond_2
    move p1, p3

    move-object p2, v2

    .line 375
    .end local v2    # "this":Lcom/example/mrcomic/ComicArchiveReader;
    .end local p3    # "currentPage":I
    .local p1, "currentPage":I
    .local p2, "this":Lcom/example/mrcomic/ComicArchiveReader;
    :goto_1
    move p3, p1

    move-object v2, p2

    .end local p1    # "currentPage":I
    .end local p2    # "this":Lcom/example/mrcomic/ComicArchiveReader;
    .restart local v2    # "this":Lcom/example/mrcomic/ComicArchiveReader;
    .restart local p3    # "currentPage":I
    :cond_3
    const/4 p1, 0x0

    iput-object p1, p4, Lcom/example/mrcomic/ComicArchiveReader$preloadPages$1;->L$0:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p4, Lcom/example/mrcomic/ComicArchiveReader$preloadPages$1;->label:I

    invoke-virtual {v2, p3, p4}, Lcom/example/mrcomic/ComicArchiveReader;->updateCurrentPage(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "this":Lcom/example/mrcomic/ComicArchiveReader;
    .end local p3    # "currentPage":I
    if-ne p1, v1, :cond_4

    .line 369
    return-object v1

    .line 376
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setComicContext(Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/example/mrcomic/ComicArchiveReader$setComicContext$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/example/mrcomic/ComicArchiveReader$setComicContext$1;

    iget v1, v0, Lcom/example/mrcomic/ComicArchiveReader$setComicContext$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/example/mrcomic/ComicArchiveReader$setComicContext$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/example/mrcomic/ComicArchiveReader$setComicContext$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/example/mrcomic/ComicArchiveReader$setComicContext$1;

    invoke-direct {v0, p0, p3}, Lcom/example/mrcomic/ComicArchiveReader$setComicContext$1;-><init>(Lcom/example/mrcomic/ComicArchiveReader;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lcom/example/mrcomic/ComicArchiveReader$setComicContext$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 73
    iget v3, v0, Lcom/example/mrcomic/ComicArchiveReader$setComicContext$1;->label:I

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
    iget-object p1, v0, Lcom/example/mrcomic/ComicArchiveReader$setComicContext$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .local p1, "comicType":Ljava/lang/String;
    iget-object p2, v0, Lcom/example/mrcomic/ComicArchiveReader$setComicContext$1;->L$1:Ljava/lang/Object;

    check-cast p2, Landroid/net/Uri;

    .local p2, "uri":Landroid/net/Uri;
    iget-object v2, v0, Lcom/example/mrcomic/ComicArchiveReader$setComicContext$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/example/mrcomic/ComicArchiveReader;

    .local v2, "this":Lcom/example/mrcomic/ComicArchiveReader;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v1

    goto :goto_1

    .end local v2    # "this":Lcom/example/mrcomic/ComicArchiveReader;
    .end local p1    # "comicType":Ljava/lang/String;
    .end local p2    # "uri":Landroid/net/Uri;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 74
    .local v3, "this":Lcom/example/mrcomic/ComicArchiveReader;
    .local p1, "uri":Landroid/net/Uri;
    .local p2, "comicType":Ljava/lang/String;
    iput-object p1, v3, Lcom/example/mrcomic/ComicArchiveReader;->currentComicUri:Landroid/net/Uri;

    .line 75
    iput-object p2, v3, Lcom/example/mrcomic/ComicArchiveReader;->currentComicType:Ljava/lang/String;

    .line 78
    iput-object v3, v0, Lcom/example/mrcomic/ComicArchiveReader$setComicContext$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/example/mrcomic/ComicArchiveReader$setComicContext$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/example/mrcomic/ComicArchiveReader$setComicContext$1;->L$2:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lcom/example/mrcomic/ComicArchiveReader$setComicContext$1;->label:I

    invoke-virtual {v3, p1, p2, v0}, Lcom/example/mrcomic/ComicArchiveReader;->getPageList(Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_1

    .line 73
    return-object v2

    .line 78
    :cond_1
    move-object v2, v3

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    .line 73
    .end local v3    # "this":Lcom/example/mrcomic/ComicArchiveReader;
    .restart local v2    # "this":Lcom/example/mrcomic/ComicArchiveReader;
    .local p1, "comicType":Ljava/lang/String;
    .local p2, "uri":Landroid/net/Uri;
    :goto_1
    move-object v3, v4

    check-cast v3, Ljava/util/List;

    .line 79
    .local v3, "pages":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v2, Lcom/example/mrcomic/ComicArchiveReader;->currentTotalPages:I

    .line 82
    iget-object v4, v2, Lcom/example/mrcomic/ComicArchiveReader;->preloadManager:Lcom/mrcomic/core/data/cache/PreloadManager;

    .line 83
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "toString(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget v6, v2, Lcom/example/mrcomic/ComicArchiveReader;->currentTotalPages:I

    .line 85
    move-object v7, v2

    check-cast v7, Lcom/mrcomic/core/data/cache/PageLoader;

    .line 82
    invoke-virtual {v4, v5, v6, v7}, Lcom/mrcomic/core/data/cache/PreloadManager;->setComicContext(Ljava/lang/String;ILcom/mrcomic/core/data/cache/PageLoader;)V

    .line 88
    iget v4, v2, Lcom/example/mrcomic/ComicArchiveReader;->currentTotalPages:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Comic context set: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pages"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ComicArchiveReader"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateCurrentPage(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "pageNumber"    # I
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/example/mrcomic/ComicArchiveReader;->preloadManager:Lcom/mrcomic/core/data/cache/PreloadManager;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/mrcomic/core/data/cache/PreloadManager;->updateCurrentPage(I)V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updated current page to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComicArchiveReader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
