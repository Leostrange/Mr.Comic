.class public Lcom/github/junrar/unpack/ppm/PPMContext;
.super Lcom/github/junrar/unpack/ppm/Pointer;
.source "PPMContext.java"


# static fields
.field public static final ExpEscape:[I

.field public static final size:I

.field private static final unionSize:I


# instance fields
.field private final freqData:Lcom/github/junrar/unpack/ppm/FreqData;

.field private numStats:I

.field private final oneState:Lcom/github/junrar/unpack/ppm/State;

.field private final ps:[I

.field private suffix:I

.field private tempPPMContext:Lcom/github/junrar/unpack/ppm/PPMContext;

.field private final tempState1:Lcom/github/junrar/unpack/ppm/State;

.field private final tempState2:Lcom/github/junrar/unpack/ppm/State;

.field private final tempState3:Lcom/github/junrar/unpack/ppm/State;

.field private final tempState4:Lcom/github/junrar/unpack/ppm/State;

.field private final tempState5:Lcom/github/junrar/unpack/ppm/State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x6

    invoke-static {v0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/github/junrar/unpack/ppm/PPMContext;->unionSize:I

    .line 32
    sget v0, Lcom/github/junrar/unpack/ppm/PPMContext;->unionSize:I

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    sput v0, Lcom/github/junrar/unpack/ppm/PPMContext;->size:I

    .line 46
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/junrar/unpack/ppm/PPMContext;->ExpEscape:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x19
        0xe
        0x9
        0x7
        0x5
        0x5
        0x4
        0x4
        0x4
        0x3
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "mem"    # [B

    .line 58
    invoke-direct {p0, p1}, Lcom/github/junrar/unpack/ppm/Pointer;-><init>([B)V

    .line 49
    new-instance v0, Lcom/github/junrar/unpack/ppm/State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempState1:Lcom/github/junrar/unpack/ppm/State;

    .line 50
    new-instance v0, Lcom/github/junrar/unpack/ppm/State;

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempState2:Lcom/github/junrar/unpack/ppm/State;

    .line 51
    new-instance v0, Lcom/github/junrar/unpack/ppm/State;

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempState3:Lcom/github/junrar/unpack/ppm/State;

    .line 52
    new-instance v0, Lcom/github/junrar/unpack/ppm/State;

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempState4:Lcom/github/junrar/unpack/ppm/State;

    .line 53
    new-instance v0, Lcom/github/junrar/unpack/ppm/State;

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempState5:Lcom/github/junrar/unpack/ppm/State;

    .line 54
    iput-object v1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempPPMContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 55
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->ps:[I

    .line 59
    new-instance v0, Lcom/github/junrar/unpack/ppm/State;

    invoke-direct {v0, p1}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->oneState:Lcom/github/junrar/unpack/ppm/State;

    .line 60
    new-instance v0, Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-direct {v0, p1}, Lcom/github/junrar/unpack/ppm/FreqData;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    .line 61
    return-void
.end method

.method private getArrayIndex(Lcom/github/junrar/unpack/ppm/ModelPPM;Lcom/github/junrar/unpack/ppm/State;)I
    .locals 5
    .param p1, "Model"    # Lcom/github/junrar/unpack/ppm/ModelPPM;
    .param p2, "rs"    # Lcom/github/junrar/unpack/ppm/State;

    .line 222
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getSubAlloc()Lcom/github/junrar/unpack/ppm/SubAllocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getHeap()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getTempPPMContext([B)Lcom/github/junrar/unpack/ppm/PPMContext;

    move-result-object v0

    .line 223
    .local v0, "tempSuffix":Lcom/github/junrar/unpack/ppm/PPMContext;
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 224
    const/4 v1, 0x0

    .line 225
    .local v1, "ret":I
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getPrevSuccess()I

    move-result v2

    add-int/2addr v1, v2

    .line 226
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getNS2BSIndx()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 227
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHiBitsFlag()I

    move-result v2

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHB2Flag()[I

    move-result-object v3

    invoke-virtual {p2}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v4

    aget v3, v3, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 228
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getRunLength()I

    move-result v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v2, v2, 0x20

    add-int/2addr v1, v2

    .line 229
    return v1
.end method

.method private getTempPPMContext([B)Lcom/github/junrar/unpack/ppm/PPMContext;
    .locals 2
    .param p1, "mem"    # [B

    .line 128
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempPPMContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/github/junrar/unpack/ppm/PPMContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempPPMContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempPPMContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0, p1}, Lcom/github/junrar/unpack/ppm/PPMContext;->init([B)Lcom/github/junrar/unpack/ppm/PPMContext;

    move-result-object v0

    return-object v0
.end method

.method private makeEscFreq2(Lcom/github/junrar/unpack/ppm/ModelPPM;I)Lcom/github/junrar/unpack/ppm/SEE2Context;
    .locals 8
    .param p1, "model"    # Lcom/github/junrar/unpack/ppm/ModelPPM;
    .param p2, "Diff"    # I

    .line 363
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v0

    .line 364
    .local v0, "numStats":I
    const/16 v1, 0x100

    if-eq v0, v1, :cond_3

    .line 365
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/github/junrar/unpack/ppm/PPMContext;->getTempPPMContext([B)Lcom/github/junrar/unpack/ppm/PPMContext;

    move-result-object v1

    .line 366
    .local v1, "suff":Lcom/github/junrar/unpack/ppm/PPMContext;
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 367
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getNS2Indx()[I

    move-result-object v2

    add-int/lit8 v3, p2, -0x1

    aget v2, v2, v3

    .line 368
    .local v2, "idx1":I
    const/4 v3, 0x0

    .line 369
    .local v3, "idx2":I
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v4

    sub-int/2addr v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge p2, v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    add-int/2addr v3, v4

    .line 370
    iget-object v4, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v4

    mul-int/lit8 v7, v0, 0xb

    if-ge v4, v7, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 371
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getNumMasked()I

    move-result v4

    if-le v4, p2, :cond_2

    move v5, v6

    :cond_2
    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v3, v5

    .line 372
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHiBitsFlag()I

    move-result v4

    add-int/2addr v3, v4

    .line 373
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getSEE2Cont()[[Lcom/github/junrar/unpack/ppm/SEE2Context;

    move-result-object v4

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    .line 374
    .local v4, "psee2c":Lcom/github/junrar/unpack/ppm/SEE2Context;
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/github/junrar/unpack/ppm/RangeCoder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v5

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/SEE2Context;->getMean()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setScale(J)V

    .line 375
    .end local v1    # "suff":Lcom/github/junrar/unpack/ppm/PPMContext;
    .end local v2    # "idx1":I
    .end local v3    # "idx2":I
    goto :goto_2

    .line 376
    .end local v4    # "psee2c":Lcom/github/junrar/unpack/ppm/SEE2Context;
    :cond_3
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getDummySEE2Cont()Lcom/github/junrar/unpack/ppm/SEE2Context;

    move-result-object v4

    .line 377
    .restart local v4    # "psee2c":Lcom/github/junrar/unpack/ppm/SEE2Context;
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/github/junrar/unpack/ppm/RangeCoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setScale(J)V

    .line 379
    :goto_2
    return-object v4
.end method


# virtual methods
.method public createChild(Lcom/github/junrar/unpack/ppm/ModelPPM;Lcom/github/junrar/unpack/ppm/State;Lcom/github/junrar/unpack/ppm/StateRef;)I
    .locals 2
    .param p1, "model"    # Lcom/github/junrar/unpack/ppm/ModelPPM;
    .param p2, "pStats"    # Lcom/github/junrar/unpack/ppm/State;
    .param p3, "firstState"    # Lcom/github/junrar/unpack/ppm/StateRef;

    .line 136
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getSubAlloc()Lcom/github/junrar/unpack/ppm/SubAllocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getHeap()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getTempPPMContext([B)Lcom/github/junrar/unpack/ppm/PPMContext;

    move-result-object v0

    .line 137
    .local v0, "pc":Lcom/github/junrar/unpack/ppm/PPMContext;
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getSubAlloc()Lcom/github/junrar/unpack/ppm/SubAllocator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/SubAllocator;->allocContext()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 138
    if-eqz v0, :cond_0

    .line 139
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/PPMContext;->setNumStats(I)V

    .line 140
    invoke-virtual {v0, p3}, Lcom/github/junrar/unpack/ppm/PPMContext;->setOneState(Lcom/github/junrar/unpack/ppm/StateRef;)V

    .line 141
    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->setSuffix(Lcom/github/junrar/unpack/ppm/PPMContext;)V

    .line 142
    invoke-virtual {p2, v0}, Lcom/github/junrar/unpack/ppm/State;->setSuccessor(Lcom/github/junrar/unpack/ppm/PPMContext;)V

    .line 144
    :cond_0
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v1

    return v1
.end method

.method public decodeBinSymbol(Lcom/github/junrar/unpack/ppm/ModelPPM;)V
    .locals 12
    .param p1, "model"    # Lcom/github/junrar/unpack/ppm/ModelPPM;

    .line 237
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempState1:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/State;->init([B)Lcom/github/junrar/unpack/ppm/State;

    move-result-object v0

    .line 238
    .local v0, "rs":Lcom/github/junrar/unpack/ppm/State;
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->oneState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 239
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHB2Flag()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setHiBitsFlag(I)V

    .line 240
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 241
    .local v1, "off1":I
    invoke-direct {p0, p1, v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getArrayIndex(Lcom/github/junrar/unpack/ppm/ModelPPM;Lcom/github/junrar/unpack/ppm/State;)I

    move-result v3

    .line 242
    .local v3, "off2":I
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getBinSumm()[[I

    move-result-object v4

    aget-object v4, v4, v1

    aget v4, v4, v3

    .line 243
    .local v4, "bs":I
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/github/junrar/unpack/ppm/RangeCoder;

    move-result-object v5

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getCurrentShiftCount(I)J

    move-result-wide v5

    int-to-long v7, v4

    cmp-long v5, v5, v7

    const v6, 0xffff

    const/4 v7, 0x2

    const/4 v8, 0x7

    const/4 v9, 0x0

    if-gez v5, :cond_1

    .line 244
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v5

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 245
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v5

    const/16 v10, 0x80

    if-ge v5, v10, :cond_0

    move v9, v2

    :cond_0
    invoke-virtual {v0, v9}, Lcom/github/junrar/unpack/ppm/State;->incFreq(I)V

    .line 246
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/github/junrar/unpack/ppm/RangeCoder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v5

    const-wide/16 v9, 0x0

    invoke-virtual {v5, v9, v10}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 247
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/github/junrar/unpack/ppm/RangeCoder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v5

    int-to-long v9, v4

    invoke-virtual {v5, v9, v10}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 248
    add-int/lit16 v5, v4, 0x80

    invoke-virtual {p0, v4, v8, v7}, Lcom/github/junrar/unpack/ppm/PPMContext;->getMean(III)I

    move-result v7

    sub-int/2addr v5, v7

    and-int v4, v5, v6

    .line 249
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getBinSumm()[[I

    move-result-object v5

    aget-object v5, v5, v1

    aput v4, v5, v3

    .line 250
    invoke-virtual {p1, v2}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setPrevSuccess(I)V

    .line 251
    invoke-virtual {p1, v2}, Lcom/github/junrar/unpack/ppm/ModelPPM;->incRunLength(I)V

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/github/junrar/unpack/ppm/RangeCoder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v5

    int-to-long v10, v4

    invoke-virtual {v5, v10, v11}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 254
    invoke-virtual {p0, v4, v8, v7}, Lcom/github/junrar/unpack/ppm/PPMContext;->getMean(III)I

    move-result v5

    sub-int v5, v4, v5

    and-int v4, v5, v6

    .line 255
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getBinSumm()[[I

    move-result-object v5

    aget-object v5, v5, v1

    aput v4, v5, v3

    .line 256
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/github/junrar/unpack/ppm/RangeCoder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v5

    const-wide/16 v6, 0x4000

    invoke-virtual {v5, v6, v7}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 257
    sget-object v5, Lcom/github/junrar/unpack/ppm/PPMContext;->ExpEscape:[I

    ushr-int/lit8 v6, v4, 0xa

    aget v5, v5, v6

    invoke-virtual {p1, v5}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setInitEsc(I)V

    .line 258
    invoke-virtual {p1, v2}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setNumMasked(I)V

    .line 259
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCharMask()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v5

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getEscCount()I

    move-result v6

    aput v6, v2, v5

    .line 260
    invoke-virtual {p1, v9}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setPrevSuccess(I)V

    .line 261
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 264
    :goto_0
    return-void
.end method

.method public decodeSymbol1(Lcom/github/junrar/unpack/ppm/ModelPPM;)Z
    .locals 12
    .param p1, "model"    # Lcom/github/junrar/unpack/ppm/ModelPPM;

    .line 384
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/github/junrar/unpack/ppm/RangeCoder;

    move-result-object v0

    .line 385
    .local v0, "coder":Lcom/github/junrar/unpack/ppm/RangeCoder;
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v1

    iget-object v2, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setScale(J)V

    .line 386
    new-instance v1, Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    .line 387
    .local v1, "p":Lcom/github/junrar/unpack/ppm/State;
    iget-object v2, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 389
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getCurrentCount()I

    move-result v2

    int-to-long v2, v2

    .line 390
    .local v2, "count":J
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v4

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-ltz v4, :cond_0

    .line 391
    return v5

    .line 393
    :cond_0
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v4

    move v6, v4

    .local v6, "HiCnt":I
    int-to-long v7, v4

    cmp-long v4, v2, v7

    const/4 v7, 0x1

    if-gez v4, :cond_3

    .line 394
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v4

    int-to-long v8, v6

    invoke-virtual {v4, v8, v9}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 395
    mul-int/lit8 v4, v6, 0x2

    int-to-long v8, v4

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-lez v4, :cond_1

    move v5, v7

    :cond_1
    invoke-virtual {p1, v5}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setPrevSuccess(I)V

    .line 396
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getPrevSuccess()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/github/junrar/unpack/ppm/ModelPPM;->incRunLength(I)V

    .line 397
    const/4 v4, 0x4

    add-int/2addr v6, v4

    .line 398
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v5

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 399
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/github/junrar/unpack/ppm/State;->setFreq(I)V

    .line 400
    iget-object v5, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v5, v4}, Lcom/github/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 401
    const/16 v4, 0x7c

    if-le v6, v4, :cond_2

    .line 402
    invoke-virtual {p0, p1}, Lcom/github/junrar/unpack/ppm/PPMContext;->rescale(Lcom/github/junrar/unpack/ppm/ModelPPM;)V

    .line 404
    :cond_2
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v4

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 405
    return v7

    .line 407
    :cond_3
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v4

    if-nez v4, :cond_4

    .line 408
    return v5

    .line 411
    :cond_4
    invoke-virtual {p1, v5}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setPrevSuccess(I)V

    .line 412
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v4

    .line 413
    .local v4, "numStats":I
    add-int/lit8 v8, v4, -0x1

    .line 414
    .local v8, "i":I
    :cond_5
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->incAddress()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v9

    add-int/2addr v9, v6

    move v6, v9

    int-to-long v9, v9

    cmp-long v9, v9, v2

    if-gtz v9, :cond_7

    .line 415
    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_5

    .line 416
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHB2Flag()[I

    move-result-object v9

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v10

    aget v9, v9, v10

    invoke-virtual {p1, v9}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setHiBitsFlag(I)V

    .line 417
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v9

    int-to-long v10, v6

    invoke-virtual {v9, v10, v11}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 418
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCharMask()[I

    move-result-object v9

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v10

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getEscCount()I

    move-result v11

    aput v11, v9, v10

    .line 419
    invoke-virtual {p1, v4}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setNumMasked(I)V

    .line 420
    add-int/lit8 v8, v4, -0x1

    .line 421
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 423
    :cond_6
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCharMask()[I

    move-result-object v5

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->decAddress()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v9

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getEscCount()I

    move-result v10

    aput v10, v5, v9

    .line 424
    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_6

    .line 425
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v5

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 426
    return v7

    .line 429
    :cond_7
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v5

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v9

    sub-int v9, v6, v9

    int-to-long v9, v9

    invoke-virtual {v5, v9, v10}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 430
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v5

    int-to-long v9, v6

    invoke-virtual {v5, v9, v10}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 431
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v5

    invoke-virtual {p0, p1, v5}, Lcom/github/junrar/unpack/ppm/PPMContext;->update1(Lcom/github/junrar/unpack/ppm/ModelPPM;I)V

    .line 432
    return v7
.end method

.method public decodeSymbol2(Lcom/github/junrar/unpack/ppm/ModelPPM;)Z
    .locals 14
    .param p1, "model"    # Lcom/github/junrar/unpack/ppm/ModelPPM;

    .line 300
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v0

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getNumMasked()I

    move-result v1

    sub-int/2addr v0, v1

    .line 301
    .local v0, "i":I
    invoke-direct {p0, p1, v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->makeEscFreq2(Lcom/github/junrar/unpack/ppm/ModelPPM;I)Lcom/github/junrar/unpack/ppm/SEE2Context;

    move-result-object v1

    .line 302
    .local v1, "psee2c":Lcom/github/junrar/unpack/ppm/SEE2Context;
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/github/junrar/unpack/ppm/RangeCoder;

    move-result-object v2

    .line 304
    .local v2, "coder":Lcom/github/junrar/unpack/ppm/RangeCoder;
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempState1:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/junrar/unpack/ppm/State;->init([B)Lcom/github/junrar/unpack/ppm/State;

    move-result-object v3

    .line 305
    .local v3, "p":Lcom/github/junrar/unpack/ppm/State;
    iget-object v4, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempState2:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/junrar/unpack/ppm/State;->init([B)Lcom/github/junrar/unpack/ppm/State;

    move-result-object v4

    .line 306
    .local v4, "temp":Lcom/github/junrar/unpack/ppm/State;
    iget-object v5, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v5

    add-int/lit8 v5, v5, -0x6

    invoke-virtual {v3, v5}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 307
    const/4 v5, 0x0

    .line 308
    .local v5, "pps":I
    const/4 v6, 0x0

    .line 312
    .local v6, "hiCnt":I
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/State;->incAddress()Lcom/github/junrar/unpack/ppm/State;

    .line 313
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCharMask()[I

    move-result-object v7

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v8

    aget v7, v7, v8

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getEscCount()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 314
    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v7

    add-int/2addr v6, v7

    .line 315
    iget-object v7, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->ps:[I

    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pps":I
    .local v8, "pps":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v9

    aput v9, v7, v5

    .line 316
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_5

    .line 317
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->incScale(I)V

    .line 318
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getCurrentCount()I

    move-result v5

    int-to-long v9, v5

    .line 319
    .local v9, "count":J
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v11

    cmp-long v5, v9, v11

    if-ltz v5, :cond_1

    .line 320
    const/4 v5, 0x0

    return v5

    .line 322
    :cond_1
    const/4 v5, 0x0

    .line 323
    .end local v8    # "pps":I
    .restart local v5    # "pps":I
    iget-object v7, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->ps:[I

    aget v7, v7, v5

    invoke-virtual {v3, v7}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 324
    int-to-long v7, v6

    cmp-long v7, v9, v7

    const/4 v11, 0x1

    if-gez v7, :cond_3

    .line 325
    const/4 v6, 0x0

    .line 326
    :goto_1
    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v7

    add-int/2addr v7, v6

    move v6, v7

    int-to-long v7, v7

    cmp-long v7, v7, v9

    if-gtz v7, :cond_2

    .line 327
    iget-object v7, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->ps:[I

    add-int/lit8 v5, v5, 0x1

    aget v7, v7, v5

    invoke-virtual {v3, v7}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    goto :goto_1

    .line 329
    :cond_2
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v7

    int-to-long v12, v6

    invoke-virtual {v7, v12, v13}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 330
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v7

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v8

    sub-int v8, v6, v8

    int-to-long v12, v8

    invoke-virtual {v7, v12, v13}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 331
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/SEE2Context;->update()V

    .line 332
    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v7

    invoke-virtual {p0, p1, v7}, Lcom/github/junrar/unpack/ppm/PPMContext;->update2(Lcom/github/junrar/unpack/ppm/ModelPPM;I)V

    goto :goto_2

    .line 334
    :cond_3
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v7

    int-to-long v12, v6

    invoke-virtual {v7, v12, v13}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 335
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v7

    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 336
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v7

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getNumMasked()I

    move-result v8

    sub-int/2addr v7, v8

    .line 337
    .end local v0    # "i":I
    .local v7, "i":I
    add-int/lit8 v5, v5, -0x1

    .line 339
    :cond_4
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->ps:[I

    add-int/2addr v5, v11

    aget v0, v0, v5

    invoke-virtual {v4, v0}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 340
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCharMask()[I

    move-result-object v0

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v8

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getEscCount()I

    move-result v12

    aput v12, v0, v8

    .line 341
    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_4

    .line 342
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v12

    long-to-int v0, v12

    invoke-virtual {v1, v0}, Lcom/github/junrar/unpack/ppm/SEE2Context;->incSumm(I)V

    .line 343
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setNumMasked(I)V

    move v0, v7

    .line 345
    .end local v7    # "i":I
    .restart local v0    # "i":I
    :goto_2
    return v11

    .line 316
    .end local v5    # "pps":I
    .end local v9    # "count":J
    .restart local v8    # "pps":I
    :cond_5
    move v5, v8

    goto/16 :goto_0
.end method

.method public getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    return-object v0
.end method

.method public getMean(III)I
    .locals 2
    .param p1, "summ"    # I
    .param p2, "shift"    # I
    .param p3, "round"    # I

    .line 233
    const/4 v0, 0x1

    sub-int v1, p2, p3

    shl-int/2addr v0, v1

    add-int/2addr v0, p1

    ushr-int/2addr v0, p2

    return v0
.end method

.method public final getNumStats()I
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->mem:[B

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->pos:I

    invoke-static {v0, v1}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->numStats:I

    .line 84
    :cond_0
    iget v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->numStats:I

    return v0
.end method

.method public getOneState()Lcom/github/junrar/unpack/ppm/State;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->oneState:Lcom/github/junrar/unpack/ppm/State;

    return-object v0
.end method

.method public getSuffix()I
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->mem:[B

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->pos:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v0

    iput v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->suffix:I

    .line 106
    :cond_0
    iget v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->suffix:I

    return v0
.end method

.method public init([B)Lcom/github/junrar/unpack/ppm/PPMContext;
    .locals 1
    .param p1, "mem"    # [B

    .line 64
    iput-object p1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->mem:[B

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->pos:I

    .line 66
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->oneState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v0, p1}, Lcom/github/junrar/unpack/ppm/State;->init([B)Lcom/github/junrar/unpack/ppm/State;

    .line 67
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v0, p1}, Lcom/github/junrar/unpack/ppm/FreqData;->init([B)Lcom/github/junrar/unpack/ppm/FreqData;

    .line 68
    return-object p0
.end method

.method public rescale(Lcom/github/junrar/unpack/ppm/ModelPPM;)V
    .locals 13
    .param p1, "model"    # Lcom/github/junrar/unpack/ppm/ModelPPM;

    .line 148
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v0

    .local v0, "OldNS":I
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 150
    .local v1, "i":I
    new-instance v3, Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    .line 151
    .local v3, "p1":Lcom/github/junrar/unpack/ppm/State;
    new-instance v4, Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    .line 152
    .local v4, "p":Lcom/github/junrar/unpack/ppm/State;
    new-instance v5, Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    .line 154
    .local v5, "temp":Lcom/github/junrar/unpack/ppm/State;
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 155
    :goto_0
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v6

    iget-object v7, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v7}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 157
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v6

    add-int/lit8 v6, v6, -0x6

    invoke-virtual {v5, v6}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 158
    invoke-static {v4, v5}, Lcom/github/junrar/unpack/ppm/State;->ppmdSwap(Lcom/github/junrar/unpack/ppm/State;Lcom/github/junrar/unpack/ppm/State;)V

    .line 156
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->decAddress()Lcom/github/junrar/unpack/ppm/State;

    goto :goto_0

    .line 160
    :cond_0
    iget-object v6, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 161
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/github/junrar/unpack/ppm/State;->incFreq(I)V

    .line 162
    iget-object v7, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v7, v6}, Lcom/github/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 163
    iget-object v6, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v6

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v7

    sub-int/2addr v6, v7

    .line 164
    .local v6, "EscFreq":I
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getOrderFall()I

    move-result v7

    if-eqz v7, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 165
    .local v7, "Adder":I
    :goto_1
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v8

    add-int/2addr v8, v7

    ushr-int/2addr v8, v2

    invoke-virtual {v4, v8}, Lcom/github/junrar/unpack/ppm/State;->setFreq(I)V

    .line 166
    iget-object v8, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/github/junrar/unpack/ppm/FreqData;->setSummFreq(I)V

    .line 168
    :cond_2
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->incAddress()Lcom/github/junrar/unpack/ppm/State;

    .line 169
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v8

    sub-int/2addr v6, v8

    .line 170
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v8

    add-int/2addr v8, v7

    ushr-int/2addr v8, v2

    invoke-virtual {v4, v8}, Lcom/github/junrar/unpack/ppm/State;->setFreq(I)V

    .line 171
    iget-object v8, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/github/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 172
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v8

    add-int/lit8 v8, v8, -0x6

    invoke-virtual {v5, v8}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 173
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v8

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v9

    if-le v8, v9, :cond_5

    .line 174
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 175
    new-instance v8, Lcom/github/junrar/unpack/ppm/StateRef;

    invoke-direct {v8}, Lcom/github/junrar/unpack/ppm/StateRef;-><init>()V

    .line 176
    .local v8, "tmp":Lcom/github/junrar/unpack/ppm/StateRef;
    invoke-virtual {v8, v3}, Lcom/github/junrar/unpack/ppm/StateRef;->setValues(Lcom/github/junrar/unpack/ppm/State;)V

    .line 177
    new-instance v9, Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    .line 178
    .local v9, "temp2":Lcom/github/junrar/unpack/ppm/State;
    new-instance v10, Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    .line 181
    .local v10, "temp3":Lcom/github/junrar/unpack/ppm/State;
    :cond_3
    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v11

    add-int/lit8 v11, v11, -0x6

    invoke-virtual {v9, v11}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 182
    invoke-virtual {v3, v9}, Lcom/github/junrar/unpack/ppm/State;->setValues(Lcom/github/junrar/unpack/ppm/State;)V

    .line 183
    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/State;->decAddress()Lcom/github/junrar/unpack/ppm/State;

    .line 184
    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v11

    add-int/lit8 v11, v11, -0x6

    invoke-virtual {v10, v11}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 185
    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v11

    iget-object v12, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v12}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v12

    if-eq v11, v12, :cond_4

    invoke-virtual {v8}, Lcom/github/junrar/unpack/ppm/StateRef;->getFreq()I

    move-result v11

    invoke-virtual {v10}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v12

    if-gt v11, v12, :cond_3

    .line 186
    :cond_4
    invoke-virtual {v3, v8}, Lcom/github/junrar/unpack/ppm/State;->setValues(Lcom/github/junrar/unpack/ppm/StateRef;)V

    .line 188
    .end local v8    # "tmp":Lcom/github/junrar/unpack/ppm/StateRef;
    .end local v9    # "temp2":Lcom/github/junrar/unpack/ppm/State;
    .end local v10    # "temp3":Lcom/github/junrar/unpack/ppm/State;
    :cond_5
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_2

    .line 189
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v8

    if-nez v8, :cond_8

    .line 191
    :cond_6
    add-int/2addr v1, v2

    .line 192
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->decAddress()Lcom/github/junrar/unpack/ppm/State;

    .line 193
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v8

    if-eqz v8, :cond_6

    .line 194
    add-int/2addr v6, v1

    .line 195
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v8

    sub-int/2addr v8, v1

    invoke-virtual {p0, v8}, Lcom/github/junrar/unpack/ppm/PPMContext;->setNumStats(I)V

    .line 196
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v8

    if-ne v8, v2, :cond_8

    .line 197
    new-instance v8, Lcom/github/junrar/unpack/ppm/StateRef;

    invoke-direct {v8}, Lcom/github/junrar/unpack/ppm/StateRef;-><init>()V

    .line 198
    .restart local v8    # "tmp":Lcom/github/junrar/unpack/ppm/StateRef;
    iget-object v9, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 199
    invoke-virtual {v8, v5}, Lcom/github/junrar/unpack/ppm/StateRef;->setValues(Lcom/github/junrar/unpack/ppm/State;)V

    .line 203
    :cond_7
    invoke-virtual {v8}, Lcom/github/junrar/unpack/ppm/StateRef;->getFreq()I

    move-result v9

    ushr-int/2addr v9, v2

    invoke-virtual {v8, v9}, Lcom/github/junrar/unpack/ppm/StateRef;->decFreq(I)V

    .line 204
    ushr-int/2addr v6, v2

    .line 205
    if-gt v6, v2, :cond_7

    .line 206
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getSubAlloc()Lcom/github/junrar/unpack/ppm/SubAllocator;

    move-result-object v9

    iget-object v10, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v10

    add-int/lit8 v11, v0, 0x1

    ushr-int/lit8 v2, v11, 0x1

    invoke-virtual {v9, v10, v2}, Lcom/github/junrar/unpack/ppm/SubAllocator;->freeUnits(II)V

    .line 207
    iget-object v2, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->oneState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v2, v8}, Lcom/github/junrar/unpack/ppm/State;->setValues(Lcom/github/junrar/unpack/ppm/StateRef;)V

    .line 208
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v2

    iget-object v9, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->oneState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 209
    return-void

    .line 212
    .end local v8    # "tmp":Lcom/github/junrar/unpack/ppm/StateRef;
    :cond_8
    ushr-int/lit8 v8, v6, 0x1

    sub-int/2addr v6, v8

    .line 213
    iget-object v8, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v8, v6}, Lcom/github/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 214
    add-int/lit8 v8, v0, 0x1

    ushr-int/2addr v8, v2

    .local v8, "n0":I
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v9

    add-int/2addr v9, v2

    ushr-int/lit8 v2, v9, 0x1

    .line 215
    .local v2, "n1":I
    if-eq v8, v2, :cond_9

    .line 216
    iget-object v9, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getSubAlloc()Lcom/github/junrar/unpack/ppm/SubAllocator;

    move-result-object v10

    iget-object v11, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v11}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v11

    invoke-virtual {v10, v11, v8, v2}, Lcom/github/junrar/unpack/ppm/SubAllocator;->shrinkUnits(III)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/github/junrar/unpack/ppm/FreqData;->setStats(I)V

    .line 218
    :cond_9
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v9

    iget-object v10, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 219
    return-void
.end method

.method public setAddress(I)V
    .locals 2
    .param p1, "pos"    # I

    .line 122
    invoke-super {p0, p1}, Lcom/github/junrar/unpack/ppm/Pointer;->setAddress(I)V

    .line 123
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->oneState:Lcom/github/junrar/unpack/ppm/State;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 124
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/FreqData;->setAddress(I)V

    .line 125
    return-void
.end method

.method public setFreqData(Lcom/github/junrar/unpack/ppm/FreqData;)V
    .locals 2
    .param p1, "freqData"    # Lcom/github/junrar/unpack/ppm/FreqData;

    .line 76
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/FreqData;->setSummFreq(I)V

    .line 77
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/FreqData;->setStats(I)V

    .line 78
    return-void
.end method

.method public final setNumStats(I)V
    .locals 3
    .param p1, "numStats"    # I

    .line 88
    const v0, 0xffff

    and-int/2addr v0, p1

    iput v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->numStats:I

    .line 89
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->mem:[B

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->pos:I

    int-to-short v2, p1

    invoke-static {v0, v1, v2}, Lcom/github/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    .line 92
    :cond_0
    return-void
.end method

.method public setOneState(Lcom/github/junrar/unpack/ppm/StateRef;)V
    .locals 1
    .param p1, "oneState"    # Lcom/github/junrar/unpack/ppm/StateRef;

    .line 99
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->oneState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v0, p1}, Lcom/github/junrar/unpack/ppm/State;->setValues(Lcom/github/junrar/unpack/ppm/StateRef;)V

    .line 100
    return-void
.end method

.method public setSuffix(I)V
    .locals 2
    .param p1, "suffix"    # I

    .line 114
    iput p1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->suffix:I

    .line 115
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->mem:[B

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->pos:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1, p1}, Lcom/github/junrar/io/Raw;->writeIntLittleEndian([BII)V

    .line 118
    :cond_0
    return-void
.end method

.method public setSuffix(Lcom/github/junrar/unpack/ppm/PPMContext;)V
    .locals 1
    .param p1, "suffix"    # Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 110
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->setSuffix(I)V

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "PPMContext["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const-string v1, "\n  pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    iget v1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 440
    const-string v1, "\n  size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    sget v1, Lcom/github/junrar/unpack/ppm/PPMContext;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    const-string v1, "\n  numStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 444
    const-string v1, "\n  Suffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    const-string v1, "\n  freqData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 448
    const-string v1, "\n  oneState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->oneState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 450
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update1(Lcom/github/junrar/unpack/ppm/ModelPPM;I)V
    .locals 4
    .param p1, "model"    # Lcom/github/junrar/unpack/ppm/ModelPPM;
    .param p2, "p"    # I

    .line 282
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 283
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/State;->incFreq(I)V

    .line 284
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 285
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempState3:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/State;->init([B)Lcom/github/junrar/unpack/ppm/State;

    move-result-object v0

    .line 286
    .local v0, "p0":Lcom/github/junrar/unpack/ppm/State;
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempState4:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/junrar/unpack/ppm/State;->init([B)Lcom/github/junrar/unpack/ppm/State;

    move-result-object v1

    .line 287
    .local v1, "p1":Lcom/github/junrar/unpack/ppm/State;
    invoke-virtual {v0, p2}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 288
    add-int/lit8 v2, p2, -0x6

    invoke-virtual {v1, v2}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 289
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v2

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 290
    invoke-static {v0, v1}, Lcom/github/junrar/unpack/ppm/State;->ppmdSwap(Lcom/github/junrar/unpack/ppm/State;Lcom/github/junrar/unpack/ppm/State;)V

    .line 291
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 292
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v2

    const/16 v3, 0x7c

    if-le v2, v3, :cond_0

    .line 293
    invoke-virtual {p0, p1}, Lcom/github/junrar/unpack/ppm/PPMContext;->rescale(Lcom/github/junrar/unpack/ppm/ModelPPM;)V

    .line 296
    :cond_0
    return-void
.end method

.method public update2(Lcom/github/junrar/unpack/ppm/ModelPPM;I)V
    .locals 3
    .param p1, "model"    # Lcom/github/junrar/unpack/ppm/ModelPPM;
    .param p2, "p"    # I

    .line 349
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempState5:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/State;->init([B)Lcom/github/junrar/unpack/ppm/State;

    move-result-object v0

    .line 350
    .local v0, "temp":Lcom/github/junrar/unpack/ppm/State;
    invoke-virtual {v0, p2}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 351
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 352
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/github/junrar/unpack/ppm/State;->incFreq(I)V

    .line 353
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v1, v2}, Lcom/github/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 354
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v1

    const/16 v2, 0x7c

    if-le v1, v2, :cond_0

    .line 355
    invoke-virtual {p0, p1}, Lcom/github/junrar/unpack/ppm/PPMContext;->rescale(Lcom/github/junrar/unpack/ppm/ModelPPM;)V

    .line 357
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->incEscCount(I)V

    .line 358
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getInitRL()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setRunLength(I)V

    .line 359
    return-void
.end method
