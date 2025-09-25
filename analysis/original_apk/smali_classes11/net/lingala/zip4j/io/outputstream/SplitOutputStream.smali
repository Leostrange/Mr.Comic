.class public Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
.super Ljava/io/OutputStream;
.source "SplitOutputStream.java"

# interfaces
.implements Lnet/lingala/zip4j/io/outputstream/OutputStreamWithSplitZipSupport;


# instance fields
.field private bytesWrittenForThisPart:J

.field private currSplitFileCounter:I

.field private raf:Ljava/io/RandomAccessFile;

.field private rawIO:Lnet/lingala/zip4j/util/RawIO;

.field private splitLength:J

.field private zipFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 43
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;-><init>(Ljava/io/File;J)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "splitLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 40
    new-instance v0, Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {v0}, Lnet/lingala/zip4j/util/RawIO;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    .line 47
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    const-wide/32 v2, 0x10000

    cmp-long v2, p2, v2

    if-ltz v2, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "split length less than minimum allowed split length of 65536 Bytes"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    :goto_0
    new-instance v2, Ljava/io/RandomAccessFile;

    sget-object v3, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->WRITE:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 52
    iput-wide p2, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->splitLength:J

    .line 53
    iput-object p1, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->zipFile:Ljava/io/File;

    .line 54
    const/4 v2, 0x0

    iput v2, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->currSplitFileCounter:I

    .line 55
    iput-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->bytesWrittenForThisPart:J

    .line 56
    return-void
.end method

.method private isBufferSizeFitForCurrSplitFile(I)Z
    .locals 6
    .param p1, "bufferSize"    # I

    .line 175
    iget-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->splitLength:J

    const-wide/32 v2, 0x10000

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    .line 176
    iget-wide v2, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->bytesWrittenForThisPart:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    iget-wide v4, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->splitLength:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 179
    :cond_1
    return v1
.end method

.method private isHeaderData([B)Z
    .locals 10
    .param p1, "buff"    # [B

    .line 129
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian([B)I

    move-result v0

    .line 130
    .local v0, "signature":I
    invoke-static {}, Lnet/lingala/zip4j/headers/HeaderSignature;->values()[Lnet/lingala/zip4j/headers/HeaderSignature;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 132
    .local v5, "headerSignature":Lnet/lingala/zip4j/headers/HeaderSignature;
    sget-object v6, Lnet/lingala/zip4j/headers/HeaderSignature;->SPLIT_ZIP:Lnet/lingala/zip4j/headers/HeaderSignature;

    if-eq v5, v6, :cond_0

    .line 133
    invoke-virtual {v5}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v6

    int-to-long v8, v0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 134
    const/4 v1, 0x1

    return v1

    .line 130
    .end local v5    # "headerSignature":Lnet/lingala/zip4j/headers/HeaderSignature;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 138
    :cond_1
    return v3
.end method

.method private startNextSplitFile()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/util/FileUtils;->getZipFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "zipFileWithoutExt":Ljava/lang/String;
    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->zipFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "zipFileName":Ljava/lang/String;
    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->zipFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 103
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->zipFile:Ljava/io/File;

    .line 102
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 103
    const-string v3, "file.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    nop

    .line 105
    .local v2, "parentPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".z0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->currSplitFileCounter:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "fileExtension":Ljava/lang/String;
    iget v4, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->currSplitFileCounter:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_1

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".z"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->currSplitFileCounter:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    :cond_1
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v4, "currSplitFile":Ljava/io/File;
    iget-object v5, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 114
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 119
    iget-object v5, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->zipFile:Ljava/io/File;

    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 123
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->zipFile:Ljava/io/File;

    .line 124
    new-instance v5, Ljava/io/RandomAccessFile;

    iget-object v6, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->zipFile:Ljava/io/File;

    sget-object v7, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->WRITE:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 125
    iget v5, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->currSplitFileCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->currSplitFileCounter:I

    .line 126
    return-void

    .line 120
    :cond_2
    new-instance v5, Ljava/io/IOException;

    const-string v6, "cannot rename newly created split file"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 115
    :cond_3
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "split file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " already exists in the current directory, cannot rename this file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public checkBufferSizeAndStartNextSplitFile(I)Z
    .locals 2
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 150
    if-ltz p1, :cond_1

    .line 154
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->isBufferSizeFitForCurrSplitFile(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    :try_start_0
    invoke-direct {p0}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->startNextSplitFile()V

    .line 157
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->bytesWrittenForThisPart:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    const/4 v0, 0x1

    return v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 164
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 151
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "negative buffersize for checkBufferSizeAndStartNextSplitFile"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 193
    return-void
.end method

.method public getCurrentSplitFileCounter()I
    .locals 1

    .line 210
    iget v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->currSplitFileCounter:I

    return v0
.end method

.method public getFilePointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSplitLength()J
    .locals 2

    .line 205
    iget-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->splitLength:J

    return-wide v0
.end method

.method public isSplitZipFile()Z
    .locals 4

    .line 201
    iget-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->splitLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public seek(J)V
    .locals 1
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 185
    return-void
.end method

.method public skipBytes(I)I
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v0

    return v0
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->write([B)V

    .line 60
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->write([BII)V

    .line 64
    return-void
.end method

.method public write([BII)V
    .locals 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    if-gtz p3, :cond_0

    .line 68
    return-void

    .line 71
    :cond_0
    iget-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->splitLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 73
    iget-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->bytesWrittenForThisPart:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->bytesWrittenForThisPart:J

    .line 74
    return-void

    .line 77
    :cond_1
    iget-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->bytesWrittenForThisPart:J

    iget-wide v2, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->splitLength:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 78
    invoke-direct {p0}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->startNextSplitFile()V

    .line 79
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 80
    int-to-long v0, p3

    iput-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->bytesWrittenForThisPart:J

    goto :goto_0

    .line 81
    :cond_2
    iget-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->bytesWrittenForThisPart:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-wide v2, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->splitLength:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 82
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->isHeaderData([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    invoke-direct {p0}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->startNextSplitFile()V

    .line 84
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 85
    int-to-long v0, p3

    iput-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->bytesWrittenForThisPart:J

    goto :goto_0

    .line 87
    :cond_3
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->splitLength:J

    iget-wide v3, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->bytesWrittenForThisPart:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 88
    invoke-direct {p0}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->startNextSplitFile()V

    .line 89
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->splitLength:J

    iget-wide v3, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->bytesWrittenForThisPart:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v1, p2

    int-to-long v2, p3

    iget-wide v4, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->splitLength:J

    iget-wide v6, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->bytesWrittenForThisPart:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 91
    int-to-long v0, p3

    iget-wide v2, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->splitLength:J

    iget-wide v4, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->bytesWrittenForThisPart:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->bytesWrittenForThisPart:J

    goto :goto_0

    .line 94
    :cond_4
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 95
    iget-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->bytesWrittenForThisPart:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->bytesWrittenForThisPart:J

    .line 97
    :goto_0
    return-void
.end method
