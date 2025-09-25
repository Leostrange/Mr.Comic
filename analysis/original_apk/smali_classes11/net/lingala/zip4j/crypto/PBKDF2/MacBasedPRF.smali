.class public Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;
.super Ljava/lang/Object;
.source "MacBasedPRF.java"

# interfaces
.implements Lnet/lingala/zip4j/crypto/PBKDF2/PRF;


# instance fields
.field private hLen:I

.field private mac:Ljavax/crypto/Mac;

.field private macAlgorithm:Ljava/lang/String;

.field private macCache:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "macAlgorithm"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->macAlgorithm:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->macCache:Ljava/io/ByteArrayOutputStream;

    .line 44
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    .line 45
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v0

    iput v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->hLen:I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    nop

    .line 49
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private doMacUpdate(I)V
    .locals 5
    .param p1, "numberOfBytesToPushBack"    # I

    .line 97
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->macCache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 98
    .local v0, "macBytes":[B
    array-length v1, v0

    sub-int/2addr v1, p1

    .line 100
    .local v1, "numberOfBytesToRead":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 101
    add-int/lit8 v3, v2, 0x10

    if-gt v3, v1, :cond_0

    const/16 v3, 0x10

    goto :goto_1

    :cond_0
    sub-int v3, v1, v2

    .line 102
    .local v3, "updateLength":I
    :goto_1
    iget-object v4, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v4, v0, v2, v3}, Ljavax/crypto/Mac;->update([BII)V

    .line 100
    add-int/lit8 v2, v2, 0x10

    goto :goto_0

    .line 104
    .end local v2    # "i":I
    .end local v3    # "updateLength":I
    :cond_1
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->macCache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 105
    return-void
.end method


# virtual methods
.method public doFinal()[B
    .locals 1

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->doFinal(I)[B

    move-result-object v0

    return-object v0
.end method

.method public doFinal(I)[B
    .locals 1
    .param p1, "numberOfBytesToPushbackForMac"    # I

    .line 63
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->macCache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 64
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->doMacUpdate(I)V

    .line 66
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public doFinal([B)[B
    .locals 1
    .param p1, "M"    # [B

    .line 52
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->macCache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->doMacUpdate(I)V

    .line 55
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getHLen()I
    .locals 1

    .line 70
    iget v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->hLen:I

    return v0
.end method

.method public init([B)V
    .locals 3
    .param p1, "P"    # [B

    .line 75
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->macAlgorithm:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    nop

    .line 79
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public update([B)V
    .locals 2
    .param p1, "u"    # [B

    .line 82
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->update([BII)V

    .line 83
    return-void
.end method

.method public update([BII)V
    .locals 2
    .param p1, "u"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I

    .line 87
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->macCache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p3

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->doMacUpdate(I)V

    .line 90
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->macCache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    nop

    .line 94
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
