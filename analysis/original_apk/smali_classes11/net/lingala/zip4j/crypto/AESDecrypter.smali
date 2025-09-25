.class public Lnet/lingala/zip4j/crypto/AESDecrypter;
.super Ljava/lang/Object;
.source "AESDecrypter.java"

# interfaces
.implements Lnet/lingala/zip4j/crypto/Decrypter;


# instance fields
.field private aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

.field private counterBlock:[B

.field private iv:[B

.field private mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

.field private nonce:I


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/AESExtraDataRecord;[C[B[BZ)V
    .locals 6
    .param p1, "aesExtraDataRecord"    # Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .param p2, "password"    # [C
    .param p3, "salt"    # [B
    .param p4, "passwordVerifier"    # [B
    .param p5, "useUtf8ForPassword"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->nonce:I

    .line 45
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->iv:[B

    .line 46
    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->counterBlock:[B

    .line 47
    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p2

    move-object v4, p1

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lnet/lingala/zip4j/crypto/AESDecrypter;->init([B[B[CLnet/lingala/zip4j/model/AESExtraDataRecord;Z)V

    .line 48
    return-void
.end method

.method private init([B[B[CLnet/lingala/zip4j/model/AESExtraDataRecord;Z)V
    .locals 6
    .param p1, "salt"    # [B
    .param p2, "passwordVerifier"    # [B
    .param p3, "password"    # [C
    .param p4, "aesExtraDataRecord"    # Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .param p5, "useUtf8ForPassword"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 53
    if-eqz p3, :cond_1

    array-length v0, p3

    if-lez v0, :cond_1

    .line 57
    invoke-virtual {p4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesKeyStrength()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v0

    .line 58
    .local v0, "aesKeyStrength":Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    invoke-static {p1, p3, v0, p5}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->derivePasswordBasedKey([B[CLnet/lingala/zip4j/model/enums/AesKeyStrength;Z)[B

    move-result-object v1

    .line 59
    .local v1, "derivedKey":[B
    invoke-static {v1, v0}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->derivePasswordVerifier([BLnet/lingala/zip4j/model/enums/AesKeyStrength;)[B

    move-result-object v2

    .line 60
    .local v2, "derivedPasswordVerifier":[B
    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    invoke-static {v1, v0}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->getAESEngine([BLnet/lingala/zip4j/model/enums/AesKeyStrength;)Lnet/lingala/zip4j/crypto/engine/AESEngine;

    move-result-object v3

    iput-object v3, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    .line 65
    invoke-static {v1, v0}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->getMacBasedPRF([BLnet/lingala/zip4j/model/enums/AesKeyStrength;)Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    move-result-object v3

    iput-object v3, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    .line 66
    return-void

    .line 61
    :cond_0
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    const-string v4, "Wrong Password"

    sget-object v5, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-direct {v3, v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw v3

    .line 54
    .end local v0    # "aesKeyStrength":Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .end local v1    # "derivedKey":[B
    .end local v2    # "derivedPasswordVerifier":[B
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "empty or null password provided for AES decryption"

    sget-object v2, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw v0
.end method


# virtual methods
.method public decryptData([BII)I
    .locals 6
    .param p1, "buff"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 71
    move v0, p2

    .local v0, "j":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_2

    .line 72
    add-int/lit8 v1, v0, 0x10

    add-int v2, p2, p3

    if-gt v1, v2, :cond_0

    .line 73
    const/16 v1, 0x10

    goto :goto_1

    :cond_0
    add-int v1, p2, p3

    sub-int/2addr v1, v0

    .line 75
    .local v1, "loopCount":I
    :goto_1
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    invoke-virtual {v2, p1, v0, v1}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->update([BII)V

    .line 76
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->iv:[B

    iget v3, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->nonce:I

    invoke-static {v2, v3}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->prepareBuffAESIVBytes([BI)V

    .line 77
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    iget-object v3, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->iv:[B

    iget-object v4, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->counterBlock:[B

    invoke-virtual {v2, v3, v4}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->processBlock([B[B)I

    .line 79
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    if-ge v2, v1, :cond_1

    .line 80
    add-int v3, v0, v2

    add-int v4, v0, v2

    aget-byte v4, p1, v4

    iget-object v5, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->counterBlock:[B

    aget-byte v5, v5, v2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 83
    .end local v2    # "k":I
    :cond_1
    iget v2, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->nonce:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->nonce:I

    .line 71
    .end local v1    # "loopCount":I
    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 86
    .end local v0    # "j":I
    :cond_2
    return p3
.end method

.method public getCalculatedAuthenticationBytes(I)[B
    .locals 1
    .param p1, "numberOfBytesPushedBack"    # I

    .line 90
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->doFinal(I)[B

    move-result-object v0

    return-object v0
.end method
