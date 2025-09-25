.class public abstract Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;
.super Lnet/lingala/zip4j/tasks/AsyncZipTask;
.source "AbstractAddFileToZipTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/lingala/zip4j/tasks/AsyncZipTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

.field private final password:[C

.field private final zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method constructor <init>(Lnet/lingala/zip4j/model/ZipModel;[CLnet/lingala/zip4j/headers/HeaderWriter;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V
    .locals 0
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "password"    # [C
    .param p3, "headerWriter"    # Lnet/lingala/zip4j/headers/HeaderWriter;
    .param p4, "asyncTaskParameters"    # Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    .line 51
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;, "Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask<TT;>;"
    invoke-direct {p0, p4}, Lnet/lingala/zip4j/tasks/AsyncZipTask;-><init>(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    .line 52
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 53
    iput-object p2, p0, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->password:[C

    .line 54
    iput-object p3, p0, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    .line 56
    return-void
.end method

.method private addFileToZip(Ljava/io/File;Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;Lnet/lingala/zip4j/progress/ProgressMonitor;[B)V
    .locals 6
    .param p1, "fileToAdd"    # Ljava/io/File;
    .param p2, "zipOutputStream"    # Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    .param p3, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p4, "splitOutputStream"    # Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .param p5, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p6, "readBuff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;, "Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask<TT;>;"
    invoke-virtual {p2, p3}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->putNextEntry(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 111
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 113
    .local v0, "inputStream":Ljava/io/InputStream;
    :goto_0
    :try_start_0
    invoke-virtual {v0, p6}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "readLen":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 114
    invoke-virtual {p2, p6, v1, v3}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->write([BII)V

    .line 115
    int-to-long v4, v3

    invoke-virtual {p5, v4, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V

    .line 116
    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->verifyIfTaskIsCancelled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_2

    .line 112
    .end local v3    # "readLen":I
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1

    .line 121
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :cond_1
    :goto_2
    invoke-direct {p0, p2, p4, p1, v1}, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->closeEntry(Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;Ljava/io/File;Z)V

    .line 122
    return-void
.end method

.method private addSymlink(Lnet/lingala/zip4j/model/ZipParameters;)Z
    .locals 2
    .param p1, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;

    .line 293
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;, "Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask<TT;>;"
    sget-object v0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINK_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getSymbolicLinkAction()Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINK_AND_LINKED_FILE:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 294
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getSymbolicLinkAction()Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 293
    :goto_1
    return v0
.end method

.method private addSymlinkToZip(Ljava/io/File;Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;)V
    .locals 3
    .param p1, "fileToAdd"    # Ljava/io/File;
    .param p2, "zipOutputStream"    # Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    .param p3, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p4, "splitOutputStream"    # Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;, "Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask<TT;>;"
    new-instance v0, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {v0, p3}, Lnet/lingala/zip4j/model/ZipParameters;-><init>(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 93
    .local v0, "clonedZipParameters":Lnet/lingala/zip4j/model/ZipParameters;
    invoke-virtual {p3}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->replaceFileNameInZip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setFileNameInZip(Ljava/lang/String;)V

    .line 94
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptFiles(Z)V

    .line 95
    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 97
    invoke-virtual {p2, v0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->putNextEntry(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 99
    invoke-static {p1}, Lnet/lingala/zip4j/util/FileUtils;->readSymbolicLink(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "symLinkTarget":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->write([B)V

    .line 102
    const/4 v2, 0x1

    invoke-direct {p0, p2, p4, p1, v2}, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->closeEntry(Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;Ljava/io/File;Z)V

    .line 103
    return-void
.end method

.method private cloneAndAdjustZipParameters(Lnet/lingala/zip4j/model/ZipParameters;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)Lnet/lingala/zip4j/model/ZipParameters;
    .locals 6
    .param p1, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p2, "fileToAdd"    # Ljava/io/File;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;, "Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask<TT;>;"
    new-instance v0, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/model/ZipParameters;-><init>(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 205
    .local v0, "clonedZipParameters":Lnet/lingala/zip4j/model/ZipParameters;
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/ZipParameters;->setEntrySize(J)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/ZipParameters;->setEntrySize(J)V

    .line 211
    :goto_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getLastModifiedFileTime()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gtz v1, :cond_1

    .line 212
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/ZipParameters;->setLastModifiedFileTime(J)V

    .line 215
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setWriteExtendedLocalFileHeader(Z)V

    .line 217
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 218
    invoke-static {p2, p1}, Lnet/lingala/zip4j/util/FileUtils;->getRelativeFileName(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "relativeFileName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/ZipParameters;->setFileNameInZip(Ljava/lang/String;)V

    .line 222
    .end local v4    # "relativeFileName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 223
    sget-object v2, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 224
    sget-object v2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    .line 225
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptFiles(Z)V

    goto :goto_1

    .line 227
    :cond_3
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v1

    sget-object v4, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v1, v4, :cond_4

    .line 228
    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->CALCULATE_CRC:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    invoke-virtual {p3, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentTask(Lnet/lingala/zip4j/progress/ProgressMonitor$Task;)V

    .line 229
    invoke-static {p2, p3}, Lnet/lingala/zip4j/util/CrcUtil;->computeFileCrc(Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/ZipParameters;->setEntryCRC(J)V

    .line 230
    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->ADD_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    invoke-virtual {p3, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentTask(Lnet/lingala/zip4j/progress/ProgressMonitor$Task;)V

    .line 233
    :cond_4
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_5

    .line 234
    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 238
    :cond_5
    :goto_1
    return-object v0
.end method

.method private closeEntry(Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;Ljava/io/File;Z)V
    .locals 5
    .param p1, "zipOutputStream"    # Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    .param p2, "splitOutputStream"    # Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .param p3, "fileToAdd"    # Ljava/io/File;
    .param p4, "isSymlink"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;, "Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask<TT;>;"
    invoke-virtual {p1}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->closeEntry()Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v0

    .line 127
    .local v0, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    invoke-static {p3}, Lnet/lingala/zip4j/util/FileUtils;->getFileAttributes(Ljava/io/File;)[B

    move-result-object v1

    .line 129
    .local v1, "fileAttributes":[B
    if-nez p4, :cond_0

    .line 131
    const/4 v2, 0x3

    aget-byte v3, v1, v2

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lnet/lingala/zip4j/util/BitUtils;->unsetBit(BI)B

    move-result v3

    aput-byte v3, v1, v2

    .line 134
    :cond_0
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->setExternalFileAttributes([B)V

    .line 136
    invoke-virtual {p0, v0, p2}, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->updateLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;)V

    .line 137
    return-void
.end method

.method private removeFilesIfExists(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Lnet/lingala/zip4j/model/Zip4jConfig;)Ljava/util/List;
    .locals 6
    .param p2, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p4, "zip4jConfig"    # Lnet/lingala/zip4j/model/Zip4jConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lnet/lingala/zip4j/model/ZipParameters;",
            "Lnet/lingala/zip4j/progress/ProgressMonitor;",
            "Lnet/lingala/zip4j/model/Zip4jConfig;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 245
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;, "Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask<TT;>;"
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 246
    .local v0, "filesToAdd":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v1, p0, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    return-object v0

    .line 250
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 253
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 254
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 257
    :cond_1
    invoke-static {v2, p2}, Lnet/lingala/zip4j/util/FileUtils;->getRelativeFileName(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "fileName":Ljava/lang/String;
    iget-object v4, p0, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-static {v4, v3}, Lnet/lingala/zip4j/headers/HeaderUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v4

    .line 260
    .local v4, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    if-eqz v4, :cond_3

    .line 261
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->isOverrideExistingFilesInZip()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 262
    sget-object v5, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->REMOVE_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    invoke-virtual {p3, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentTask(Lnet/lingala/zip4j/progress/ProgressMonitor$Task;)V

    .line 263
    invoke-virtual {p0, v4, p3, p4}, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->removeFile(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 264
    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->verifyIfTaskIsCancelled()V

    .line 265
    sget-object v5, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->ADD_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    invoke-virtual {p3, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentTask(Lnet/lingala/zip4j/progress/ProgressMonitor$Task;)V

    goto :goto_1

    .line 267
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 270
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    :cond_3
    :goto_1
    goto :goto_0

    .line 272
    :cond_4
    return-object v0
.end method

.method private replaceFileNameInZip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fileInZipWithPath"    # Ljava/lang/String;
    .param p2, "newFileName"    # Ljava/lang/String;

    .line 284
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;, "Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask<TT;>;"
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 288
    :cond_0
    return-object p2
.end method


# virtual methods
.method addFilesToZip(Ljava/util/List;Lnet/lingala/zip4j/progress/ProgressMonitor;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/model/Zip4jConfig;)V
    .locals 19
    .param p2, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p3, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p4, "zip4jConfig"    # Lnet/lingala/zip4j/model/Zip4jConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lnet/lingala/zip4j/progress/ProgressMonitor;",
            "Lnet/lingala/zip4j/model/ZipParameters;",
            "Lnet/lingala/zip4j/model/Zip4jConfig;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;, "Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask<TT;>;"
    .local p1, "filesToAdd":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual/range {p3 .. p3}, Lnet/lingala/zip4j/model/ZipParameters;->getSymbolicLinkAction()Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    move-result-object v0

    invoke-static {v9, v0}, Lnet/lingala/zip4j/util/FileUtils;->assertFilesExist(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;)V

    .line 63
    invoke-virtual/range {p4 .. p4}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v0

    new-array v13, v0, [B

    .line 64
    .local v13, "readBuff":[B
    invoke-direct {v8, v9, v11, v10, v12}, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->removeFilesIfExists(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Lnet/lingala/zip4j/model/Zip4jConfig;)Ljava/util/List;

    move-result-object v14

    .line 66
    .local v14, "updatedFilesToAdd":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    iget-object v1, v8, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v1

    iget-object v2, v8, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getSplitLength()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;-><init>(Ljava/io/File;J)V

    move-object v15, v0

    .line 67
    .local v15, "splitOutputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    :try_start_0
    invoke-virtual {v8, v15, v12}, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->initializeOutputStream(Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;Lnet/lingala/zip4j/model/Zip4jConfig;)Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v7, v0

    .line 69
    .local v7, "zipOutputStream":Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    :try_start_1
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    move-object v6, v1

    .line 70
    .local v6, "fileToAdd":Ljava/io/File;
    invoke-virtual/range {p0 .. p0}, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->verifyIfTaskIsCancelled()V

    .line 71
    invoke-direct {v8, v11, v6, v10}, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->cloneAndAdjustZipParameters(Lnet/lingala/zip4j/model/ZipParameters;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v1

    move-object v5, v1

    .line 72
    .local v5, "clonedZipParameters":Lnet/lingala/zip4j/model/ZipParameters;
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 74
    invoke-static {v6}, Lnet/lingala/zip4j/util/FileUtils;->isSymbolicLink(Ljava/io/File;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_0

    .line 75
    :try_start_2
    invoke-direct {v8, v5}, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->addSymlink(Lnet/lingala/zip4j/model/ZipParameters;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-direct {v8, v6, v7, v5, v15}, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->addSymlinkToZip(Ljava/io/File;Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;)V

    .line 78
    sget-object v1, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINK_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipParameters;->getSymbolicLinkAction()Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 79
    goto :goto_0

    .line 66
    .end local v5    # "clonedZipParameters":Lnet/lingala/zip4j/model/ZipParameters;
    .end local v6    # "fileToAdd":Ljava/io/File;
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v18, v7

    goto :goto_1

    .line 84
    .restart local v5    # "clonedZipParameters":Lnet/lingala/zip4j/model/ZipParameters;
    .restart local v6    # "fileToAdd":Ljava/io/File;
    :cond_0
    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v7

    move-object v4, v5

    move-object/from16 v16, v5

    .end local v5    # "clonedZipParameters":Lnet/lingala/zip4j/model/ZipParameters;
    .local v16, "clonedZipParameters":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v5, v15

    move-object/from16 v17, v6

    .end local v6    # "fileToAdd":Ljava/io/File;
    .local v17, "fileToAdd":Ljava/io/File;
    move-object/from16 v6, p2

    move-object/from16 v18, v7

    .end local v7    # "zipOutputStream":Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    .local v18, "zipOutputStream":Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    move-object v7, v13

    :try_start_3
    invoke-direct/range {v1 .. v7}, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->addFileToZip(Ljava/io/File;Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;Lnet/lingala/zip4j/progress/ProgressMonitor;[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    .end local v16    # "clonedZipParameters":Lnet/lingala/zip4j/model/ZipParameters;
    .end local v17    # "fileToAdd":Ljava/io/File;
    move-object/from16 v7, v18

    goto :goto_0

    .line 66
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_1

    .line 86
    .end local v18    # "zipOutputStream":Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    .restart local v7    # "zipOutputStream":Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    :cond_1
    move-object/from16 v18, v7

    .end local v7    # "zipOutputStream":Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    .restart local v18    # "zipOutputStream":Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    if-eqz v18, :cond_2

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .end local v18    # "zipOutputStream":Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    :cond_2
    invoke-virtual {v15}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V

    .line 87
    .end local v15    # "splitOutputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    return-void

    .line 66
    .restart local v7    # "zipOutputStream":Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    .restart local v15    # "splitOutputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    :catchall_2
    move-exception v0

    move-object/from16 v18, v7

    move-object v1, v0

    .end local v7    # "zipOutputStream":Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    .restart local v18    # "zipOutputStream":Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    :goto_1
    if-eqz v18, :cond_3

    :try_start_5
    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v13    # "readBuff":[B
    .end local v14    # "updatedFilesToAdd":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v15    # "splitOutputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local p1    # "filesToAdd":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local p2    # "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    .end local p3    # "zipParameters":Lnet/lingala/zip4j/model/ZipParameters;
    .end local p4    # "zip4jConfig":Lnet/lingala/zip4j/model/Zip4jConfig;
    :cond_3
    :goto_2
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .end local v18    # "zipOutputStream":Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    .restart local v13    # "readBuff":[B
    .restart local v14    # "updatedFilesToAdd":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v15    # "splitOutputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local p1    # "filesToAdd":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local p2    # "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    .restart local p3    # "zipParameters":Lnet/lingala/zip4j/model/ZipParameters;
    .restart local p4    # "zip4jConfig":Lnet/lingala/zip4j/model/Zip4jConfig;
    :catchall_4
    move-exception v0

    move-object v1, v0

    :try_start_7
    invoke-virtual {v15}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
.end method

.method calculateWorkForFiles(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;)J
    .locals 10
    .param p2, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lnet/lingala/zip4j/model/ZipParameters;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 140
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;, "Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask<TT;>;"
    .local p1, "filesToAdd":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const-wide/16 v0, 0x0

    .line 142
    .local v0, "totalWork":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 143
    .local v3, "fileToAdd":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 144
    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v4

    sget-object v5, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v4, v5, :cond_1

    .line 148
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 155
    :goto_1
    invoke-static {v3, p2}, Lnet/lingala/zip4j/util/FileUtils;->getRelativeFileName(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "relativeFileName":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->getZipModel()Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v5

    invoke-static {v5, v4}, Lnet/lingala/zip4j/headers/HeaderUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v5

    .line 157
    .local v5, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    if-eqz v5, :cond_2

    .line 158
    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->getZipModel()Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v8

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 160
    .end local v3    # "fileToAdd":Ljava/io/File;
    .end local v4    # "relativeFileName":Ljava/lang/String;
    .end local v5    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    :cond_2
    goto :goto_0

    .line 162
    :cond_3
    return-wide v0
.end method

.method protected getTask()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .locals 1

    .line 299
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;, "Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask<TT;>;"
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->ADD_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object v0
.end method

.method protected getZipModel()Lnet/lingala/zip4j/model/ZipModel;
    .locals 1

    .line 303
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;, "Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    return-object v0
.end method

.method initializeOutputStream(Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;Lnet/lingala/zip4j/model/Zip4jConfig;)Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    .locals 3
    .param p1, "splitOutputStream"    # Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .param p2, "zip4jConfig"    # Lnet/lingala/zip4j/model/Zip4jConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;, "Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-static {v0}, Lnet/lingala/zip4j/headers/HeaderUtil;->getOffsetStartOfCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->seek(J)V

    .line 170
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->password:[C

    iget-object v2, p0, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v0, p1, v1, p2, v2}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;-><init>(Ljava/io/OutputStream;[CLnet/lingala/zip4j/model/Zip4jConfig;Lnet/lingala/zip4j/model/ZipModel;)V

    return-object v0
.end method

.method removeFile(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;Lnet/lingala/zip4j/model/Zip4jConfig;)V
    .locals 4
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p3, "zip4jConfig"    # Lnet/lingala/zip4j/model/Zip4jConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 276
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;, "Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask<TT;>;"
    new-instance v0, Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2}, Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;-><init>(Ljava/util/concurrent/ExecutorService;ZLnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 277
    .local v0, "asyncTaskParameters":Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;
    new-instance v1, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;

    iget-object v2, p0, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v3, p0, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    invoke-direct {v1, v2, v3, v0}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;-><init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/headers/HeaderWriter;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    .line 278
    .local v1, "removeFilesFromZipTask":Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;
    new-instance v2, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;

    .line 279
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;-><init>(Ljava/util/List;Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 280
    .local v2, "parameters":Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;
    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->execute(Ljava/lang/Object;)V

    .line 281
    return-void
.end method

.method updateLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;)V
    .locals 2
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "splitOutputStream"    # Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;, "Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->getZipModel()Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lnet/lingala/zip4j/headers/HeaderWriter;->updateLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;)V

    .line 197
    return-void
.end method

.method verifyZipParameters(Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 2
    .param p1, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 174
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;, "Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask<TT;>;"
    if-eqz p1, :cond_5

    .line 178
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "unsupported compression type"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-eq v0, v1, :cond_3

    .line 187
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->password:[C

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;->password:[C

    array-length v0, v0

    if-lez v0, :cond_2

    goto :goto_1

    .line 188
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input password is empty or null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Encryption method has to be set, when encrypt files flag is set"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_4
    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    .line 193
    :goto_1
    return-void

    .line 175
    :cond_5
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "cannot validate zip parameters"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
