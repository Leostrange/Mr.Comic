.class abstract Lnet/lingala/zip4j/io/inputstream/CipherInputStream;
.super Ljava/io/InputStream;
.source "CipherInputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/lingala/zip4j/crypto/Decrypter;",
        ">",
        "Ljava/io/InputStream;"
    }
.end annotation


# instance fields
.field private decrypter:Lnet/lingala/zip4j/crypto/Decrypter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private lastReadRawDataCache:[B

.field private localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

.field private singleByteBuffer:[B

.field private zipEntryInputStream:Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;[CIZ)V
    .locals 2
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

    .line 22
    .local p0, "this":Lnet/lingala/zip4j/io/inputstream/CipherInputStream;, "Lnet/lingala/zip4j/io/inputstream/CipherInputStream<TT;>;"
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->singleByteBuffer:[B

    .line 23
    iput-object p1, p0, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->zipEntryInputStream:Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;

    .line 24
    invoke-virtual {p0, p2, p3, p5}, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->initializeDecrypter(Lnet/lingala/zip4j/model/LocalFileHeader;[CZ)Lnet/lingala/zip4j/crypto/Decrypter;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->decrypter:Lnet/lingala/zip4j/crypto/Decrypter;

    .line 25
    iput-object p2, p0, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 27
    invoke-static {p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->getCompressionMethod(Lnet/lingala/zip4j/model/AbstractFileHeader;)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-array v0, p4, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->lastReadRawDataCache:[B

    .line 30
    :cond_0
    return-void
.end method

.method private cacheRawData([BI)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "len"    # I

    .line 74
    .local p0, "this":Lnet/lingala/zip4j/io/inputstream/CipherInputStream;, "Lnet/lingala/zip4j/io/inputstream/CipherInputStream<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->lastReadRawDataCache:[B

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->lastReadRawDataCache:[B

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    .local p0, "this":Lnet/lingala/zip4j/io/inputstream/CipherInputStream;, "Lnet/lingala/zip4j/io/inputstream/CipherInputStream<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->zipEntryInputStream:Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->close()V

    .line 63
    return-void
.end method

.method protected endOfEntryReached(Ljava/io/InputStream;I)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "numberOfBytesPushedBack"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    .local p0, "this":Lnet/lingala/zip4j/io/inputstream/CipherInputStream;, "Lnet/lingala/zip4j/io/inputstream/CipherInputStream<TT;>;"
    return-void
.end method

.method public getDecrypter()Lnet/lingala/zip4j/crypto/Decrypter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lnet/lingala/zip4j/io/inputstream/CipherInputStream;, "Lnet/lingala/zip4j/io/inputstream/CipherInputStream<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->decrypter:Lnet/lingala/zip4j/crypto/Decrypter;

    return-object v0
.end method

.method public getLastReadRawDataCache()[B
    .locals 1

    .line 66
    .local p0, "this":Lnet/lingala/zip4j/io/inputstream/CipherInputStream;, "Lnet/lingala/zip4j/io/inputstream/CipherInputStream<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->lastReadRawDataCache:[B

    return-object v0
.end method

.method public getLocalFileHeader()Lnet/lingala/zip4j/model/LocalFileHeader;
    .locals 1

    .line 92
    .local p0, "this":Lnet/lingala/zip4j/io/inputstream/CipherInputStream;, "Lnet/lingala/zip4j/io/inputstream/CipherInputStream<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    return-object v0
.end method

.method protected getNumberOfBytesReadForThisEntry()J
    .locals 2

    .line 88
    .local p0, "this":Lnet/lingala/zip4j/io/inputstream/CipherInputStream;, "Lnet/lingala/zip4j/io/inputstream/CipherInputStream<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->zipEntryInputStream:Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->getNumberOfBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract initializeDecrypter(Lnet/lingala/zip4j/model/LocalFileHeader;[CZ)Lnet/lingala/zip4j/crypto/Decrypter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/lingala/zip4j/model/LocalFileHeader;",
            "[CZ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    .local p0, "this":Lnet/lingala/zip4j/io/inputstream/CipherInputStream;, "Lnet/lingala/zip4j/io/inputstream/CipherInputStream<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->singleByteBuffer:[B

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->read([B)I

    move-result v0

    .line 36
    .local v0, "readLen":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 37
    return v1

    .line 40
    :cond_0
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->singleByteBuffer:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

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

    .line 45
    .local p0, "this":Lnet/lingala/zip4j/io/inputstream/CipherInputStream;, "Lnet/lingala/zip4j/io/inputstream/CipherInputStream<TT;>;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    .local p0, "this":Lnet/lingala/zip4j/io/inputstream/CipherInputStream;, "Lnet/lingala/zip4j/io/inputstream/CipherInputStream<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->zipEntryInputStream:Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;

    invoke-static {v0, p1, p2, p3}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 52
    .local v0, "readLen":I
    if-lez v0, :cond_0

    .line 53
    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->cacheRawData([BI)V

    .line 54
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->decrypter:Lnet/lingala/zip4j/crypto/Decrypter;

    invoke-interface {v1, p1, p2, v0}, Lnet/lingala/zip4j/crypto/Decrypter;->decryptData([BII)I

    .line 57
    :cond_0
    return v0
.end method

.method protected readRaw([B)I
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    .local p0, "this":Lnet/lingala/zip4j/io/inputstream/CipherInputStream;, "Lnet/lingala/zip4j/io/inputstream/CipherInputStream<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->zipEntryInputStream:Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->readRawFully([B)I

    move-result v0

    return v0
.end method
