.class Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;
.super Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;
.source "DeflaterOutputStream.java"


# instance fields
.field private buff:[B

.field protected deflater:Ljava/util/zip/Deflater;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;Lnet/lingala/zip4j/model/enums/CompressionLevel;I)V
    .locals 3
    .param p2, "compressionLevel"    # Lnet/lingala/zip4j/model/enums/CompressionLevel;
    .param p3, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/lingala/zip4j/io/outputstream/CipherOutputStream<",
            "*>;",
            "Lnet/lingala/zip4j/model/enums/CompressionLevel;",
            "I)V"
        }
    .end annotation

    .line 30
    .local p1, "cipherOutputStream":Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;, "Lnet/lingala/zip4j/io/outputstream/CipherOutputStream<*>;"
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;-><init>(Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;)V

    .line 31
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/enums/CompressionLevel;->getLevel()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    .line 32
    new-array v0, p3, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->buff:[B

    .line 33
    return-void
.end method

.method private deflate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->buff:[B

    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->buff:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    .line 54
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 55
    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->buff:[B

    invoke-super {p0, v1, v3, v0}, Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;->write([BII)V

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public closeEntry()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 62
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->deflate()V

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 67
    invoke-super {p0}, Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;->closeEntry()V

    .line 68
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "bval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 41
    .local v1, "b":[B
    int-to-byte v2, p1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 42
    invoke-virtual {p0, v1, v3, v0}, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->write([BII)V

    .line 43
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

    .line 36
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->write([BII)V

    .line 37
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 47
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-direct {p0}, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->deflate()V

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method
