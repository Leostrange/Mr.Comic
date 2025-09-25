.class Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;
.super Lnet/lingala/zip4j/io/inputstream/CipherInputStream;
.source "AesCipherInputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/io/inputstream/CipherInputStream<",
        "Lnet/lingala/zip4j/crypto/AESDecrypter;",
        ">;"
    }
.end annotation


# instance fields
.field private aes16ByteBlock:[B

.field private aes16ByteBlockPointer:I

.field private aes16ByteBlockReadLength:I

.field private bytesCopiedInThisIteration:I

.field private lengthToCopyInThisIteration:I

.field private lengthToRead:I

.field private offsetWithAesBlock:I

.field private remainingAes16ByteBlockLength:I

.field private singleByteBuffer:[B


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;[CIZ)V
    .locals 1
    .param p1, "zipEntryInputStream"    # Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;
    .param p2, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .param p3, "password"    # [C
    .param p4, "bufferSize"    # I
    .param p5, "useUtf8ForPassword"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-direct/range {p0 .. p5}, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;-><init>(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;[CIZ)V

    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->singleByteBuffer:[B

    .line 19
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlock:[B

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlockPointer:I

    .line 21
    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->remainingAes16ByteBlockLength:I

    .line 22
    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToRead:I

    .line 23
    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->offsetWithAesBlock:I

    .line 24
    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    .line 25
    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToCopyInThisIteration:I

    .line 26
    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlockReadLength:I

    .line 31
    return-void
.end method

.method private copyBytesFromBuffer([BI)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I

    .line 107
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToRead:I

    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->remainingAes16ByteBlockLength:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToRead:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->remainingAes16ByteBlockLength:I

    :goto_0
    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToCopyInThisIteration:I

    .line 108
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlock:[B

    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlockPointer:I

    iget v2, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToCopyInThisIteration:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToCopyInThisIteration:I

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->incrementAesByteBlockPointer(I)V

    .line 111
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToCopyInThisIteration:I

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->decrementRemainingAesBytesLength(I)V

    .line 113
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToCopyInThisIteration:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    .line 115
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToRead:I

    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToCopyInThisIteration:I

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToRead:I

    .line 116
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->offsetWithAesBlock:I

    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToCopyInThisIteration:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->offsetWithAesBlock:I

    .line 117
    return-void
.end method

.method private decrementRemainingAesBytesLength(I)V
    .locals 1
    .param p1, "decrementBy"    # I

    .line 176
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->remainingAes16ByteBlockLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->remainingAes16ByteBlockLength:I

    .line 178
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->remainingAes16ByteBlockLength:I

    if-gtz v0, :cond_0

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->remainingAes16ByteBlockLength:I

    .line 181
    :cond_0
    return-void
.end method

.method private getPasswordVerifier()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 163
    .local v0, "pvBytes":[B
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->readRaw([B)I

    .line 164
    return-object v0
.end method

.method private getSalt(Lnet/lingala/zip4j/model/LocalFileHeader;)[B
    .locals 3
    .param p1, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    .line 152
    .local v0, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesKeyStrength()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesKeyStrength()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getSaltLength()I

    move-result v1

    new-array v1, v1, [B

    .line 157
    .local v1, "saltBytes":[B
    invoke-virtual {p0, v1}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->readRaw([B)I

    .line 158
    return-object v1

    .line 153
    .end local v1    # "saltBytes":[B
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid aes key strength in aes extra data record"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    .end local v0    # "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid aes extra data record"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private incrementAesByteBlockPointer(I)V
    .locals 2
    .param p1, "incrementBy"    # I

    .line 168
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlockPointer:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlockPointer:I

    .line 170
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlockPointer:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 171
    iput v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlockPointer:I

    .line 173
    :cond_0
    return-void
.end method

.method private verifyContent([BI)V
    .locals 4
    .param p1, "storedMac"    # [B
    .param p2, "numberOfBytesPushedBack"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->getDecrypter()Lnet/lingala/zip4j/crypto/Decrypter;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v0, p2}, Lnet/lingala/zip4j/crypto/AESDecrypter;->getCalculatedAuthenticationBytes(I)[B

    move-result-object v0

    .line 126
    .local v0, "calculatedMac":[B
    const/16 v1, 0xa

    new-array v2, v1, [B

    .line 127
    .local v2, "first10BytesOfCalculatedMac":[B
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    return-void

    .line 130
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Reached end of data for this entry, but aes verification failed"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected endOfEntryReached(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "numberOfBytesPushedBack"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->readStoredMac(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->verifyContent([BI)V

    .line 122
    return-void
.end method

.method protected initializeDecrypter(Lnet/lingala/zip4j/model/LocalFileHeader;[CZ)Lnet/lingala/zip4j/crypto/AESDecrypter;
    .locals 7
    .param p1, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .param p2, "password"    # [C
    .param p3, "useUtf8ForPassword"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    new-instance v6, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v1

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->getSalt(Lnet/lingala/zip4j/model/LocalFileHeader;)[B

    move-result-object v3

    .line 37
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->getPasswordVerifier()[B

    move-result-object v4

    move-object v0, v6

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lnet/lingala/zip4j/crypto/AESDecrypter;-><init>(Lnet/lingala/zip4j/model/AESExtraDataRecord;[C[B[BZ)V

    .line 36
    return-object v6
.end method

.method protected bridge synthetic initializeDecrypter(Lnet/lingala/zip4j/model/LocalFileHeader;[CZ)Lnet/lingala/zip4j/crypto/Decrypter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->initializeDecrypter(Lnet/lingala/zip4j/model/LocalFileHeader;[CZ)Lnet/lingala/zip4j/crypto/AESDecrypter;

    move-result-object p1

    return-object p1
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->singleByteBuffer:[B

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->read([B)I

    move-result v0

    .line 44
    .local v0, "readLen":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 45
    return v1

    .line 48
    :cond_0
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->singleByteBuffer:[B

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

    .line 53
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iput p3, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToRead:I

    .line 59
    iput p2, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->offsetWithAesBlock:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    .line 62
    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->remainingAes16ByteBlockLength:I

    if-eqz v1, :cond_0

    .line 63
    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->offsetWithAesBlock:I

    invoke-direct {p0, p1, v1}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->copyBytesFromBuffer([BI)V

    .line 65
    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    if-ne v1, p3, :cond_0

    .line 66
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    return v0

    .line 70
    :cond_0
    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToRead:I

    const/16 v2, 0x10

    const/4 v3, -0x1

    if-ge v1, v2, :cond_3

    .line 71
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlock:[B

    iget-object v4, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlock:[B

    array-length v4, v4

    invoke-super {p0, v1, v0, v4}, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->read([BII)I

    move-result v1

    iput v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlockReadLength:I

    .line 72
    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlockPointer:I

    .line 74
    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlockReadLength:I

    if-ne v1, v3, :cond_2

    .line 75
    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->remainingAes16ByteBlockLength:I

    .line 77
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    if-lez v0, :cond_1

    .line 78
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    return v0

    .line 81
    :cond_1
    return v3

    .line 84
    :cond_2
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlockReadLength:I

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->remainingAes16ByteBlockLength:I

    .line 86
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->offsetWithAesBlock:I

    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->copyBytesFromBuffer([BI)V

    .line 88
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    if-ne v0, p3, :cond_3

    .line 89
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    return v0

    .line 93
    :cond_3
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->offsetWithAesBlock:I

    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToRead:I

    iget v4, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToRead:I

    rem-int/2addr v4, v2

    sub-int/2addr v1, v4

    invoke-super {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->read([BII)I

    move-result v0

    .line 95
    .local v0, "readLen":I
    if-ne v0, v3, :cond_5

    .line 96
    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    if-lez v1, :cond_4

    .line 97
    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    return v1

    .line 99
    :cond_4
    return v3

    .line 102
    :cond_5
    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    add-int/2addr v1, v0

    return v1
.end method

.method protected readStoredMac(Ljava/io/InputStream;)[B
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    const/16 v0, 0xa

    new-array v1, v0, [B

    .line 136
    .local v1, "storedMac":[B
    invoke-static {p1, v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    move-result v2

    .line 138
    .local v2, "readLen":I
    if-ne v2, v0, :cond_0

    .line 142
    return-object v1

    .line 139
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "Invalid AES Mac bytes. Could not read sufficient data"

    invoke-direct {v0, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
