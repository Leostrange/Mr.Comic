.class public abstract Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;
.super Lnet/lingala/zip4j/tasks/AsyncZipTask;
.source "AbstractExtractFileTask.java"


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
.field private final unzipParameters:Lnet/lingala/zip4j/model/UnzipParameters;

.field private final zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V
    .locals 0
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "unzipParameters"    # Lnet/lingala/zip4j/model/UnzipParameters;
    .param p3, "asyncTaskParameters"    # Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    .line 32
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    invoke-direct {p0, p3}, Lnet/lingala/zip4j/tasks/AsyncZipTask;-><init>(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    .line 33
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 34
    iput-object p2, p0, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->unzipParameters:Lnet/lingala/zip4j/model/UnzipParameters;

    .line 35
    return-void
.end method

.method private assertCanonicalPathsAreSame(Ljava/io/File;Ljava/lang/String;Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 5
    .param p1, "outputFile"    # Ljava/io/File;
    .param p2, "outputPath"    # Ljava/lang/String;
    .param p3, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "outputFileCanonicalPath":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "outputCanonicalPath":Ljava/lang/String;
    sget-object v2, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    return-void

    .line 89
    :cond_2
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal file name that breaks out of the target directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 90
    invoke-virtual {p3}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private checkOutputDirectoryStructure(Ljava/io/File;)V
    .locals 3
    .param p1, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 178
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create parent directories: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1
    :goto_0
    return-void
.end method

.method private createSymLink(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 5
    .param p1, "zipInputStream"    # Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "outputFile"    # Ljava/io/File;
    .param p4, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p4}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->readCompleteEntry(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 127
    .local v0, "symLinkPath":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "Could not create parent directories"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_1
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 133
    .local v2, "linkTarget":Ljava/nio/file/Path;
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 135
    :cond_2
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete existing symlink "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .end local v0    # "symLinkPath":Ljava/lang/String;
    .end local p1    # "zipInputStream":Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .end local p2    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local p3    # "outputFile":Ljava/io/File;
    .end local p4    # "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    throw v1

    .line 138
    .restart local v0    # "symLinkPath":Ljava/lang/String;
    .restart local p1    # "zipInputStream":Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .restart local p2    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .restart local p3    # "outputFile":Ljava/io/File;
    .restart local p4    # "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    :cond_3
    :goto_1
    invoke-virtual {p3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v3, v2, v1}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    nop

    .end local v2    # "linkTarget":Ljava/nio/file/Path;
    goto :goto_2

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "error":Ljava/lang/NoSuchMethodError;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 141
    .local v2, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 144
    .end local v1    # "error":Ljava/lang/NoSuchMethodError;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    :goto_2
    return-void

    .line 140
    .restart local v1    # "error":Ljava/lang/NoSuchMethodError;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v3
.end method

.method private determineOutputFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "outputPath"    # Ljava/lang/String;
    .param p3, "newFileName"    # Ljava/lang/String;

    .line 184
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "outputFileName":Ljava/lang/String;
    invoke-static {p3}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    move-object v0, p3

    .line 188
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->getFileNameWithSystemFileSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getFileNameWithSystemFileSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fileNameToReplace"    # Ljava/lang/String;

    .line 192
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    const-string v0, ":\\\\"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "formattedFileName":Ljava/lang/String;
    sget-object v1, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[/\\\\]"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isSymbolicLink(Lnet/lingala/zip4j/model/FileHeader;)Z
    .locals 3
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;

    .line 95
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExternalFileAttributes()[B

    move-result-object v0

    .line 97
    .local v0, "externalFileAttributes":[B
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    const/4 v1, 0x3

    aget-byte v1, v0, v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v1

    return v1

    .line 98
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private readCompleteEntry(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)[B
    .locals 4
    .param p1, "zipInputStream"    # Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 149
    .local v0, "b":[B
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->read([B)I

    move-result v1

    .line 151
    .local v1, "readLength":I
    array-length v2, v0

    if-ne v1, v2, :cond_0

    .line 155
    array-length v2, v0

    int-to-long v2, v2

    invoke-virtual {p3, v2, v3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V

    .line 156
    return-object v0

    .line 152
    :cond_0
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "Could not read complete entry"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private unzipFile(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;[B)V
    .locals 5
    .param p1, "inputStream"    # Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .param p2, "outputFile"    # Ljava/io/File;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p4, "buff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .local v0, "outputStream":Ljava/io/OutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {p1, p4}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "readLength":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 110
    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 111
    int-to-long v3, v2

    invoke-virtual {p3, v3, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V

    .line 112
    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->verifyIfTaskIsCancelled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 114
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 119
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    nop

    .line 120
    return-void

    .line 108
    .end local v2    # "readLength":I
    .restart local v0    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "inputStream":Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .end local p2    # "outputFile":Ljava/io/File;
    .end local p3    # "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    .end local p4    # "buff":[B
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 114
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    .restart local p1    # "inputStream":Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .restart local p2    # "outputFile":Ljava/io/File;
    .restart local p3    # "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    .restart local p4    # "buff":[B
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 118
    :cond_1
    throw v0
.end method

.method private verifyNextEntry(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 4
    .param p1, "zipInputStream"    # Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getGeneralPurposeFlag()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x6

    invoke-static {v0, v2}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v0

    if-nez v0, :cond_2

    .line 165
    invoke-virtual {p1, p2, v1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->getNextEntry(Lnet/lingala/zip4j/model/FileHeader;Z)Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v0

    .line 167
    .local v0, "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    return-void

    .line 173
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "File header and local file header mismatch"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_1
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read corresponding local file header for file header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 169
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    .end local v0    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entry with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is encrypted with Strong Encryption. Zip4j does not support Strong Encryption, as this is patented."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected extractFile(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;[B)V
    .locals 5
    .param p1, "zipInputStream"    # Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "outputPath"    # Ljava/lang/String;
    .param p4, "newFileName"    # Ljava/lang/String;
    .param p5, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p6, "readBuff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->isSymbolicLink(Lnet/lingala/zip4j/model/FileHeader;)Z

    move-result v0

    .line 41
    .local v0, "isSymbolicLink":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->unzipParameters:Lnet/lingala/zip4j/model/UnzipParameters;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/UnzipParameters;->isExtractSymbolicLinks()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    return-void

    .line 45
    :cond_0
    sget-object v1, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 49
    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->determineOutputFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 50
    .local v1, "outputFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, v1, p3, p2}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->assertCanonicalPathsAreSame(Ljava/io/File;Ljava/lang/String;Lnet/lingala/zip4j/model/FileHeader;)V

    .line 54
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->verifyNextEntry(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;)V

    .line 56
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 59
    :cond_2
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_3
    if-eqz v0, :cond_4

    .line 63
    invoke-direct {p0, p1, p2, v1, p5}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->createSymLink(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    goto :goto_0

    .line 65
    :cond_4
    invoke-direct {p0, v1}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->checkOutputDirectoryStructure(Ljava/io/File;)V

    .line 66
    invoke-direct {p0, p1, v1, p5, p6}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->unzipFile(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;[B)V

    .line 69
    :cond_5
    :goto_0
    if-nez v0, :cond_6

    .line 70
    invoke-static {p2, v1}, Lnet/lingala/zip4j/util/UnzipUtil;->applyFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;)V

    .line 72
    :cond_6
    return-void
.end method

.method protected getTask()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .locals 1

    .line 198
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->EXTRACT_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object v0
.end method

.method public getZipModel()Lnet/lingala/zip4j/model/ZipModel;
    .locals 1

    .line 202
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    return-object v0
.end method
