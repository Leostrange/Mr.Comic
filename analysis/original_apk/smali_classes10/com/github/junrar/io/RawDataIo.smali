.class public Lcom/github/junrar/io/RawDataIo;
.super Ljava/lang/Object;
.source "RawDataIo.java"

# interfaces
.implements Lcom/github/junrar/io/SeekableReadOnlyByteChannel;


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private final dataPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private isEncrypted:Z

.field private final reused:[B

.field private final underlyingByteChannel:Lcom/github/junrar/io/SeekableReadOnlyByteChannel;


# direct methods
.method public constructor <init>(Lcom/github/junrar/io/SeekableReadOnlyByteChannel;)V
    .locals 1
    .param p1, "channel"    # Lcom/github/junrar/io/SeekableReadOnlyByteChannel;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/junrar/io/RawDataIo;->cipher:Ljavax/crypto/Cipher;

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/junrar/io/RawDataIo;->isEncrypted:Z

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/io/RawDataIo;->dataPool:Ljava/util/LinkedList;

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/github/junrar/io/RawDataIo;->reused:[B

    .line 15
    iput-object p1, p0, Lcom/github/junrar/io/RawDataIo;->underlyingByteChannel:Lcom/github/junrar/io/SeekableReadOnlyByteChannel;

    .line 16
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

    .line 81
    iget-object v0, p0, Lcom/github/junrar/io/RawDataIo;->underlyingByteChannel:Lcom/github/junrar/io/SeekableReadOnlyByteChannel;

    invoke-interface {v0}, Lcom/github/junrar/io/SeekableReadOnlyByteChannel;->close()V

    .line 82
    return-void
.end method

.method public getCipher()Ljavax/crypto/Cipher;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/github/junrar/io/RawDataIo;->cipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public getPosition()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/github/junrar/io/RawDataIo;->underlyingByteChannel:Lcom/github/junrar/io/SeekableReadOnlyByteChannel;

    invoke-interface {v0}, Lcom/github/junrar/io/SeekableReadOnlyByteChannel;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/github/junrar/io/RawDataIo;->reused:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/github/junrar/io/RawDataIo;->read([BII)I

    .line 40
    iget-object v0, p0, Lcom/github/junrar/io/RawDataIo;->reused:[B

    aget-byte v0, v0, v2

    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-array v0, p3, [B

    .line 46
    .local v0, "tmp":[B
    invoke-virtual {p0, v0, p3}, Lcom/github/junrar/io/RawDataIo;->readFully([BI)I

    move-result v1

    .line 47
    .local v1, "size":I
    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    return v1
.end method

.method public readFully([BI)I
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-boolean v0, p0, Lcom/github/junrar/io/RawDataIo;->isEncrypted:Z

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/github/junrar/io/RawDataIo;->dataPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 55
    .local v0, "remainingSize":I
    sub-int v1, p2, v0

    .line 56
    .local v1, "toRead":I
    not-int v2, v1

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v2, v2, 0xf

    add-int/2addr v2, v1

    .line 57
    .local v2, "realRead":I
    new-array v3, v2, [B

    .line 59
    .local v3, "tmp":[B
    if-lez v2, :cond_0

    .line 60
    iget-object v4, p0, Lcom/github/junrar/io/RawDataIo;->underlyingByteChannel:Lcom/github/junrar/io/SeekableReadOnlyByteChannel;

    invoke-interface {v4, v3, v2}, Lcom/github/junrar/io/SeekableReadOnlyByteChannel;->readFully([BI)I

    .line 61
    iget-object v4, p0, Lcom/github/junrar/io/RawDataIo;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v4, v3}, Ljavax/crypto/Cipher;->update([B)[B

    move-result-object v4

    .line 62
    .local v4, "decrypted":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_0

    .line 63
    iget-object v6, p0, Lcom/github/junrar/io/RawDataIo;->dataPool:Ljava/util/LinkedList;

    aget-byte v7, v4, v5

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 67
    .end local v4    # "decrypted":[B
    .end local v5    # "i":I
    :cond_0
    const/4 v4, 0x0

    .line 68
    .local v4, "realReadSize":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, p2, :cond_1

    iget-object v6, p0, Lcom/github/junrar/io/RawDataIo;->dataPool:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 69
    iget-object v6, p0, Lcom/github/junrar/io/RawDataIo;->dataPool:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, p1, v5

    .line 70
    add-int/lit8 v4, v4, 0x1

    .line 68
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 72
    .end local v5    # "i":I
    :cond_1
    return v4

    .line 75
    .end local v0    # "remainingSize":I
    .end local v1    # "toRead":I
    .end local v2    # "realRead":I
    .end local v3    # "tmp":[B
    .end local v4    # "realReadSize":I
    :cond_2
    iget-object v0, p0, Lcom/github/junrar/io/RawDataIo;->underlyingByteChannel:Lcom/github/junrar/io/SeekableReadOnlyByteChannel;

    invoke-interface {v0, p1, p2}, Lcom/github/junrar/io/SeekableReadOnlyByteChannel;->readFully([BI)I

    move-result v0

    return v0
.end method

.method public setCipher(Ljavax/crypto/Cipher;)V
    .locals 1
    .param p1, "cipher"    # Ljavax/crypto/Cipher;

    .line 23
    iput-object p1, p0, Lcom/github/junrar/io/RawDataIo;->cipher:Ljavax/crypto/Cipher;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/junrar/io/RawDataIo;->isEncrypted:Z

    .line 25
    return-void
.end method

.method public setPosition(J)V
    .locals 1
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/github/junrar/io/RawDataIo;->underlyingByteChannel:Lcom/github/junrar/io/SeekableReadOnlyByteChannel;

    invoke-interface {v0, p1, p2}, Lcom/github/junrar/io/SeekableReadOnlyByteChannel;->setPosition(J)V

    .line 35
    return-void
.end method
