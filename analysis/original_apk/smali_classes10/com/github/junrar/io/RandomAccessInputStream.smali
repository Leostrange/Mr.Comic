.class public final Lcom/github/junrar/io/RandomAccessInputStream;
.super Ljava/io/InputStream;
.source "RandomAccessInputStream.java"


# static fields
.field private static final BLOCK_MASK:I = 0x1ff

.field private static final BLOCK_SHIFT:I = 0x9

.field private static final BLOCK_SIZE:I = 0x200


# instance fields
.field private final data:Ljava/util/Vector;

.field private foundEOS:Z

.field private length:J

.field private pointer:J

.field private final src:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "inputstream"    # Ljava/io/InputStream;

    .line 34
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/junrar/io/RandomAccessInputStream;->pointer:J

    .line 36
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/github/junrar/io/RandomAccessInputStream;->data:Ljava/util/Vector;

    .line 37
    iput-wide v0, p0, Lcom/github/junrar/io/RandomAccessInputStream;->length:J

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/junrar/io/RandomAccessInputStream;->foundEOS:Z

    .line 39
    iput-object p1, p0, Lcom/github/junrar/io/RandomAccessInputStream;->src:Ljava/io/InputStream;

    .line 40
    return-void
.end method

.method private readUntil(J)J
    .locals 11
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-wide v0, p0, Lcom/github/junrar/io/RandomAccessInputStream;->length:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 104
    return-wide p1

    .line 106
    :cond_0
    iget-boolean v0, p0, Lcom/github/junrar/io/RandomAccessInputStream;->foundEOS:Z

    if-eqz v0, :cond_1

    .line 107
    iget-wide v0, p0, Lcom/github/junrar/io/RandomAccessInputStream;->length:J

    return-wide v0

    .line 109
    :cond_1
    const/16 v0, 0x9

    ushr-long v1, p1, v0

    long-to-int v1, v1

    .line 110
    .local v1, "i":I
    iget-wide v2, p0, Lcom/github/junrar/io/RandomAccessInputStream;->length:J

    ushr-long/2addr v2, v0

    long-to-int v0, v2

    .line 111
    .local v0, "j":I
    move v2, v0

    .local v2, "k":I
    :goto_0
    if-gt v2, v1, :cond_4

    .line 112
    const/16 v3, 0x200

    new-array v3, v3, [B

    .line 113
    .local v3, "abyte0":[B
    iget-object v4, p0, Lcom/github/junrar/io/RandomAccessInputStream;->data:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 114
    const/16 v4, 0x200

    .line 115
    .local v4, "i1":I
    const/4 v5, 0x0

    .line 116
    .local v5, "j1":I
    :goto_1
    if-lez v4, :cond_3

    .line 117
    iget-object v6, p0, Lcom/github/junrar/io/RandomAccessInputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v6, v3, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 118
    .local v6, "k1":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 119
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/github/junrar/io/RandomAccessInputStream;->foundEOS:Z

    .line 120
    iget-wide v7, p0, Lcom/github/junrar/io/RandomAccessInputStream;->length:J

    return-wide v7

    .line 122
    :cond_2
    add-int/2addr v5, v6

    .line 123
    sub-int/2addr v4, v6

    .line 124
    iget-wide v7, p0, Lcom/github/junrar/io/RandomAccessInputStream;->length:J

    int-to-long v9, v6

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/github/junrar/io/RandomAccessInputStream;->length:J

    .line 125
    .end local v6    # "k1":I
    goto :goto_1

    .line 111
    .end local v3    # "abyte0":[B
    .end local v4    # "i1":I
    .end local v5    # "j1":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v2    # "k":I
    :cond_4
    iget-wide v2, p0, Lcom/github/junrar/io/RandomAccessInputStream;->length:J

    return-wide v2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/github/junrar/io/RandomAccessInputStream;->data:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 185
    iget-object v0, p0, Lcom/github/junrar/io/RandomAccessInputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 186
    return-void
.end method

.method public getFilePointer()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-wide v0, p0, Lcom/github/junrar/io/RandomAccessInputStream;->pointer:J

    long-to-int v0, v0

    return v0
.end method

.method public getLongFilePointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-wide v0, p0, Lcom/github/junrar/io/RandomAccessInputStream;->pointer:J

    return-wide v0
.end method

.method public read()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-wide v0, p0, Lcom/github/junrar/io/RandomAccessInputStream;->pointer:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 52
    .local v0, "l":J
    invoke-direct {p0, v0, v1}, Lcom/github/junrar/io/RandomAccessInputStream;->readUntil(J)J

    move-result-wide v4

    .line 53
    .local v4, "l1":J
    cmp-long v6, v4, v0

    if-ltz v6, :cond_0

    .line 54
    iget-object v6, p0, Lcom/github/junrar/io/RandomAccessInputStream;->data:Ljava/util/Vector;

    iget-wide v7, p0, Lcom/github/junrar/io/RandomAccessInputStream;->pointer:J

    const/16 v9, 0x9

    ushr-long/2addr v7, v9

    long-to-int v7, v7

    .line 55
    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    check-cast v6, [B

    .line 56
    .local v6, "abyte0":[B
    iget-wide v7, p0, Lcom/github/junrar/io/RandomAccessInputStream;->pointer:J

    add-long/2addr v2, v7

    iput-wide v2, p0, Lcom/github/junrar/io/RandomAccessInputStream;->pointer:J

    const-wide/16 v2, 0x1ff

    and-long/2addr v2, v7

    long-to-int v2, v2

    aget-byte v2, v6, v2

    and-int/lit16 v2, v2, 0xff

    return v2

    .line 58
    .end local v6    # "abyte0":[B
    :cond_0
    const/4 v2, -0x1

    return v2
.end method

.method public read([BII)I
    .locals 9
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    if-eqz p1, :cond_3

    .line 66
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 69
    if-nez p3, :cond_0

    .line 70
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_0
    iget-wide v0, p0, Lcom/github/junrar/io/RandomAccessInputStream;->pointer:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/github/junrar/io/RandomAccessInputStream;->readUntil(J)J

    move-result-wide v0

    .line 73
    .local v0, "l":J
    iget-wide v2, p0, Lcom/github/junrar/io/RandomAccessInputStream;->pointer:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 74
    const/4 v2, -0x1

    return v2

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/github/junrar/io/RandomAccessInputStream;->data:Ljava/util/Vector;

    iget-wide v3, p0, Lcom/github/junrar/io/RandomAccessInputStream;->pointer:J

    const/16 v5, 0x9

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    .line 77
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    .line 78
    .local v2, "abyte1":[B
    iget-wide v3, p0, Lcom/github/junrar/io/RandomAccessInputStream;->pointer:J

    const-wide/16 v5, 0x1ff

    and-long/2addr v3, v5

    long-to-int v3, v3

    rsub-int v3, v3, 0x200

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 79
    .local v3, "k":I
    iget-wide v7, p0, Lcom/github/junrar/io/RandomAccessInputStream;->pointer:J

    and-long v4, v7, v5

    long-to-int v4, v4

    invoke-static {v2, v4, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iget-wide v4, p0, Lcom/github/junrar/io/RandomAccessInputStream;->pointer:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/github/junrar/io/RandomAccessInputStream;->pointer:J

    .line 82
    return v3

    .line 67
    .end local v0    # "l":J
    .end local v2    # "abyte1":[B
    .end local v3    # "k":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 64
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lcom/github/junrar/io/RandomAccessInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Lcom/github/junrar/io/RandomAccessInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/github/junrar/io/RandomAccessInputStream;->readFully([BI)V

    .line 88
    return-void
.end method

.method public readFully([BI)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    .line 93
    .local v0, "read":I
    :cond_0
    sub-int v1, p2, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/junrar/io/RandomAccessInputStream;->read([BII)I

    move-result v1

    .line 94
    .local v1, "l":I
    if-gez v1, :cond_1

    .line 95
    goto :goto_0

    .line 97
    :cond_1
    add-int/2addr v0, v1

    .line 98
    .end local v1    # "l":I
    if-lt v0, p2, :cond_0

    .line 99
    :goto_0
    return-void
.end method

.method public readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcom/github/junrar/io/RandomAccessInputStream;->read()I

    move-result v0

    .line 151
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/github/junrar/io/RandomAccessInputStream;->read()I

    move-result v1

    .line 152
    .local v1, "j":I
    invoke-virtual {p0}, Lcom/github/junrar/io/RandomAccessInputStream;->read()I

    move-result v2

    .line 153
    .local v2, "k":I
    invoke-virtual {p0}, Lcom/github/junrar/io/RandomAccessInputStream;->read()I

    move-result v3

    .line 154
    .local v3, "l":I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_0

    .line 157
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    return v4

    .line 155
    :cond_0
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4
.end method

.method public readLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/github/junrar/io/RandomAccessInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/github/junrar/io/RandomAccessInputStream;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public readShort()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lcom/github/junrar/io/RandomAccessInputStream;->read()I

    move-result v0

    .line 171
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/github/junrar/io/RandomAccessInputStream;->read()I

    move-result v1

    .line 172
    .local v1, "j":I
    or-int v2, v0, v1

    if-ltz v2, :cond_0

    .line 175
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    int-to-short v2, v2

    return v2

    .line 173
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public seek(I)V
    .locals 5
    .param p1, "loc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 142
    .local v0, "lloc":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 143
    iput-wide v2, p0, Lcom/github/junrar/io/RandomAccessInputStream;->pointer:J

    goto :goto_0

    .line 145
    :cond_0
    iput-wide v0, p0, Lcom/github/junrar/io/RandomAccessInputStream;->pointer:J

    .line 147
    :goto_0
    return-void
.end method

.method public seek(J)V
    .locals 3
    .param p1, "loc"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 134
    iput-wide v0, p0, Lcom/github/junrar/io/RandomAccessInputStream;->pointer:J

    goto :goto_0

    .line 136
    :cond_0
    iput-wide p1, p0, Lcom/github/junrar/io/RandomAccessInputStream;->pointer:J

    .line 138
    :goto_0
    return-void
.end method
