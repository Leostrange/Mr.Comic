.class Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;
.super Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;
.source "AesCipherOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/io/outputstream/CipherOutputStream<",
        "Lnet/lingala/zip4j/crypto/AESEncrypter;",
        ">;"
    }
.end annotation


# instance fields
.field private pendingBuffer:[B

.field private pendingBufferLength:I


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;[CZ)V
    .locals 1
    .param p1, "outputStream"    # Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;
    .param p2, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "password"    # [C
    .param p4, "useUtf8ForPassword"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;-><init>(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;[CZ)V

    .line 13
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->pendingBuffer:[B

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->pendingBufferLength:I

    .line 19
    return-void
.end method

.method private writeAesEncryptionHeaderData(Lnet/lingala/zip4j/crypto/AESEncrypter;)V
    .locals 1
    .param p1, "encrypter"    # Lnet/lingala/zip4j/crypto/AESEncrypter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-virtual {p1}, Lnet/lingala/zip4j/crypto/AESEncrypter;->getSaltBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->writeHeaders([B)V

    .line 31
    invoke-virtual {p1}, Lnet/lingala/zip4j/crypto/AESEncrypter;->getDerivedPasswordVerifier()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->writeHeaders([B)V

    .line 32
    return-void
.end method


# virtual methods
.method public closeEntry()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget v0, p0, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->pendingBufferLength:I

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->pendingBuffer:[B

    iget v1, p0, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->pendingBufferLength:I

    const/4 v2, 0x0

    invoke-super {p0, v0, v2, v1}, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->write([BII)V

    .line 71
    iput v2, p0, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->pendingBufferLength:I

    .line 74
    :cond_0
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->getEncrypter()Lnet/lingala/zip4j/crypto/Encrypter;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/crypto/AESEncrypter;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/AESEncrypter;->getFinalMac()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->writeHeaders([B)V

    .line 75
    invoke-super {p0}, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->closeEntry()V

    .line 76
    return-void
.end method

.method protected initializeEncrypter(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[CZ)Lnet/lingala/zip4j/crypto/AESEncrypter;
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "password"    # [C
    .param p4, "useUtf8ForPassword"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    new-instance v0, Lnet/lingala/zip4j/crypto/AESEncrypter;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getAesKeyStrength()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v1

    invoke-direct {v0, p3, v1, p4}, Lnet/lingala/zip4j/crypto/AESEncrypter;-><init>([CLnet/lingala/zip4j/model/enums/AesKeyStrength;Z)V

    .line 25
    .local v0, "encrypter":Lnet/lingala/zip4j/crypto/AESEncrypter;
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->writeAesEncryptionHeaderData(Lnet/lingala/zip4j/crypto/AESEncrypter;)V

    .line 26
    return-object v0
.end method

.method protected bridge synthetic initializeEncrypter(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[CZ)Lnet/lingala/zip4j/crypto/Encrypter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->initializeEncrypter(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[CZ)Lnet/lingala/zip4j/crypto/AESEncrypter;

    move-result-object p1

    return-object p1
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->write([B)V

    .line 37
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->write([BII)V

    .line 42
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget v0, p0, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->pendingBufferLength:I

    rsub-int/lit8 v0, v0, 0x10

    if-lt p3, v0, :cond_1

    .line 47
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->pendingBuffer:[B

    iget v1, p0, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->pendingBufferLength:I

    iget v2, p0, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->pendingBufferLength:I

    rsub-int/lit8 v2, v2, 0x10

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->pendingBuffer:[B

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->pendingBuffer:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-super {p0, v0, v2, v1}, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->write([BII)V

    .line 49
    iget v0, p0, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->pendingBufferLength:I

    rsub-int/lit8 p2, v0, 0x10

    .line 50
    sub-int/2addr p3, p2

    .line 51
    iput v2, p0, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->pendingBufferLength:I

    .line 58
    if-eqz p3, :cond_0

    rem-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_0

    .line 59
    add-int v0, p3, p2

    rem-int/lit8 v1, p3, 0x10

    sub-int/2addr v0, v1

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->pendingBuffer:[B

    rem-int/lit8 v3, p3, 0x10

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    rem-int/lit8 v0, p3, 0x10

    iput v0, p0, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->pendingBufferLength:I

    .line 61
    iget v0, p0, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->pendingBufferLength:I

    sub-int/2addr p3, v0

    .line 64
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->write([BII)V

    .line 65
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->pendingBuffer:[B

    iget v1, p0, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->pendingBufferLength:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iget v0, p0, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->pendingBufferLength:I

    add-int/2addr v0, p3

    iput v0, p0, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;->pendingBufferLength:I

    .line 55
    return-void
.end method
