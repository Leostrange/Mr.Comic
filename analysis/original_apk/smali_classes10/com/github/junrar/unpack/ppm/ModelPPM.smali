.class public Lcom/github/junrar/unpack/ppm/ModelPPM;
.super Ljava/lang/Object;
.source "ModelPPM.java"


# static fields
.field public static final BIN_SCALE:I = 0x4000

.field public static final INTERVAL:I = 0x80

.field public static final INT_BITS:I = 0x7

.field private static final InitBinEsc:[I

.field public static final MAX_FREQ:I = 0x7c

.field public static final MAX_O:I = 0x40

.field public static final PERIOD_BITS:I = 0x7

.field public static final TOT_BITS:I = 0xe


# instance fields
.field private final HB2Flag:[I

.field private final NS2BSIndx:[I

.field private final NS2Indx:[I

.field private final SEE2Cont:[[Lcom/github/junrar/unpack/ppm/SEE2Context;

.field private final binSumm:[[I

.field private final charMask:[I

.field private final coder:Lcom/github/junrar/unpack/ppm/RangeCoder;

.field private dummySEE2Cont:Lcom/github/junrar/unpack/ppm/SEE2Context;

.field private escCount:I

.field private foundState:Lcom/github/junrar/unpack/ppm/State;

.field private hiBitsFlag:I

.field private initEsc:I

.field private initRL:I

.field private maxContext:Lcom/github/junrar/unpack/ppm/PPMContext;

.field private maxOrder:I

.field private minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

.field private numMasked:I

.field private orderFall:I

.field private prevSuccess:I

.field private final ps:[I

.field private runLength:I

.field private final subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

.field private final tempPPMContext1:Lcom/github/junrar/unpack/ppm/PPMContext;

.field private final tempPPMContext2:Lcom/github/junrar/unpack/ppm/PPMContext;

.field private final tempPPMContext3:Lcom/github/junrar/unpack/ppm/PPMContext;

.field private final tempPPMContext4:Lcom/github/junrar/unpack/ppm/PPMContext;

.field private final tempState1:Lcom/github/junrar/unpack/ppm/State;

.field private final tempState2:Lcom/github/junrar/unpack/ppm/State;

.field private final tempState3:Lcom/github/junrar/unpack/ppm/State;

.field private final tempState4:Lcom/github/junrar/unpack/ppm/State;

.field private final tempStateRef1:Lcom/github/junrar/unpack/ppm/StateRef;

.field private final tempStateRef2:Lcom/github/junrar/unpack/ppm/StateRef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->InitBinEsc:[I

    return-void

    :array_0
    .array-data 4
        0x3cdd
        0x1f3f
        0x59bf
        0x48f3
        0x64a1
        0x5abc
        0x6632
        0x6051
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x19

    const/16 v1, 0x10

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/github/junrar/unpack/ppm/SEE2Context;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/github/junrar/unpack/ppm/SEE2Context;

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->SEE2Cont:[[Lcom/github/junrar/unpack/ppm/SEE2Context;

    .line 58
    const/16 v0, 0x100

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->charMask:[I

    .line 60
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->NS2Indx:[I

    .line 62
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    .line 64
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->HB2Flag:[I

    .line 69
    const/16 v0, 0x80

    const/16 v1, 0x40

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->binSumm:[[I

    .line 71
    new-instance v0, Lcom/github/junrar/unpack/ppm/RangeCoder;

    invoke-direct {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->coder:Lcom/github/junrar/unpack/ppm/RangeCoder;

    .line 73
    new-instance v0, Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-direct {v0}, Lcom/github/junrar/unpack/ppm/SubAllocator;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    .line 78
    new-instance v0, Lcom/github/junrar/unpack/ppm/State;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempState1:Lcom/github/junrar/unpack/ppm/State;

    .line 79
    new-instance v0, Lcom/github/junrar/unpack/ppm/State;

    invoke-direct {v0, v2}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempState2:Lcom/github/junrar/unpack/ppm/State;

    .line 80
    new-instance v0, Lcom/github/junrar/unpack/ppm/State;

    invoke-direct {v0, v2}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempState3:Lcom/github/junrar/unpack/ppm/State;

    .line 81
    new-instance v0, Lcom/github/junrar/unpack/ppm/State;

    invoke-direct {v0, v2}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempState4:Lcom/github/junrar/unpack/ppm/State;

    .line 82
    new-instance v0, Lcom/github/junrar/unpack/ppm/StateRef;

    invoke-direct {v0}, Lcom/github/junrar/unpack/ppm/StateRef;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempStateRef1:Lcom/github/junrar/unpack/ppm/StateRef;

    .line 83
    new-instance v0, Lcom/github/junrar/unpack/ppm/StateRef;

    invoke-direct {v0}, Lcom/github/junrar/unpack/ppm/StateRef;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempStateRef2:Lcom/github/junrar/unpack/ppm/StateRef;

    .line 84
    new-instance v0, Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-direct {v0, v2}, Lcom/github/junrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempPPMContext1:Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 85
    new-instance v0, Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-direct {v0, v2}, Lcom/github/junrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempPPMContext2:Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 86
    new-instance v0, Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-direct {v0, v2}, Lcom/github/junrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempPPMContext3:Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 87
    new-instance v0, Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-direct {v0, v2}, Lcom/github/junrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempPPMContext4:Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 88
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->ps:[I

    .line 91
    iput-object v2, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 92
    iput-object v2, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 93
    return-void
.end method

.method private clearMask()V
    .locals 2

    .line 175
    const/4 v0, 0x1

    iput v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->escCount:I

    .line 176
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->charMask:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 177
    return-void
.end method

.method private createSuccessors(ZLcom/github/junrar/unpack/ppm/State;)I
    .locals 13
    .param p1, "Skip"    # Z
    .param p2, "p1"    # Lcom/github/junrar/unpack/ppm/State;

    .line 384
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempStateRef2:Lcom/github/junrar/unpack/ppm/StateRef;

    .line 385
    .local v0, "upState":Lcom/github/junrar/unpack/ppm/StateRef;
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempState1:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/junrar/unpack/ppm/State;->init([B)Lcom/github/junrar/unpack/ppm/State;

    move-result-object v1

    .line 388
    .local v1, "tempState":Lcom/github/junrar/unpack/ppm/State;
    iget-object v2, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempPPMContext1:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/junrar/unpack/ppm/PPMContext;->init([B)Lcom/github/junrar/unpack/ppm/PPMContext;

    move-result-object v2

    .line 389
    .local v2, "pc":Lcom/github/junrar/unpack/ppm/PPMContext;
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 390
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempPPMContext2:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->init([B)Lcom/github/junrar/unpack/ppm/PPMContext;

    move-result-object v3

    .line 391
    .local v3, "upBranch":Lcom/github/junrar/unpack/ppm/PPMContext;
    iget-object v4, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getSuccessor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 394
    iget-object v4, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempState2:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/junrar/unpack/ppm/State;->init([B)Lcom/github/junrar/unpack/ppm/State;

    move-result-object v4

    .line 395
    .local v4, "p":Lcom/github/junrar/unpack/ppm/State;
    const/4 v5, 0x0

    .line 397
    .local v5, "pps":I
    const/4 v6, 0x0

    .line 399
    .local v6, "noLoop":Z
    if-nez p1, :cond_1

    .line 400
    iget-object v7, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->ps:[I

    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pps":I
    .local v8, "pps":I
    iget-object v9, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v9

    aput v9, v7, v5

    .line 401
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v5

    if-nez v5, :cond_0

    .line 402
    const/4 v6, 0x1

    move v5, v8

    goto :goto_0

    .line 401
    :cond_0
    move v5, v8

    .line 405
    .end local v8    # "pps":I
    .restart local v5    # "pps":I
    :cond_1
    :goto_0
    const/4 v7, 0x1

    if-nez v6, :cond_8

    .line 406
    const/4 v8, 0x0

    .line 407
    .local v8, "loopEntry":Z
    invoke-virtual {p2}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v9

    if-eqz v9, :cond_2

    .line 408
    invoke-virtual {p2}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 409
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 410
    const/4 v8, 0x1

    .line 413
    :cond_2
    :goto_1
    if-nez v8, :cond_5

    .line 414
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 415
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v9

    if-eq v9, v7, :cond_4

    .line 416
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 417
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v9

    iget-object v10, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v10

    if-eq v9, v10, :cond_5

    .line 419
    :cond_3
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->incAddress()Lcom/github/junrar/unpack/ppm/State;

    .line 420
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v9

    iget-object v10, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v10

    if-ne v9, v10, :cond_3

    goto :goto_2

    .line 423
    :cond_4
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getOneState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 426
    :cond_5
    :goto_2
    const/4 v8, 0x0

    .line 427
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getSuccessor()I

    move-result v9

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v10

    if-eq v9, v10, :cond_6

    .line 428
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getSuccessor()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 429
    goto :goto_3

    .line 431
    :cond_6
    iget-object v9, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->ps:[I

    add-int/lit8 v10, v5, 0x1

    .end local v5    # "pps":I
    .local v10, "pps":I
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v11

    aput v11, v9, v5

    .line 432
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v5

    if-nez v5, :cond_7

    move v5, v10

    goto :goto_3

    :cond_7
    move v5, v10

    goto :goto_1

    .line 435
    .end local v8    # "loopEntry":Z
    .end local v10    # "pps":I
    .restart local v5    # "pps":I
    :cond_8
    :goto_3
    if-nez v5, :cond_9

    .line 436
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v7

    return v7

    .line 438
    :cond_9
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v8

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v9

    aget-byte v8, v8, v9

    invoke-virtual {v0, v8}, Lcom/github/junrar/unpack/ppm/StateRef;->setSymbol(I)V

    .line 441
    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v0, v8}, Lcom/github/junrar/unpack/ppm/StateRef;->setSuccessor(I)V

    .line 442
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v8

    const/4 v9, 0x0

    if-eq v8, v7, :cond_f

    .line 443
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v8

    iget-object v10, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v10

    if-gt v8, v10, :cond_a

    .line 444
    return v9

    .line 446
    :cond_a
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 447
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v8

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v10

    if-eq v8, v10, :cond_c

    .line 449
    :cond_b
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->incAddress()Lcom/github/junrar/unpack/ppm/State;

    .line 450
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v8

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v10

    if-ne v8, v10, :cond_b

    .line 452
    :cond_c
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v8

    sub-int/2addr v8, v7

    .line 453
    .local v8, "cf":I
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v10

    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v10, v8

    .line 455
    .local v10, "s0":I
    mul-int/lit8 v11, v8, 0x2

    if-gt v11, v10, :cond_e

    mul-int/lit8 v11, v8, 0x5

    if-le v11, v10, :cond_d

    move v11, v7

    goto :goto_4

    :cond_d
    move v11, v9

    goto :goto_4

    :cond_e
    mul-int/lit8 v11, v8, 0x2

    mul-int/lit8 v12, v10, 0x3

    add-int/2addr v11, v12

    sub-int/2addr v11, v7

    mul-int/lit8 v12, v10, 0x2

    div-int/2addr v11, v12

    :goto_4
    add-int/2addr v7, v11

    invoke-virtual {v0, v7}, Lcom/github/junrar/unpack/ppm/StateRef;->setFreq(I)V

    .line 457
    .end local v8    # "cf":I
    .end local v10    # "s0":I
    goto :goto_5

    .line 458
    :cond_f
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getOneState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/github/junrar/unpack/ppm/StateRef;->setFreq(I)V

    .line 462
    :cond_10
    :goto_5
    iget-object v7, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->ps:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    invoke-virtual {v1, v7}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 463
    invoke-virtual {v2, p0, v1, v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->createChild(Lcom/github/junrar/unpack/ppm/ModelPPM;Lcom/github/junrar/unpack/ppm/State;Lcom/github/junrar/unpack/ppm/StateRef;)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 464
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v7

    if-nez v7, :cond_11

    .line 465
    return v9

    .line 467
    :cond_11
    if-nez v5, :cond_10

    .line 468
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v7

    return v7
.end method

.method private restartModelRare()V
    .locals 10

    .line 100
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->charMask:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 101
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->initSubAllocator()V

    .line 102
    iget v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->maxOrder:I

    const/16 v2, 0xc

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    neg-int v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->initRL:I

    .line 103
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->allocContext()I

    move-result v0

    .line 104
    .local v0, "addr":I
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v3, v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 105
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v3, v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 106
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v3, v1}, Lcom/github/junrar/unpack/ppm/PPMContext;->setSuffix(I)V

    .line 107
    iget v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->maxOrder:I

    iput v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->orderFall:I

    .line 108
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->setNumStats(I)V

    .line 109
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v3

    iget-object v5, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v5}, Lcom/github/junrar/unpack/ppm/FreqData;->setSummFreq(I)V

    .line 111
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    const/16 v5, 0x80

    invoke-virtual {v3, v5}, Lcom/github/junrar/unpack/ppm/SubAllocator;->allocUnits(I)I

    move-result v0

    .line 112
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v3, v0}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 113
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/github/junrar/unpack/ppm/FreqData;->setStats(I)V

    .line 115
    new-instance v3, Lcom/github/junrar/unpack/ppm/State;

    iget-object v6, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getHeap()[B

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    .line 116
    .local v3, "state":Lcom/github/junrar/unpack/ppm/State;
    iget-object v6, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v0

    .line 117
    iget v6, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->initRL:I

    iput v6, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->runLength:I

    .line 118
    iput v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->prevSuccess:I

    .line 119
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 120
    mul-int/lit8 v7, v6, 0x6

    add-int/2addr v7, v0

    invoke-virtual {v3, v7}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 121
    invoke-virtual {v3, v6}, Lcom/github/junrar/unpack/ppm/State;->setSymbol(I)V

    .line 122
    invoke-virtual {v3, v2}, Lcom/github/junrar/unpack/ppm/State;->setFreq(I)V

    .line 123
    invoke-virtual {v3, v1}, Lcom/github/junrar/unpack/ppm/State;->setSuccessor(I)V

    .line 119
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 126
    .end local v6    # "i":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_3

    .line 127
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    const/16 v4, 0x8

    if-ge v2, v4, :cond_2

    .line 128
    const/4 v4, 0x0

    .local v4, "m":I
    :goto_3
    const/16 v6, 0x40

    if-ge v4, v6, :cond_1

    .line 129
    iget-object v6, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->binSumm:[[I

    aget-object v6, v6, v1

    add-int v7, v2, v4

    sget-object v8, Lcom/github/junrar/unpack/ppm/ModelPPM;->InitBinEsc:[I

    aget v8, v8, v2

    add-int/lit8 v9, v1, 0x2

    div-int/2addr v8, v9

    rsub-int v8, v8, 0x4000

    aput v8, v6, v7

    .line 128
    add-int/lit8 v4, v4, 0x8

    goto :goto_3

    .line 127
    .end local v4    # "m":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 126
    .end local v2    # "k":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    const/16 v2, 0x19

    if-ge v1, v2, :cond_5

    .line 134
    const/4 v2, 0x0

    .restart local v2    # "k":I
    :goto_5
    const/16 v4, 0x10

    if-ge v2, v4, :cond_4

    .line 135
    iget-object v4, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->SEE2Cont:[[Lcom/github/junrar/unpack/ppm/SEE2Context;

    aget-object v4, v4, v1

    aget-object v4, v4, v2

    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0xa

    invoke-virtual {v4, v5}, Lcom/github/junrar/unpack/ppm/SEE2Context;->init(I)V

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 133
    .end local v2    # "k":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 138
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method private startModelRare(I)V
    .locals 8
    .param p1, "MaxOrder"    # I

    .line 142
    const/4 v0, 0x1

    iput v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->escCount:I

    .line 143
    iput p1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->maxOrder:I

    .line 144
    invoke-direct {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->restartModelRare()V

    .line 146
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 147
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    const/4 v3, 0x2

    aput v3, v1, v0

    .line 148
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    add-int/lit8 v3, v0, 0x2

    const/4 v4, 0x4

    aput v4, v1, v3

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "j":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_1
    const/16 v1, 0xf5

    if-ge v0, v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    add-int/lit8 v3, v0, 0xb

    const/4 v4, 0x6

    aput v4, v1, v3

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 154
    .end local v0    # "j":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 155
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->NS2Indx:[I

    aput v0, v1, v0

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 157
    :cond_2
    move v1, v0

    .local v1, "m":I
    const/4 v3, 0x1

    .local v3, "k":I
    const/4 v4, 0x1

    .local v4, "Step":I
    :goto_3
    const/16 v5, 0x100

    if-ge v0, v5, :cond_4

    .line 158
    iget-object v5, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->NS2Indx:[I

    aput v1, v5, v0

    .line 159
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_3

    .line 160
    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 161
    add-int/lit8 v1, v1, 0x1

    .line 157
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 164
    :cond_4
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4
    const/16 v6, 0x40

    if-ge v5, v6, :cond_5

    .line 165
    iget-object v6, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->HB2Flag:[I

    aput v2, v6, v5

    .line 164
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 167
    .end local v5    # "j":I
    :cond_5
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_5
    const/16 v5, 0xc0

    if-ge v2, v5, :cond_6

    .line 168
    iget-object v5, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->HB2Flag:[I

    add-int/lit8 v6, v2, 0x40

    const/16 v7, 0x8

    aput v7, v5, v6

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 170
    .end local v2    # "j":I
    :cond_6
    iget-object v2, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->dummySEE2Cont:Lcom/github/junrar/unpack/ppm/SEE2Context;

    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Lcom/github/junrar/unpack/ppm/SEE2Context;->setShift(I)V

    .line 172
    return-void
.end method

.method private updateModel()V
    .locals 16

    .line 479
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempStateRef1:Lcom/github/junrar/unpack/ppm/StateRef;

    .line 480
    .local v1, "fs":Lcom/github/junrar/unpack/ppm/StateRef;
    iget-object v2, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v1, v2}, Lcom/github/junrar/unpack/ppm/StateRef;->setValues(Lcom/github/junrar/unpack/ppm/State;)V

    .line 481
    iget-object v2, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempState3:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/junrar/unpack/ppm/State;->init([B)Lcom/github/junrar/unpack/ppm/State;

    move-result-object v2

    .line 482
    .local v2, "p":Lcom/github/junrar/unpack/ppm/State;
    iget-object v3, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempState4:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/junrar/unpack/ppm/State;->init([B)Lcom/github/junrar/unpack/ppm/State;

    move-result-object v3

    .line 484
    .local v3, "tempState":Lcom/github/junrar/unpack/ppm/State;
    iget-object v4, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempPPMContext3:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/junrar/unpack/ppm/PPMContext;->init([B)Lcom/github/junrar/unpack/ppm/PPMContext;

    move-result-object v4

    .line 485
    .local v4, "pc":Lcom/github/junrar/unpack/ppm/PPMContext;
    iget-object v5, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempPPMContext4:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/github/junrar/unpack/ppm/PPMContext;->init([B)Lcom/github/junrar/unpack/ppm/PPMContext;

    move-result-object v5

    .line 488
    .local v5, "successor":Lcom/github/junrar/unpack/ppm/PPMContext;
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 489
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/StateRef;->getFreq()I

    move-result v6

    const/16 v7, 0x1f

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v6, v7, :cond_3

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v6

    if-eqz v6, :cond_3

    .line 490
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v6

    if-eq v6, v9, :cond_2

    .line 491
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 492
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v6

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 494
    :cond_0
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->incAddress()Lcom/github/junrar/unpack/ppm/State;

    .line 495
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v6

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 496
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v6

    add-int/lit8 v6, v6, -0x6

    invoke-virtual {v3, v6}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 497
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v6

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v7

    if-lt v6, v7, :cond_1

    .line 498
    invoke-static {v2, v3}, Lcom/github/junrar/unpack/ppm/State;->ppmdSwap(Lcom/github/junrar/unpack/ppm/State;Lcom/github/junrar/unpack/ppm/State;)V

    .line 499
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->decAddress()Lcom/github/junrar/unpack/ppm/State;

    .line 502
    :cond_1
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v6

    const/16 v7, 0x73

    if-ge v6, v7, :cond_3

    .line 503
    invoke-virtual {v2, v8}, Lcom/github/junrar/unpack/ppm/State;->incFreq(I)V

    .line 504
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/github/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    goto :goto_0

    .line 507
    :cond_2
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getOneState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 508
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v6

    const/16 v7, 0x20

    if-ge v6, v7, :cond_3

    .line 509
    invoke-virtual {v2, v9}, Lcom/github/junrar/unpack/ppm/State;->incFreq(I)V

    .line 513
    :cond_3
    :goto_0
    iget v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->orderFall:I

    if-nez v6, :cond_5

    .line 514
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-direct {v0, v9, v2}, Lcom/github/junrar/unpack/ppm/ModelPPM;->createSuccessors(ZLcom/github/junrar/unpack/ppm/State;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/github/junrar/unpack/ppm/State;->setSuccessor(I)V

    .line 515
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    iget-object v7, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v7}, Lcom/github/junrar/unpack/ppm/State;->getSuccessor()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 516
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    iget-object v7, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v7}, Lcom/github/junrar/unpack/ppm/State;->getSuccessor()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 517
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v6

    if-nez v6, :cond_4

    .line 518
    invoke-direct/range {p0 .. p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    .line 519
    return-void

    .line 521
    :cond_4
    return-void

    .line 523
    :cond_5
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getHeap()[B

    move-result-object v6

    iget-object v7, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v7}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v7

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v6, v7

    .line 524
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/SubAllocator;->incPText()V

    .line 525
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 526
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v6

    iget-object v7, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v7}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getFakeUnitsStart()I

    move-result v7

    if-lt v6, v7, :cond_6

    .line 527
    invoke-direct/range {p0 .. p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    .line 528
    return-void

    .line 532
    :cond_6
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/StateRef;->getSuccessor()I

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    .line 533
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/StateRef;->getSuccessor()I

    move-result v6

    iget-object v10, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v10

    if-gt v6, v10, :cond_7

    .line 534
    invoke-direct {v0, v7, v2}, Lcom/github/junrar/unpack/ppm/ModelPPM;->createSuccessors(ZLcom/github/junrar/unpack/ppm/State;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/github/junrar/unpack/ppm/StateRef;->setSuccessor(I)V

    .line 535
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/StateRef;->getSuccessor()I

    move-result v6

    if-nez v6, :cond_7

    .line 536
    invoke-direct/range {p0 .. p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    .line 537
    return-void

    .line 540
    :cond_7
    iget v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->orderFall:I

    sub-int/2addr v6, v9

    iput v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->orderFall:I

    if-nez v6, :cond_9

    .line 541
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/StateRef;->getSuccessor()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 542
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v6

    iget-object v10, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v10

    if-eq v6, v10, :cond_9

    .line 543
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v6, v9}, Lcom/github/junrar/unpack/ppm/SubAllocator;->decPText(I)V

    goto :goto_1

    .line 547
    :cond_8
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/github/junrar/unpack/ppm/State;->setSuccessor(I)V

    .line 548
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v1, v6}, Lcom/github/junrar/unpack/ppm/StateRef;->setSuccessor(Lcom/github/junrar/unpack/ppm/PPMContext;)V

    .line 552
    :cond_9
    :goto_1
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v6

    .line 553
    .local v6, "ns":I
    iget-object v10, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/StateRef;->getFreq()I

    move-result v11

    sub-int/2addr v11, v9

    sub-int/2addr v10, v11

    .line 554
    .local v10, "s0":I
    iget-object v11, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v11}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 555
    :goto_2
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v11

    iget-object v12, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v12}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v12

    if-eq v11, v12, :cond_18

    .line 557
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v11

    move v12, v11

    .local v12, "ns1":I
    const/4 v13, 0x3

    if-eq v11, v9, :cond_e

    .line 558
    and-int/lit8 v11, v12, 0x1

    if-nez v11, :cond_a

    .line 560
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v11

    iget-object v14, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    .line 561
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v15

    invoke-virtual {v15}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v15

    ushr-int/lit8 v7, v12, 0x1

    invoke-virtual {v14, v15, v7}, Lcom/github/junrar/unpack/ppm/SubAllocator;->expandUnits(II)I

    move-result v7

    .line 560
    invoke-virtual {v11, v7}, Lcom/github/junrar/unpack/ppm/FreqData;->setStats(I)V

    .line 563
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v7

    if-nez v7, :cond_a

    .line 564
    invoke-direct/range {p0 .. p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    .line 565
    return-void

    .line 572
    :cond_a
    mul-int/lit8 v7, v12, 0x2

    if-ge v7, v6, :cond_b

    move v7, v9

    goto :goto_3

    :cond_b
    const/4 v7, 0x0

    :goto_3
    mul-int/lit8 v11, v12, 0x4

    if-gt v11, v6, :cond_c

    move v11, v9

    goto :goto_4

    :cond_c
    const/4 v11, 0x0

    .line 574
    :goto_4
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v14

    mul-int/lit8 v15, v12, 0x8

    if-gt v14, v15, :cond_d

    move v14, v9

    goto :goto_5

    :cond_d
    const/4 v14, 0x0

    :goto_5
    and-int/2addr v11, v14

    mul-int/2addr v11, v8

    add-int/2addr v7, v11

    .line 576
    .local v7, "sum":I
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/github/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 577
    .end local v7    # "sum":I
    goto :goto_8

    .line 578
    :cond_e
    iget-object v7, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v7, v9}, Lcom/github/junrar/unpack/ppm/SubAllocator;->allocUnits(I)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 579
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v7

    if-nez v7, :cond_f

    .line 580
    invoke-direct/range {p0 .. p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    .line 581
    return-void

    .line 583
    :cond_f
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getOneState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/github/junrar/unpack/ppm/State;->setValues(Lcom/github/junrar/unpack/ppm/State;)V

    .line 584
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/github/junrar/unpack/ppm/FreqData;->setStats(Lcom/github/junrar/unpack/ppm/State;)V

    .line 585
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v7

    const/16 v11, 0x1e

    if-ge v7, v11, :cond_10

    .line 586
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/github/junrar/unpack/ppm/State;->incFreq(I)V

    goto :goto_6

    .line 588
    :cond_10
    const/16 v7, 0x78

    invoke-virtual {v2, v7}, Lcom/github/junrar/unpack/ppm/State;->setFreq(I)V

    .line 590
    :goto_6
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v7

    .line 591
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v11

    iget v14, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->initEsc:I

    add-int/2addr v11, v14

    if-le v6, v13, :cond_11

    move v14, v9

    goto :goto_7

    :cond_11
    const/4 v14, 0x0

    :goto_7
    add-int/2addr v11, v14

    .line 590
    invoke-virtual {v7, v11}, Lcom/github/junrar/unpack/ppm/FreqData;->setSummFreq(I)V

    .line 593
    :goto_8
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/StateRef;->getFreq()I

    move-result v7

    mul-int/2addr v7, v8

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/github/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v11

    add-int/lit8 v11, v11, 0x6

    mul-int/2addr v7, v11

    .line 594
    .local v7, "cf":I
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/github/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v11

    add-int/2addr v11, v10

    .line 595
    .local v11, "sf":I
    mul-int/lit8 v14, v11, 0x6

    if-ge v7, v14, :cond_14

    .line 596
    if-le v7, v11, :cond_12

    move v14, v9

    goto :goto_9

    :cond_12
    const/4 v14, 0x0

    :goto_9
    add-int/2addr v14, v9

    mul-int/lit8 v15, v11, 0x4

    if-lt v7, v15, :cond_13

    move v15, v9

    goto :goto_a

    :cond_13
    const/4 v15, 0x0

    :goto_a
    add-int/2addr v14, v15

    .line 597
    .end local v7    # "cf":I
    .local v14, "cf":I
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/github/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    goto :goto_e

    .line 599
    .end local v14    # "cf":I
    .restart local v7    # "cf":I
    :cond_14
    mul-int/lit8 v13, v11, 0x9

    if-lt v7, v13, :cond_15

    move v13, v9

    goto :goto_b

    :cond_15
    const/4 v13, 0x0

    :goto_b
    add-int/lit8 v13, v13, 0x4

    mul-int/lit8 v14, v11, 0xc

    if-lt v7, v14, :cond_16

    move v14, v9

    goto :goto_c

    :cond_16
    const/4 v14, 0x0

    :goto_c
    add-int/2addr v13, v14

    mul-int/lit8 v14, v11, 0xf

    if-lt v7, v14, :cond_17

    move v14, v9

    goto :goto_d

    :cond_17
    const/4 v14, 0x0

    :goto_d
    add-int/2addr v14, v13

    .line 601
    .end local v7    # "cf":I
    .restart local v14    # "cf":I
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v7

    invoke-virtual {v7, v14}, Lcom/github/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 603
    :goto_e
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v7

    mul-int/lit8 v13, v12, 0x6

    add-int/2addr v7, v13

    invoke-virtual {v2, v7}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 604
    invoke-virtual {v2, v5}, Lcom/github/junrar/unpack/ppm/State;->setSuccessor(Lcom/github/junrar/unpack/ppm/PPMContext;)V

    .line 605
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/github/junrar/unpack/ppm/State;->setSymbol(I)V

    .line 606
    invoke-virtual {v2, v14}, Lcom/github/junrar/unpack/ppm/State;->setFreq(I)V

    .line 607
    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v4, v12}, Lcom/github/junrar/unpack/ppm/PPMContext;->setNumStats(I)V

    .line 556
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    const/4 v7, 0x0

    goto/16 :goto_2

    .line 610
    .end local v11    # "sf":I
    .end local v12    # "ns1":I
    .end local v14    # "cf":I
    :cond_18
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/StateRef;->getSuccessor()I

    move-result v7

    .line 611
    .local v7, "address":I
    iget-object v8, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v8, v7}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 612
    iget-object v8, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v8, v7}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 620
    return-void
.end method

.method private updateModelRestart()V
    .locals 1

    .line 472
    invoke-direct {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->restartModelRare()V

    .line 473
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->escCount:I

    .line 474
    return-void
.end method


# virtual methods
.method public decodeChar()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v0

    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v1

    const/4 v2, -0x1

    if-le v0, v1, :cond_c

    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 229
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v0

    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getHeapEnd()I

    move-result v1

    if-le v0, v1, :cond_0

    goto/16 :goto_4

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 234
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v0

    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v3

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 235
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v0

    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getHeapEnd()I

    move-result v3

    if-le v0, v3, :cond_1

    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->decodeSymbol1(Lcom/github/junrar/unpack/ppm/ModelPPM;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 239
    return v2

    .line 236
    :cond_2
    :goto_0
    return v2

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->decodeBinSymbol(Lcom/github/junrar/unpack/ppm/ModelPPM;)V

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->coder:Lcom/github/junrar/unpack/ppm/RangeCoder;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->decode()V

    .line 245
    :goto_1
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v0

    if-nez v0, :cond_9

    .line 246
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->coder:Lcom/github/junrar/unpack/ppm/RangeCoder;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->ariDecNormalize()V

    .line 248
    :cond_5
    iget v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->orderFall:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->orderFall:I

    .line 249
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 250
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v0

    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v3

    if-le v0, v3, :cond_8

    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 251
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v0

    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getHeapEnd()I

    move-result v3

    if-le v0, v3, :cond_6

    goto :goto_2

    .line 254
    :cond_6
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v0

    iget v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->numMasked:I

    if-eq v0, v3, :cond_5

    .line 255
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->decodeSymbol2(Lcom/github/junrar/unpack/ppm/ModelPPM;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 256
    return v2

    .line 258
    :cond_7
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->coder:Lcom/github/junrar/unpack/ppm/RangeCoder;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->decode()V

    goto :goto_1

    .line 252
    :cond_8
    :goto_2
    return v2

    .line 260
    :cond_9
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v0

    .line 261
    .local v0, "Symbol":I
    iget v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->orderFall:I

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->getSuccessor()I

    move-result v1

    iget-object v2, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v2

    if-le v1, v2, :cond_a

    .line 263
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->getSuccessor()I

    move-result v1

    .line 264
    .local v1, "addr":I
    iget-object v2, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v2, v1}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 265
    iget-object v2, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v2, v1}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 266
    .end local v1    # "addr":I
    goto :goto_3

    .line 267
    :cond_a
    invoke-direct {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->updateModel()V

    .line 269
    iget v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->escCount:I

    if-nez v1, :cond_b

    .line 270
    invoke-direct {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->clearMask()V

    .line 273
    :cond_b
    :goto_3
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->coder:Lcom/github/junrar/unpack/ppm/RangeCoder;

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/RangeCoder;->ariDecNormalize()V

    .line 274
    return v0

    .line 230
    .end local v0    # "Symbol":I
    :cond_c
    :goto_4
    return v2
.end method

.method public decodeInit(Lcom/github/junrar/unpack/Unpack;I)Z
    .locals 10
    .param p1, "unpackRead"    # Lcom/github/junrar/unpack/Unpack;
    .param p2, "escChar"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 182
    invoke-virtual {p1}, Lcom/github/junrar/unpack/Unpack;->getChar()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 183
    .local v0, "MaxOrder":I
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 185
    .local v1, "reset":Z
    :goto_0
    const/4 v4, 0x0

    .line 186
    .local v4, "MaxMB":I
    if-eqz v1, :cond_2

    .line 187
    invoke-virtual {p1}, Lcom/github/junrar/unpack/Unpack;->getChar()I

    move-result v4

    .line 188
    const/4 v5, 0x1

    .line 189
    .local v5, "MaxMBLimit":I
    if-le v4, v3, :cond_1

    const/4 v4, 0x1

    .line 190
    .end local v5    # "MaxMBLimit":I
    :cond_1
    goto :goto_1

    .line 191
    :cond_2
    iget-object v5, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/SubAllocator;->GetAllocatedMemory()I

    move-result v5

    if-nez v5, :cond_3

    .line 192
    return v2

    .line 195
    :cond_3
    :goto_1
    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_4

    .line 196
    invoke-virtual {p1}, Lcom/github/junrar/unpack/Unpack;->getChar()I

    move-result p2

    .line 197
    invoke-virtual {p1, p2}, Lcom/github/junrar/unpack/Unpack;->setPpmEscChar(I)V

    .line 199
    :cond_4
    iget-object v5, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->coder:Lcom/github/junrar/unpack/ppm/RangeCoder;

    invoke-virtual {v5, p1}, Lcom/github/junrar/unpack/ppm/RangeCoder;->initDecoder(Lcom/github/junrar/unpack/Unpack;)V

    .line 200
    if-eqz v1, :cond_9

    .line 201
    and-int/lit8 v5, v0, 0x1f

    add-int/2addr v5, v3

    .line 202
    .end local v0    # "MaxOrder":I
    .local v5, "MaxOrder":I
    const/16 v0, 0x10

    if-le v5, v0, :cond_5

    .line 203
    add-int/lit8 v6, v5, -0x10

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v6, v0

    move v5, v6

    .line 205
    :cond_5
    if-ne v5, v3, :cond_6

    .line 206
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->stopSubAllocator()V

    .line 207
    return v2

    .line 209
    :cond_6
    iget-object v6, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Lcom/github/junrar/unpack/ppm/SubAllocator;->startSubAllocator(I)Z

    .line 210
    new-instance v6, Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/github/junrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v6, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 211
    new-instance v6, Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/github/junrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v6, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 212
    new-instance v6, Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v6, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    .line 213
    new-instance v6, Lcom/github/junrar/unpack/ppm/SEE2Context;

    invoke-direct {v6}, Lcom/github/junrar/unpack/ppm/SEE2Context;-><init>()V

    iput-object v6, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->dummySEE2Cont:Lcom/github/junrar/unpack/ppm/SEE2Context;

    .line 214
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    const/16 v7, 0x19

    if-ge v6, v7, :cond_8

    .line 215
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    if-ge v7, v0, :cond_7

    .line 216
    iget-object v8, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->SEE2Cont:[[Lcom/github/junrar/unpack/ppm/SEE2Context;

    aget-object v8, v8, v6

    new-instance v9, Lcom/github/junrar/unpack/ppm/SEE2Context;

    invoke-direct {v9}, Lcom/github/junrar/unpack/ppm/SEE2Context;-><init>()V

    aput-object v9, v8, v7

    .line 215
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 214
    .end local v7    # "j":I
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 219
    .end local v6    # "i":I
    :cond_8
    invoke-direct {p0, v5}, Lcom/github/junrar/unpack/ppm/ModelPPM;->startModelRare(I)V

    move v0, v5

    .line 221
    .end local v5    # "MaxOrder":I
    .restart local v0    # "MaxOrder":I
    :cond_9
    iget-object v5, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v5

    if-eqz v5, :cond_a

    move v2, v3

    :cond_a
    return v2
.end method

.method public getBinSumm()[[I
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->binSumm:[[I

    return-object v0
.end method

.method public getCharMask()[I
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->charMask:[I

    return-object v0
.end method

.method public getCoder()Lcom/github/junrar/unpack/ppm/RangeCoder;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->coder:Lcom/github/junrar/unpack/ppm/RangeCoder;

    return-object v0
.end method

.method public getDummySEE2Cont()Lcom/github/junrar/unpack/ppm/SEE2Context;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->dummySEE2Cont:Lcom/github/junrar/unpack/ppm/SEE2Context;

    return-object v0
.end method

.method public getEscCount()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->escCount:I

    return v0
.end method

.method public getFoundState()Lcom/github/junrar/unpack/ppm/State;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    return-object v0
.end method

.method public getHB2Flag()[I
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->HB2Flag:[I

    return-object v0
.end method

.method public getHeap()[B
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getHeap()[B

    move-result-object v0

    return-object v0
.end method

.method public getHiBitsFlag()I
    .locals 1

    .line 342
    iget v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->hiBitsFlag:I

    return v0
.end method

.method public getInitEsc()I
    .locals 1

    .line 318
    iget v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->initEsc:I

    return v0
.end method

.method public getInitRL()I
    .locals 1

    .line 286
    iget v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->initRL:I

    return v0
.end method

.method public getNS2BSIndx()[I
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    return-object v0
.end method

.method public getNS2Indx()[I
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->NS2Indx:[I

    return-object v0
.end method

.method public getNumMasked()I
    .locals 1

    .line 306
    iget v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->numMasked:I

    return v0
.end method

.method public getOrderFall()I
    .locals 1

    .line 378
    iget v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->orderFall:I

    return v0
.end method

.method public getPrevSuccess()I
    .locals 1

    .line 338
    iget v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->prevSuccess:I

    return v0
.end method

.method public getRunLength()I
    .locals 1

    .line 330
    iget v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->runLength:I

    return v0
.end method

.method public getSEE2Cont()[[Lcom/github/junrar/unpack/ppm/SEE2Context;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->SEE2Cont:[[Lcom/github/junrar/unpack/ppm/SEE2Context;

    return-object v0
.end method

.method public getSubAlloc()Lcom/github/junrar/unpack/ppm/SubAllocator;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    return-object v0
.end method

.method public incEscCount(I)V
    .locals 1
    .param p1, "dEscCount"    # I

    .line 298
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getEscCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setEscCount(I)V

    .line 299
    return-void
.end method

.method public incRunLength(I)V
    .locals 1
    .param p1, "dRunLength"    # I

    .line 334
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getRunLength()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setRunLength(I)V

    .line 335
    return-void
.end method

.method public setEscCount(I)V
    .locals 1
    .param p1, "escCount"    # I

    .line 290
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->escCount:I

    .line 291
    return-void
.end method

.method public setHiBitsFlag(I)V
    .locals 1
    .param p1, "hiBitsFlag"    # I

    .line 346
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->hiBitsFlag:I

    .line 347
    return-void
.end method

.method public setInitEsc(I)V
    .locals 0
    .param p1, "initEsc"    # I

    .line 322
    iput p1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->initEsc:I

    .line 323
    return-void
.end method

.method public setNumMasked(I)V
    .locals 0
    .param p1, "numMasked"    # I

    .line 310
    iput p1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->numMasked:I

    .line 311
    return-void
.end method

.method public setPrevSuccess(I)V
    .locals 1
    .param p1, "prevSuccess"    # I

    .line 314
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->prevSuccess:I

    .line 315
    return-void
.end method

.method public setRunLength(I)V
    .locals 0
    .param p1, "runLength"    # I

    .line 326
    iput p1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->runLength:I

    .line 327
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 625
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "ModelPPM["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    const-string v1, "\n  numMasked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    iget v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->numMasked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 628
    const-string v1, "\n  initEsc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    iget v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->initEsc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 630
    const-string v1, "\n  orderFall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    iget v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->orderFall:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 632
    const-string v1, "\n  maxOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    iget v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->maxOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 634
    const-string v1, "\n  runLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    iget v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->runLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 636
    const-string v1, "\n  initRL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    iget v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->initRL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 638
    const-string v1, "\n  escCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    iget v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->escCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 640
    const-string v1, "\n  prevSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    iget v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->prevSuccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 642
    const-string v1, "\n  foundState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 644
    const-string v1, "\n  coder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->coder:Lcom/github/junrar/unpack/ppm/RangeCoder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 646
    const-string v1, "\n  subAlloc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 648
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
