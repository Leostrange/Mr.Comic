.class public final Lcom/example/mrcomic/DatabaseModule_ProvideComicDaoFactory;
.super Ljava/lang/Object;
.source "DatabaseModule_ProvideComicDaoFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/example/mrcomic/ComicDao;",
        ">;"
    }
.end annotation


# instance fields
.field private final databaseProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/example/mrcomic/ComicDatabase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "databaseProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/example/mrcomic/ComicDatabase;",
            ">;)V"
        }
    .end annotation

    .line 27
    .local p1, "databaseProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/example/mrcomic/ComicDatabase;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/example/mrcomic/DatabaseModule_ProvideComicDaoFactory;->databaseProvider:Ljavax/inject/Provider;

    .line 29
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/example/mrcomic/DatabaseModule_ProvideComicDaoFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "databaseProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/example/mrcomic/ComicDatabase;",
            ">;)",
            "Lcom/example/mrcomic/DatabaseModule_ProvideComicDaoFactory;"
        }
    .end annotation

    .line 38
    .local p0, "databaseProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/example/mrcomic/ComicDatabase;>;"
    new-instance v0, Lcom/example/mrcomic/DatabaseModule_ProvideComicDaoFactory;

    invoke-direct {v0, p0}, Lcom/example/mrcomic/DatabaseModule_ProvideComicDaoFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideComicDao(Lcom/example/mrcomic/ComicDatabase;)Lcom/example/mrcomic/ComicDao;
    .locals 1
    .param p0, "database"    # Lcom/example/mrcomic/ComicDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "database"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/example/mrcomic/DatabaseModule;->INSTANCE:Lcom/example/mrcomic/DatabaseModule;

    invoke-virtual {v0, p0}, Lcom/example/mrcomic/DatabaseModule;->provideComicDao(Lcom/example/mrcomic/ComicDatabase;)Lcom/example/mrcomic/ComicDao;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/mrcomic/ComicDao;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/example/mrcomic/ComicDao;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/example/mrcomic/DatabaseModule_ProvideComicDaoFactory;->databaseProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/mrcomic/ComicDatabase;

    invoke-static {v0}, Lcom/example/mrcomic/DatabaseModule_ProvideComicDaoFactory;->provideComicDao(Lcom/example/mrcomic/ComicDatabase;)Lcom/example/mrcomic/ComicDao;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/example/mrcomic/DatabaseModule_ProvideComicDaoFactory;->get()Lcom/example/mrcomic/ComicDao;

    move-result-object v0

    return-object v0
.end method
