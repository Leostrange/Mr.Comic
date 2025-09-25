.class public Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;
.super Ljava/io/RandomAccessFile;
.source "NumberedSplitRandomAccessFile.java"


# instance fields
.field private allSortedSplitFiles:[Ljava/io/File;

.field private currentOpenSplitFileCounter:I

.field private randomAccessFile:Ljava/io/RandomAccessFile;

.field private rwMode:Ljava/lang/String;

.field private singleByteBuffer:[B

.field private splitLength:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-static {p1}, Lnet/lingala/zip4j/util/FileUtils;->getAllSortedNumberedSplitFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "allSortedSplitFiles"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->singleByteBuffer:[B

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->currentOpenSplitFileCounter:I

    .line 41
    invoke-super {p0}, Ljava/io/RandomAccessFile;->close()V

    .line 43
    sget-object v0, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->WRITE:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-direct {p0, p3}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->assertAllSplitFilesExist([Ljava/io/File;)V

    .line 49
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 50
    iput-object p3, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->allSortedSplitFiles:[Ljava/io/File;

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->splitLength:J

    .line 52
    iput-object p2, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->rwMode:Ljava/lang/String;

    .line 53
    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "write mode is not allowed for NumberedSplitRandomAccessFile"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method private assertAllSplitFilesExist([Ljava/io/File;)V
    .locals 7
    .param p1, "allSortedSplitFiles"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    const/4 v0, 0x1

    .line 157
    .local v0, "splitCounter":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 158
    .local v3, "splitFile":Ljava/io/File;
    invoke-static {v3}, Lnet/lingala/zip4j/util/FileUtils;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "fileExtension":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v0, v5, :cond_0

    .line 163
    add-int/lit8 v0, v0, 0x1

    .line 167
    nop

    .line 157
    .end local v3    # "splitFile":Ljava/io/File;
    .end local v4    # "fileExtension":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .restart local v3    # "splitFile":Ljava/io/File;
    .restart local v4    # "fileExtension":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Split file number "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " does not exist"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "splitCounter":I
    .end local v3    # "splitFile":Ljava/io/File;
    .end local v4    # "fileExtension":Ljava/lang/String;
    .end local p1    # "allSortedSplitFiles":[Ljava/io/File;
    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .restart local v0    # "splitCounter":I
    .restart local v3    # "splitFile":Ljava/io/File;
    .restart local v4    # "fileExtension":Ljava/lang/String;
    .restart local p1    # "allSortedSplitFiles":[Ljava/io/File;
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Split file extension not in expected format. Found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " expected of format: .001, .002, etc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "splitFile":Ljava/io/File;
    .end local v4    # "fileExtension":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private openRandomAccessFileForIndex(I)V
    .locals 3
    .param p1, "splitCounter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->currentOpenSplitFileCounter:I

    if-ne v0, p1, :cond_0

    .line 140
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->allSortedSplitFiles:[Ljava/io/File;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_2

    .line 147
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 151
    :cond_1
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->allSortedSplitFiles:[Ljava/io/File;

    aget-object v1, v1, p1

    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->rwMode:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 152
    iput p1, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->currentOpenSplitFileCounter:I

    .line 153
    return-void

    .line 144
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "split counter greater than number of split files"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 127
    :cond_0
    invoke-super {p0}, Ljava/io/RandomAccessFile;->close()V

    .line 128
    return-void
.end method

.method public getFilePointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public openLastSplitFileForReading()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->allSortedSplitFiles:[Ljava/io/File;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->openRandomAccessFileForIndex(I)V

    .line 136
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->singleByteBuffer:[B

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->read([B)I

    move-result v0

    .line 59
    .local v0, "readLen":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 60
    return v1

    .line 63
    :cond_0
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->singleByteBuffer:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 75
    .local v0, "readLen":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 76
    iget v2, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->currentOpenSplitFileCounter:I

    iget-object v3, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->allSortedSplitFiles:[Ljava/io/File;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    .line 77
    return v1

    .line 79
    :cond_0
    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->currentOpenSplitFileCounter:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->openRandomAccessFileForIndex(I)V

    .line 80
    invoke-virtual {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->read([BII)I

    move-result v1

    return v1

    .line 83
    :cond_1
    return v0
.end method

.method public seek(J)V
    .locals 6
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-wide v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->splitLength:J

    div-long v0, p1, v0

    long-to-int v0, v0

    .line 105
    .local v0, "splitPartOfPosition":I
    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->currentOpenSplitFileCounter:I

    if-eq v0, v1, :cond_0

    .line 106
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->openRandomAccessFileForIndex(I)V

    .line 109
    :cond_0
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    int-to-long v2, v0

    iget-wide v4, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->splitLength:J

    mul-long/2addr v2, v4

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 110
    return-void
.end method

.method public seekInCurrentPart(J)V
    .locals 1
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 132
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->write([BII)V

    .line 94
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
