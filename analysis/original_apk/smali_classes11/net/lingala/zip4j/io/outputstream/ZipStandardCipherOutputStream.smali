.class Lnet/lingala/zip4j/io/outputstream/ZipStandardCipherOutputStream;
.super Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;
.source "ZipStandardCipherOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/io/outputstream/CipherOutputStream<",
        "Lnet/lingala/zip4j/crypto/StandardEncrypter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;[CZ)V
    .locals 0
    .param p1, "outputStream"    # Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;
    .param p2, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "password"    # [C
    .param p4, "useUtf8ForPassword"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;-><init>(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;[CZ)V

    .line 15
    return-void
.end method

.method private getEncryptionKey(Lnet/lingala/zip4j/model/ZipParameters;)J
    .locals 5
    .param p1, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;

    .line 42
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isWriteExtendedLocalFileHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getLastModifiedFileTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->epochToExtendedDosTime(J)J

    move-result-wide v0

    .line 44
    .local v0, "dosTime":J
    const-wide/32 v2, 0xffff

    and-long/2addr v2, v0

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    return-wide v2

    .line 47
    .end local v0    # "dosTime":J
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEntryCRC()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected bridge synthetic initializeEncrypter(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[CZ)Lnet/lingala/zip4j/crypto/Encrypter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/lingala/zip4j/io/outputstream/ZipStandardCipherOutputStream;->initializeEncrypter(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[CZ)Lnet/lingala/zip4j/crypto/StandardEncrypter;

    move-result-object p1

    return-object p1
.end method

.method protected initializeEncrypter(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[CZ)Lnet/lingala/zip4j/crypto/StandardEncrypter;
    .locals 4
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "password"    # [C
    .param p4, "useUtf8ForPassword"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/io/outputstream/ZipStandardCipherOutputStream;->getEncryptionKey(Lnet/lingala/zip4j/model/ZipParameters;)J

    move-result-wide v0

    .line 21
    .local v0, "key":J
    new-instance v2, Lnet/lingala/zip4j/crypto/StandardEncrypter;

    invoke-direct {v2, p3, v0, v1, p4}, Lnet/lingala/zip4j/crypto/StandardEncrypter;-><init>([CJZ)V

    .line 22
    .local v2, "encrypter":Lnet/lingala/zip4j/crypto/StandardEncrypter;
    invoke-virtual {v2}, Lnet/lingala/zip4j/crypto/StandardEncrypter;->getHeaderBytes()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/lingala/zip4j/io/outputstream/ZipStandardCipherOutputStream;->writeHeaders([B)V

    .line 23
    return-object v2
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/outputstream/ZipStandardCipherOutputStream;->write([B)V

    .line 29
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

    .line 33
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/outputstream/ZipStandardCipherOutputStream;->write([BII)V

    .line 34
    return-void
.end method

.method public write([BII)V
    .locals 0
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-super {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->write([BII)V

    .line 39
    return-void
.end method
