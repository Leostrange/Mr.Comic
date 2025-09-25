.class public Lcom/github/junrar/crypt/Rijndael;
.super Ljava/lang/Object;
.source "Rijndael.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDecipherer(Ljava/lang/String;[B)Ljavax/crypto/Cipher;
    .locals 19
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "salt"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 40
    move-object/from16 v0, p1

    if-eqz p0, :cond_5

    .line 43
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 44
    .local v2, "AESInit":[B
    new-array v1, v1, [B

    .line 45
    .local v1, "AESKey":[B
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    .line 46
    .local v3, "rawLength":I
    add-int/lit8 v5, v3, 0x8

    new-array v5, v5, [B

    .line 47
    .local v5, "rawpsw":[B
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 48
    .local v6, "pwd":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    if-ge v7, v8, :cond_0

    .line 49
    mul-int/lit8 v8, v7, 0x2

    aget-byte v10, v6, v7

    aput-byte v10, v5, v8

    .line 50
    mul-int/lit8 v8, v7, 0x2

    add-int/lit8 v8, v8, 0x1

    aput-byte v9, v5, v8

    .line 48
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 52
    .end local v7    # "i":I
    :cond_0
    array-length v7, v0

    invoke-static {v0, v9, v5, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    const-string/jumbo v7, "sha-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 56
    .local v7, "sha":Ljava/security/MessageDigest;
    const/high16 v8, 0x40000

    .line 57
    .local v8, "HashRounds":I
    const/16 v9, 0x4000

    .line 59
    .local v9, "xh":I
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 60
    .local v10, "bout":Ljava/io/ByteArrayOutputStream;
    const/4 v11, 0x0

    .line 62
    .local v11, "digest":[B
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    const/high16 v13, 0x40000

    if-ge v12, v13, :cond_2

    .line 63
    invoke-virtual {v10, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 64
    int-to-byte v13, v12

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 65
    ushr-int/lit8 v13, v12, 0x8

    int-to-byte v13, v13

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 66
    ushr-int/lit8 v13, v12, 0x10

    int-to-byte v13, v13

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 68
    rem-int/lit16 v13, v12, 0x4000

    if-nez v13, :cond_1

    .line 69
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 70
    .local v13, "input":[B
    invoke-virtual {v7, v13}, Ljava/security/MessageDigest;->update([B)V

    .line 71
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v11

    .line 72
    div-int/lit16 v14, v12, 0x4000

    const/16 v15, 0x13

    aget-byte v15, v11, v15

    aput-byte v15, v2, v14

    .line 62
    .end local v13    # "input":[B
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 76
    .end local v12    # "i":I
    :cond_2
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/security/MessageDigest;->update([B)V

    .line 77
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v11

    .line 78
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_2
    const/4 v13, 0x4

    if-ge v12, v13, :cond_4

    .line 79
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_3
    if-ge v14, v13, :cond_3

    .line 80
    mul-int/lit8 v15, v12, 0x4

    add-int/2addr v15, v14

    mul-int/lit8 v16, v12, 0x4

    aget-byte v16, v11, v16

    const/high16 v17, 0x1000000

    mul-int v16, v16, v17

    const/high16 v17, -0x1000000

    and-int v16, v16, v17

    mul-int/lit8 v17, v12, 0x4

    add-int/lit8 v17, v17, 0x1

    aget-byte v17, v11, v17

    const/high16 v18, 0x10000

    mul-int v17, v17, v18

    const/high16 v18, 0xff0000

    and-int v17, v17, v18

    or-int v16, v16, v17

    mul-int/lit8 v17, v12, 0x4

    add-int/lit8 v17, v17, 0x2

    aget-byte v13, v11, v17

    mul-int/lit16 v13, v13, 0x100

    const v17, 0xff00

    and-int v13, v13, v17

    or-int v13, v16, v13

    mul-int/lit8 v16, v12, 0x4

    add-int/lit8 v16, v16, 0x3

    aget-byte v4, v11, v16

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v13

    mul-int/lit8 v13, v14, 0x8

    ushr-int/2addr v4, v13

    int-to-byte v4, v4

    aput-byte v4, v1, v15

    .line 79
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x2

    const/4 v13, 0x4

    goto :goto_3

    .line 78
    .end local v14    # "j":I
    :cond_3
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x2

    goto :goto_2

    .line 86
    .end local v12    # "i":I
    :cond_4
    const-string v4, "AES/CBC/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 87
    .local v4, "cipher":Ljavax/crypto/Cipher;
    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    const-string v13, "AES"

    invoke-direct {v12, v1, v13}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v13, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v13, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v14, 0x2

    invoke-virtual {v4, v14, v12, v13}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 88
    return-object v4

    .line 41
    .end local v1    # "AESKey":[B
    .end local v2    # "AESInit":[B
    .end local v3    # "rawLength":I
    .end local v4    # "cipher":Ljavax/crypto/Cipher;
    .end local v5    # "rawpsw":[B
    .end local v6    # "pwd":[B
    .end local v7    # "sha":Ljava/security/MessageDigest;
    .end local v8    # "HashRounds":I
    .end local v9    # "xh":I
    .end local v10    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "digest":[B
    :cond_5
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v2, "password should be specified"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
