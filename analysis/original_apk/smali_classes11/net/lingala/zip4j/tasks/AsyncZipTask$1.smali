.class Lnet/lingala/zip4j/tasks/AsyncZipTask$1;
.super Ljava/lang/Object;
.source "AsyncZipTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/lingala/zip4j/tasks/AsyncZipTask;->execute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/lingala/zip4j/tasks/AsyncZipTask;

.field final synthetic val$taskParameters:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lnet/lingala/zip4j/tasks/AsyncZipTask;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lnet/lingala/zip4j/tasks/AsyncZipTask;

    .line 32
    .local p0, "this":Lnet/lingala/zip4j/tasks/AsyncZipTask$1;, "Lnet/lingala/zip4j/tasks/AsyncZipTask$1;"
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask$1;->this$0:Lnet/lingala/zip4j/tasks/AsyncZipTask;

    iput-object p2, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask$1;->val$taskParameters:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 36
    .local p0, "this":Lnet/lingala/zip4j/tasks/AsyncZipTask$1;, "Lnet/lingala/zip4j/tasks/AsyncZipTask$1;"
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask$1;->this$0:Lnet/lingala/zip4j/tasks/AsyncZipTask;

    iget-object v1, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask$1;->val$taskParameters:Ljava/lang/Object;

    iget-object v2, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask$1;->this$0:Lnet/lingala/zip4j/tasks/AsyncZipTask;

    invoke-static {v2}, Lnet/lingala/zip4j/tasks/AsyncZipTask;->access$300(Lnet/lingala/zip4j/tasks/AsyncZipTask;)Lnet/lingala/zip4j/progress/ProgressMonitor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/lingala/zip4j/tasks/AsyncZipTask;->access$400(Lnet/lingala/zip4j/tasks/AsyncZipTask;Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask$1;->this$0:Lnet/lingala/zip4j/tasks/AsyncZipTask;

    invoke-static {v1}, Lnet/lingala/zip4j/tasks/AsyncZipTask;->access$500(Lnet/lingala/zip4j/tasks/AsyncZipTask;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 41
    throw v0

    .line 37
    :catch_0
    move-exception v0

    .line 40
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask$1;->this$0:Lnet/lingala/zip4j/tasks/AsyncZipTask;

    invoke-static {v0}, Lnet/lingala/zip4j/tasks/AsyncZipTask;->access$500(Lnet/lingala/zip4j/tasks/AsyncZipTask;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 41
    nop

    .line 42
    return-void
.end method
