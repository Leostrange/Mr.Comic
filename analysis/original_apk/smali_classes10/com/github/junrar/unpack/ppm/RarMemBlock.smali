.class public Lcom/github/junrar/unpack/ppm/RarMemBlock;
.super Lcom/github/junrar/unpack/ppm/Pointer;
.source "RarMemBlock.java"


# static fields
.field public static final size:I = 0xc


# instance fields
.field private NU:I

.field private next:I

.field private prev:I

.field private stamp:I


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "mem"    # [B

    .line 39
    invoke-direct {p0, p1}, Lcom/github/junrar/unpack/ppm/Pointer;-><init>([B)V

    .line 40
    return-void
.end method


# virtual methods
.method public getNU()I
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->pos:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->NU:I

    .line 84
    :cond_0
    iget v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->NU:I

    return v0
.end method

.method public getNext()I
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->pos:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v0

    iput v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->next:I

    .line 66
    :cond_0
    iget v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->next:I

    return v0
.end method

.method public getPrev()I
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->pos:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v0

    iput v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->prev:I

    .line 98
    :cond_0
    iget v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->prev:I

    return v0
.end method

.method public getStamp()I
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->pos:I

    invoke-static {v0, v1}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->stamp:I

    .line 116
    :cond_0
    iget v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->stamp:I

    return v0
.end method

.method public insertAt(Lcom/github/junrar/unpack/ppm/RarMemBlock;)V
    .locals 2
    .param p1, "p"    # Lcom/github/junrar/unpack/ppm/RarMemBlock;

    .line 43
    new-instance v0, Lcom/github/junrar/unpack/ppm/RarMemBlock;

    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;-><init>([B)V

    .line 44
    .local v0, "temp":Lcom/github/junrar/unpack/ppm/RarMemBlock;
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setPrev(I)V

    .line 45
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getPrev()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    .line 46
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setNext(I)V

    .line 47
    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setNext(Lcom/github/junrar/unpack/ppm/RarMemBlock;)V

    .line 48
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    .line 49
    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setPrev(Lcom/github/junrar/unpack/ppm/RarMemBlock;)V

    .line 50
    return-void
.end method

.method public remove()V
    .locals 2

    .line 53
    new-instance v0, Lcom/github/junrar/unpack/ppm/RarMemBlock;

    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;-><init>([B)V

    .line 54
    .local v0, "temp":Lcom/github/junrar/unpack/ppm/RarMemBlock;
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getPrev()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    .line 55
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setNext(I)V

    .line 56
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    .line 57
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getPrev()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setPrev(I)V

    .line 60
    return-void
.end method

.method public setNU(I)V
    .locals 3
    .param p1, "nu"    # I

    .line 88
    const v0, 0xffff

    and-int/2addr v0, p1

    iput v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->NU:I

    .line 89
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->pos:I

    add-int/lit8 v1, v1, 0x2

    int-to-short v2, p1

    invoke-static {v0, v1, v2}, Lcom/github/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    .line 92
    :cond_0
    return-void
.end method

.method public setNext(I)V
    .locals 2
    .param p1, "next"    # I

    .line 74
    iput p1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->next:I

    .line 75
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->pos:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1, p1}, Lcom/github/junrar/io/Raw;->writeIntLittleEndian([BII)V

    .line 78
    :cond_0
    return-void
.end method

.method public setNext(Lcom/github/junrar/unpack/ppm/RarMemBlock;)V
    .locals 1
    .param p1, "next"    # Lcom/github/junrar/unpack/ppm/RarMemBlock;

    .line 70
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setNext(I)V

    .line 71
    return-void
.end method

.method public setPrev(I)V
    .locals 2
    .param p1, "prev"    # I

    .line 106
    iput p1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->prev:I

    .line 107
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->pos:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1, p1}, Lcom/github/junrar/io/Raw;->writeIntLittleEndian([BII)V

    .line 110
    :cond_0
    return-void
.end method

.method public setPrev(Lcom/github/junrar/unpack/ppm/RarMemBlock;)V
    .locals 1
    .param p1, "prev"    # Lcom/github/junrar/unpack/ppm/RarMemBlock;

    .line 102
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setPrev(I)V

    .line 103
    return-void
.end method

.method public setStamp(I)V
    .locals 3
    .param p1, "stamp"    # I

    .line 120
    iput p1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->stamp:I

    .line 121
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/RarMemBlock;->pos:I

    int-to-short v2, p1

    invoke-static {v0, v1, v2}, Lcom/github/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    .line 124
    :cond_0
    return-void
.end method
