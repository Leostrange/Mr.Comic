.class public final Lcom/example/mrcomic/DatabaseModule_ProvideComicDatabaseFactory;
.super Ljava/lang/Object;
.source "DatabaseModule_ProvideComicDatabaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/example/mrcomic/ComicDatabase;",
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contextProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p1, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/example/mrcomic/DatabaseModule_ProvideComicDatabaseFactory;->contextProvider:Ljavax/inject/Provider;

    .line 30
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/example/mrcomic/DatabaseModule_ProvideComicDatabaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contextProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/example/mrcomic/DatabaseModule_ProvideComicDatabaseFactory;"
        }
    .end annotation

    .line 39
    .local p0, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    new-instance v0, Lcom/example/mrcomic/DatabaseModule_ProvideComicDatabaseFactory;

    invoke-direct {v0, p0}, Lcom/example/mrcomic/DatabaseModule_ProvideComicDatabaseFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideComicDatabase(Landroid/content/Context;)Lcom/example/mrcomic/ComicDatabase;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/example/mrcomic/DatabaseModule;->INSTANCE:Lcom/example/mrcomic/DatabaseModule;

    invoke-virtual {v0, p0}, Lcom/example/mrcomic/DatabaseModule;->provideComicDatabase(Landroid/content/Context;)Lcom/example/mrcomic/ComicDatabase;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/mrcomic/ComicDatabase;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/example/mrcomic/ComicDatabase;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/example/mrcomic/DatabaseModule_ProvideComicDatabaseFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/example/mrcomic/DatabaseModule_ProvideComicDatabaseFactory;->provideComicDatabase(Landroid/content/Context;)Lcom/example/mrcomic/ComicDatabase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/example/mrcomic/DatabaseModule_ProvideComicDatabaseFactory;->get()Lcom/example/mrcomic/ComicDatabase;

    move-result-object v0

    return-object v0
.end method
