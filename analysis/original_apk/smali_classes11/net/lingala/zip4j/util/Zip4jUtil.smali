.class public Lnet/lingala/zip4j/util/Zip4jUtil;
.super Ljava/lang/Object;
.source "Zip4jUtil.java"


# static fields
.field private static final DOSTIME_BEFORE_1980:J = 0x210000L

.field private static final MAX_RAW_READ_FULLY_RETRY_ATTEMPTS:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCharArrayToByteArray([CZ)[B
    .locals 1
    .param p0, "charArray"    # [C
    .param p1, "useUtf8Charset"    # Z

    .line 105
    if-eqz p1, :cond_0

    .line 106
    invoke-static {p0}, Lnet/lingala/zip4j/util/Zip4jUtil;->convertCharArrayToByteArrayUsingUtf8([C)[B

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {p0}, Lnet/lingala/zip4j/util/Zip4jUtil;->convertCharArrayToByteArrayUsingDefaultCharset([C)[B

    move-result-object v0

    .line 105
    :goto_0
    return-object v0
.end method

.method private static convertCharArrayToByteArrayUsingDefaultCharset([C)[B
    .locals 3
    .param p0, "charArray"    # [C

    .line 218
    array-length v0, p0

    new-array v0, v0, [B

    .line 219
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 220
    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static convertCharArrayToByteArrayUsingUtf8([C)[B
    .locals 2
    .param p0, "charArray"    # [C

    .line 208
    :try_start_0
    sget-object v0, Lnet/lingala/zip4j/util/InternalZipConstants;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 209
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    .line 210
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    return-object v1

    .line 212
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "bytes":[B
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p0}, Lnet/lingala/zip4j/util/Zip4jUtil;->convertCharArrayToByteArrayUsingDefaultCharset([C)[B

    move-result-object v1

    return-object v1
.end method

.method public static createDirectoryIfNotExists(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 44
    if-eqz p0, :cond_3

    .line 48
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "output directory is not valid"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 54
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Cannot create output directories"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "output path is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static dosToEpochTime(J)J
    .locals 14
    .param p0, "dosTime"    # J

    .line 91
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const-wide/16 v2, 0x3e

    and-long/2addr v0, v2

    long-to-int v0, v0

    .line 92
    .local v0, "sec":I
    const/4 v1, 0x5

    shr-long v1, p0, v1

    const-wide/16 v3, 0x3f

    and-long/2addr v1, v3

    long-to-int v1, v1

    .line 93
    .local v1, "min":I
    const/16 v2, 0xb

    shr-long v2, p0, v2

    const-wide/16 v4, 0x1f

    and-long/2addr v2, v4

    long-to-int v9, v2

    .line 94
    .local v9, "hrs":I
    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v10, v2

    .line 95
    .local v10, "day":I
    const/16 v2, 0x15

    shr-long v2, p0, v2

    const-wide/16 v4, 0xf

    and-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    long-to-int v11, v2

    .line 96
    .local v11, "mon":I
    const/16 v2, 0x19

    shr-long v2, p0, v2

    const-wide/16 v4, 0x7f

    and-long/2addr v2, v4

    const-wide/16 v4, 0x7bc

    add-long/2addr v2, v4

    long-to-int v12, v2

    .line 98
    .local v12, "year":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 99
    .local v13, "cal":Ljava/util/Calendar;
    move-object v2, v13

    move v3, v12

    move v4, v11

    move v5, v10

    move v6, v9

    move v7, v1

    move v8, v0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 100
    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 101
    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    return-wide v2
.end method

.method public static dosToExtendedEpochTme(J)J
    .locals 4
    .param p0, "dosTime"    # J

    .line 86
    invoke-static {p0, p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->dosToEpochTime(J)J

    move-result-wide v0

    .line 87
    .local v0, "time":J
    const/16 v2, 0x20

    shr-long v2, p0, v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private static epochToDosTime(J)J
    .locals 7
    .param p0, "time"    # J

    .line 72
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 73
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 75
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 77
    .local v2, "year":I
    const/16 v3, 0x7bc

    if-ge v2, v3, :cond_0

    .line 78
    const-wide/32 v3, 0x210000

    return-wide v3

    .line 80
    :cond_0
    add-int/lit16 v3, v2, -0x7bc

    shl-int/lit8 v3, v3, 0x19

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v1

    shl-int/lit8 v4, v4, 0x15

    or-int/2addr v3, v4

    .line 81
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v3, v5

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    shl-int/lit8 v5, v6, 0xb

    or-int/2addr v3, v5

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    shl-int/lit8 v4, v5, 0x5

    or-int/2addr v3, v4

    .line 82
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    shr-int/lit8 v1, v4, 0x1

    or-int/2addr v1, v3

    int-to-long v3, v1

    .line 80
    return-wide v3
.end method

.method public static epochToExtendedDosTime(J)J
    .locals 5
    .param p0, "time"    # J

    .line 62
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-wide/32 v1, 0x210000

    if-gez v0, :cond_0

    .line 63
    return-wide v1

    .line 65
    :cond_0
    invoke-static {p0, p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->epochToDosTime(J)J

    move-result-wide v3

    .line 66
    .local v3, "dostime":J
    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 67
    const-wide/16 v0, 0x7d0

    rem-long v0, p0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long v1, v3, v0

    goto :goto_0

    .line 68
    :cond_1
    nop

    .line 66
    :goto_0
    return-wide v1
.end method

.method public static getCompressionMethod(Lnet/lingala/zip4j/model/AbstractFileHeader;)Lnet/lingala/zip4j/model/enums/CompressionMethod;
    .locals 2
    .param p0, "localFileHeader"    # Lnet/lingala/zip4j/model/AbstractFileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->AES_INTERNAL_ONLY:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-eq v0, v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    return-object v0

    .line 116
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "AesExtraDataRecord not present in local header for aes encrypted data"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isStringNotNullAndNotEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 40
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isStringNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 36
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static readFully(Ljava/io/InputStream;[B)I
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "bufferToReadInto"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 126
    .local v0, "readLen":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 130
    array-length v1, p1

    if-eq v0, v1, :cond_1

    .line 131
    invoke-static {p0, p1, v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->readUntilBufferIsFull(Ljava/io/InputStream;[BI)I

    move-result v0

    .line 133
    array-length v1, p1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot read fully into byte buffer"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_1
    :goto_0
    return v0

    .line 127
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF reached when trying to read stream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static readFully(Ljava/io/InputStream;[BII)I
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    .line 144
    .local v0, "numberOfBytesRead":I
    if-ltz p2, :cond_6

    .line 148
    if-ltz p3, :cond_5

    .line 152
    if-nez p3, :cond_0

    .line 153
    const/4 v1, 0x0

    return v1

    .line 156
    :cond_0
    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_4

    .line 160
    :goto_0
    if-eq v0, p3, :cond_3

    .line 161
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 162
    .local v1, "currentReadLength":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 163
    if-nez v0, :cond_1

    .line 164
    return v2

    .line 166
    :cond_1
    return v0

    .line 169
    :cond_2
    add-int/2addr v0, v1

    .line 170
    .end local v1    # "currentReadLength":I
    goto :goto_0

    .line 172
    :cond_3
    return v0

    .line 157
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Length greater than buffer size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Negative length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Negative offset"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static readUntilBufferIsFull(Ljava/io/InputStream;[BI)I
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "bufferToReadInto"    # [B
    .param p2, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    if-ltz p2, :cond_3

    .line 181
    if-nez p2, :cond_0

    .line 182
    const/4 v0, 0x0

    return v0

    .line 185
    :cond_0
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 186
    .local v0, "remainingLength":I
    const/4 v1, 0x0

    .line 187
    .local v1, "loopReadLength":I
    const/4 v2, 0x1

    .line 189
    .local v2, "retryAttempt":I
    :goto_0
    array-length v3, p1

    if-ge p2, v3, :cond_2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    const/16 v3, 0xf

    if-ge v2, v3, :cond_2

    .line 193
    invoke-virtual {p0, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 195
    if-lez v1, :cond_1

    .line 196
    add-int/2addr p2, v1

    .line 197
    sub-int/2addr v0, v1

    .line 200
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    :cond_2
    return p2

    .line 178
    .end local v0    # "remainingLength":I
    .end local v1    # "loopReadLength":I
    .end local v2    # "retryAttempt":I
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid readLength"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
