.class public Lnet/lingala/zip4j/crypto/AesCipherUtil;
.super Ljava/lang/Object;
.source "AesCipherUtil.java"


# static fields
.field private static final START_INDEX:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static derivePasswordBasedKey([B[CLnet/lingala/zip4j/model/enums/AesKeyStrength;Z)[B
    .locals 8
    .param p0, "salt"    # [B
    .param p1, "password"    # [C
    .param p2, "aesKeyStrength"    # Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .param p3, "useUtf8ForPassword"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 30
    new-instance v0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    const-string v1, "ISO-8859-1"

    const/16 v2, 0x3e8

    const-string v3, "HmacSHA1"

    invoke-direct {v0, v3, v1, p0, v2}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 31
    .local v0, "parameters":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    new-instance v1, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;-><init>(Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;)V

    .line 33
    .local v1, "engine":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getKeyLength()I

    move-result v2

    .line 34
    .local v2, "keyLength":I
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getMacLength()I

    move-result v3

    .line 35
    .local v3, "macLength":I
    add-int v4, v2, v3

    add-int/lit8 v4, v4, 0x2

    .line 36
    .local v4, "derivedKeyLength":I
    invoke-virtual {v1, p1, v4, p3}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->deriveKey([CIZ)[B

    move-result-object v5

    .line 37
    .local v5, "derivedKey":[B
    if-eqz v5, :cond_0

    array-length v6, v5

    if-ne v6, v4, :cond_0

    .line 38
    return-object v5

    .line 40
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Derived Key invalid for Key Length [%d] MAC Length [%d]"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 41
    .local v6, "message":Ljava/lang/String;
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v7, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static derivePasswordVerifier([BLnet/lingala/zip4j/model/enums/AesKeyStrength;)[B
    .locals 4
    .param p0, "derivedKey"    # [B
    .param p1, "aesKeyStrength"    # Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 53
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 54
    .local v1, "derivedPasswordVerifier":[B
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getKeyLength()I

    move-result v2

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getMacLength()I

    move-result v3

    add-int/2addr v2, v3

    .line 55
    .local v2, "keyMacLength":I
    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    return-object v1
.end method

.method public static getAESEngine([BLnet/lingala/zip4j/model/enums/AesKeyStrength;)Lnet/lingala/zip4j/crypto/engine/AESEngine;
    .locals 3
    .param p0, "derivedKey"    # [B
    .param p1, "aesKeyStrength"    # Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 84
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getKeyLength()I

    move-result v0

    .line 85
    .local v0, "keyLength":I
    new-array v1, v0, [B

    .line 86
    .local v1, "aesKey":[B
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    new-instance v2, Lnet/lingala/zip4j/crypto/engine/AESEngine;

    invoke-direct {v2, v1}, Lnet/lingala/zip4j/crypto/engine/AESEngine;-><init>([B)V

    return-object v2
.end method

.method public static getMacBasedPRF([BLnet/lingala/zip4j/model/enums/AesKeyStrength;)Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;
    .locals 4
    .param p0, "derivedKey"    # [B
    .param p1, "aesKeyStrength"    # Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 67
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getMacLength()I

    move-result v0

    .line 68
    .local v0, "macLength":I
    new-array v1, v0, [B

    .line 69
    .local v1, "macKey":[B
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getKeyLength()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    new-instance v2, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    const-string v3, "HmacSHA1"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;-><init>(Ljava/lang/String;)V

    .line 71
    .local v2, "macBasedPRF":Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->init([B)V

    .line 72
    return-object v2
.end method

.method public static prepareBuffAESIVBytes([BI)V
    .locals 3
    .param p0, "buff"    # [B
    .param p1, "nonce"    # I

    .line 91
    int-to-byte v0, p1

    const/4 v1, 0x0

    aput-byte v0, p0, v1

    .line 92
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v2, 0x1

    aput-byte v0, p0, v2

    .line 93
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    const/4 v2, 0x2

    aput-byte v0, p0, v2

    .line 94
    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    const/4 v2, 0x3

    aput-byte v0, p0, v2

    .line 96
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xf

    if-gt v0, v2, :cond_0

    .line 97
    aput-byte v1, p0, v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
