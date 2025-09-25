.class public final Lcom/example/mrcomic/ComicArchiveReader_Factory;
.super Ljava/lang/Object;
.source "ComicArchiveReader_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/example/mrcomic/ComicArchiveReader;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final enhancedImageCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mrcomic/core/data/cache/EnhancedImageCache;",
            ">;"
        }
    .end annotation
.end field

.field private final preloadManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mrcomic/core/data/cache/PreloadManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "contextProvider",
            "enhancedImageCacheProvider",
            "preloadManagerProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/mrcomic/core/data/cache/EnhancedImageCache;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/mrcomic/core/data/cache/PreloadManager;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    .local p2, "enhancedImageCacheProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/mrcomic/core/data/cache/EnhancedImageCache;>;"
    .local p3, "preloadManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/mrcomic/core/data/cache/PreloadManager;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/example/mrcomic/ComicArchiveReader_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/example/mrcomic/ComicArchiveReader_Factory;->enhancedImageCacheProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p3, p0, Lcom/example/mrcomic/ComicArchiveReader_Factory;->preloadManagerProvider:Ljavax/inject/Provider;

    .line 39
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/example/mrcomic/ComicArchiveReader_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "contextProvider",
            "enhancedImageCacheProvider",
            "preloadManagerProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/mrcomic/core/data/cache/EnhancedImageCache;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/mrcomic/core/data/cache/PreloadManager;",
            ">;)",
            "Lcom/example/mrcomic/ComicArchiveReader_Factory;"
        }
    .end annotation

    .line 49
    .local p0, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    .local p1, "enhancedImageCacheProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/mrcomic/core/data/cache/EnhancedImageCache;>;"
    .local p2, "preloadManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/mrcomic/core/data/cache/PreloadManager;>;"
    new-instance v0, Lcom/example/mrcomic/ComicArchiveReader_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/example/mrcomic/ComicArchiveReader_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lcom/mrcomic/core/data/cache/PreloadManager;)Lcom/example/mrcomic/ComicArchiveReader;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enhancedImageCache"    # Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    .param p2, "preloadManager"    # Lcom/mrcomic/core/data/cache/PreloadManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "enhancedImageCache",
            "preloadManager"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/example/mrcomic/ComicArchiveReader;

    invoke-direct {v0, p0, p1, p2}, Lcom/example/mrcomic/ComicArchiveReader;-><init>(Landroid/content/Context;Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lcom/mrcomic/core/data/cache/PreloadManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/example/mrcomic/ComicArchiveReader;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/example/mrcomic/ComicArchiveReader_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/example/mrcomic/ComicArchiveReader_Factory;->enhancedImageCacheProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    iget-object v2, p0, Lcom/example/mrcomic/ComicArchiveReader_Factory;->preloadManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mrcomic/core/data/cache/PreloadManager;

    invoke-static {v0, v1, v2}, Lcom/example/mrcomic/ComicArchiveReader_Factory;->newInstance(Landroid/content/Context;Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lcom/mrcomic/core/data/cache/PreloadManager;)Lcom/example/mrcomic/ComicArchiveReader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/example/mrcomic/ComicArchiveReader_Factory;->get()Lcom/example/mrcomic/ComicArchiveReader;

    move-result-object v0

    return-object v0
.end method
