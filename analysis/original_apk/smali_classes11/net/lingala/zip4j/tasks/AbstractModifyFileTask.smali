.class abstract Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;
.super Lnet/lingala/zip4j/tasks/AsyncZipTask;
.source "AbstractModifyFileTask.java"


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


# direct methods
.method constructor <init>(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V
    .locals 0
    .param p1, "asyncTaskParameters"    # Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    .line 23
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;, "Lnet/lingala/zip4j/tasks/AbstractModifyFileTask<TT;>;"
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/tasks/AsyncZipTask;-><init>(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    .line 24
    return-void
.end method

.method private getIndexOfFileHeader(Ljava/util/List;Lnet/lingala/zip4j/model/FileHeader;)I
    .locals 3
    .param p2, "fileHeaderForIndex"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/FileHeader;",
            ">;",
            "Lnet/lingala/zip4j/model/FileHeader;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 115
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;, "Lnet/lingala/zip4j/tasks/AbstractModifyFileTask<TT;>;"
    .local p1, "allFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 116
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lingala/zip4j/model/FileHeader;

    .line 117
    .local v1, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    invoke-virtual {v1, p2}, Lnet/lingala/zip4j/model/FileHeader;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    return v0

    .line 115
    .end local v1    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Could not find file header in list of central directory file headers"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private restoreFileName(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p1, "zipFile"    # Ljava/io/File;
    .param p2, "temporaryZipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 105
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;, "Lnet/lingala/zip4j/tasks/AbstractModifyFileTask<TT;>;"
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    return-void

    .line 107
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "cannot rename modified zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "cannot delete old zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method cleanupFile(ZLjava/io/File;Ljava/io/File;)V
    .locals 2
    .param p1, "successFlag"    # Z
    .param p2, "zipFile"    # Ljava/io/File;
    .param p3, "temporaryZipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 61
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;, "Lnet/lingala/zip4j/tasks/AbstractModifyFileTask<TT;>;"
    if-eqz p1, :cond_0

    .line 62
    invoke-direct {p0, p2, p3}, Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;->restoreFileName(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :goto_0
    return-void

    .line 65
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Could not delete temporary file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method cloneAndSortFileHeadersByOffset(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/FileHeader;",
            ">;)",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/FileHeader;",
            ">;"
        }
    .end annotation

    .line 77
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;, "Lnet/lingala/zip4j/tasks/AbstractModifyFileTask<TT;>;"
    .local p1, "allFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    .local v0, "clonedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    new-instance v1, Lnet/lingala/zip4j/tasks/AbstractModifyFileTask$1;

    invoke-direct {v1, p0}, Lnet/lingala/zip4j/tasks/AbstractModifyFileTask$1;-><init>(Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 90
    return-object v0
.end method

.method copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)J
    .locals 8
    .param p1, "randomAccessFile"    # Ljava/io/RandomAccessFile;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "start"    # J
    .param p5, "length"    # J
    .param p7, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p8, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;, "Lnet/lingala/zip4j/tasks/AbstractModifyFileTask<TT;>;"
    add-long v4, p3, p5

    move-object v0, p1

    move-object v1, p2

    move-wide v2, p3

    move-object v6, p7

    move/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lnet/lingala/zip4j/util/FileUtils;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)V

    .line 73
    return-wide p5
.end method

.method getOffsetOfNextEntry(Ljava/util/List;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/model/ZipModel;)J
    .locals 3
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/FileHeader;",
            ">;",
            "Lnet/lingala/zip4j/model/FileHeader;",
            "Lnet/lingala/zip4j/model/ZipModel;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 95
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;, "Lnet/lingala/zip4j/tasks/AbstractModifyFileTask<TT;>;"
    .local p1, "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;->getIndexOfFileHeader(Ljava/util/List;Lnet/lingala/zip4j/model/FileHeader;)I

    move-result v0

    .line 97
    .local v0, "indexOfFileHeader":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 98
    invoke-static {p3}, Lnet/lingala/zip4j/headers/HeaderUtil;->getOffsetStartOfCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)J

    move-result-wide v1

    return-wide v1

    .line 100
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v1

    return-wide v1
.end method

.method getTemporaryFile(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "zipPathWithName"    # Ljava/lang/String;

    .line 27
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;, "Lnet/lingala/zip4j/tasks/AbstractModifyFileTask<TT;>;"
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 28
    .local v0, "random":Ljava/security/SecureRandom;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, "tmpFile":Ljava/io/File;
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    .line 34
    :cond_0
    return-object v1
.end method

.method updateOffsetsForAllSubsequentFileHeaders(Ljava/util/List;Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;J)V
    .locals 7
    .param p2, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p3, "fileHeaderModified"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p4, "offsetToAdd"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/FileHeader;",
            ">;",
            "Lnet/lingala/zip4j/model/ZipModel;",
            "Lnet/lingala/zip4j/model/FileHeader;",
            "J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 39
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;, "Lnet/lingala/zip4j/tasks/AbstractModifyFileTask<TT;>;"
    .local p1, "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    invoke-direct {p0, p1, p3}, Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;->getIndexOfFileHeader(Ljava/util/List;Lnet/lingala/zip4j/model/FileHeader;)I

    move-result v0

    .line 41
    .local v0, "indexOfFileHeader":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 45
    add-int/lit8 v1, v0, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 46
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/lingala/zip4j/model/FileHeader;

    .line 47
    .local v2, "fileHeaderToUpdate":Lnet/lingala/zip4j/model/FileHeader;
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v3

    add-long/2addr v3, p4

    invoke-virtual {v2, v3, v4}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    .line 49
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 51
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 53
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v3

    .line 54
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v4

    add-long/2addr v4, p4

    .line 53
    invoke-virtual {v3, v4, v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setOffsetLocalHeader(J)V

    .line 45
    .end local v2    # "fileHeaderToUpdate":Lnet/lingala/zip4j/model/FileHeader;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 42
    :cond_2
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "Could not locate modified file header in zipModel"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
