.class public Lnet/lingala/zip4j/crypto/StandardDecrypter;
.super Ljava/lang/Object;
.source "StandardDecrypter.java"

# interfaces
.implements Lnet/lingala/zip4j/crypto/Decrypter;


# instance fields
.field private zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;


# direct methods
.method public constructor <init>([CJJ[BZ)V
    .locals 8
    .param p1, "password"    # [C
    .param p2, "crc"    # J
    .param p4, "lastModifiedFileTime"    # J
    .param p6, "headerBytes"    # [B
    .param p7, "useUtf8ForPassword"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-direct {v0}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    .line 32
    move-object v0, p0

    move-object v1, p6

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lnet/lingala/zip4j/crypto/StandardDecrypter;->init([B[CJJZ)V

    .line 33
    return-void
.end method

.method private init([B[CJJZ)V
    .locals 7
    .param p1, "headerBytes"    # [B
    .param p2, "password"    # [C
    .param p3, "lastModifiedFileTime"    # J
    .param p5, "crc"    # J
    .param p7, "useUtf8ForPassword"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 52
    const-string v0, "Wrong password!"

    if-eqz p2, :cond_4

    array-length v1, p2

    if-lez v1, :cond_4

    .line 56
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-virtual {v1, p2, p7}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->initKeys([CZ)V

    .line 58
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    .line 59
    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xc

    if-ge v2, v3, :cond_3

    .line 60
    add-int/lit8 v4, v2, 0x1

    if-ne v4, v3, :cond_1

    .line 61
    iget-object v4, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-virtual {v4}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->decryptByte()B

    move-result v4

    xor-int/2addr v4, v1

    int-to-byte v4, v4

    .line 62
    .local v4, "verificationByte":B
    const/16 v5, 0x18

    shr-long v5, p5, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    if-eq v4, v5, :cond_1

    const/16 v5, 0x8

    shr-long v5, p3, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 63
    :cond_0
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    sget-object v5, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-direct {v3, v0, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw v3

    .line 67
    .end local v4    # "verificationByte":B
    :cond_1
    :goto_1
    iget-object v4, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    iget-object v5, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-virtual {v5}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->decryptByte()B

    move-result v5

    xor-int/2addr v5, v1

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->updateKeys(B)V

    .line 69
    add-int/lit8 v4, v2, 0x1

    if-eq v4, v3, :cond_2

    .line 70
    add-int/lit8 v3, v2, 0x1

    aget-byte v1, p1, v3

    .line 59
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v2    # "i":I
    :cond_3
    return-void

    .line 53
    .end local v1    # "result":I
    :cond_4
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    sget-object v2, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-direct {v1, v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw v1
.end method


# virtual methods
.method public decryptData([BII)I
    .locals 4
    .param p1, "buff"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 36
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    .line 40
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 41
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 42
    .local v1, "val":I
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-virtual {v2}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->decryptByte()B

    move-result v2

    xor-int/2addr v2, v1

    and-int/lit16 v1, v2, 0xff

    .line 43
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    int-to-byte v3, v1

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->updateKeys(B)V

    .line 44
    int-to-byte v2, v1

    aput-byte v2, p1, v0

    .line 40
    .end local v1    # "val":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "i":I
    :cond_0
    return p3

    .line 37
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "one of the input parameters were null in standard decrypt data"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
