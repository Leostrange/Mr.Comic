.class public Lnet/lingala/zip4j/util/RawIO;
.super Ljava/lang/Object;
.source "RawIO.java"


# instance fields
.field private final intBuff:[B

.field private final longBuff:[B

.field private final shortBuff:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->shortBuff:[B

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->intBuff:[B

    .line 31
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    return-void
.end method

.method private readFully(Ljava/io/InputStream;[BI)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "buff"    # [B
    .param p3, "readLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 155
    .local v0, "actualReadLength":I
    if-ne v0, p3, :cond_0

    .line 158
    return-void

    .line 156
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "Could not fill buffer"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private resetBytes([B)V
    .locals 1
    .param p1, "b"    # [B

    .line 161
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 162
    return-void
.end method


# virtual methods
.method public readIntLittleEndian(Ljava/io/InputStream;)I
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->intBuff:[B

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readFully(Ljava/io/InputStream;[BI)V

    .line 87
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->intBuff:[B

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian([B)I

    move-result v0

    return v0
.end method

.method public readIntLittleEndian(Ljava/io/RandomAccessFile;)I
    .locals 1
    .param p1, "randomAccessFile"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->intBuff:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 82
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->intBuff:[B

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian([B)I

    move-result v0

    return v0
.end method

.method public readIntLittleEndian([B)I
    .locals 1
    .param p1, "b"    # [B

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian([BI)I

    move-result v0

    return v0
.end method

.method public readIntLittleEndian([BI)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "pos"    # I

    .line 95
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public readLongLittleEndian(Ljava/io/InputStream;)J
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    iget-object v1, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    array-length v1, v1

    invoke-direct {p0, p1, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readFully(Ljava/io/InputStream;[BI)V

    .line 46
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongLittleEndian(Ljava/io/InputStream;I)J
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "readLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/util/RawIO;->resetBytes([B)V

    .line 51
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    invoke-direct {p0, p1, v0, p2}, Lnet/lingala/zip4j/util/RawIO;->readFully(Ljava/io/InputStream;[BI)V

    .line 52
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongLittleEndian(Ljava/io/RandomAccessFile;)J
    .locals 2
    .param p1, "randomAccessFile"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 35
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongLittleEndian(Ljava/io/RandomAccessFile;I)J
    .locals 2
    .param p1, "randomAccessFile"    # Ljava/io/RandomAccessFile;
    .param p2, "readLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/util/RawIO;->resetBytes([B)V

    .line 40
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 41
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    invoke-virtual {p0, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongLittleEndian([BI)J
    .locals 8
    .param p1, "array"    # [B
    .param p2, "pos"    # I

    .line 56
    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/util/RawIO;->resetBytes([B)V

    .line 59
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    array-length v2, p1

    sub-int/2addr v2, p2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, p2, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    const-wide/16 v4, 0x0

    .line 62
    .local v4, "temp":J
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    const/4 v2, 0x7

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v6, v0

    or-long/2addr v4, v6

    .line 63
    shl-long/2addr v4, v1

    .line 64
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    const/4 v2, 0x6

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v6, v0

    or-long/2addr v4, v6

    .line 65
    shl-long/2addr v4, v1

    .line 66
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    const/4 v2, 0x5

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v6, v0

    or-long/2addr v4, v6

    .line 67
    shl-long/2addr v4, v1

    .line 68
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    const/4 v2, 0x4

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v6, v0

    or-long/2addr v4, v6

    .line 69
    shl-long/2addr v4, v1

    .line 70
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v6, v0

    or-long/2addr v4, v6

    .line 71
    shl-long/2addr v4, v1

    .line 72
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    const/4 v2, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v6, v0

    or-long/2addr v4, v6

    .line 73
    shl-long/2addr v4, v1

    .line 74
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v6, v0

    or-long/2addr v4, v6

    .line 75
    shl-long v0, v4, v1

    .line 76
    .end local v4    # "temp":J
    .local v0, "temp":J
    iget-object v2, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 77
    return-wide v0
.end method

.method public readShortLittleEndian(Ljava/io/InputStream;)I
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->shortBuff:[B

    iget-object v1, p0, Lnet/lingala/zip4j/util/RawIO;->shortBuff:[B

    array-length v1, v1

    invoke-direct {p0, p1, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readFully(Ljava/io/InputStream;[BI)V

    .line 106
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->shortBuff:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result v0

    return v0
.end method

.method public readShortLittleEndian(Ljava/io/RandomAccessFile;)I
    .locals 2
    .param p1, "randomAccessFile"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->shortBuff:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 101
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->shortBuff:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result v0

    return v0
.end method

.method public readShortLittleEndian([BI)I
    .locals 2
    .param p1, "buff"    # [B
    .param p2, "position"    # I

    .line 110
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public writeIntLittleEndian(Ljava/io/OutputStream;I)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->intBuff:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian([BII)V

    .line 126
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->intBuff:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 127
    return-void
.end method

.method public writeIntLittleEndian([BII)V
    .locals 2
    .param p1, "array"    # [B
    .param p2, "pos"    # I
    .param p3, "value"    # I

    .line 130
    add-int/lit8 v0, p2, 0x3

    ushr-int/lit8 v1, p3, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 131
    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p3, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 132
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 133
    and-int/lit16 v0, p3, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 135
    return-void
.end method

.method public writeLongLittleEndian(Ljava/io/OutputStream;J)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2, p3}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 139
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 140
    return-void
.end method

.method public writeLongLittleEndian([BIJ)V
    .locals 3
    .param p1, "array"    # [B
    .param p2, "pos"    # I
    .param p3, "value"    # J

    .line 143
    add-int/lit8 v0, p2, 0x7

    const/16 v1, 0x38

    ushr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 144
    add-int/lit8 v0, p2, 0x6

    const/16 v1, 0x30

    ushr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 145
    add-int/lit8 v0, p2, 0x5

    const/16 v1, 0x28

    ushr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 146
    add-int/lit8 v0, p2, 0x4

    const/16 v1, 0x20

    ushr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 147
    add-int/lit8 v0, p2, 0x3

    const/16 v1, 0x18

    ushr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 148
    add-int/lit8 v0, p2, 0x2

    const/16 v1, 0x10

    ushr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 149
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x8

    ushr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 150
    const-wide/16 v0, 0xff

    and-long/2addr v0, p3

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 151
    return-void
.end method

.method public writeShortLittleEndian(Ljava/io/OutputStream;I)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->shortBuff:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian([BII)V

    .line 115
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->shortBuff:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 116
    return-void
.end method

.method public writeShortLittleEndian([BII)V
    .locals 2
    .param p1, "array"    # [B
    .param p2, "pos"    # I
    .param p3, "value"    # I

    .line 119
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 120
    and-int/lit16 v0, p3, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 122
    return-void
.end method
