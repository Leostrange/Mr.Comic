.class Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;
.super Ljava/io/InputStream;
.source "ZipEntryInputStream.java"


# static fields
.field private static final MAX_RAW_READ_FULLY_RETRY_ATTEMPTS:I = 0xf


# instance fields
.field private compressedSize:J

.field private inputStream:Ljava/io/InputStream;

.field private numberOfBytesRead:J

.field private singleByteArray:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "compressedSize"    # J

    .line 15
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->numberOfBytesRead:J

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->singleByteArray:[B

    .line 16
    iput-object p1, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->inputStream:Ljava/io/InputStream;

    .line 17
    iput-wide p2, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->compressedSize:J

    .line 18
    return-void
.end method

.method private readUntilBufferIsFull([BI)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 78
    .local v0, "remainingLength":I
    const/4 v1, 0x0

    .line 79
    .local v1, "loopReadLength":I
    const/4 v2, 0x0

    .line 81
    .local v2, "retryAttempt":I
    :goto_0
    array-length v3, p1

    if-ge p2, v3, :cond_1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    const/16 v3, 0xf

    if-ge v2, v3, :cond_1

    .line 82
    iget-object v3, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    add-int/2addr v1, v3

    .line 84
    if-lez v1, :cond_0

    .line 85
    add-int/2addr p2, v1

    .line 86
    sub-int/2addr v0, v1

    .line 89
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_1
    return p2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 98
    return-void
.end method

.method public getNumberOfBytesRead()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->numberOfBytesRead:J

    return-wide v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->singleByteArray:[B

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->read([B)I

    move-result v0

    .line 23
    .local v0, "readLen":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 24
    return v1

    .line 27
    :cond_0
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->singleByteArray:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

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

    .line 32
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-wide v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->compressedSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 39
    iget-wide v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->numberOfBytesRead:J

    iget-wide v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->compressedSize:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 40
    const/4 v0, -0x1

    return v0

    .line 43
    :cond_0
    int-to-long v0, p3

    iget-wide v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->compressedSize:J

    iget-wide v4, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->numberOfBytesRead:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 44
    iget-wide v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->compressedSize:J

    iget-wide v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->numberOfBytesRead:J

    sub-long/2addr v0, v2

    long-to-int p3, v0

    .line 48
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 50
    .local v0, "readLen":I
    if-lez v0, :cond_2

    .line 51
    iget-wide v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->numberOfBytesRead:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->numberOfBytesRead:J

    .line 54
    :cond_2
    return v0
.end method

.method public readRawFully([B)I
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 61
    .local v0, "readLen":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 65
    array-length v1, p1

    if-eq v0, v1, :cond_1

    .line 66
    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->readUntilBufferIsFull([BI)I

    move-result v0

    .line 68
    array-length v1, p1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot read fully into byte buffer"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_1
    :goto_0
    return v0

    .line 62
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF reached when trying to read stream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
