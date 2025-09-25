.class public Lcom/github/junrar/unpack/ppm/SubAllocator;
.super Ljava/lang/Object;
.source "SubAllocator.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final FIXED_UNIT_SIZE:I = 0xc

.field public static final N1:I = 0x4

.field public static final N2:I = 0x4

.field public static final N3:I = 0x4

.field public static final N4:I = 0x1a

.field public static final N_INDEXES:I = 0x26

.field public static final UNIT_SIZE:I


# instance fields
.field private fakeUnitsStart:I

.field private final freeList:[Lcom/github/junrar/unpack/ppm/RarNode;

.field private freeListPos:I

.field private glueCount:I

.field private heap:[B

.field private heapEnd:I

.field private heapStart:I

.field private hiUnit:I

.field private final indx2Units:[I

.field private loUnit:I

.field private pText:I

.field private subAllocatorSize:I

.field private tempMemBlockPos:I

.field private tempRarMemBlock1:Lcom/github/junrar/unpack/ppm/RarMemBlock;

.field private tempRarMemBlock2:Lcom/github/junrar/unpack/ppm/RarMemBlock;

.field private tempRarMemBlock3:Lcom/github/junrar/unpack/ppm/RarMemBlock;

.field private tempRarNode:Lcom/github/junrar/unpack/ppm/RarNode;

.field private final units2Indx:[I

.field private unitsStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    nop

    .line 34
    sget v0, Lcom/github/junrar/unpack/ppm/PPMContext;->size:I

    const/16 v1, 0xc

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/github/junrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0x26

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    .line 43
    const/16 v1, 0x80

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    .line 49
    new-array v0, v0, [Lcom/github/junrar/unpack/ppm/RarNode;

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/github/junrar/unpack/ppm/RarNode;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->tempRarNode:Lcom/github/junrar/unpack/ppm/RarNode;

    .line 62
    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock1:Lcom/github/junrar/unpack/ppm/RarMemBlock;

    .line 63
    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock2:Lcom/github/junrar/unpack/ppm/RarMemBlock;

    .line 64
    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock3:Lcom/github/junrar/unpack/ppm/RarMemBlock;

    .line 67
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->clean()V

    .line 68
    return-void
.end method

.method private MBPtr(II)I
    .locals 1
    .param p1, "BasePtr"    # I
    .param p2, "Items"    # I

    .line 99
    invoke-direct {p0, p2}, Lcom/github/junrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private U2B(I)I
    .locals 1
    .param p1, "NU"    # I

    .line 94
    sget v0, Lcom/github/junrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    mul-int/2addr v0, p1

    return v0
.end method

.method private allocUnitsRare(I)I
    .locals 4
    .param p1, "indx"    # I

    .line 217
    iget v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->glueCount:I

    if-nez v0, :cond_0

    .line 218
    const/16 v0, 0xff

    iput v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->glueCount:I

    .line 219
    invoke-direct {p0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->glueFreeBlocks()V

    .line 220
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/github/junrar/unpack/ppm/RarNode;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RarNode;->getNext()I

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0, p1}, Lcom/github/junrar/unpack/ppm/SubAllocator;->removeNode(I)I

    move-result v0

    return v0

    .line 224
    :cond_0
    move v0, p1

    .line 226
    .local v0, "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x26

    if-ne v0, v1, :cond_3

    .line 227
    iget v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->glueCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->glueCount:I

    .line 228
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v1, v1, p1

    invoke-direct {p0, v1}, Lcom/github/junrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v0

    .line 229
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v1, v1, p1

    mul-int/lit8 v1, v1, 0xc

    .line 230
    .local v1, "j":I
    iget v2, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    iget v3, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->pText:I

    sub-int/2addr v2, v3

    if-le v2, v1, :cond_2

    .line 231
    iget v2, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    .line 232
    iget v2, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->unitsStart:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->unitsStart:I

    .line 233
    iget v2, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->unitsStart:I

    return v2

    .line 235
    :cond_2
    const/4 v2, 0x0

    return v2

    .line 237
    .end local v1    # "j":I
    :cond_3
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/github/junrar/unpack/ppm/RarNode;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/RarNode;->getNext()I

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    invoke-direct {p0, v0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->removeNode(I)I

    move-result v1

    .line 239
    .local v1, "retVal":I
    invoke-direct {p0, v1, v0, p1}, Lcom/github/junrar/unpack/ppm/SubAllocator;->splitBlock(III)V

    .line 240
    return v1
.end method

.method private glueFreeBlocks()V
    .locals 8

    .line 171
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock1:Lcom/github/junrar/unpack/ppm/RarMemBlock;

    .line 172
    .local v0, "s0":Lcom/github/junrar/unpack/ppm/RarMemBlock;
    iget v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->tempMemBlockPos:I

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    .line 173
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock2:Lcom/github/junrar/unpack/ppm/RarMemBlock;

    .line 174
    .local v1, "p":Lcom/github/junrar/unpack/ppm/RarMemBlock;
    iget-object v2, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock3:Lcom/github/junrar/unpack/ppm/RarMemBlock;

    .line 176
    .local v2, "p1":Lcom/github/junrar/unpack/ppm/RarMemBlock;
    iget v3, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->loUnit:I

    iget v4, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->hiUnit:I

    if-eq v3, v4, :cond_0

    .line 177
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heap:[B

    iget v4, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->loUnit:I

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    .line 179
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v0, v0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setPrev(Lcom/github/junrar/unpack/ppm/RarMemBlock;)V

    invoke-virtual {v0, v0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setNext(Lcom/github/junrar/unpack/ppm/RarMemBlock;)V

    :goto_0
    const/16 v4, 0x26

    const v5, 0xffff

    if-ge v3, v4, :cond_2

    .line 180
    :goto_1
    iget-object v4, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/github/junrar/unpack/ppm/RarNode;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/RarNode;->getNext()I

    move-result v4

    if-eqz v4, :cond_1

    .line 181
    invoke-direct {p0, v3}, Lcom/github/junrar/unpack/ppm/SubAllocator;->removeNode(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    .line 182
    invoke-virtual {v1, v0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->insertAt(Lcom/github/junrar/unpack/ppm/RarMemBlock;)V

    .line 183
    invoke-virtual {v1, v5}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setStamp(I)V

    .line 184
    iget-object v4, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v4, v4, v3

    invoke-virtual {v1, v4}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setNU(I)V

    goto :goto_1

    .line 179
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    :goto_2
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v4

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v6

    if-eq v4, v6, :cond_4

    .line 192
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v4

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v6

    invoke-direct {p0, v4, v6}, Lcom/github/junrar/unpack/ppm/SubAllocator;->MBPtr(II)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    .line 193
    :goto_3
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getStamp()I

    move-result v4

    if-ne v4, v5, :cond_3

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v4

    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v6

    add-int/2addr v4, v6

    const/high16 v6, 0x10000

    if-ge v4, v6, :cond_3

    .line 194
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->remove()V

    .line 195
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v4

    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v1, v4}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setNU(I)V

    .line 196
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v4

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v6

    invoke-direct {p0, v4, v6}, Lcom/github/junrar/unpack/ppm/SubAllocator;->MBPtr(II)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    goto :goto_3

    .line 187
    :cond_3
    nop

    .line 188
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    goto :goto_2

    .line 201
    :cond_4
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    .line 202
    :goto_4
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v4

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v5

    if-eq v4, v5, :cond_7

    .line 203
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->remove()V

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v4

    .local v4, "sz":I
    :goto_5
    const/16 v5, 0x80

    if-le v4, v5, :cond_5

    .line 205
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v6

    const/16 v7, 0x25

    invoke-direct {p0, v6, v7}, Lcom/github/junrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 203
    add-int/lit8 v4, v4, -0x80

    .line 204
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v6

    invoke-direct {p0, v6, v5}, Lcom/github/junrar/unpack/ppm/SubAllocator;->MBPtr(II)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    goto :goto_5

    .line 207
    :cond_5
    iget-object v5, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    iget-object v6, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v7, v4, -0x1

    aget v6, v6, v7

    move v3, v6

    aget v5, v5, v6

    if-eq v5, v4, :cond_6

    .line 208
    iget-object v5, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    add-int/lit8 v3, v3, -0x1

    aget v5, v5, v3

    sub-int v5, v4, v5

    .line 209
    .local v5, "k":I
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v6

    sub-int v7, v4, v5

    invoke-direct {p0, v6, v7}, Lcom/github/junrar/unpack/ppm/SubAllocator;->MBPtr(II)I

    move-result v6

    add-int/lit8 v7, v5, -0x1

    invoke-direct {p0, v6, v7}, Lcom/github/junrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 211
    .end local v5    # "k":I
    :cond_6
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v5

    invoke-direct {p0, v5, v3}, Lcom/github/junrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 212
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/github/junrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    goto :goto_4

    .line 214
    .end local v4    # "sz":I
    :cond_7
    return-void
.end method

.method private insertNode(II)V
    .locals 2
    .param p1, "p"    # I
    .param p2, "indx"    # I

    .line 75
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->tempRarNode:Lcom/github/junrar/unpack/ppm/RarNode;

    .line 76
    .local v0, "temp":Lcom/github/junrar/unpack/ppm/RarNode;
    invoke-virtual {v0, p1}, Lcom/github/junrar/unpack/ppm/RarNode;->setAddress(I)V

    .line 77
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/github/junrar/unpack/ppm/RarNode;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/RarNode;->getNext()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/RarNode;->setNext(I)V

    .line 78
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/github/junrar/unpack/ppm/RarNode;

    aget-object v1, v1, p2

    invoke-virtual {v1, v0}, Lcom/github/junrar/unpack/ppm/RarNode;->setNext(Lcom/github/junrar/unpack/ppm/RarNode;)V

    .line 79
    return-void
.end method

.method private removeNode(I)I
    .locals 4
    .param p1, "indx"    # I

    .line 86
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/github/junrar/unpack/ppm/RarNode;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RarNode;->getNext()I

    move-result v0

    .line 87
    .local v0, "retVal":I
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->tempRarNode:Lcom/github/junrar/unpack/ppm/RarNode;

    .line 88
    .local v1, "temp":Lcom/github/junrar/unpack/ppm/RarNode;
    invoke-virtual {v1, v0}, Lcom/github/junrar/unpack/ppm/RarNode;->setAddress(I)V

    .line 89
    iget-object v2, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/github/junrar/unpack/ppm/RarNode;

    aget-object v2, v2, p1

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/RarNode;->getNext()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/junrar/unpack/ppm/RarNode;->setNext(I)V

    .line 90
    return v0
.end method

.method private sizeOfFreeList()I
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/github/junrar/unpack/ppm/RarNode;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private splitBlock(III)V
    .locals 5
    .param p1, "pv"    # I
    .param p2, "oldIndx"    # I
    .param p3, "newIndx"    # I

    .line 103
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v0, v0, p2

    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v1, v1, p3

    sub-int/2addr v0, v1

    .line 104
    .local v0, "uDiff":I
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v1, v1, p3

    invoke-direct {p0, v1}, Lcom/github/junrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v1

    add-int/2addr v1, p1

    .line 105
    .local v1, "p":I
    iget-object v2, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    move v4, v3

    .local v4, "i":I
    aget v2, v2, v3

    if-eq v2, v0, :cond_0

    .line 106
    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v1, v4}, Lcom/github/junrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 107
    iget-object v2, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v2, v2, v4

    move v4, v2

    invoke-direct {p0, v2}, Lcom/github/junrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 108
    sub-int/2addr v0, v4

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/github/junrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 111
    return-void
.end method


# virtual methods
.method public GetAllocatedMemory()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    return v0
.end method

.method public allocContext()I
    .locals 2

    .line 258
    iget v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->hiUnit:I

    iget v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->loUnit:I

    if-eq v0, v1, :cond_0

    .line 259
    iget v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->hiUnit:I

    sget v1, Lcom/github/junrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->hiUnit:I

    return v0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/github/junrar/unpack/ppm/RarNode;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RarNode;->getNext()I

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    invoke-direct {p0, v1}, Lcom/github/junrar/unpack/ppm/SubAllocator;->removeNode(I)I

    move-result v0

    return v0

    .line 264
    :cond_1
    invoke-direct {p0, v1}, Lcom/github/junrar/unpack/ppm/SubAllocator;->allocUnitsRare(I)I

    move-result v0

    return v0
.end method

.method public allocUnits(I)I
    .locals 4
    .param p1, "NU"    # I

    .line 244
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    .line 245
    .local v0, "indx":I
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/github/junrar/unpack/ppm/RarNode;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/RarNode;->getNext()I

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    invoke-direct {p0, v0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->removeNode(I)I

    move-result v1

    return v1

    .line 248
    :cond_0
    iget v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->loUnit:I

    .line 249
    .local v1, "retVal":I
    iget v2, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->loUnit:I

    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v3, v3, v0

    invoke-direct {p0, v3}, Lcom/github/junrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->loUnit:I

    .line 250
    iget v2, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->loUnit:I

    iget v3, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->hiUnit:I

    if-gt v2, v3, :cond_1

    .line 251
    return v1

    .line 253
    :cond_1
    iget v2, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->loUnit:I

    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v3, v3, v0

    invoke-direct {p0, v3}, Lcom/github/junrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->loUnit:I

    .line 254
    invoke-direct {p0, v0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->allocUnitsRare(I)I

    move-result v2

    return v2
.end method

.method public clean()V
    .locals 1

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    .line 72
    return-void
.end method

.method public decPText(I)V
    .locals 1
    .param p1, "dPText"    # I

    .line 330
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->setPText(I)V

    .line 331
    return-void
.end method

.method public expandUnits(II)I
    .locals 6
    .param p1, "oldPtr"    # I
    .param p2, "OldNU"    # I

    .line 268
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    .line 269
    .local v0, "i0":I
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    .line 270
    .local v1, "i1":I
    if-ne v0, v1, :cond_0

    .line 271
    return p1

    .line 273
    :cond_0
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v2}, Lcom/github/junrar/unpack/ppm/SubAllocator;->allocUnits(I)I

    move-result v2

    .line 274
    .local v2, "ptr":I
    if-eqz v2, :cond_1

    .line 276
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heap:[B

    iget-object v4, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {p0, p2}, Lcom/github/junrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v5

    invoke-static {v3, p1, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    invoke-direct {p0, p1, v0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 279
    :cond_1
    return v2
.end method

.method public freeUnits(II)V
    .locals 2
    .param p1, "ptr"    # I
    .param p2, "OldNU"    # I

    .line 306
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 307
    return-void
.end method

.method public getFakeUnitsStart()I
    .locals 1

    .line 310
    iget v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    return v0
.end method

.method public getHeap()[B
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heap:[B

    return-object v0
.end method

.method public getHeapEnd()I
    .locals 1

    .line 318
    iget v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heapEnd:I

    return v0
.end method

.method public getPText()I
    .locals 1

    .line 322
    iget v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->pText:I

    return v0
.end method

.method public getUnitsStart()I
    .locals 1

    .line 334
    iget v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->unitsStart:I

    return v0
.end method

.method public incPText()V
    .locals 1

    .line 82
    iget v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->pText:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->pText:I

    .line 83
    return-void
.end method

.method public initSubAllocator()V
    .locals 12

    .line 343
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heap:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->freeListPos:I

    iget v2, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->freeListPos:I

    invoke-direct {p0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->sizeOfFreeList()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 345
    iget v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heapStart:I

    iput v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->pText:I

    .line 347
    iget v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    const/16 v1, 0x8

    div-int/2addr v0, v1

    const/16 v2, 0xc

    div-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x7

    mul-int/2addr v0, v2

    .line 349
    .local v0, "size2":I
    div-int/lit8 v4, v0, 0xc

    sget v5, Lcom/github/junrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    mul-int/2addr v4, v5

    .line 350
    .local v4, "realSize2":I
    iget v5, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    sub-int/2addr v5, v0

    .line 351
    .local v5, "size1":I
    div-int/lit8 v6, v5, 0xc

    sget v7, Lcom/github/junrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    mul-int/2addr v6, v7

    rem-int/lit8 v7, v5, 0xc

    add-int/2addr v6, v7

    .line 353
    .local v6, "realSize1":I
    iget v7, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heapStart:I

    iget v8, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->hiUnit:I

    .line 354
    iget v7, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heapStart:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->unitsStart:I

    iput v7, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->loUnit:I

    .line 355
    iget v7, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heapStart:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    .line 356
    iget v7, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->loUnit:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->hiUnit:I

    .line 358
    const/4 v7, 0x0

    .local v7, "i":I
    const/4 v8, 0x1

    .local v8, "k":I
    :goto_0
    const/4 v9, 0x4

    if-ge v7, v9, :cond_0

    .line 359
    iget-object v9, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    and-int/lit16 v10, v8, 0xff

    aput v10, v9, v7

    .line 358
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 361
    :cond_0
    const/4 v9, 0x1

    add-int/2addr v8, v9

    :goto_1
    if-ge v7, v1, :cond_1

    .line 362
    iget-object v10, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    and-int/lit16 v11, v8, 0xff

    aput v11, v10, v7

    .line 361
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    .line 364
    :cond_1
    add-int/2addr v8, v9

    :goto_2
    if-ge v7, v2, :cond_2

    .line 365
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    and-int/lit16 v10, v8, 0xff

    aput v10, v1, v7

    .line 364
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x3

    goto :goto_2

    .line 367
    :cond_2
    add-int/2addr v8, v9

    :goto_3
    const/16 v1, 0x26

    if-ge v7, v1, :cond_3

    .line 368
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    and-int/lit16 v2, v8, 0xff

    aput v2, v1, v7

    .line 367
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x4

    goto :goto_3

    .line 371
    :cond_3
    iput v3, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->glueCount:I

    const/4 v1, 0x0

    .end local v8    # "k":I
    .local v1, "k":I
    const/4 v2, 0x0

    .end local v7    # "i":I
    .local v2, "i":I
    :goto_4
    const/16 v7, 0x80

    if-ge v1, v7, :cond_5

    .line 372
    iget-object v7, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v7, v7, v2

    add-int/lit8 v8, v1, 0x1

    if-ge v7, v8, :cond_4

    move v7, v9

    goto :goto_5

    :cond_4
    move v7, v3

    :goto_5
    add-int/2addr v2, v7

    .line 373
    iget-object v7, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    and-int/lit16 v8, v2, 0xff

    aput v8, v7, v1

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 376
    :cond_5
    return-void
.end method

.method public setFakeUnitsStart(I)V
    .locals 0
    .param p1, "fakeUnitsStart"    # I

    .line 314
    iput p1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    .line 315
    return-void
.end method

.method public setPText(I)V
    .locals 0
    .param p1, "text"    # I

    .line 326
    iput p1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->pText:I

    .line 327
    return-void
.end method

.method public setUnitsStart(I)V
    .locals 0
    .param p1, "unitsStart"    # I

    .line 338
    iput p1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->unitsStart:I

    .line 339
    return-void
.end method

.method public shrinkUnits(III)I
    .locals 6
    .param p1, "oldPtr"    # I
    .param p2, "oldNU"    # I
    .param p3, "newNU"    # I

    .line 285
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    .line 286
    .local v0, "i0":I
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v2, p3, -0x1

    aget v1, v1, v2

    .line 287
    .local v1, "i1":I
    if-ne v0, v1, :cond_0

    .line 288
    return p1

    .line 290
    :cond_0
    iget-object v2, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/github/junrar/unpack/ppm/RarNode;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/RarNode;->getNext()I

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    invoke-direct {p0, v1}, Lcom/github/junrar/unpack/ppm/SubAllocator;->removeNode(I)I

    move-result v2

    .line 296
    .local v2, "ptr":I
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heap:[B

    iget-object v4, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {p0, p3}, Lcom/github/junrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v5

    invoke-static {v3, p1, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    invoke-direct {p0, p1, v0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 298
    return v2

    .line 300
    .end local v2    # "ptr":I
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/github/junrar/unpack/ppm/SubAllocator;->splitBlock(III)V

    .line 301
    return p1
.end method

.method public startSubAllocator(I)Z
    .locals 9
    .param p1, "SASize"    # I

    .line 132
    shl-int/lit8 v0, p1, 0x14

    .line 133
    .local v0, "t":I
    iget v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    .line 134
    return v2

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->stopSubAllocator()V

    .line 137
    div-int/lit8 v1, v0, 0xc

    sget v3, Lcom/github/junrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    mul-int/2addr v1, v3

    sget v3, Lcom/github/junrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    add-int/2addr v1, v3

    .line 141
    .local v1, "allocSize":I
    add-int/lit8 v3, v1, 0x1

    add-int/lit16 v3, v3, 0x98

    .line 143
    .local v3, "realAllocSize":I
    iput v3, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->tempMemBlockPos:I

    .line 144
    const/16 v4, 0xc

    add-int/2addr v3, v4

    .line 146
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heap:[B

    .line 147
    iput v2, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heapStart:I

    .line 148
    iget v5, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heapStart:I

    add-int/2addr v5, v1

    sget v6, Lcom/github/junrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heapEnd:I

    .line 149
    iput v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    .line 151
    iget v5, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heapStart:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->freeListPos:I

    .line 152
    iget v5, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->tempMemBlockPos:I

    sub-int v5, v3, v5

    if-ne v5, v4, :cond_2

    .line 156
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->freeListPos:I

    .local v5, "pos":I
    :goto_0
    iget-object v6, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/github/junrar/unpack/ppm/RarNode;

    array-length v6, v6

    if-ge v4, v6, :cond_1

    .line 157
    iget-object v6, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/github/junrar/unpack/ppm/RarNode;

    new-instance v7, Lcom/github/junrar/unpack/ppm/RarNode;

    iget-object v8, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {v7, v8}, Lcom/github/junrar/unpack/ppm/RarNode;-><init>([B)V

    aput-object v7, v6, v4

    .line 158
    iget-object v6, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->freeList:[Lcom/github/junrar/unpack/ppm/RarNode;

    aget-object v6, v6, v4

    invoke-virtual {v6, v5}, Lcom/github/junrar/unpack/ppm/RarNode;->setAddress(I)V

    .line 156
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    .line 162
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_1
    new-instance v4, Lcom/github/junrar/unpack/ppm/RarNode;

    iget-object v5, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {v4, v5}, Lcom/github/junrar/unpack/ppm/RarNode;-><init>([B)V

    iput-object v4, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->tempRarNode:Lcom/github/junrar/unpack/ppm/RarNode;

    .line 163
    new-instance v4, Lcom/github/junrar/unpack/ppm/RarMemBlock;

    iget-object v5, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {v4, v5}, Lcom/github/junrar/unpack/ppm/RarMemBlock;-><init>([B)V

    iput-object v4, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock1:Lcom/github/junrar/unpack/ppm/RarMemBlock;

    .line 164
    new-instance v4, Lcom/github/junrar/unpack/ppm/RarMemBlock;

    iget-object v5, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {v4, v5}, Lcom/github/junrar/unpack/ppm/RarMemBlock;-><init>([B)V

    iput-object v4, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock2:Lcom/github/junrar/unpack/ppm/RarMemBlock;

    .line 165
    new-instance v4, Lcom/github/junrar/unpack/ppm/RarMemBlock;

    iget-object v5, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {v4, v5}, Lcom/github/junrar/unpack/ppm/RarMemBlock;-><init>([B)V

    iput-object v4, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock3:Lcom/github/junrar/unpack/ppm/RarMemBlock;

    .line 167
    return v2

    .line 152
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->tempMemBlockPos:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public stopSubAllocator()V
    .locals 2

    .line 114
    iget v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heap:[B

    .line 117
    const/4 v1, 0x1

    iput v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heapStart:I

    .line 120
    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->tempRarNode:Lcom/github/junrar/unpack/ppm/RarNode;

    .line 121
    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock1:Lcom/github/junrar/unpack/ppm/RarMemBlock;

    .line 122
    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock2:Lcom/github/junrar/unpack/ppm/RarMemBlock;

    .line 123
    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->tempRarMemBlock3:Lcom/github/junrar/unpack/ppm/RarMemBlock;

    .line 125
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "SubAllocator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    const-string v1, "\n  subAllocatorSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    const-string v1, "\n  glueCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    iget v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->glueCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 412
    const-string v1, "\n  heapStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->heapStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 414
    const-string v1, "\n  loUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    iget v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->loUnit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 416
    const-string v1, "\n  hiUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    iget v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->hiUnit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 418
    const-string v1, "\n  pText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    iget v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->pText:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    const-string v1, "\n  unitsStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    iget v1, p0, Lcom/github/junrar/unpack/ppm/SubAllocator;->unitsStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 422
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
