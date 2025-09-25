.class public final Lcom/example/mrcomic/MrComicApplication_MembersInjector;
.super Ljava/lang/Object;
.source "MrComicApplication_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/example/mrcomic/MrComicApplication;",
        ">;"
    }
.end annotation


# instance fields
.field private final workerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/hilt/work/HiltWorkerFactory;",
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
            "workerFactoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/hilt/work/HiltWorkerFactory;",
            ">;)V"
        }
    .end annotation

    .line 26
    .local p1, "workerFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroidx/hilt/work/HiltWorkerFactory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/example/mrcomic/MrComicApplication_MembersInjector;->workerFactoryProvider:Ljavax/inject/Provider;

    .line 28
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workerFactoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/hilt/work/HiltWorkerFactory;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/example/mrcomic/MrComicApplication;",
            ">;"
        }
    .end annotation

    .line 32
    .local p0, "workerFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroidx/hilt/work/HiltWorkerFactory;>;"
    new-instance v0, Lcom/example/mrcomic/MrComicApplication_MembersInjector;

    invoke-direct {v0, p0}, Lcom/example/mrcomic/MrComicApplication_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectWorkerFactory(Lcom/example/mrcomic/MrComicApplication;Landroidx/hilt/work/HiltWorkerFactory;)V
    .locals 0
    .param p0, "instance"    # Lcom/example/mrcomic/MrComicApplication;
    .param p1, "workerFactory"    # Landroidx/hilt/work/HiltWorkerFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "workerFactory"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/example/mrcomic/MrComicApplication;->workerFactory:Landroidx/hilt/work/HiltWorkerFactory;

    .line 44
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/example/mrcomic/MrComicApplication;)V
    .locals 1
    .param p1, "instance"    # Lcom/example/mrcomic/MrComicApplication;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/example/mrcomic/MrComicApplication_MembersInjector;->workerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/hilt/work/HiltWorkerFactory;

    invoke-static {p1, v0}, Lcom/example/mrcomic/MrComicApplication_MembersInjector;->injectWorkerFactory(Lcom/example/mrcomic/MrComicApplication;Landroidx/hilt/work/HiltWorkerFactory;)V

    .line 38
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "instance"
        }
    .end annotation

    .line 11
    check-cast p1, Lcom/example/mrcomic/MrComicApplication;

    invoke-virtual {p0, p1}, Lcom/example/mrcomic/MrComicApplication_MembersInjector;->injectMembers(Lcom/example/mrcomic/MrComicApplication;)V

    return-void
.end method
