.class public Lnet/lingala/zip4j/util/UnzipUtil;
.super Ljava/lang/Object;
.source "UnzipUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;)V
    .locals 3
    .param p0, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p1, "file"    # Ljava/io/File;

    .line 46
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 47
    .local v0, "path":Ljava/nio/file/Path;
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/FileHeader;->getExternalFileAttributes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lnet/lingala/zip4j/util/FileUtils;->setFileAttributes(Ljava/nio/file/Path;[B)V

    .line 48
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/FileHeader;->getLastModifiedTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lnet/lingala/zip4j/util/FileUtils;->setFileLastModifiedTime(Ljava/nio/file/Path;J)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v0    # "path":Ljava/nio/file/Path;
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/FileHeader;->getLastModifiedTime()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lnet/lingala/zip4j/util/FileUtils;->setFileLastModifiedTimeWithoutNio(Ljava/io/File;J)V

    .line 52
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :goto_0
    return-void
.end method

.method public static createSplitInputStream(Lnet/lingala/zip4j/model/ZipModel;)Lnet/lingala/zip4j/io/inputstream/SplitFileInputStream;
    .locals 5
    .param p0, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v0

    .line 57
    .local v0, "zipFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".zip.001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Lnet/lingala/zip4j/io/inputstream/NumberedSplitFileInputStream;

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitFileInputStream;-><init>(Ljava/io/File;)V

    return-object v1

    .line 61
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v3

    .line 62
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;-><init>(Ljava/io/File;ZI)V

    .line 61
    return-object v1
.end method

.method public static createZipInputStream(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;[C)Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .locals 4
    .param p0, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    .line 26
    .local v0, "splitInputStream":Lnet/lingala/zip4j/io/inputstream/SplitFileInputStream;
    :try_start_0
    invoke-static {p0}, Lnet/lingala/zip4j/util/UnzipUtil;->createSplitInputStream(Lnet/lingala/zip4j/model/ZipModel;)Lnet/lingala/zip4j/io/inputstream/SplitFileInputStream;

    move-result-object v1

    move-object v0, v1

    .line 27
    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/io/inputstream/SplitFileInputStream;->prepareExtractionForFileHeader(Lnet/lingala/zip4j/model/FileHeader;)V

    .line 29
    new-instance v1, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;

    invoke-direct {v1, v0, p2}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;-><init>(Ljava/io/InputStream;[C)V

    .line 30
    .local v1, "zipInputStream":Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->getNextEntry(Lnet/lingala/zip4j/model/FileHeader;Z)Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 34
    return-object v1

    .line 31
    :cond_0
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "Could not locate local file header for corresponding file header"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .end local v0    # "splitInputStream":Lnet/lingala/zip4j/io/inputstream/SplitFileInputStream;
    .end local p0    # "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    .end local p1    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local p2    # "password":[C
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v1    # "zipInputStream":Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .restart local v0    # "splitInputStream":Lnet/lingala/zip4j/io/inputstream/SplitFileInputStream;
    .restart local p0    # "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    .restart local p1    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .restart local p2    # "password":[C
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/io/IOException;
    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/inputstream/SplitFileInputStream;->close()V

    .line 39
    :cond_1
    throw v1
.end method
