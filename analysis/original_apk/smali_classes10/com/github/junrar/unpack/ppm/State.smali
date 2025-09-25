.class public Lcom/github/junrar/unpack/ppm/State;
.super Lcom/github/junrar/unpack/ppm/Pointer;
.source "State.java"


# static fields
.field public static final size:I = 0x6


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "mem"    # [B

    .line 33
    invoke-direct {p0, p1}, Lcom/github/junrar/unpack/ppm/Pointer;-><init>([B)V

    .line 34
    return-void
.end method

.method public static ppmdSwap(Lcom/github/junrar/unpack/ppm/State;Lcom/github/junrar/unpack/ppm/State;)V
    .locals 7
    .param p0, "ptr1"    # Lcom/github/junrar/unpack/ppm/State;
    .param p1, "ptr2"    # Lcom/github/junrar/unpack/ppm/State;

    .line 95
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/State;->mem:[B

    .local v0, "mem1":[B
    iget-object v1, p1, Lcom/github/junrar/unpack/ppm/State;->mem:[B

    .line 96
    .local v1, "mem2":[B
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Lcom/github/junrar/unpack/ppm/State;->pos:I

    .local v3, "pos1":I
    iget v4, p1, Lcom/github/junrar/unpack/ppm/State;->pos:I

    .local v4, "pos2":I
    :goto_0
    const/4 v5, 0x6

    if-ge v2, v5, :cond_0

    .line 97
    aget-byte v5, v0, v3

    .line 98
    .local v5, "temp":B
    aget-byte v6, v1, v4

    aput-byte v6, v0, v3

    .line 99
    aput-byte v5, v1, v4

    .line 96
    .end local v5    # "temp":B
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 101
    .end local v2    # "i":I
    .end local v3    # "pos1":I
    .end local v4    # "pos2":I
    :cond_0
    return-void
.end method


# virtual methods
.method public decAddress()Lcom/github/junrar/unpack/ppm/State;
    .locals 1

    .line 85
    iget v0, p0, Lcom/github/junrar/unpack/ppm/State;->pos:I

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p0, v0}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 86
    return-object p0
.end method

.method public getFreq()I
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/State;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/State;->pos:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getSuccessor()I
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/State;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/State;->pos:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v0

    return v0
.end method

.method public getSymbol()I
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/State;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/State;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public incAddress()Lcom/github/junrar/unpack/ppm/State;
    .locals 1

    .line 90
    iget v0, p0, Lcom/github/junrar/unpack/ppm/State;->pos:I

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 91
    return-object p0
.end method

.method public incFreq(I)V
    .locals 3
    .param p1, "dFreq"    # I

    .line 59
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/State;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/State;->pos:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v2, v0, v1

    add-int/2addr v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 60
    return-void
.end method

.method public init([B)Lcom/github/junrar/unpack/ppm/State;
    .locals 1
    .param p1, "mem"    # [B

    .line 37
    iput-object p1, p0, Lcom/github/junrar/unpack/ppm/State;->mem:[B

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/junrar/unpack/ppm/State;->pos:I

    .line 39
    return-object p0
.end method

.method public setFreq(I)V
    .locals 3
    .param p1, "freq"    # I

    .line 55
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/State;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/State;->pos:I

    add-int/lit8 v1, v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 56
    return-void
.end method

.method public setSuccessor(I)V
    .locals 2
    .param p1, "successor"    # I

    .line 71
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/State;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/State;->pos:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/github/junrar/io/Raw;->writeIntLittleEndian([BII)V

    .line 72
    return-void
.end method

.method public setSuccessor(Lcom/github/junrar/unpack/ppm/PPMContext;)V
    .locals 1
    .param p1, "successor"    # Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 67
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/junrar/unpack/ppm/State;->setSuccessor(I)V

    .line 68
    return-void
.end method

.method public setSymbol(I)V
    .locals 3
    .param p1, "symbol"    # I

    .line 47
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/State;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/State;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 48
    return-void
.end method

.method public setValues(Lcom/github/junrar/unpack/ppm/State;)V
    .locals 5
    .param p1, "ptr"    # Lcom/github/junrar/unpack/ppm/State;

    .line 81
    iget-object v0, p1, Lcom/github/junrar/unpack/ppm/State;->mem:[B

    iget v1, p1, Lcom/github/junrar/unpack/ppm/State;->pos:I

    iget-object v2, p0, Lcom/github/junrar/unpack/ppm/State;->mem:[B

    iget v3, p0, Lcom/github/junrar/unpack/ppm/State;->pos:I

    const/4 v4, 0x6

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    return-void
.end method

.method public setValues(Lcom/github/junrar/unpack/ppm/StateRef;)V
    .locals 1
    .param p1, "state"    # Lcom/github/junrar/unpack/ppm/StateRef;

    .line 75
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/junrar/unpack/ppm/State;->setSymbol(I)V

    .line 76
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/StateRef;->getFreq()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/junrar/unpack/ppm/State;->setFreq(I)V

    .line 77
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/StateRef;->getSuccessor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/junrar/unpack/ppm/State;->setSuccessor(I)V

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "State["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, "\n  pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Lcom/github/junrar/unpack/ppm/State;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "\n  size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, "\n  symbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, "\n  freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, "\n  successor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/State;->getSuccessor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
