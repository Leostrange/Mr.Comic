.class public Lnet/lingala/zip4j/crypto/AESEncrypter;
.super Ljava/lang/Object;
.source "AESEncrypter.java"

# interfaces
.implements Lnet/lingala/zip4j/crypto/Encrypter;


# instance fields
.field private aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

.field private final counterBlock:[B

.field private derivedPasswordVerifier:[B

.field private finished:Z

.field private final iv:[B

.field private loopCount:I

.field private mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

.field private nonce:I

.field private final random:Ljava/security/SecureRandom;

.field private saltBytes:[B


# direct methods
.method public constructor <init>([CLnet/lingala/zip4j/model/enums/AesKeyStrength;Z)V
    .locals 2
    .param p1, "password"    # [C
    .param p2, "aesKeyStrength"    # Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .param p3, "useUtf8ForPassword"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->random:Ljava/security/SecureRandom;

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->nonce:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->loopCount:I

    .line 53
    if-eqz p1, :cond_2

    array-length v1, p1

    if-eqz v1, :cond_2

    .line 56
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_128:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    if-eq p2, v1, :cond_1

    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Invalid AES key strength"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->finished:Z

    .line 62
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->counterBlock:[B

    .line 63
    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->iv:[B

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/crypto/AESEncrypter;->init([CLnet/lingala/zip4j/model/enums/AesKeyStrength;Z)V

    .line 65
    return-void

    .line 54
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input password is empty or null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateSalt(I)[B
    .locals 6
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 115
    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v1, 0x10

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid salt size, cannot generate salt"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    :goto_0
    if-ne p1, v0, :cond_2

    .line 122
    const/4 v0, 0x2

    .local v0, "rounds":I
    goto :goto_1

    .line 124
    .end local v0    # "rounds":I
    :cond_2
    const/4 v0, 0x4

    .line 127
    .restart local v0    # "rounds":I
    :goto_1
    new-array v1, p1, [B

    .line 128
    .local v1, "salt":[B
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 129
    iget-object v3, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    .line 130
    .local v3, "i":I
    mul-int/lit8 v4, v2, 0x4

    shr-int/lit8 v5, v3, 0x18

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 131
    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v5, v3, 0x10

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 132
    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x2

    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 133
    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x3

    int-to-byte v5, v3

    aput-byte v5, v1, v4

    .line 128
    .end local v3    # "i":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 135
    .end local v2    # "j":I
    :cond_3
    return-object v1
.end method

.method private init([CLnet/lingala/zip4j/model/enums/AesKeyStrength;Z)V
    .locals 2
    .param p1, "password"    # [C
    .param p2, "aesKeyStrength"    # Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .param p3, "useUtf8ForPassword"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 68
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getSaltLength()I

    move-result v0

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/crypto/AESEncrypter;->generateSalt(I)[B

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->saltBytes:[B

    .line 69
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->saltBytes:[B

    invoke-static {v0, p1, p2, p3}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->derivePasswordBasedKey([B[CLnet/lingala/zip4j/model/enums/AesKeyStrength;Z)[B

    move-result-object v0

    .line 70
    .local v0, "derivedKey":[B
    invoke-static {v0, p2}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->derivePasswordVerifier([BLnet/lingala/zip4j/model/enums/AesKeyStrength;)[B

    move-result-object v1

    iput-object v1, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->derivedPasswordVerifier:[B

    .line 71
    invoke-static {v0, p2}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->getAESEngine([BLnet/lingala/zip4j/model/enums/AesKeyStrength;)Lnet/lingala/zip4j/crypto/engine/AESEngine;

    move-result-object v1

    iput-object v1, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    .line 72
    invoke-static {v0, p2}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->getMacBasedPRF([BLnet/lingala/zip4j/model/enums/AesKeyStrength;)Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    move-result-object v1

    iput-object v1, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    .line 73
    return-void
.end method


# virtual methods
.method public encryptData([B)I
    .locals 2
    .param p1, "buff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 76
    if-eqz p1, :cond_0

    .line 79
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/crypto/AESEncrypter;->encryptData([BII)I

    move-result v0

    return v0

    .line 77
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input bytes are null, cannot perform AES encryption"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encryptData([BII)I
    .locals 6
    .param p1, "buff"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 84
    iget-boolean v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->finished:Z

    if-nez v0, :cond_4

    .line 91
    rem-int/lit8 v0, p3, 0x10

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 92
    iput-boolean v1, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->finished:Z

    .line 95
    :cond_0
    move v0, p2

    .local v0, "j":I
    :goto_0
    add-int v2, p2, p3

    if-ge v0, v2, :cond_3

    .line 96
    add-int/lit8 v2, v0, 0x10

    add-int v3, p2, p3

    if-gt v2, v3, :cond_1

    .line 97
    const/16 v2, 0x10

    goto :goto_1

    :cond_1
    add-int v2, p2, p3

    sub-int/2addr v2, v0

    :goto_1
    iput v2, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->loopCount:I

    .line 99
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->iv:[B

    iget v3, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->nonce:I

    invoke-static {v2, v3}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->prepareBuffAESIVBytes([BI)V

    .line 100
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    iget-object v3, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->iv:[B

    iget-object v4, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->counterBlock:[B

    invoke-virtual {v2, v3, v4}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->processBlock([B[B)I

    .line 102
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    iget v3, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->loopCount:I

    if-ge v2, v3, :cond_2

    .line 103
    add-int v3, v0, v2

    add-int v4, v0, v2

    aget-byte v4, p1, v4

    iget-object v5, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->counterBlock:[B

    aget-byte v5, v5, v2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 106
    .end local v2    # "k":I
    :cond_2
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    iget v3, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->loopCount:I

    invoke-virtual {v2, p1, v0, v3}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->update([BII)V

    .line 107
    iget v2, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->nonce:I

    add-int/2addr v2, v1

    iput v2, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->nonce:I

    .line 95
    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 110
    .end local v0    # "j":I
    :cond_3
    return p3

    .line 88
    :cond_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "AES Encrypter is in finished state (A non 16 byte block has already been passed to encrypter)"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDerivedPasswordVerifier()[B
    .locals 1

    .line 146
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->derivedPasswordVerifier:[B

    return-object v0
.end method

.method public getFinalMac()[B
    .locals 4

    .line 139
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->doFinal()[B

    move-result-object v0

    .line 140
    .local v0, "rawMacBytes":[B
    const/16 v1, 0xa

    new-array v2, v1, [B

    .line 141
    .local v2, "macBytes":[B
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    return-object v2
.end method

.method public getSaltBytes()[B
    .locals 1

    .line 150
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->saltBytes:[B

    return-object v0
.end method
