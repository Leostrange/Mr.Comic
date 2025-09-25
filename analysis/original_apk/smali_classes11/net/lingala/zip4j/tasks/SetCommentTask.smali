.class public Lnet/lingala/zip4j/tasks/SetCommentTask;
.super Lnet/lingala/zip4j/tasks/AsyncZipTask;
.source "SetCommentTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/tasks/AsyncZipTask<",
        "Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private final zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V
    .locals 0
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "asyncTaskParameters"    # Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    .line 19
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/tasks/AsyncZipTask;-><init>(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    .line 20
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/SetCommentTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 21
    return-void
.end method


# virtual methods
.method protected bridge synthetic calculateTotalWork(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 14
    check-cast p1, Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/tasks/SetCommentTask;->calculateTotalWork(Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected calculateTotalWork(Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;)J
    .locals 2
    .param p1, "taskParameters"    # Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;

    .line 47
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected bridge synthetic executeTask(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    check-cast p1, Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;

    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/tasks/SetCommentTask;->executeTask(Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method protected executeTask(Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 5
    .param p1, "taskParameters"    # Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;
    .param p2, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/SetCommentTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v0

    .line 30
    .local v0, "endOfCentralDirectoryRecord":Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setComment(Ljava/lang/String;)V

    .line 32
    new-instance v1, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    iget-object v2, p0, Lnet/lingala/zip4j/tasks/SetCommentTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;-><init>(Ljava/io/File;)V

    .line 33
    .local v1, "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    :try_start_0
    iget-object v2, p0, Lnet/lingala/zip4j/tasks/SetCommentTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    iget-object v2, p0, Lnet/lingala/zip4j/tasks/SetCommentTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getOffsetStartCentralDirectoryWRTStartDiskNumber()J

    move-result-wide v2

    .line 34
    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->seek(J)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getOffsetOfStartOfCentralDirectory()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->seek(J)V

    .line 40
    :goto_0
    new-instance v2, Lnet/lingala/zip4j/headers/HeaderWriter;

    invoke-direct {v2}, Lnet/lingala/zip4j/headers/HeaderWriter;-><init>()V

    .line 41
    .local v2, "headerWriter":Lnet/lingala/zip4j/headers/HeaderWriter;
    iget-object v3, p0, Lnet/lingala/zip4j/tasks/SetCommentTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v4, p1, Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lnet/lingala/zip4j/headers/HeaderWriter;->finalizeZipFileWithoutValidations(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .end local v2    # "headerWriter":Lnet/lingala/zip4j/headers/HeaderWriter;
    invoke-virtual {v1}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V

    .line 43
    .end local v1    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    return-void

    .line 32
    .restart local v1    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    :catchall_0
    move-exception v2

    :try_start_1
    invoke-virtual {v1}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2

    .line 26
    .end local v0    # "endOfCentralDirectoryRecord":Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;
    .end local v1    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "comment is null, cannot update Zip file with comment"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getTask()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .locals 1

    .line 52
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->SET_COMMENT:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object v0
.end method
