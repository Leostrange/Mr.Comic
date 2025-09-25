.class public final Lcom/example/mrcomic/MrComicApplication;
.super Lcom/example/mrcomic/Hilt_MrComicApplication;
.source "MrComicApplication.kt"

# interfaces
.implements Landroidx/work/Configuration$Provider;


# annotations
.annotation runtime Ldagger/hilt/android/HiltAndroidApp;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016R\u001e\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/example/mrcomic/MrComicApplication;",
        "Landroid/app/Application;",
        "Landroidx/work/Configuration$Provider;",
        "<init>",
        "()V",
        "workerFactory",
        "Landroidx/hilt/work/HiltWorkerFactory;",
        "getWorkerFactory",
        "()Landroidx/hilt/work/HiltWorkerFactory;",
        "setWorkerFactory",
        "(Landroidx/hilt/work/HiltWorkerFactory;)V",
        "onCreate",
        "",
        "workManagerConfiguration",
        "Landroidx/work/Configuration;",
        "getWorkManagerConfiguration",
        "()Landroidx/work/Configuration;",
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
.field public workerFactory:Landroidx/hilt/work/HiltWorkerFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/example/mrcomic/MrComicApplication;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/example/mrcomic/Hilt_MrComicApplication;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public getWorkManagerConfiguration()Landroidx/work/Configuration;
    .locals 2

    .line 19
    new-instance v0, Landroidx/work/Configuration$Builder;

    invoke-direct {v0}, Landroidx/work/Configuration$Builder;-><init>()V

    .line 20
    invoke-virtual {p0}, Lcom/example/mrcomic/MrComicApplication;->getWorkerFactory()Landroidx/hilt/work/HiltWorkerFactory;

    move-result-object v1

    check-cast v1, Landroidx/work/WorkerFactory;

    invoke-virtual {v0, v1}, Landroidx/work/Configuration$Builder;->setWorkerFactory(Landroidx/work/WorkerFactory;)Landroidx/work/Configuration$Builder;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroidx/work/Configuration$Builder;->build()Landroidx/work/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public final getWorkerFactory()Landroidx/hilt/work/HiltWorkerFactory;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/example/mrcomic/MrComicApplication;->workerFactory:Landroidx/hilt/work/HiltWorkerFactory;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "workerFactory"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .line 15
    invoke-super {p0}, Lcom/example/mrcomic/Hilt_MrComicApplication;->onCreate()V

    .line 16
    return-void
.end method

.method public final setWorkerFactory(Landroidx/hilt/work/HiltWorkerFactory;)V
    .locals 1
    .param p1, "<set-?>"    # Landroidx/hilt/work/HiltWorkerFactory;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/example/mrcomic/MrComicApplication;->workerFactory:Landroidx/hilt/work/HiltWorkerFactory;

    return-void
.end method
