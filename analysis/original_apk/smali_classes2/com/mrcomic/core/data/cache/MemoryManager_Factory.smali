.class public final Lcom/mrcomic/core/data/cache/MemoryManager_Factory;
.super Ljava/lang/Object;
.source "MemoryManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/mrcomic/core/data/cache/MemoryManager;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 27
    .local p1, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/mrcomic/core/data/cache/MemoryManager_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 29
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/mrcomic/core/data/cache/MemoryManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/mrcomic/core/data/cache/MemoryManager_Factory;"
        }
    .end annotation

    .line 37
    .local p0, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    new-instance v0, Lcom/mrcomic/core/data/cache/MemoryManager_Factory;

    invoke-direct {v0, p0}, Lcom/mrcomic/core/data/cache/MemoryManager_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/mrcomic/core/data/cache/MemoryManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 41
    new-instance v0, Lcom/mrcomic/core/data/cache/MemoryManager;

    invoke-direct {v0, p0}, Lcom/mrcomic/core/data/cache/MemoryManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/mrcomic/core/data/cache/MemoryManager;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/mrcomic/core/data/cache/MemoryManager_Factory;->newInstance(Landroid/content/Context;)Lcom/mrcomic/core/data/cache/MemoryManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/mrcomic/core/data/cache/MemoryManager_Factory;->get()Lcom/mrcomic/core/data/cache/MemoryManager;

    move-result-object v0

    return-object v0
.end method
