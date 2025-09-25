.class Landroidx/work/Worker$1;
.super Ljava/lang/Object;
.source "Worker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/Worker;->startWork()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/Worker;


# direct methods
.method constructor <init>(Landroidx/work/Worker;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/work/Worker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Landroidx/work/Worker$1;->this$0:Landroidx/work/Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 82
    :try_start_0
    iget-object v0, p0, Landroidx/work/Worker$1;->this$0:Landroidx/work/Worker;

    invoke-virtual {v0}, Landroidx/work/Worker;->doWork()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    .line 83
    .local v0, "result":Landroidx/work/ListenableWorker$Result;
    iget-object v1, p0, Landroidx/work/Worker$1;->this$0:Landroidx/work/Worker;

    iget-object v1, v1, Landroidx/work/Worker;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    nop

    .end local v0    # "result":Landroidx/work/ListenableWorker$Result;
    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Landroidx/work/Worker$1;->this$0:Landroidx/work/Worker;

    iget-object v1, v1, Landroidx/work/Worker;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 88
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
