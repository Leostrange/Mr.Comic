.class public final Lcom/example/mrcomic/ComicViewModel_Factory;
.super Ljava/lang/Object;
.source "ComicViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/example/mrcomic/ComicViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final comicDaoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/example/mrcomic/ComicDao;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "comicDaoProvider",
            "contextProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/example/mrcomic/ComicDao;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 30
    .local p1, "comicDaoProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/example/mrcomic/ComicDao;>;"
    .local p2, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/example/mrcomic/ComicViewModel_Factory;->comicDaoProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/example/mrcomic/ComicViewModel_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 33
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/example/mrcomic/ComicViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "comicDaoProvider",
            "contextProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/example/mrcomic/ComicDao;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/example/mrcomic/ComicViewModel_Factory;"
        }
    .end annotation

    .line 42
    .local p0, "comicDaoProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/example/mrcomic/ComicDao;>;"
    .local p1, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    new-instance v0, Lcom/example/mrcomic/ComicViewModel_Factory;

    invoke-direct {v0, p0, p1}, Lcom/example/mrcomic/ComicViewModel_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/example/mrcomic/ComicDao;Landroid/content/Context;)Lcom/example/mrcomic/ComicViewModel;
    .locals 1
    .param p0, "comicDao"    # Lcom/example/mrcomic/ComicDao;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "comicDao",
            "context"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/example/mrcomic/ComicViewModel;

    invoke-direct {v0, p0, p1}, Lcom/example/mrcomic/ComicViewModel;-><init>(Lcom/example/mrcomic/ComicDao;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/example/mrcomic/ComicViewModel;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/example/mrcomic/ComicViewModel_Factory;->comicDaoProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/mrcomic/ComicDao;

    iget-object v1, p0, Lcom/example/mrcomic/ComicViewModel_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/example/mrcomic/ComicViewModel_Factory;->newInstance(Lcom/example/mrcomic/ComicDao;Landroid/content/Context;)Lcom/example/mrcomic/ComicViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/example/mrcomic/ComicViewModel_Factory;->get()Lcom/example/mrcomic/ComicViewModel;

    move-result-object v0

    return-object v0
.end method
