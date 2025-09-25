.class public Lcom/github/junrar/unpack/ppm/RangeCoder;
.super Ljava/lang/Object;
.source "RangeCoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;
    }
.end annotation


# static fields
.field public static final BOT:I = 0x8000

.field public static final TOP:I = 0x1000000

.field private static final uintMask:J = 0xffffffffL


# instance fields
.field private code:J

.field private low:J

.field private range:J

.field private final subRange:Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

.field private unpackRead:Lcom/github/junrar/unpack/Unpack;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    invoke-direct {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->subRange:Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    return-void
.end method

.method private getChar()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->unpackRead:Lcom/github/junrar/unpack/Unpack;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/Unpack;->getChar()I

    move-result v0

    return v0
.end method


# virtual methods
.method public ariDecNormalize()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "c2":Z
    :goto_0
    iget-wide v1, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->low:J

    iget-wide v3, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->low:J

    iget-wide v5, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->range:J

    add-long/2addr v3, v5

    xor-long/2addr v1, v3

    const-wide/32 v3, 0x1000000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    iget-wide v1, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->range:J

    const-wide/32 v3, 0x8000

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    move v0, v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 98
    :cond_1
    return-void

    .line 90
    :cond_2
    :goto_2
    const-wide v1, 0xffffffffL

    if-eqz v0, :cond_3

    .line 91
    iget-wide v3, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->low:J

    neg-long v3, v3

    const-wide/16 v5, 0x7fff

    and-long/2addr v3, v5

    and-long/2addr v3, v1

    iput-wide v3, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->range:J

    .line 92
    const/4 v0, 0x0

    .line 94
    :cond_3
    iget-wide v3, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->code:J

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    invoke-direct {p0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getChar()I

    move-result v6

    int-to-long v6, v6

    or-long/2addr v3, v6

    and-long/2addr v3, v1

    iput-wide v3, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->code:J

    .line 95
    iget-wide v3, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->range:J

    shl-long/2addr v3, v5

    and-long/2addr v3, v1

    iput-wide v3, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->range:J

    .line 96
    iget-wide v3, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->low:J

    shl-long/2addr v3, v5

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->low:J

    goto :goto_0
.end method

.method public decode()V
    .locals 8

    .line 71
    iget-wide v0, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->low:J

    iget-wide v2, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->range:J

    iget-object v4, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->subRange:Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->getLowCount()J

    move-result-wide v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->low:J

    .line 72
    iget-wide v0, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->range:J

    iget-object v4, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->subRange:Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->getHighCount()J

    move-result-wide v4

    iget-object v6, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->subRange:Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->getLowCount()J

    move-result-wide v6

    sub-long/2addr v4, v6

    mul-long/2addr v0, v4

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->range:J

    .line 73
    return-void
.end method

.method public getCurrentCount()I
    .locals 4

    .line 61
    iget-wide v0, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->range:J

    iget-object v2, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->subRange:Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v2

    div-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->range:J

    .line 62
    iget-wide v0, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->code:J

    iget-wide v2, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->low:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->range:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getCurrentShiftCount(I)J
    .locals 4
    .param p1, "SHIFT"    # I

    .line 66
    iget-wide v0, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->range:J

    ushr-long/2addr v0, p1

    iput-wide v0, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->range:J

    .line 67
    iget-wide v0, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->code:J

    iget-wide v2, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->low:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->range:J

    div-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->subRange:Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    return-object v0
.end method

.method public initDecoder(Lcom/github/junrar/unpack/Unpack;)V
    .locals 7
    .param p1, "unpackRead"    # Lcom/github/junrar/unpack/Unpack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->unpackRead:Lcom/github/junrar/unpack/Unpack;

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->code:J

    iput-wide v0, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->low:J

    .line 54
    const-wide v0, 0xffffffffL

    iput-wide v0, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->range:J

    .line 55
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 56
    iget-wide v3, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->code:J

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    invoke-direct {p0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getChar()I

    move-result v5

    int-to-long v5, v5

    or-long/2addr v3, v5

    and-long/2addr v3, v0

    iput-wide v3, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->code:J

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "RangeCoder["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, "\n  low="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-wide v1, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->low:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, "\n  code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-wide v1, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->code:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "\n  range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-wide v1, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->range:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, "\n  subrange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/RangeCoder;->subRange:Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
