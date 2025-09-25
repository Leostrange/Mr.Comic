.class public final Lcom/mrcomic/core/data/cache/PreloadManager_Factory;
.super Ljava/lang/Object;
.source "PreloadManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/mrcomic/core/data/cache/PreloadManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final enhancedImageCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mrcomic/core/data/cache/EnhancedImageCache;",
            ">;"
        }
    .end annotation
.end field

.field private final memoryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mrcomic/core/data/cache/MemoryManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/mrcomic/core/data/cache/EnhancedImageCache;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/mrcomic/core/data/cache/MemoryManager;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p1, "enhancedImageCacheProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/mrcomic/core/data/cache/EnhancedImageCache;>;"
    .local p2, "memoryManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/mrcomic/core/data/cache/MemoryManager;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/mrcomic/core/data/cache/PreloadManager_Factory;->enhancedImageCacheProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lcom/mrcomic/core/data/cache/PreloadManager_Factory;->memoryManagerProvider:Ljavax/inject/Provider;

    .line 32
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mrcomic/core/data/cache/PreloadManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/mrcomic/core/data/cache/EnhancedImageCache;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/mrcomic/core/data/cache/MemoryManager;",
            ">;)",
            "Lcom/mrcomic/core/data/cache/PreloadManager_Factory;"
        }
    .end annotation

    .line 42
    .local p0, "enhancedImageCacheProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/mrcomic/core/data/cache/EnhancedImageCache;>;"
    .local p1, "memoryManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/mrcomic/core/data/cache/MemoryManager;>;"
    new-instance v0, Lcom/mrcomic/core/data/cache/PreloadManager_Factory;

    invoke-direct {v0, p0, p1}, Lcom/mrcomic/core/data/cache/PreloadManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lcom/mrcomic/core/data/cache/MemoryManager;)Lcom/mrcomic/core/data/cache/PreloadManager;
    .locals 1
    .param p0, "enhancedImageCache"    # Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    .param p1, "memoryManager"    # Lcom/mrcomic/core/data/cache/MemoryManager;

    .line 47
    new-instance v0, Lcom/mrcomic/core/data/cache/PreloadManager;

    invoke-direct {v0, p0, p1}, Lcom/mrcomic/core/data/cache/PreloadManager;-><init>(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lcom/mrcomic/core/data/cache/MemoryManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/mrcomic/core/data/cache/PreloadManager;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager_Factory;->enhancedImageCacheProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    iget-object v1, p0, Lcom/mrcomic/core/data/cache/PreloadManager_Factory;->memoryManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mrcomic/core/data/cache/MemoryManager;

    invoke-static {v0, v1}, Lcom/mrcomic/core/data/cache/PreloadManager_Factory;->newInstance(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lcom/mrcomic/core/data/cache/MemoryManager;)Lcom/mrcomic/core/data/cache/PreloadManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/mrcomic/core/data/cache/PreloadManager_Factory;->get()Lcom/mrcomic/core/data/cache/PreloadManager;

    move-result-object v0

    return-object v0
.end method
