.class public Lcom/github/junrar/io/SeekableReadOnlyInputStream;
.super Ljava/lang/Object;
.source "SeekableReadOnlyInputStream.java"

# interfaces
.implements Lcom/github/junrar/io/SeekableReadOnlyByteChannel;


# instance fields
.field private final is:Lcom/github/junrar/io/RandomAccessInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/github/junrar/io/RandomAccessInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/github/junrar/io/RandomAccessInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/github/junrar/io/SeekableReadOnlyInputStream;->is:Lcom/github/junrar/io/RandomAccessInputStream;

    .line 27
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

    .line 57
    iget-object v0, p0, Lcom/github/junrar/io/SeekableReadOnlyInputStream;->is:Lcom/github/junrar/io/RandomAccessInputStream;

    invoke-virtual {v0}, Lcom/github/junrar/io/RandomAccessInputStream;->close()V

    .line 58
    return-void
.end method

.method public getPosition()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/github/junrar/io/SeekableReadOnlyInputStream;->is:Lcom/github/junrar/io/RandomAccessInputStream;

    invoke-virtual {v0}, Lcom/github/junrar/io/RandomAccessInputStream;->getLongFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/github/junrar/io/SeekableReadOnlyInputStream;->is:Lcom/github/junrar/io/RandomAccessInputStream;

    invoke-virtual {v0}, Lcom/github/junrar/io/RandomAccessInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/github/junrar/io/SeekableReadOnlyInputStream;->is:Lcom/github/junrar/io/RandomAccessInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/github/junrar/io/RandomAccessInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public readFully([BI)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/github/junrar/io/SeekableReadOnlyInputStream;->is:Lcom/github/junrar/io/RandomAccessInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/github/junrar/io/RandomAccessInputStream;->readFully([BI)V

    .line 52
    return p2
.end method

.method public setPosition(J)V
    .locals 1
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/github/junrar/io/SeekableReadOnlyInputStream;->is:Lcom/github/junrar/io/RandomAccessInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/github/junrar/io/RandomAccessInputStream;->seek(J)V

    .line 37
    return-void
.end method
