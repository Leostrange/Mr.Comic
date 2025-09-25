.class public final Lcom/github/junrar/unpack/Unpack;
.super Lcom/github/junrar/unpack/Unpack20;
.source "Unpack.java"


# static fields
.field public static DBitLengthCounts:[I


# instance fields
.field private fileExtracted:Z

.field private final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/junrar/unpack/UnpackFilter;",
            ">;"
        }
    .end annotation
.end field

.field private lastFilter:I

.field private lowDistRepCount:I

.field private final oldFilterLengths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final ppm:Lcom/github/junrar/unpack/ppm/ModelPPM;

.field private ppmError:Z

.field private ppmEscChar:I

.field private prevLowDist:I

.field private final prgStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/junrar/unpack/UnpackFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final rarVM:Lcom/github/junrar/unpack/vm/RarVM;

.field private tablesRead:Z

.field private unpBlockType:Lcom/github/junrar/unpack/ppm/BlockTypes;

.field private final unpOldTable:[B

.field private writtenFileSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/junrar/unpack/Unpack;->DBitLengthCounts:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0xe
        0x0
        0xc
    .end array-data
.end method

.method public constructor <init>(Lcom/github/junrar/unpack/ComprDataIO;)V
    .locals 1
    .param p1, "DataIO"    # Lcom/github/junrar/unpack/ComprDataIO;

    .line 83
    invoke-direct {p0}, Lcom/github/junrar/unpack/Unpack20;-><init>()V

    .line 44
    new-instance v0, Lcom/github/junrar/unpack/ppm/ModelPPM;

    invoke-direct {v0}, Lcom/github/junrar/unpack/ppm/ModelPPM;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/unpack/Unpack;->ppm:Lcom/github/junrar/unpack/ppm/ModelPPM;

    .line 48
    new-instance v0, Lcom/github/junrar/unpack/vm/RarVM;

    invoke-direct {v0}, Lcom/github/junrar/unpack/vm/RarVM;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/unpack/Unpack;->rarVM:Lcom/github/junrar/unpack/vm/RarVM;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/unpack/Unpack;->filters:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    .line 66
    const/16 v0, 0x194

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/github/junrar/unpack/Unpack;->unpOldTable:[B

    .line 84
    iput-object p1, p0, Lcom/github/junrar/unpack/Unpack;->unpIO:Lcom/github/junrar/unpack/ComprDataIO;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/junrar/unpack/Unpack;->window:[B

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/junrar/unpack/Unpack;->suspended:Z

    .line 87
    iput-boolean v0, p0, Lcom/github/junrar/unpack/Unpack;->unpAllBuf:Z

    .line 88
    iput-boolean v0, p0, Lcom/github/junrar/unpack/Unpack;->unpSomeRead:Z

    .line 89
    return-void
.end method

.method private ExecuteCode(Lcom/github/junrar/unpack/vm/VMPreparedProgram;)V
    .locals 5
    .param p1, "Prg"    # Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    .line 987
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 989
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v0

    iget-wide v1, p0, Lcom/github/junrar/unpack/Unpack;->writtenFileSize:J

    long-to-int v1, v1

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 992
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack;->rarVM:Lcom/github/junrar/unpack/vm/RarVM;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v1

    iget-wide v2, p0, Lcom/github/junrar/unpack/Unpack;->writtenFileSize:J

    long-to-int v2, v2

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v3, v2}, Lcom/github/junrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 996
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack;->rarVM:Lcom/github/junrar/unpack/vm/RarVM;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v1

    iget-wide v2, p0, Lcom/github/junrar/unpack/Unpack;->writtenFileSize:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v3, v2}, Lcom/github/junrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 998
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack;->rarVM:Lcom/github/junrar/unpack/vm/RarVM;

    invoke-virtual {v0, p1}, Lcom/github/junrar/unpack/vm/RarVM;->execute(Lcom/github/junrar/unpack/vm/VMPreparedProgram;)V

    .line 1000
    :cond_0
    return-void
.end method

.method private UnpWriteArea(II)V
    .locals 4
    .param p1, "startPtr"    # I
    .param p2, "endPtr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    const/4 v0, 0x1

    if-eq p2, p1, :cond_0

    .line 531
    iput-boolean v0, p0, Lcom/github/junrar/unpack/Unpack;->unpSomeRead:Z

    .line 533
    :cond_0
    if-ge p2, p1, :cond_1

    .line 534
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack;->window:[B

    neg-int v2, p1

    const v3, 0x3fffff

    and-int/2addr v2, v3

    invoke-direct {p0, v1, p1, v2}, Lcom/github/junrar/unpack/Unpack;->UnpWriteData([BII)V

    .line 535
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack;->window:[B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p2}, Lcom/github/junrar/unpack/Unpack;->UnpWriteData([BII)V

    .line 536
    iput-boolean v0, p0, Lcom/github/junrar/unpack/Unpack;->unpAllBuf:Z

    goto :goto_0

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack;->window:[B

    sub-int v1, p2, p1

    invoke-direct {p0, v0, p1, v1}, Lcom/github/junrar/unpack/Unpack;->UnpWriteData([BII)V

    .line 540
    :goto_0
    return-void
.end method

.method private UnpWriteBuf()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    move-object/from16 v0, p0

    iget v1, v0, Lcom/github/junrar/unpack/Unpack;->wrPtr:I

    .line 357
    .local v1, "WrittenBorder":I
    iget v2, v0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    sub-int/2addr v2, v1

    const v3, 0x3fffff

    and-int/2addr v2, v3

    .line 358
    .local v2, "WriteSize":I
    const/4 v4, 0x0

    .local v4, "I":I
    :goto_0
    iget-object v5, v0, Lcom/github/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_19

    .line 359
    iget-object v5, v0, Lcom/github/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/junrar/unpack/UnpackFilter;

    .line 360
    .local v5, "flt":Lcom/github/junrar/unpack/UnpackFilter;
    if-nez v5, :cond_0

    .line 361
    goto/16 :goto_10

    .line 363
    :cond_0
    invoke-virtual {v5}, Lcom/github/junrar/unpack/UnpackFilter;->isNextWindow()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    .line 364
    invoke-virtual {v5, v8}, Lcom/github/junrar/unpack/UnpackFilter;->setNextWindow(Z)V

    .line 365
    goto/16 :goto_10

    .line 367
    :cond_1
    invoke-virtual {v5}, Lcom/github/junrar/unpack/UnpackFilter;->getBlockStart()I

    move-result v7

    .line 368
    .local v7, "BlockStart":I
    invoke-virtual {v5}, Lcom/github/junrar/unpack/UnpackFilter;->getBlockLength()I

    move-result v9

    .line 369
    .local v9, "BlockLength":I
    sub-int v10, v7, v1

    and-int/2addr v10, v3

    if-ge v10, v2, :cond_18

    .line 370
    if-eq v1, v7, :cond_2

    .line 371
    invoke-direct {v0, v1, v7}, Lcom/github/junrar/unpack/Unpack;->UnpWriteArea(II)V

    .line 372
    move v1, v7

    .line 373
    iget v10, v0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    sub-int/2addr v10, v1

    and-int v2, v10, v3

    .line 375
    :cond_2
    if-gt v9, v2, :cond_15

    .line 376
    add-int v10, v7, v9

    and-int/2addr v10, v3

    .line 378
    .local v10, "BlockEnd":I
    if-lt v7, v10, :cond_4

    if-nez v10, :cond_3

    goto :goto_1

    .line 382
    :cond_3
    const/high16 v11, 0x400000

    sub-int/2addr v11, v7

    .line 384
    .local v11, "FirstPartLength":I
    iget-object v12, v0, Lcom/github/junrar/unpack/Unpack;->rarVM:Lcom/github/junrar/unpack/vm/RarVM;

    iget-object v13, v0, Lcom/github/junrar/unpack/Unpack;->window:[B

    invoke-virtual {v12, v8, v13, v7, v11}, Lcom/github/junrar/unpack/vm/RarVM;->setMemory(I[BII)V

    .line 386
    iget-object v12, v0, Lcom/github/junrar/unpack/Unpack;->rarVM:Lcom/github/junrar/unpack/vm/RarVM;

    iget-object v13, v0, Lcom/github/junrar/unpack/Unpack;->window:[B

    invoke-virtual {v12, v11, v13, v8, v10}, Lcom/github/junrar/unpack/vm/RarVM;->setMemory(I[BII)V

    goto :goto_2

    .line 380
    .end local v11    # "FirstPartLength":I
    :cond_4
    :goto_1
    iget-object v11, v0, Lcom/github/junrar/unpack/Unpack;->rarVM:Lcom/github/junrar/unpack/vm/RarVM;

    iget-object v12, v0, Lcom/github/junrar/unpack/Unpack;->window:[B

    invoke-virtual {v11, v8, v12, v7, v9}, Lcom/github/junrar/unpack/vm/RarVM;->setMemory(I[BII)V

    .line 390
    :goto_2
    iget-object v11, v0, Lcom/github/junrar/unpack/Unpack;->filters:Ljava/util/List;

    .line 391
    invoke-virtual {v5}, Lcom/github/junrar/unpack/UnpackFilter;->getParentFilter()I

    move-result v12

    .line 390
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/github/junrar/unpack/UnpackFilter;

    .line 391
    invoke-virtual {v11}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v11

    .line 392
    .local v11, "ParentPrg":Lcom/github/junrar/unpack/vm/VMPreparedProgram;
    invoke-virtual {v5}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v12

    .line 394
    .local v12, "Prg":Lcom/github/junrar/unpack/vm/VMPreparedProgram;
    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    const/16 v14, 0x40

    if-le v13, v14, :cond_5

    .line 399
    invoke-virtual {v12}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v13

    .line 400
    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    .line 399
    invoke-virtual {v13, v15}, Ljava/util/Vector;->setSize(I)V

    .line 401
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    sub-int/2addr v15, v14

    if-ge v13, v15, :cond_5

    .line 403
    invoke-virtual {v12}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v15

    add-int/lit8 v3, v13, 0x40

    .line 405
    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v6

    add-int/lit8 v8, v13, 0x40

    invoke-virtual {v6, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 403
    invoke-virtual {v15, v3, v6}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 402
    add-int/lit8 v13, v13, 0x1

    const v3, 0x3fffff

    const/4 v8, 0x0

    goto :goto_3

    .line 410
    .end local v13    # "i":I
    :cond_5
    invoke-direct {v0, v12}, Lcom/github/junrar/unpack/Unpack;->ExecuteCode(Lcom/github/junrar/unpack/vm/VMPreparedProgram;)V

    .line 412
    invoke-virtual {v12}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, v14, :cond_8

    .line 414
    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    .line 415
    invoke-virtual {v12}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 416
    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v3

    .line 417
    invoke-virtual {v12}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    .line 416
    invoke-virtual {v3, v6}, Ljava/util/Vector;->setSize(I)V

    .line 420
    :cond_6
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    invoke-virtual {v12}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    sub-int/2addr v6, v14

    if-ge v3, v6, :cond_7

    .line 422
    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v6

    add-int/lit8 v8, v3, 0x40

    .line 424
    invoke-virtual {v12}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v13

    add-int/lit8 v15, v3, 0x40

    invoke-virtual {v13, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 422
    invoke-virtual {v6, v8, v13}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 421
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v3    # "i":I
    :cond_7
    goto :goto_5

    .line 428
    :cond_8
    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 431
    :goto_5
    invoke-virtual {v12}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getFilteredDataOffset()I

    move-result v3

    .line 432
    .local v3, "FilteredDataOffset":I
    invoke-virtual {v12}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getFilteredDataSize()I

    move-result v6

    .line 433
    .local v6, "FilteredDataSize":I
    new-array v8, v6, [B

    .line 435
    .local v8, "FilteredData":[B
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_6
    if-ge v13, v6, :cond_9

    .line 436
    iget-object v15, v0, Lcom/github/junrar/unpack/Unpack;->rarVM:Lcom/github/junrar/unpack/vm/RarVM;

    invoke-virtual {v15}, Lcom/github/junrar/unpack/vm/RarVM;->getMem()[B

    move-result-object v15

    add-int v16, v3, v13

    aget-byte v15, v15, v16

    aput-byte v15, v8, v13

    .line 435
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 441
    .end local v13    # "i":I
    :cond_9
    iget-object v13, v0, Lcom/github/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v13, v4, v15}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 442
    :goto_7
    add-int/lit8 v13, v4, 0x1

    iget-object v15, v0, Lcom/github/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v13, v15, :cond_14

    .line 443
    iget-object v13, v0, Lcom/github/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    add-int/lit8 v15, v4, 0x1

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/github/junrar/unpack/UnpackFilter;

    .line 444
    .local v13, "NextFilter":Lcom/github/junrar/unpack/UnpackFilter;
    if-eqz v13, :cond_13

    .line 445
    invoke-virtual {v13}, Lcom/github/junrar/unpack/UnpackFilter;->getBlockStart()I

    move-result v15

    if-ne v15, v7, :cond_12

    .line 446
    invoke-virtual {v13}, Lcom/github/junrar/unpack/UnpackFilter;->getBlockLength()I

    move-result v15

    if-ne v15, v6, :cond_11

    .line 447
    invoke-virtual {v13}, Lcom/github/junrar/unpack/UnpackFilter;->isNextWindow()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 448
    move/from16 v19, v2

    move/from16 v18, v3

    move-object/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v9

    goto/16 :goto_d

    .line 452
    :cond_a
    iget-object v15, v0, Lcom/github/junrar/unpack/Unpack;->rarVM:Lcom/github/junrar/unpack/vm/RarVM;

    const/4 v14, 0x0

    invoke-virtual {v15, v14, v8, v14, v6}, Lcom/github/junrar/unpack/vm/RarVM;->setMemory(I[BII)V

    .line 454
    iget-object v14, v0, Lcom/github/junrar/unpack/Unpack;->filters:Ljava/util/List;

    .line 455
    invoke-virtual {v13}, Lcom/github/junrar/unpack/UnpackFilter;->getParentFilter()I

    move-result v15

    .line 454
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/github/junrar/unpack/UnpackFilter;

    .line 455
    invoke-virtual {v14}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v14

    .line 456
    .local v14, "pPrg":Lcom/github/junrar/unpack/vm/VMPreparedProgram;
    invoke-virtual {v13}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v15

    .line 458
    .local v15, "NextPrg":Lcom/github/junrar/unpack/vm/VMPreparedProgram;
    invoke-virtual {v14}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v18

    move/from16 v19, v2

    .end local v2    # "WriteSize":I
    .local v19, "WriteSize":I
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v2

    move/from16 v18, v3

    const/16 v3, 0x40

    .end local v3    # "FilteredDataOffset":I
    .local v18, "FilteredDataOffset":I
    if-le v2, v3, :cond_c

    .line 462
    invoke-virtual {v15}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v2

    .line 463
    invoke-virtual {v14}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    .line 462
    invoke-virtual {v2, v3}, Ljava/util/Vector;->setSize(I)V

    .line 465
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    invoke-virtual {v14}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    const/16 v17, 0x40

    add-int/lit8 v3, v3, -0x40

    if-ge v2, v3, :cond_b

    .line 467
    invoke-virtual {v15}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v3

    move-object/from16 v20, v5

    .end local v5    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .local v20, "flt":Lcom/github/junrar/unpack/UnpackFilter;
    add-int/lit8 v5, v2, 0x40

    .line 469
    move/from16 v21, v7

    .end local v7    # "BlockStart":I
    .local v21, "BlockStart":I
    invoke-virtual {v14}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v7

    move/from16 v22, v9

    .end local v9    # "BlockLength":I
    .local v22, "BlockLength":I
    add-int/lit8 v9, v2, 0x40

    invoke-virtual {v7, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 467
    invoke-virtual {v3, v5, v7}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 466
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v20

    move/from16 v7, v21

    move/from16 v9, v22

    goto :goto_8

    .line 465
    .end local v20    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .end local v21    # "BlockStart":I
    .end local v22    # "BlockLength":I
    .restart local v5    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .restart local v7    # "BlockStart":I
    .restart local v9    # "BlockLength":I
    :cond_b
    move-object/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v9

    .end local v5    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .end local v7    # "BlockStart":I
    .end local v9    # "BlockLength":I
    .restart local v20    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .restart local v21    # "BlockStart":I
    .restart local v22    # "BlockLength":I
    goto :goto_9

    .line 458
    .end local v2    # "i":I
    .end local v20    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .end local v21    # "BlockStart":I
    .end local v22    # "BlockLength":I
    .restart local v5    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .restart local v7    # "BlockStart":I
    .restart local v9    # "BlockLength":I
    :cond_c
    move-object/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v9

    .line 474
    .end local v5    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .end local v7    # "BlockStart":I
    .end local v9    # "BlockLength":I
    .restart local v20    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .restart local v21    # "BlockStart":I
    .restart local v22    # "BlockLength":I
    :goto_9
    invoke-direct {v0, v15}, Lcom/github/junrar/unpack/Unpack;->ExecuteCode(Lcom/github/junrar/unpack/vm/VMPreparedProgram;)V

    .line 476
    invoke-virtual {v15}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/16 v3, 0x40

    if-le v2, v3, :cond_f

    .line 478
    invoke-virtual {v14}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    .line 479
    invoke-virtual {v15}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    .line 480
    invoke-virtual {v14}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v2

    .line 481
    invoke-virtual {v15}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    .line 480
    invoke-virtual {v2, v3}, Ljava/util/Vector;->setSize(I)V

    .line 484
    :cond_d
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a
    invoke-virtual {v15}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    const/16 v5, 0x40

    sub-int/2addr v3, v5

    if-ge v2, v3, :cond_e

    .line 486
    invoke-virtual {v14}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v3

    add-int/lit8 v7, v2, 0x40

    .line 488
    invoke-virtual {v15}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v9

    add-int/lit8 v5, v2, 0x40

    invoke-virtual {v9, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 486
    invoke-virtual {v3, v7, v5}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 485
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .end local v2    # "i":I
    :cond_e
    goto :goto_b

    .line 492
    :cond_f
    invoke-virtual {v14}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 494
    :goto_b
    invoke-virtual {v15}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getFilteredDataOffset()I

    move-result v3

    .line 495
    .end local v18    # "FilteredDataOffset":I
    .restart local v3    # "FilteredDataOffset":I
    invoke-virtual {v15}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getFilteredDataSize()I

    move-result v6

    .line 497
    new-array v8, v6, [B

    .line 498
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_c
    if-ge v2, v6, :cond_10

    .line 499
    invoke-virtual {v15}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v5

    add-int v7, v3, v2

    invoke-virtual {v5, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v8, v2

    .line 498
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 503
    .end local v2    # "i":I
    :cond_10
    add-int/lit8 v4, v4, 0x1

    .line 504
    iget-object v2, v0, Lcom/github/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 505
    .end local v13    # "NextFilter":Lcom/github/junrar/unpack/UnpackFilter;
    .end local v14    # "pPrg":Lcom/github/junrar/unpack/vm/VMPreparedProgram;
    .end local v15    # "NextPrg":Lcom/github/junrar/unpack/vm/VMPreparedProgram;
    move-object v15, v5

    move/from16 v2, v19

    move-object/from16 v5, v20

    move/from16 v7, v21

    move/from16 v9, v22

    const/16 v14, 0x40

    goto/16 :goto_7

    .line 446
    .end local v19    # "WriteSize":I
    .end local v20    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .end local v21    # "BlockStart":I
    .end local v22    # "BlockLength":I
    .local v2, "WriteSize":I
    .restart local v5    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .restart local v7    # "BlockStart":I
    .restart local v9    # "BlockLength":I
    .restart local v13    # "NextFilter":Lcom/github/junrar/unpack/UnpackFilter;
    :cond_11
    move/from16 v19, v2

    move/from16 v18, v3

    move-object/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v9

    .end local v2    # "WriteSize":I
    .end local v3    # "FilteredDataOffset":I
    .end local v5    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .end local v7    # "BlockStart":I
    .end local v9    # "BlockLength":I
    .restart local v18    # "FilteredDataOffset":I
    .restart local v19    # "WriteSize":I
    .restart local v20    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .restart local v21    # "BlockStart":I
    .restart local v22    # "BlockLength":I
    goto :goto_d

    .line 445
    .end local v18    # "FilteredDataOffset":I
    .end local v19    # "WriteSize":I
    .end local v20    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .end local v21    # "BlockStart":I
    .end local v22    # "BlockLength":I
    .restart local v2    # "WriteSize":I
    .restart local v3    # "FilteredDataOffset":I
    .restart local v5    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .restart local v7    # "BlockStart":I
    .restart local v9    # "BlockLength":I
    :cond_12
    move/from16 v19, v2

    move/from16 v18, v3

    move-object/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v9

    .end local v2    # "WriteSize":I
    .end local v3    # "FilteredDataOffset":I
    .end local v5    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .end local v7    # "BlockStart":I
    .end local v9    # "BlockLength":I
    .restart local v18    # "FilteredDataOffset":I
    .restart local v19    # "WriteSize":I
    .restart local v20    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .restart local v21    # "BlockStart":I
    .restart local v22    # "BlockLength":I
    goto :goto_d

    .line 444
    .end local v18    # "FilteredDataOffset":I
    .end local v19    # "WriteSize":I
    .end local v20    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .end local v21    # "BlockStart":I
    .end local v22    # "BlockLength":I
    .restart local v2    # "WriteSize":I
    .restart local v3    # "FilteredDataOffset":I
    .restart local v5    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .restart local v7    # "BlockStart":I
    .restart local v9    # "BlockLength":I
    :cond_13
    move/from16 v19, v2

    move/from16 v18, v3

    move-object/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v9

    .end local v2    # "WriteSize":I
    .end local v3    # "FilteredDataOffset":I
    .end local v5    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .end local v7    # "BlockStart":I
    .end local v9    # "BlockLength":I
    .restart local v18    # "FilteredDataOffset":I
    .restart local v19    # "WriteSize":I
    .restart local v20    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .restart local v21    # "BlockStart":I
    .restart local v22    # "BlockLength":I
    goto :goto_d

    .line 442
    .end local v13    # "NextFilter":Lcom/github/junrar/unpack/UnpackFilter;
    .end local v18    # "FilteredDataOffset":I
    .end local v19    # "WriteSize":I
    .end local v20    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .end local v21    # "BlockStart":I
    .end local v22    # "BlockLength":I
    .restart local v2    # "WriteSize":I
    .restart local v3    # "FilteredDataOffset":I
    .restart local v5    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .restart local v7    # "BlockStart":I
    .restart local v9    # "BlockLength":I
    :cond_14
    move/from16 v19, v2

    move/from16 v18, v3

    move-object/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v9

    .line 506
    .end local v2    # "WriteSize":I
    .end local v3    # "FilteredDataOffset":I
    .end local v5    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .end local v7    # "BlockStart":I
    .end local v9    # "BlockLength":I
    .restart local v18    # "FilteredDataOffset":I
    .restart local v19    # "WriteSize":I
    .restart local v20    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .restart local v21    # "BlockStart":I
    .restart local v22    # "BlockLength":I
    :goto_d
    iget-object v2, v0, Lcom/github/junrar/unpack/Unpack;->unpIO:Lcom/github/junrar/unpack/ComprDataIO;

    const/4 v3, 0x0

    invoke-virtual {v2, v8, v3, v6}, Lcom/github/junrar/unpack/ComprDataIO;->unpWrite([BII)V

    .line 507
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/github/junrar/unpack/Unpack;->unpSomeRead:Z

    .line 508
    iget-wide v2, v0, Lcom/github/junrar/unpack/Unpack;->writtenFileSize:J

    int-to-long v13, v6

    add-long/2addr v2, v13

    iput-wide v2, v0, Lcom/github/junrar/unpack/Unpack;->writtenFileSize:J

    .line 509
    move v1, v10

    .line 510
    iget v2, v0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    sub-int/2addr v2, v1

    const v3, 0x3fffff

    and-int/2addr v2, v3

    .line 511
    .end local v6    # "FilteredDataSize":I
    .end local v8    # "FilteredData":[B
    .end local v10    # "BlockEnd":I
    .end local v11    # "ParentPrg":Lcom/github/junrar/unpack/vm/VMPreparedProgram;
    .end local v12    # "Prg":Lcom/github/junrar/unpack/vm/VMPreparedProgram;
    .end local v18    # "FilteredDataOffset":I
    .end local v19    # "WriteSize":I
    .restart local v2    # "WriteSize":I
    goto :goto_10

    .line 512
    .end local v20    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .end local v21    # "BlockStart":I
    .end local v22    # "BlockLength":I
    .restart local v5    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .restart local v7    # "BlockStart":I
    .restart local v9    # "BlockLength":I
    :cond_15
    move/from16 v19, v2

    move-object/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v9

    .end local v2    # "WriteSize":I
    .end local v5    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .end local v7    # "BlockStart":I
    .end local v9    # "BlockLength":I
    .restart local v19    # "WriteSize":I
    .restart local v20    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .restart local v21    # "BlockStart":I
    .restart local v22    # "BlockLength":I
    move v2, v4

    .local v2, "J":I
    :goto_e
    iget-object v3, v0, Lcom/github/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_17

    .line 513
    iget-object v3, v0, Lcom/github/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/junrar/unpack/UnpackFilter;

    .line 514
    .local v3, "filt":Lcom/github/junrar/unpack/UnpackFilter;
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Lcom/github/junrar/unpack/UnpackFilter;->isNextWindow()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 515
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/github/junrar/unpack/UnpackFilter;->setNextWindow(Z)V

    goto :goto_f

    .line 514
    :cond_16
    const/4 v5, 0x0

    .line 512
    .end local v3    # "filt":Lcom/github/junrar/unpack/UnpackFilter;
    :goto_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 518
    .end local v2    # "J":I
    :cond_17
    iput v1, v0, Lcom/github/junrar/unpack/Unpack;->wrPtr:I

    .line 519
    return-void

    .line 369
    .end local v19    # "WriteSize":I
    .end local v20    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .end local v21    # "BlockStart":I
    .end local v22    # "BlockLength":I
    .local v2, "WriteSize":I
    .restart local v5    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .restart local v7    # "BlockStart":I
    .restart local v9    # "BlockLength":I
    :cond_18
    move-object/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v9

    .line 358
    .end local v5    # "flt":Lcom/github/junrar/unpack/UnpackFilter;
    .end local v7    # "BlockStart":I
    .end local v9    # "BlockLength":I
    :goto_10
    const/4 v5, 0x1

    add-int/2addr v4, v5

    goto/16 :goto_0

    .line 524
    .end local v4    # "I":I
    :cond_19
    iget v3, v0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    invoke-direct {v0, v1, v3}, Lcom/github/junrar/unpack/Unpack;->UnpWriteArea(II)V

    .line 525
    iget v3, v0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    iput v3, v0, Lcom/github/junrar/unpack/Unpack;->wrPtr:I

    .line 527
    return-void
.end method

.method private UnpWriteData([BII)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    iget-wide v0, p0, Lcom/github/junrar/unpack/Unpack;->writtenFileSize:J

    iget-wide v2, p0, Lcom/github/junrar/unpack/Unpack;->destUnpSize:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 544
    return-void

    .line 546
    :cond_0
    move v0, p3

    .line 547
    .local v0, "writeSize":I
    iget-wide v1, p0, Lcom/github/junrar/unpack/Unpack;->destUnpSize:J

    iget-wide v3, p0, Lcom/github/junrar/unpack/Unpack;->writtenFileSize:J

    sub-long/2addr v1, v3

    .line 548
    .local v1, "leftToWrite":J
    int-to-long v3, v0

    cmp-long v3, v3, v1

    if-lez v3, :cond_1

    .line 549
    long-to-int v0, v1

    .line 551
    :cond_1
    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack;->unpIO:Lcom/github/junrar/unpack/ComprDataIO;

    invoke-virtual {v3, p1, p2, v0}, Lcom/github/junrar/unpack/ComprDataIO;->unpWrite([BII)V

    .line 553
    iget-wide v3, p0, Lcom/github/junrar/unpack/Unpack;->writtenFileSize:J

    int-to-long v5, p3

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/github/junrar/unpack/Unpack;->writtenFileSize:J

    .line 555
    return-void
.end method

.method private addVMCode(ILjava/util/List;I)Z
    .locals 19
    .param p1, "firstByte"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;I)Z"
        }
    .end annotation

    .line 812
    .local p2, "vmCode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Lcom/github/junrar/unpack/vm/BitInput;

    invoke-direct {v2}, Lcom/github/junrar/unpack/vm/BitInput;-><init>()V

    .line 813
    .local v2, "Inp":Lcom/github/junrar/unpack/vm/BitInput;
    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/BitInput;->InitBitInput()V

    .line 815
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const v4, 0x8000

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 816
    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/BitInput;->getInBuf()[B

    move-result-object v4

    move-object/from16 v5, p2

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v4, v3

    .line 815
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    .line 818
    .end local v3    # "i":I
    iget-object v3, v0, Lcom/github/junrar/unpack/Unpack;->rarVM:Lcom/github/junrar/unpack/vm/RarVM;

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/RarVM;->init()V

    .line 821
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_2

    .line 822
    invoke-static {v2}, Lcom/github/junrar/unpack/vm/RarVM;->ReadData(Lcom/github/junrar/unpack/vm/BitInput;)I

    move-result v3

    .line 823
    .local v3, "FiltPos":I
    if-nez v3, :cond_1

    .line 824
    invoke-direct/range {p0 .. p0}, Lcom/github/junrar/unpack/Unpack;->initFilters()V

    goto :goto_1

    .line 826
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 829
    .end local v3    # "FiltPos":I
    :cond_2
    iget v3, v0, Lcom/github/junrar/unpack/Unpack;->lastFilter:I

    .line 832
    .restart local v3    # "FiltPos":I
    :goto_1
    iget-object v4, v0, Lcom/github/junrar/unpack/Unpack;->filters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    if-gt v3, v4, :cond_1b

    iget-object v4, v0, Lcom/github/junrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_3

    goto/16 :goto_e

    .line 835
    :cond_3
    iput v3, v0, Lcom/github/junrar/unpack/Unpack;->lastFilter:I

    .line 836
    iget-object v4, v0, Lcom/github/junrar/unpack/Unpack;->filters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x1

    if-ne v3, v4, :cond_4

    move v4, v7

    goto :goto_2

    :cond_4
    move v4, v6

    .line 838
    .local v4, "NewFilter":Z
    :goto_2
    new-instance v8, Lcom/github/junrar/unpack/UnpackFilter;

    invoke-direct {v8}, Lcom/github/junrar/unpack/UnpackFilter;-><init>()V

    .line 842
    .local v8, "StackFilter":Lcom/github/junrar/unpack/UnpackFilter;
    if-eqz v4, :cond_6

    .line 844
    const/16 v9, 0x400

    if-le v3, v9, :cond_5

    .line 845
    return v6

    .line 849
    :cond_5
    new-instance v9, Lcom/github/junrar/unpack/UnpackFilter;

    invoke-direct {v9}, Lcom/github/junrar/unpack/UnpackFilter;-><init>()V

    .line 850
    .local v9, "Filter":Lcom/github/junrar/unpack/UnpackFilter;
    iget-object v10, v0, Lcom/github/junrar/unpack/Unpack;->filters:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    iget-object v10, v0, Lcom/github/junrar/unpack/Unpack;->filters:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v8, v10}, Lcom/github/junrar/unpack/UnpackFilter;->setParentFilter(I)V

    .line 852
    iget-object v10, v0, Lcom/github/junrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    invoke-virtual {v9, v6}, Lcom/github/junrar/unpack/UnpackFilter;->setExecCount(I)V

    goto :goto_3

    .line 855
    .end local v9    # "Filter":Lcom/github/junrar/unpack/UnpackFilter;
    :cond_6
    iget-object v9, v0, Lcom/github/junrar/unpack/Unpack;->filters:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/junrar/unpack/UnpackFilter;

    .line 856
    .restart local v9    # "Filter":Lcom/github/junrar/unpack/UnpackFilter;
    invoke-virtual {v8, v3}, Lcom/github/junrar/unpack/UnpackFilter;->setParentFilter(I)V

    .line 857
    invoke-virtual {v9}, Lcom/github/junrar/unpack/UnpackFilter;->getExecCount()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v9, v10}, Lcom/github/junrar/unpack/UnpackFilter;->setExecCount(I)V

    .line 860
    :goto_3
    iget-object v10, v0, Lcom/github/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    invoke-virtual {v9}, Lcom/github/junrar/unpack/UnpackFilter;->getExecCount()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/github/junrar/unpack/UnpackFilter;->setExecCount(I)V

    .line 863
    invoke-static {v2}, Lcom/github/junrar/unpack/vm/RarVM;->ReadData(Lcom/github/junrar/unpack/vm/BitInput;)I

    move-result v10

    .line 864
    .local v10, "BlockStart":I
    and-int/lit8 v11, v1, 0x40

    if-eqz v11, :cond_7

    .line 865
    add-int/lit16 v10, v10, 0x102

    .line 867
    :cond_7
    iget v11, v0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    add-int/2addr v11, v10

    const v12, 0x3fffff

    and-int/2addr v11, v12

    invoke-virtual {v8, v11}, Lcom/github/junrar/unpack/UnpackFilter;->setBlockStart(I)V

    .line 868
    and-int/lit8 v11, v1, 0x20

    if-eqz v11, :cond_8

    .line 869
    invoke-static {v2}, Lcom/github/junrar/unpack/vm/RarVM;->ReadData(Lcom/github/junrar/unpack/vm/BitInput;)I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/github/junrar/unpack/UnpackFilter;->setBlockLength(I)V

    goto :goto_5

    .line 871
    :cond_8
    iget-object v11, v0, Lcom/github/junrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    .line 872
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_9

    iget-object v11, v0, Lcom/github/junrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    .line 873
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_4

    :cond_9
    move v11, v6

    .line 872
    :goto_4
    invoke-virtual {v8, v11}, Lcom/github/junrar/unpack/UnpackFilter;->setBlockLength(I)V

    .line 876
    :goto_5
    iget v11, v0, Lcom/github/junrar/unpack/Unpack;->wrPtr:I

    iget v13, v0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    if-eq v11, v13, :cond_a

    iget v11, v0, Lcom/github/junrar/unpack/Unpack;->wrPtr:I

    iget v13, v0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    sub-int/2addr v11, v13

    and-int/2addr v11, v12

    if-gt v11, v10, :cond_a

    move v11, v7

    goto :goto_6

    :cond_a
    move v11, v6

    :goto_6
    invoke-virtual {v8, v11}, Lcom/github/junrar/unpack/UnpackFilter;->setNextWindow(Z)V

    .line 882
    iget-object v11, v0, Lcom/github/junrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/UnpackFilter;->getBlockLength()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v3, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 885
    invoke-virtual {v8}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v11

    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v11

    invoke-static {v11, v6}, Ljava/util/Arrays;->fill([II)V

    .line 886
    invoke-virtual {v8}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v11

    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v11

    const v12, 0x3c000

    const/4 v13, 0x3

    aput v12, v11, v13

    .line 887
    invoke-virtual {v8}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v11

    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v11

    invoke-virtual {v8}, Lcom/github/junrar/unpack/UnpackFilter;->getBlockLength()I

    move-result v12

    const/4 v14, 0x4

    aput v12, v11, v14

    .line 888
    invoke-virtual {v8}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v11

    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v8}, Lcom/github/junrar/unpack/UnpackFilter;->getExecCount()I

    move-result v14

    aput v14, v11, v12

    .line 890
    and-int/lit8 v11, v1, 0x10

    const/4 v12, 0x7

    if-eqz v11, :cond_c

    .line 892
    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v11

    ushr-int/lit8 v11, v11, 0x9

    .line 893
    .local v11, "InitMask":I
    invoke-virtual {v2, v12}, Lcom/github/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 894
    const/4 v14, 0x0

    .local v14, "I":I
    :goto_7
    if-ge v14, v12, :cond_c

    .line 895
    shl-int v15, v7, v14

    and-int/2addr v15, v11

    if-eqz v15, :cond_b

    .line 897
    invoke-virtual {v8}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v15

    invoke-virtual {v15}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v15

    invoke-static {v2}, Lcom/github/junrar/unpack/vm/RarVM;->ReadData(Lcom/github/junrar/unpack/vm/BitInput;)I

    move-result v16

    aput v16, v15, v14

    .line 894
    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 902
    .end local v11    # "InitMask":I
    .end local v14    # "I":I
    :cond_c
    const/16 v11, 0x8

    if-eqz v4, :cond_11

    .line 903
    invoke-static {v2}, Lcom/github/junrar/unpack/vm/RarVM;->ReadData(Lcom/github/junrar/unpack/vm/BitInput;)I

    move-result v14

    .line 904
    .local v14, "VMCodeSize":I
    const/high16 v15, 0x10000

    if-ge v14, v15, :cond_10

    if-nez v14, :cond_d

    goto :goto_9

    .line 907
    :cond_d
    new-array v15, v14, [B

    .line 908
    .local v15, "VMCode":[B
    const/16 v16, 0x0

    move/from16 v7, v16

    .local v7, "I":I
    :goto_8
    if-ge v7, v14, :cond_f

    .line 909
    invoke-virtual {v2, v13}, Lcom/github/junrar/unpack/vm/BitInput;->Overflow(I)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 910
    return v6

    .line 912
    :cond_e
    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v16

    ushr-int/lit8 v13, v16, 0x8

    int-to-byte v13, v13

    aput-byte v13, v15, v7

    .line 913
    invoke-virtual {v2, v11}, Lcom/github/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 908
    add-int/lit8 v7, v7, 0x1

    const/4 v13, 0x3

    goto :goto_8

    .line 916
    .end local v7    # "I":I
    :cond_f
    iget-object v7, v0, Lcom/github/junrar/unpack/Unpack;->rarVM:Lcom/github/junrar/unpack/vm/RarVM;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v13

    invoke-virtual {v7, v15, v14, v13}, Lcom/github/junrar/unpack/vm/RarVM;->prepare([BILcom/github/junrar/unpack/vm/VMPreparedProgram;)V

    goto :goto_a

    .line 905
    .end local v15    # "VMCode":[B
    :cond_10
    :goto_9
    return v6

    .line 918
    .end local v14    # "VMCodeSize":I
    :cond_11
    :goto_a
    invoke-virtual {v8}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v7

    invoke-virtual {v9}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v13

    invoke-virtual {v13}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->setAltCmd(Ljava/util/List;)V

    .line 919
    invoke-virtual {v8}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v7

    invoke-virtual {v9}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v13

    invoke-virtual {v13}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    move-result v13

    invoke-virtual {v7, v13}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    .line 921
    invoke-virtual {v9}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getStaticData()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    .line 922
    .local v7, "StaticDataSize":I
    if-lez v7, :cond_12

    const/16 v13, 0x2000

    if-ge v7, v13, :cond_12

    .line 925
    invoke-virtual {v8}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v13

    invoke-virtual {v9}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getStaticData()Ljava/util/Vector;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->setStaticData(Ljava/util/Vector;)V

    .line 929
    :cond_12
    invoke-virtual {v8}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v13

    invoke-virtual {v13}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    const/16 v14, 0x40

    if-ge v13, v14, :cond_13

    .line 932
    invoke-virtual {v8}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v13

    invoke-virtual {v13}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Vector;->clear()V

    .line 933
    invoke-virtual {v8}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v13

    invoke-virtual {v13}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/util/Vector;->setSize(I)V

    .line 938
    :cond_13
    invoke-virtual {v8}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v13

    invoke-virtual {v13}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v13

    .line 939
    .local v13, "globalData":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Byte;>;"
    const/4 v14, 0x0

    .local v14, "I":I
    :goto_b
    if-ge v14, v12, :cond_14

    .line 940
    iget-object v15, v0, Lcom/github/junrar/unpack/Unpack;->rarVM:Lcom/github/junrar/unpack/vm/RarVM;

    mul-int/lit8 v12, v14, 0x4

    invoke-virtual {v8}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v18

    .line 941
    invoke-virtual/range {v18 .. v18}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v18

    aget v11, v18, v14

    .line 940
    invoke-virtual {v15, v13, v12, v11}, Lcom/github/junrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 939
    add-int/lit8 v14, v14, 0x1

    const/16 v11, 0x8

    const/4 v12, 0x7

    goto :goto_b

    .line 946
    .end local v14    # "I":I
    :cond_14
    iget-object v11, v0, Lcom/github/junrar/unpack/Unpack;->rarVM:Lcom/github/junrar/unpack/vm/RarVM;

    const/16 v12, 0x1c

    invoke-virtual {v8}, Lcom/github/junrar/unpack/UnpackFilter;->getBlockLength()I

    move-result v14

    invoke-virtual {v11, v13, v12, v14}, Lcom/github/junrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 948
    iget-object v11, v0, Lcom/github/junrar/unpack/Unpack;->rarVM:Lcom/github/junrar/unpack/vm/RarVM;

    const/16 v12, 0x20

    invoke-virtual {v11, v13, v12, v6}, Lcom/github/junrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 949
    iget-object v11, v0, Lcom/github/junrar/unpack/Unpack;->rarVM:Lcom/github/junrar/unpack/vm/RarVM;

    const/16 v12, 0x24

    invoke-virtual {v11, v13, v12, v6}, Lcom/github/junrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 950
    iget-object v11, v0, Lcom/github/junrar/unpack/Unpack;->rarVM:Lcom/github/junrar/unpack/vm/RarVM;

    const/16 v12, 0x28

    invoke-virtual {v11, v13, v12, v6}, Lcom/github/junrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 954
    iget-object v11, v0, Lcom/github/junrar/unpack/Unpack;->rarVM:Lcom/github/junrar/unpack/vm/RarVM;

    const/16 v12, 0x2c

    invoke-virtual {v8}, Lcom/github/junrar/unpack/UnpackFilter;->getExecCount()I

    move-result v14

    invoke-virtual {v11, v13, v12, v14}, Lcom/github/junrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 956
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_c
    const/16 v12, 0x10

    if-ge v11, v12, :cond_15

    .line 957
    add-int/lit8 v12, v11, 0x30

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 956
    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    .line 959
    .end local v11    # "i":I
    :cond_15
    and-int/lit8 v11, v1, 0x8

    if-eqz v11, :cond_1a

    .line 960
    const/4 v11, 0x3

    invoke-virtual {v2, v11}, Lcom/github/junrar/unpack/vm/BitInput;->Overflow(I)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 961
    return v6

    .line 963
    :cond_16
    invoke-static {v2}, Lcom/github/junrar/unpack/vm/RarVM;->ReadData(Lcom/github/junrar/unpack/vm/BitInput;)I

    move-result v11

    .line 964
    .local v11, "DataSize":I
    const/16 v12, 0x1fc0

    if-le v11, v12, :cond_17

    .line 965
    return v6

    .line 967
    :cond_17
    invoke-virtual {v8}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v12

    invoke-virtual {v12}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    .line 968
    .local v12, "CurSize":I
    add-int/lit8 v14, v11, 0x40

    if-ge v12, v14, :cond_18

    .line 970
    invoke-virtual {v8}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v14

    add-int/lit8 v15, v11, 0x40

    sub-int/2addr v15, v12

    invoke-virtual {v14, v15}, Ljava/util/Vector;->setSize(I)V

    .line 973
    :cond_18
    const/16 v14, 0x40

    .line 974
    .local v14, "offset":I
    invoke-virtual {v8}, Lcom/github/junrar/unpack/UnpackFilter;->getPrg()Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    move-result-object v15

    invoke-virtual {v15}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v13

    .line 975
    const/4 v15, 0x0

    .local v15, "I":I
    :goto_d
    if-ge v15, v11, :cond_1a

    .line 976
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Lcom/github/junrar/unpack/vm/BitInput;->Overflow(I)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 977
    const/4 v6, 0x0

    return v6

    .line 979
    :cond_19
    add-int v6, v14, v15

    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v18

    const/16 v0, 0x8

    ushr-int/lit8 v1, v18, 0x8

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v13, v6, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 980
    invoke-virtual {v2, v0}, Lcom/github/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 975
    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    goto :goto_d

    .line 983
    .end local v11    # "DataSize":I
    .end local v12    # "CurSize":I
    .end local v14    # "offset":I
    .end local v15    # "I":I
    :cond_1a
    const/4 v0, 0x1

    return v0

    .line 833
    .end local v4    # "NewFilter":Z
    .end local v7    # "StaticDataSize":I
    .end local v8    # "StackFilter":Lcom/github/junrar/unpack/UnpackFilter;
    .end local v9    # "Filter":Lcom/github/junrar/unpack/UnpackFilter;
    .end local v10    # "BlockStart":I
    .end local v13    # "globalData":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Byte;>;"
    :cond_1b
    :goto_e
    const/4 v0, 0x0

    return v0
.end method

.method private copyString(II)V
    .locals 7
    .param p1, "length"    # I
    .param p2, "distance"    # I

    .line 572
    iget v0, p0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    sub-int/2addr v0, p2

    .line 574
    .local v0, "destPtr":I
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    const v2, 0x3ffefc

    if-ge v0, v2, :cond_2

    iget v3, p0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    if-ge v3, v2, :cond_2

    .line 575
    if-ne p2, v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack;->window:[B

    iget v2, p0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    iget v3, p0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    add-int/2addr v3, p1

    iget-object v4, p0, Lcom/github/junrar/unpack/Unpack;->window:[B

    aget-byte v4, v4, v0

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 580
    iget v1, p0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    .line 581
    add-int/2addr v0, p1

    .line 582
    const/4 p1, 0x0

    goto :goto_1

    .line 583
    :cond_0
    add-int v1, v0, p1

    iget v2, p0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    if-gt v1, v2, :cond_1

    .line 585
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack;->window:[B

    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack;->window:[B

    iget v3, p0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    invoke-static {v1, v0, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 587
    iget v1, p0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    .line 588
    add-int/2addr v0, p1

    .line 589
    const/4 p1, 0x0

    goto :goto_1

    .line 593
    :cond_1
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack;->window:[B

    iget v2, p0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack;->window:[B

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "destPtr":I
    .local v4, "destPtr":I
    aget-byte v0, v3, v0

    aput-byte v0, v1, v2

    .line 594
    add-int/lit8 p1, p1, -0x1

    move v0, v4

    if-gtz p1, :cond_1

    goto :goto_1

    .line 597
    .end local v4    # "destPtr":I
    .restart local v0    # "destPtr":I
    :cond_2
    :goto_0
    add-int/lit8 v2, p1, -0x1

    .end local p1    # "length":I
    .local v2, "length":I
    if-eqz p1, :cond_3

    .line 598
    iget-object p1, p0, Lcom/github/junrar/unpack/Unpack;->window:[B

    iget v3, p0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    iget-object v4, p0, Lcom/github/junrar/unpack/Unpack;->window:[B

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "destPtr":I
    .local v5, "destPtr":I
    const v6, 0x3fffff

    and-int/2addr v0, v6

    aget-byte v0, v4, v0

    aput-byte v0, p1, v3

    .line 599
    iget p1, p0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    add-int/2addr p1, v1

    and-int/2addr p1, v6

    iput p1, p0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    move p1, v2

    move v0, v5

    goto :goto_0

    .line 597
    .end local v5    # "destPtr":I
    .restart local v0    # "destPtr":I
    :cond_3
    move p1, v2

    .line 602
    .end local v2    # "length":I
    .restart local p1    # "length":I
    :goto_1
    return-void
.end method

.method private initFilters()V
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 631
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/junrar/unpack/Unpack;->lastFilter:I

    .line 633
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 635
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 636
    return-void
.end method

.method private insertLastMatch(II)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "distance"    # I

    .line 565
    iput p2, p0, Lcom/github/junrar/unpack/Unpack;->lastDist:I

    .line 566
    iput p1, p0, Lcom/github/junrar/unpack/Unpack;->lastLength:I

    .line 567
    return-void
.end method

.method private insertOldDist(I)V
    .locals 4
    .param p1, "distance"    # I

    .line 558
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack;->oldDist:[I

    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack;->oldDist:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    const/4 v3, 0x3

    aput v1, v0, v3

    .line 559
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack;->oldDist:[I

    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack;->oldDist:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v2

    .line 560
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack;->oldDist:[I

    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack;->oldDist:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v3

    .line 561
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack;->oldDist:[I

    aput p1, v0, v2

    .line 562
    return-void
.end method

.method private readEndOfBlock()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 639
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack;->getbits()I

    move-result v0

    .line 640
    .local v0, "BitField":I
    const/4 v1, 0x0

    .line 641
    .local v1, "NewFile":Z
    const v2, 0x8000

    and-int/2addr v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 642
    const/4 v2, 0x1

    .line 643
    .local v2, "NewTable":Z
    invoke-virtual {p0, v4}, Lcom/github/junrar/unpack/Unpack;->addbits(I)V

    goto :goto_1

    .line 645
    .end local v2    # "NewTable":Z
    :cond_0
    const/4 v1, 0x1

    .line 646
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    .line 647
    .restart local v2    # "NewTable":Z
    :goto_0
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/github/junrar/unpack/Unpack;->addbits(I)V

    .line 649
    :goto_1
    if-nez v2, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/github/junrar/unpack/Unpack;->tablesRead:Z

    .line 650
    if-nez v1, :cond_4

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/github/junrar/unpack/Unpack;->readTables()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    return v3
.end method

.method private readTables()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 654
    const/16 v0, 0x14

    new-array v1, v0, [B

    .line 656
    .local v1, "bitLength":[B
    const/16 v2, 0x194

    new-array v2, v2, [B

    .line 657
    .local v2, "table":[B
    iget v3, p0, Lcom/github/junrar/unpack/Unpack;->inAddr:I

    iget v4, p0, Lcom/github/junrar/unpack/Unpack;->readTop:I

    add-int/lit8 v4, v4, -0x19

    const/4 v5, 0x0

    if-le v3, v4, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack;->unpReadBuf()Z

    move-result v3

    if-nez v3, :cond_0

    .line 659
    return v5

    .line 662
    :cond_0
    iget v3, p0, Lcom/github/junrar/unpack/Unpack;->inBit:I

    rsub-int/lit8 v3, v3, 0x8

    const/4 v4, 0x7

    and-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/github/junrar/unpack/Unpack;->faddbits(I)V

    .line 663
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack;->fgetbits()I

    move-result v3

    and-int/lit8 v3, v3, -0x1

    int-to-long v6, v3

    .line 664
    .local v6, "bitField":J
    const-wide/32 v8, 0x8000

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-eqz v3, :cond_1

    .line 665
    sget-object v0, Lcom/github/junrar/unpack/ppm/BlockTypes;->BLOCK_PPM:Lcom/github/junrar/unpack/ppm/BlockTypes;

    iput-object v0, p0, Lcom/github/junrar/unpack/Unpack;->unpBlockType:Lcom/github/junrar/unpack/ppm/BlockTypes;

    .line 666
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack;->ppm:Lcom/github/junrar/unpack/ppm/ModelPPM;

    iget v3, p0, Lcom/github/junrar/unpack/Unpack;->ppmEscChar:I

    invoke-virtual {v0, p0, v3}, Lcom/github/junrar/unpack/ppm/ModelPPM;->decodeInit(Lcom/github/junrar/unpack/Unpack;I)Z

    move-result v0

    return v0

    .line 668
    :cond_1
    sget-object v3, Lcom/github/junrar/unpack/ppm/BlockTypes;->BLOCK_LZ:Lcom/github/junrar/unpack/ppm/BlockTypes;

    iput-object v3, p0, Lcom/github/junrar/unpack/Unpack;->unpBlockType:Lcom/github/junrar/unpack/ppm/BlockTypes;

    .line 670
    iput v5, p0, Lcom/github/junrar/unpack/Unpack;->prevLowDist:I

    .line 671
    iput v5, p0, Lcom/github/junrar/unpack/Unpack;->lowDistRepCount:I

    .line 673
    const-wide/16 v8, 0x4000

    and-long/2addr v8, v6

    cmp-long v3, v8, v10

    if-nez v3, :cond_2

    .line 674
    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack;->unpOldTable:[B

    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 676
    :cond_2
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/github/junrar/unpack/Unpack;->faddbits(I)V

    .line 678
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v8, 0xf

    const/4 v9, 0x1

    if-ge v3, v0, :cond_6

    .line 679
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack;->fgetbits()I

    move-result v10

    ushr-int/lit8 v10, v10, 0xc

    and-int/lit16 v10, v10, 0xff

    .line 680
    .local v10, "length":I
    const/4 v11, 0x4

    invoke-virtual {p0, v11}, Lcom/github/junrar/unpack/Unpack;->faddbits(I)V

    .line 681
    if-ne v10, v8, :cond_5

    .line 682
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack;->fgetbits()I

    move-result v12

    ushr-int/lit8 v12, v12, 0xc

    and-int/lit16 v12, v12, 0xff

    .line 683
    .local v12, "zeroCount":I
    invoke-virtual {p0, v11}, Lcom/github/junrar/unpack/Unpack;->faddbits(I)V

    .line 684
    if-nez v12, :cond_3

    .line 685
    aput-byte v8, v1, v3

    goto :goto_2

    .line 687
    :cond_3
    add-int/lit8 v12, v12, 0x2

    .line 688
    :goto_1
    add-int/lit8 v8, v12, -0x1

    .end local v12    # "zeroCount":I
    .local v8, "zeroCount":I
    if-lez v12, :cond_4

    array-length v11, v1

    if-ge v3, v11, :cond_4

    .line 689
    add-int/lit8 v11, v3, 0x1

    .end local v3    # "i":I
    .local v11, "i":I
    aput-byte v5, v1, v3

    move v12, v8

    move v3, v11

    goto :goto_1

    .line 691
    .end local v11    # "i":I
    .restart local v3    # "i":I
    :cond_4
    add-int/lit8 v3, v3, -0x1

    .line 693
    .end local v8    # "zeroCount":I
    :goto_2
    goto :goto_3

    .line 694
    :cond_5
    int-to-byte v8, v10

    aput-byte v8, v1, v3

    .line 678
    .end local v10    # "length":I
    :goto_3
    add-int/2addr v3, v9

    goto :goto_0

    .line 698
    .end local v3    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack;->BD:Lcom/github/junrar/unpack/decode/BitDecode;

    invoke-virtual {p0, v1, v5, v3, v0}, Lcom/github/junrar/unpack/Unpack;->makeDecodeTables([BILcom/github/junrar/unpack/decode/Decode;I)V

    .line 700
    const/16 v0, 0x194

    .line 702
    .local v0, "TableSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v0, :cond_e

    .line 703
    iget v10, p0, Lcom/github/junrar/unpack/Unpack;->inAddr:I

    iget v11, p0, Lcom/github/junrar/unpack/Unpack;->readTop:I

    add-int/lit8 v11, v11, -0x5

    if-le v10, v11, :cond_7

    .line 704
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack;->unpReadBuf()Z

    move-result v10

    if-nez v10, :cond_7

    .line 705
    return v5

    .line 708
    :cond_7
    iget-object v10, p0, Lcom/github/junrar/unpack/Unpack;->BD:Lcom/github/junrar/unpack/decode/BitDecode;

    invoke-virtual {p0, v10}, Lcom/github/junrar/unpack/Unpack;->decodeNumber(Lcom/github/junrar/unpack/decode/Decode;)I

    move-result v10

    .line 709
    .local v10, "Number":I
    const/16 v11, 0x10

    if-ge v10, v11, :cond_8

    .line 710
    iget-object v11, p0, Lcom/github/junrar/unpack/Unpack;->unpOldTable:[B

    aget-byte v11, v11, v3

    add-int/2addr v11, v10

    and-int/2addr v11, v8

    int-to-byte v11, v11

    aput-byte v11, v2, v3

    .line 711
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 712
    :cond_8
    const/16 v12, 0x12

    const/4 v13, 0x3

    if-ge v10, v12, :cond_b

    .line 714
    if-ne v10, v11, :cond_9

    .line 715
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack;->fgetbits()I

    move-result v11

    ushr-int/lit8 v11, v11, 0xd

    add-int/2addr v11, v13

    .line 716
    .local v11, "N":I
    invoke-virtual {p0, v13}, Lcom/github/junrar/unpack/Unpack;->faddbits(I)V

    goto :goto_5

    .line 718
    .end local v11    # "N":I
    :cond_9
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack;->fgetbits()I

    move-result v11

    ushr-int/lit8 v11, v11, 0x9

    add-int/lit8 v11, v11, 0xb

    .line 719
    .restart local v11    # "N":I
    invoke-virtual {p0, v4}, Lcom/github/junrar/unpack/Unpack;->faddbits(I)V

    .line 721
    :goto_5
    add-int/lit8 v12, v11, -0x1

    .end local v11    # "N":I
    .local v12, "N":I
    if-lez v11, :cond_a

    if-ge v3, v0, :cond_a

    .line 722
    add-int/lit8 v11, v3, -0x1

    aget-byte v11, v2, v11

    aput-byte v11, v2, v3

    .line 723
    add-int/lit8 v3, v3, 0x1

    move v11, v12

    goto :goto_5

    .line 725
    .end local v12    # "N":I
    :cond_a
    goto :goto_7

    .line 727
    :cond_b
    if-ne v10, v12, :cond_c

    .line 728
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack;->fgetbits()I

    move-result v11

    ushr-int/lit8 v11, v11, 0xd

    add-int/2addr v11, v13

    .line 729
    .restart local v11    # "N":I
    invoke-virtual {p0, v13}, Lcom/github/junrar/unpack/Unpack;->faddbits(I)V

    goto :goto_6

    .line 731
    .end local v11    # "N":I
    :cond_c
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack;->fgetbits()I

    move-result v11

    ushr-int/lit8 v11, v11, 0x9

    add-int/lit8 v11, v11, 0xb

    .line 732
    .restart local v11    # "N":I
    invoke-virtual {p0, v4}, Lcom/github/junrar/unpack/Unpack;->faddbits(I)V

    .line 734
    :goto_6
    add-int/lit8 v12, v11, -0x1

    .end local v11    # "N":I
    .restart local v12    # "N":I
    if-lez v11, :cond_d

    if-ge v3, v0, :cond_d

    .line 735
    add-int/lit8 v11, v3, 0x1

    .end local v3    # "i":I
    .local v11, "i":I
    aput-byte v5, v2, v3

    move v3, v11

    move v11, v12

    goto :goto_6

    .line 738
    .end local v10    # "Number":I
    .end local v11    # "i":I
    .end local v12    # "N":I
    .restart local v3    # "i":I
    :cond_d
    :goto_7
    goto :goto_4

    .line 739
    .end local v3    # "i":I
    :cond_e
    iput-boolean v9, p0, Lcom/github/junrar/unpack/Unpack;->tablesRead:Z

    .line 740
    iget v3, p0, Lcom/github/junrar/unpack/Unpack;->inAddr:I

    iget v4, p0, Lcom/github/junrar/unpack/Unpack;->readTop:I

    if-le v3, v4, :cond_f

    .line 741
    return v5

    .line 743
    :cond_f
    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack;->LD:Lcom/github/junrar/unpack/decode/LitDecode;

    const/16 v4, 0x12b

    invoke-virtual {p0, v2, v5, v3, v4}, Lcom/github/junrar/unpack/Unpack;->makeDecodeTables([BILcom/github/junrar/unpack/decode/Decode;I)V

    .line 744
    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack;->DD:Lcom/github/junrar/unpack/decode/DistDecode;

    const/16 v8, 0x3c

    invoke-virtual {p0, v2, v4, v3, v8}, Lcom/github/junrar/unpack/Unpack;->makeDecodeTables([BILcom/github/junrar/unpack/decode/Decode;I)V

    .line 745
    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack;->LDD:Lcom/github/junrar/unpack/decode/LowDistDecode;

    const/16 v4, 0x11

    const/16 v8, 0x167

    invoke-virtual {p0, v2, v8, v3, v4}, Lcom/github/junrar/unpack/Unpack;->makeDecodeTables([BILcom/github/junrar/unpack/decode/Decode;I)V

    .line 746
    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack;->RD:Lcom/github/junrar/unpack/decode/RepDecode;

    const/16 v4, 0x1c

    const/16 v8, 0x178

    invoke-virtual {p0, v2, v8, v3, v4}, Lcom/github/junrar/unpack/Unpack;->makeDecodeTables([BILcom/github/junrar/unpack/decode/Decode;I)V

    .line 750
    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack;->unpOldTable:[B

    iget-object v4, p0, Lcom/github/junrar/unpack/Unpack;->unpOldTable:[B

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 751
    return v9
.end method

.method private readVMCode()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 756
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack;->getbits()I

    move-result v0

    const/16 v1, 0x8

    ushr-int/2addr v0, v1

    .line 757
    .local v0, "FirstByte":I
    invoke-virtual {p0, v1}, Lcom/github/junrar/unpack/Unpack;->addbits(I)V

    .line 758
    and-int/lit8 v2, v0, 0x7

    add-int/lit8 v2, v2, 0x1

    .line 759
    .local v2, "Length":I
    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack;->getbits()I

    move-result v4

    ushr-int/2addr v4, v1

    add-int/lit8 v2, v4, 0x7

    .line 761
    invoke-virtual {p0, v1}, Lcom/github/junrar/unpack/Unpack;->addbits(I)V

    goto :goto_0

    .line 762
    :cond_0
    if-ne v2, v1, :cond_1

    .line 763
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack;->getbits()I

    move-result v2

    .line 764
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/github/junrar/unpack/Unpack;->addbits(I)V

    .line 766
    :cond_1
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 767
    .local v3, "vmCode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v4, 0x0

    .local v4, "I":I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 768
    iget v5, p0, Lcom/github/junrar/unpack/Unpack;->inAddr:I

    iget v6, p0, Lcom/github/junrar/unpack/Unpack;->readTop:I

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_2

    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack;->unpReadBuf()Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v5, v2, -0x1

    if-ge v4, v5, :cond_2

    .line 769
    const/4 v1, 0x0

    return v1

    .line 771
    :cond_2
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack;->getbits()I

    move-result v5

    ushr-int/2addr v5, v1

    int-to-byte v5, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    invoke-virtual {p0, v1}, Lcom/github/junrar/unpack/Unpack;->addbits(I)V

    .line 767
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 774
    .end local v4    # "I":I
    :cond_3
    invoke-direct {p0, v0, v3, v2}, Lcom/github/junrar/unpack/Unpack;->addVMCode(ILjava/util/List;I)Z

    move-result v1

    return v1
.end method

.method private readVMCodePPM()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 778
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack;->ppm:Lcom/github/junrar/unpack/ppm/ModelPPM;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v0

    .line 779
    .local v0, "FirstByte":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 780
    return v1

    .line 782
    :cond_0
    and-int/lit8 v3, v0, 0x7

    add-int/lit8 v3, v3, 0x1

    .line 783
    .local v3, "Length":I
    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    .line 784
    iget-object v5, p0, Lcom/github/junrar/unpack/Unpack;->ppm:Lcom/github/junrar/unpack/ppm/ModelPPM;

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v5

    .line 785
    .local v5, "B1":I
    if-ne v5, v2, :cond_1

    .line 786
    return v1

    .line 788
    :cond_1
    add-int/lit8 v3, v5, 0x7

    .end local v5    # "B1":I
    goto :goto_0

    .line 789
    :cond_2
    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    .line 790
    iget-object v4, p0, Lcom/github/junrar/unpack/Unpack;->ppm:Lcom/github/junrar/unpack/ppm/ModelPPM;

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v4

    .line 791
    .local v4, "B1":I
    if-ne v4, v2, :cond_3

    .line 792
    return v1

    .line 794
    :cond_3
    iget-object v5, p0, Lcom/github/junrar/unpack/Unpack;->ppm:Lcom/github/junrar/unpack/ppm/ModelPPM;

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v5

    .line 795
    .local v5, "B2":I
    if-ne v5, v2, :cond_4

    .line 796
    return v1

    .line 798
    :cond_4
    mul-int/lit16 v6, v4, 0x100

    add-int v3, v6, v5

    goto :goto_1

    .line 789
    .end local v4    # "B1":I
    .end local v5    # "B2":I
    :cond_5
    :goto_0
    nop

    .line 800
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 801
    .local v4, "vmCode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v5, 0x0

    .local v5, "I":I
    :goto_2
    if-ge v5, v3, :cond_7

    .line 802
    iget-object v6, p0, Lcom/github/junrar/unpack/Unpack;->ppm:Lcom/github/junrar/unpack/ppm/ModelPPM;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v6

    .line 803
    .local v6, "Ch":I
    if-ne v6, v2, :cond_6

    .line 804
    return v1

    .line 806
    :cond_6
    int-to-byte v7, v6

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 801
    .end local v6    # "Ch":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 808
    .end local v5    # "I":I
    :cond_7
    invoke-direct {p0, v0, v4, v3}, Lcom/github/junrar/unpack/Unpack;->addVMCode(ILjava/util/List;I)Z

    move-result v1

    return v1
.end method

.method private unpack29(Z)V
    .locals 16
    .param p1, "solid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 140
    move-object/from16 v0, p0

    const/16 v1, 0x3c

    new-array v2, v1, [I

    .line 141
    .local v2, "DDecode":[I
    new-array v1, v1, [B

    .line 145
    .local v1, "DBits":[B
    const/4 v3, 0x1

    aget v4, v2, v3

    if-nez v4, :cond_1

    .line 146
    const/4 v4, 0x0

    .local v4, "Dist":I
    const/4 v5, 0x0

    .local v5, "BitLength":I
    const/4 v6, 0x0

    .line 147
    .local v6, "Slot":I
    const/4 v7, 0x0

    .local v7, "I":I
    :goto_0
    sget-object v8, Lcom/github/junrar/unpack/Unpack;->DBitLengthCounts:[I

    array-length v8, v8

    if-ge v7, v8, :cond_1

    .line 148
    sget-object v8, Lcom/github/junrar/unpack/Unpack;->DBitLengthCounts:[I

    aget v8, v8, v7

    .line 149
    .local v8, "count":I
    const/4 v9, 0x0

    .local v9, "J":I
    :goto_1
    if-ge v9, v8, :cond_0

    .line 150
    aput v4, v2, v6

    .line 151
    int-to-byte v10, v5

    aput-byte v10, v1, v6

    .line 149
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    shl-int v10, v3, v5

    add-int/2addr v4, v10

    goto :goto_1

    .line 147
    .end local v8    # "count":I
    .end local v9    # "J":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 156
    .end local v4    # "Dist":I
    .end local v5    # "BitLength":I
    .end local v6    # "Slot":I
    .end local v7    # "I":I
    :cond_1
    iput-boolean v3, v0, Lcom/github/junrar/unpack/Unpack;->fileExtracted:Z

    .line 158
    iget-boolean v4, v0, Lcom/github/junrar/unpack/Unpack;->suspended:Z

    if-nez v4, :cond_4

    .line 159
    invoke-virtual/range {p0 .. p1}, Lcom/github/junrar/unpack/Unpack;->unpInitData(Z)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/Unpack;->unpReadBuf()Z

    move-result v4

    if-nez v4, :cond_2

    .line 161
    return-void

    .line 163
    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v4, v0, Lcom/github/junrar/unpack/Unpack;->tablesRead:Z

    if-nez v4, :cond_4

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/github/junrar/unpack/Unpack;->readTables()Z

    move-result v4

    if-nez v4, :cond_4

    .line 164
    return-void

    .line 168
    :cond_4
    iget-boolean v4, v0, Lcom/github/junrar/unpack/Unpack;->ppmError:Z

    if-eqz v4, :cond_5

    .line 169
    return-void

    .line 173
    :cond_5
    :goto_2
    iget v4, v0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    const v5, 0x3fffff

    and-int/2addr v4, v5

    iput v4, v0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    .line 175
    iget v4, v0, Lcom/github/junrar/unpack/Unpack;->inAddr:I

    iget v6, v0, Lcom/github/junrar/unpack/Unpack;->readBorder:I

    if-le v4, v6, :cond_6

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/Unpack;->unpReadBuf()Z

    move-result v4

    if-nez v4, :cond_6

    .line 177
    goto/16 :goto_7

    .line 182
    :cond_6
    iget v4, v0, Lcom/github/junrar/unpack/Unpack;->wrPtr:I

    iget v6, v0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    sub-int/2addr v4, v6

    and-int/2addr v4, v5

    const/16 v5, 0x104

    const/4 v6, 0x0

    if-ge v4, v5, :cond_8

    iget v4, v0, Lcom/github/junrar/unpack/Unpack;->wrPtr:I

    iget v5, v0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    if-eq v4, v5, :cond_8

    .line 185
    invoke-direct/range {p0 .. p0}, Lcom/github/junrar/unpack/Unpack;->UnpWriteBuf()V

    .line 186
    iget-wide v4, v0, Lcom/github/junrar/unpack/Unpack;->writtenFileSize:J

    iget-wide v7, v0, Lcom/github/junrar/unpack/Unpack;->destUnpSize:J

    cmp-long v4, v4, v7

    if-lez v4, :cond_7

    .line 187
    return-void

    .line 189
    :cond_7
    iget-boolean v4, v0, Lcom/github/junrar/unpack/Unpack;->suspended:Z

    if-eqz v4, :cond_8

    .line 190
    iput-boolean v6, v0, Lcom/github/junrar/unpack/Unpack;->fileExtracted:Z

    .line 191
    return-void

    .line 194
    :cond_8
    iget-object v4, v0, Lcom/github/junrar/unpack/Unpack;->unpBlockType:Lcom/github/junrar/unpack/ppm/BlockTypes;

    sget-object v5, Lcom/github/junrar/unpack/ppm/BlockTypes;->BLOCK_PPM:Lcom/github/junrar/unpack/ppm/BlockTypes;

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x4

    if-ne v4, v5, :cond_14

    .line 195
    iget-object v4, v0, Lcom/github/junrar/unpack/Unpack;->ppm:Lcom/github/junrar/unpack/ppm/ModelPPM;

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v4

    .line 196
    .local v4, "Ch":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_9

    .line 197
    iput-boolean v3, v0, Lcom/github/junrar/unpack/Unpack;->ppmError:Z

    .line 198
    goto/16 :goto_7

    .line 200
    :cond_9
    iget v6, v0, Lcom/github/junrar/unpack/Unpack;->ppmEscChar:I

    if-ne v4, v6, :cond_13

    .line 201
    iget-object v6, v0, Lcom/github/junrar/unpack/Unpack;->ppm:Lcom/github/junrar/unpack/ppm/ModelPPM;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v6

    .line 202
    .local v6, "NextCh":I
    if-nez v6, :cond_a

    .line 203
    invoke-direct/range {p0 .. p0}, Lcom/github/junrar/unpack/Unpack;->readTables()Z

    move-result v5

    if-nez v5, :cond_5

    .line 204
    goto/16 :goto_7

    .line 208
    :cond_a
    if-eq v6, v8, :cond_1f

    if-ne v6, v5, :cond_b

    .line 209
    goto/16 :goto_7

    .line 211
    :cond_b
    if-ne v6, v7, :cond_c

    .line 212
    invoke-direct/range {p0 .. p0}, Lcom/github/junrar/unpack/Unpack;->readVMCodePPM()Z

    move-result v5

    if-nez v5, :cond_5

    .line 213
    goto/16 :goto_7

    .line 217
    :cond_c
    if-ne v6, v9, :cond_11

    .line 218
    const/4 v8, 0x0

    .local v8, "Distance":I
    const/4 v10, 0x0

    .line 219
    .local v10, "Length":I
    const/4 v11, 0x0

    .line 220
    .local v11, "failed":Z
    const/4 v12, 0x0

    .local v12, "I":I
    :goto_3
    if-ge v12, v9, :cond_f

    if-nez v11, :cond_f

    .line 221
    iget-object v13, v0, Lcom/github/junrar/unpack/Unpack;->ppm:Lcom/github/junrar/unpack/ppm/ModelPPM;

    invoke-virtual {v13}, Lcom/github/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v13

    .line 222
    .local v13, "ch":I
    if-ne v13, v5, :cond_d

    .line 223
    const/4 v11, 0x1

    goto :goto_4

    .line 225
    :cond_d
    if-ne v12, v7, :cond_e

    .line 227
    and-int/lit16 v10, v13, 0xff

    goto :goto_4

    .line 230
    :cond_e
    shl-int/lit8 v14, v8, 0x8

    and-int/lit16 v15, v13, 0xff

    add-int/2addr v14, v15

    move v8, v14

    .line 220
    .end local v13    # "ch":I
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 234
    .end local v12    # "I":I
    :cond_f
    if-eqz v11, :cond_10

    .line 235
    goto/16 :goto_7

    .line 237
    :cond_10
    add-int/lit8 v5, v10, 0x20

    add-int/lit8 v7, v8, 0x2

    invoke-direct {v0, v5, v7}, Lcom/github/junrar/unpack/Unpack;->copyString(II)V

    .line 238
    goto/16 :goto_2

    .line 240
    .end local v8    # "Distance":I
    .end local v10    # "Length":I
    .end local v11    # "failed":Z
    :cond_11
    const/4 v7, 0x5

    if-ne v6, v7, :cond_13

    .line 241
    iget-object v7, v0, Lcom/github/junrar/unpack/Unpack;->ppm:Lcom/github/junrar/unpack/ppm/ModelPPM;

    invoke-virtual {v7}, Lcom/github/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v7

    .line 242
    .local v7, "Length":I
    if-ne v7, v5, :cond_12

    .line 243
    goto/16 :goto_7

    .line 245
    :cond_12
    add-int/lit8 v5, v7, 0x4

    invoke-direct {v0, v5, v3}, Lcom/github/junrar/unpack/Unpack;->copyString(II)V

    .line 246
    goto/16 :goto_2

    .line 249
    .end local v6    # "NextCh":I
    .end local v7    # "Length":I
    :cond_13
    iget-object v5, v0, Lcom/github/junrar/unpack/Unpack;->window:[B

    iget v6, v0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    int-to-byte v7, v4

    aput-byte v7, v5, v6

    .line 250
    goto/16 :goto_2

    .line 253
    .end local v4    # "Ch":I
    :cond_14
    iget-object v4, v0, Lcom/github/junrar/unpack/Unpack;->LD:Lcom/github/junrar/unpack/decode/LitDecode;

    invoke-virtual {v0, v4}, Lcom/github/junrar/unpack/Unpack;->decodeNumber(Lcom/github/junrar/unpack/decode/Decode;)I

    move-result v4

    .line 254
    .local v4, "Number":I
    const/16 v5, 0x100

    if-ge v4, v5, :cond_15

    .line 255
    iget-object v5, v0, Lcom/github/junrar/unpack/Unpack;->window:[B

    iget v6, v0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    int-to-byte v7, v4

    aput-byte v7, v5, v6

    .line 256
    goto/16 :goto_2

    .line 258
    :cond_15
    const/16 v10, 0x10f

    if-lt v4, v10, :cond_1d

    .line 259
    sget-object v5, Lcom/github/junrar/unpack/Unpack;->LDecode:[I

    add-int/lit16 v4, v4, -0x10f

    aget v5, v5, v4

    add-int/2addr v5, v7

    .line 260
    .local v5, "Length":I
    sget-object v6, Lcom/github/junrar/unpack/Unpack;->LBits:[B

    aget-byte v6, v6, v4

    move v7, v6

    .local v7, "Bits":I
    if-lez v6, :cond_16

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/Unpack;->getbits()I

    move-result v6

    rsub-int/lit8 v8, v7, 0x10

    ushr-int/2addr v6, v8

    add-int/2addr v5, v6

    .line 262
    invoke-virtual {v0, v7}, Lcom/github/junrar/unpack/Unpack;->addbits(I)V

    .line 265
    :cond_16
    iget-object v6, v0, Lcom/github/junrar/unpack/Unpack;->DD:Lcom/github/junrar/unpack/decode/DistDecode;

    invoke-virtual {v0, v6}, Lcom/github/junrar/unpack/Unpack;->decodeNumber(Lcom/github/junrar/unpack/decode/Decode;)I

    move-result v6

    .line 266
    .local v6, "DistNumber":I
    aget v8, v2, v6

    add-int/2addr v8, v3

    .line 267
    .restart local v8    # "Distance":I
    aget-byte v10, v1, v6

    move v7, v10

    if-lez v10, :cond_1b

    .line 268
    const/16 v10, 0x9

    if-le v6, v10, :cond_1a

    .line 269
    if-le v7, v9, :cond_17

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/Unpack;->getbits()I

    move-result v10

    rsub-int/lit8 v11, v7, 0x14

    ushr-int/2addr v10, v11

    shl-int/lit8 v9, v10, 0x4

    add-int/2addr v8, v9

    .line 271
    add-int/lit8 v9, v7, -0x4

    invoke-virtual {v0, v9}, Lcom/github/junrar/unpack/Unpack;->addbits(I)V

    .line 273
    :cond_17
    iget v9, v0, Lcom/github/junrar/unpack/Unpack;->lowDistRepCount:I

    if-lez v9, :cond_18

    .line 274
    iget v9, v0, Lcom/github/junrar/unpack/Unpack;->lowDistRepCount:I

    sub-int/2addr v9, v3

    iput v9, v0, Lcom/github/junrar/unpack/Unpack;->lowDistRepCount:I

    .line 275
    iget v9, v0, Lcom/github/junrar/unpack/Unpack;->prevLowDist:I

    add-int/2addr v8, v9

    goto :goto_6

    .line 277
    :cond_18
    iget-object v9, v0, Lcom/github/junrar/unpack/Unpack;->LDD:Lcom/github/junrar/unpack/decode/LowDistDecode;

    invoke-virtual {v0, v9}, Lcom/github/junrar/unpack/Unpack;->decodeNumber(Lcom/github/junrar/unpack/decode/Decode;)I

    move-result v9

    .line 278
    .local v9, "LowDist":I
    const/16 v10, 0x10

    if-ne v9, v10, :cond_19

    .line 279
    const/16 v10, 0xf

    iput v10, v0, Lcom/github/junrar/unpack/Unpack;->lowDistRepCount:I

    .line 280
    iget v10, v0, Lcom/github/junrar/unpack/Unpack;->prevLowDist:I

    add-int/2addr v8, v10

    goto :goto_5

    .line 282
    :cond_19
    add-int/2addr v8, v9

    .line 283
    iput v9, v0, Lcom/github/junrar/unpack/Unpack;->prevLowDist:I

    .line 285
    .end local v9    # "LowDist":I
    :goto_5
    goto :goto_6

    .line 287
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/Unpack;->getbits()I

    move-result v9

    rsub-int/lit8 v10, v7, 0x10

    ushr-int/2addr v9, v10

    add-int/2addr v8, v9

    .line 288
    invoke-virtual {v0, v7}, Lcom/github/junrar/unpack/Unpack;->addbits(I)V

    .line 292
    :cond_1b
    :goto_6
    const/16 v9, 0x2000

    if-lt v8, v9, :cond_1c

    .line 293
    add-int/lit8 v5, v5, 0x1

    .line 294
    int-to-long v9, v8

    const-wide/32 v11, 0x40000

    cmp-long v9, v9, v11

    if-ltz v9, :cond_1c

    .line 295
    add-int/lit8 v5, v5, 0x1

    .line 299
    :cond_1c
    invoke-direct {v0, v8}, Lcom/github/junrar/unpack/Unpack;->insertOldDist(I)V

    .line 300
    invoke-direct {v0, v5, v8}, Lcom/github/junrar/unpack/Unpack;->insertLastMatch(II)V

    .line 302
    invoke-direct {v0, v5, v8}, Lcom/github/junrar/unpack/Unpack;->copyString(II)V

    .line 303
    goto/16 :goto_2

    .line 305
    .end local v5    # "Length":I
    .end local v6    # "DistNumber":I
    .end local v7    # "Bits":I
    .end local v8    # "Distance":I
    :cond_1d
    if-ne v4, v5, :cond_1e

    .line 306
    invoke-direct/range {p0 .. p0}, Lcom/github/junrar/unpack/Unpack;->readEndOfBlock()Z

    move-result v5

    if-nez v5, :cond_5

    .line 307
    goto :goto_7

    .line 311
    :cond_1e
    const/16 v5, 0x101

    if-ne v4, v5, :cond_20

    .line 312
    invoke-direct/range {p0 .. p0}, Lcom/github/junrar/unpack/Unpack;->readVMCode()Z

    move-result v5

    if-nez v5, :cond_5

    .line 313
    nop

    .line 351
    .end local v4    # "Number":I
    :cond_1f
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/github/junrar/unpack/Unpack;->UnpWriteBuf()V

    .line 353
    return-void

    .line 317
    .restart local v4    # "Number":I
    :cond_20
    const/16 v5, 0x102

    if-ne v4, v5, :cond_21

    .line 318
    iget v5, v0, Lcom/github/junrar/unpack/Unpack;->lastLength:I

    if-eqz v5, :cond_5

    .line 319
    iget v5, v0, Lcom/github/junrar/unpack/Unpack;->lastLength:I

    iget v6, v0, Lcom/github/junrar/unpack/Unpack;->lastDist:I

    invoke-direct {v0, v5, v6}, Lcom/github/junrar/unpack/Unpack;->copyString(II)V

    goto/16 :goto_2

    .line 323
    :cond_21
    const/16 v5, 0x107

    if-ge v4, v5, :cond_23

    .line 324
    add-int/lit16 v5, v4, -0x103

    .line 325
    .local v5, "DistNum":I
    iget-object v7, v0, Lcom/github/junrar/unpack/Unpack;->oldDist:[I

    aget v7, v7, v5

    .line 326
    .local v7, "Distance":I
    iget-object v9, v0, Lcom/github/junrar/unpack/Unpack;->oldDist:[I

    iget-object v10, v0, Lcom/github/junrar/unpack/Unpack;->oldDist:[I

    invoke-static {v9, v6, v10, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    iget-object v9, v0, Lcom/github/junrar/unpack/Unpack;->oldDist:[I

    aput v7, v9, v6

    .line 329
    iget-object v6, v0, Lcom/github/junrar/unpack/Unpack;->RD:Lcom/github/junrar/unpack/decode/RepDecode;

    invoke-virtual {v0, v6}, Lcom/github/junrar/unpack/Unpack;->decodeNumber(Lcom/github/junrar/unpack/decode/Decode;)I

    move-result v6

    .line 330
    .local v6, "LengthNumber":I
    sget-object v9, Lcom/github/junrar/unpack/Unpack;->LDecode:[I

    aget v9, v9, v6

    add-int/2addr v9, v8

    .line 331
    .local v9, "Length":I
    sget-object v8, Lcom/github/junrar/unpack/Unpack;->LBits:[B

    aget-byte v8, v8, v6

    move v10, v8

    .local v10, "Bits":I
    if-lez v8, :cond_22

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/Unpack;->getbits()I

    move-result v8

    rsub-int/lit8 v11, v10, 0x10

    ushr-int/2addr v8, v11

    add-int/2addr v9, v8

    .line 333
    invoke-virtual {v0, v10}, Lcom/github/junrar/unpack/Unpack;->addbits(I)V

    .line 335
    :cond_22
    invoke-direct {v0, v9, v7}, Lcom/github/junrar/unpack/Unpack;->insertLastMatch(II)V

    .line 336
    invoke-direct {v0, v9, v7}, Lcom/github/junrar/unpack/Unpack;->copyString(II)V

    .line 337
    goto/16 :goto_2

    .line 339
    .end local v5    # "DistNum":I
    .end local v6    # "LengthNumber":I
    .end local v7    # "Distance":I
    .end local v9    # "Length":I
    .end local v10    # "Bits":I
    :cond_23
    const/16 v5, 0x110

    if-ge v4, v5, :cond_25

    .line 340
    sget-object v5, Lcom/github/junrar/unpack/Unpack;->SDDecode:[I

    add-int/lit16 v4, v4, -0x107

    aget v5, v5, v4

    add-int/2addr v5, v3

    .line 341
    .local v5, "Distance":I
    sget-object v6, Lcom/github/junrar/unpack/Unpack;->SDBits:[I

    aget v6, v6, v4

    move v7, v6

    .local v7, "Bits":I
    if-lez v6, :cond_24

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/Unpack;->getbits()I

    move-result v6

    rsub-int/lit8 v9, v7, 0x10

    ushr-int/2addr v6, v9

    add-int/2addr v5, v6

    .line 343
    invoke-virtual {v0, v7}, Lcom/github/junrar/unpack/Unpack;->addbits(I)V

    .line 345
    :cond_24
    invoke-direct {v0, v5}, Lcom/github/junrar/unpack/Unpack;->insertOldDist(I)V

    .line 346
    invoke-direct {v0, v8, v5}, Lcom/github/junrar/unpack/Unpack;->insertLastMatch(II)V

    .line 347
    invoke-direct {v0, v8, v5}, Lcom/github/junrar/unpack/Unpack;->copyString(II)V

    .line 348
    goto/16 :goto_2

    .line 350
    .end local v4    # "Number":I
    .end local v5    # "Distance":I
    .end local v7    # "Bits":I
    :cond_25
    goto/16 :goto_2
.end method

.method private unstoreFile()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 122
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 124
    .local v0, "buffer":[B
    :goto_0
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack;->unpIO:Lcom/github/junrar/unpack/ComprDataIO;

    array-length v2, v0

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/github/junrar/unpack/Unpack;->destUnpSize:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/github/junrar/unpack/ComprDataIO;->unpRead([BII)I

    move-result v1

    .line 126
    .local v1, "code":I
    if-eqz v1, :cond_3

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 127
    goto :goto_2

    .line 129
    :cond_0
    int-to-long v4, v1

    iget-wide v6, p0, Lcom/github/junrar/unpack/Unpack;->destUnpSize:J

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget-wide v4, p0, Lcom/github/junrar/unpack/Unpack;->destUnpSize:J

    long-to-int v2, v4

    :goto_1
    move v1, v2

    .line 130
    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack;->unpIO:Lcom/github/junrar/unpack/ComprDataIO;

    invoke-virtual {v2, v0, v3, v1}, Lcom/github/junrar/unpack/ComprDataIO;->unpWrite([BII)V

    .line 131
    iget-wide v2, p0, Lcom/github/junrar/unpack/Unpack;->destUnpSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 132
    iget-wide v2, p0, Lcom/github/junrar/unpack/Unpack;->destUnpSize:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/github/junrar/unpack/Unpack;->destUnpSize:J

    .line 134
    .end local v1    # "code":I
    :cond_2
    goto :goto_0

    .line 136
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .line 1048
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack;->ppm:Lcom/github/junrar/unpack/ppm/ModelPPM;

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack;->ppm:Lcom/github/junrar/unpack/ppm/ModelPPM;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getSubAlloc()Lcom/github/junrar/unpack/ppm/SubAllocator;

    move-result-object v0

    .line 1050
    .local v0, "allocator":Lcom/github/junrar/unpack/ppm/SubAllocator;
    if-eqz v0, :cond_0

    .line 1051
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->stopSubAllocator()V

    .line 1054
    .end local v0    # "allocator":Lcom/github/junrar/unpack/ppm/SubAllocator;
    :cond_0
    return-void
.end method

.method public doUnpack(IZ)V
    .locals 2
    .param p1, "method"    # I
    .param p2, "solid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack;->unpIO:Lcom/github/junrar/unpack/ComprDataIO;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ComprDataIO;->getSubHeader()Lcom/github/junrar/rarfile/FileHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/junrar/rarfile/FileHeader;->getUnpMethod()B

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/github/junrar/unpack/Unpack;->unstoreFile()V

    .line 106
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 116
    :sswitch_0
    invoke-direct {p0, p2}, Lcom/github/junrar/unpack/Unpack;->unpack29(Z)V

    goto :goto_0

    .line 112
    :sswitch_1
    invoke-virtual {p0, p2}, Lcom/github/junrar/unpack/Unpack;->unpack20(Z)V

    .line 113
    goto :goto_0

    .line 108
    :sswitch_2
    invoke-virtual {p0, p2}, Lcom/github/junrar/unpack/Unpack;->unpack15(Z)V

    .line 109
    nop

    .line 119
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_2
        0x14 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
    .end sparse-switch
.end method

.method public getChar()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 1033
    iget v0, p0, Lcom/github/junrar/unpack/Unpack;->inAddr:I

    const/16 v1, 0x7fe2

    if-le v0, v1, :cond_0

    .line 1034
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack;->unpReadBuf()Z

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack;->inBuf:[B

    iget v1, p0, Lcom/github/junrar/unpack/Unpack;->inAddr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/junrar/unpack/Unpack;->inAddr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getPpmEscChar()I
    .locals 1

    .line 1040
    iget v0, p0, Lcom/github/junrar/unpack/Unpack;->ppmEscChar:I

    return v0
.end method

.method public init([B)V
    .locals 1
    .param p1, "window"    # [B

    .line 92
    if-nez p1, :cond_0

    .line 93
    const/high16 v0, 0x400000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/github/junrar/unpack/Unpack;->window:[B

    goto :goto_0

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/github/junrar/unpack/Unpack;->window:[B

    .line 97
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/junrar/unpack/Unpack;->inAddr:I

    .line 98
    invoke-virtual {p0, v0}, Lcom/github/junrar/unpack/Unpack;->unpInitData(Z)V

    .line 99
    return-void
.end method

.method public isFileExtracted()Z
    .locals 1

    .line 1020
    iget-boolean v0, p0, Lcom/github/junrar/unpack/Unpack;->fileExtracted:Z

    return v0
.end method

.method public setDestSize(J)V
    .locals 1
    .param p1, "destSize"    # J

    .line 1024
    iput-wide p1, p0, Lcom/github/junrar/unpack/Unpack;->destUnpSize:J

    .line 1025
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/junrar/unpack/Unpack;->fileExtracted:Z

    .line 1026
    return-void
.end method

.method public setPpmEscChar(I)V
    .locals 0
    .param p1, "ppmEscChar"    # I

    .line 1044
    iput p1, p0, Lcom/github/junrar/unpack/Unpack;->ppmEscChar:I

    .line 1045
    return-void
.end method

.method public setSuspended(Z)V
    .locals 0
    .param p1, "suspended"    # Z

    .line 1029
    iput-boolean p1, p0, Lcom/github/junrar/unpack/Unpack;->suspended:Z

    .line 1030
    return-void
.end method

.method protected unpInitData(Z)V
    .locals 3
    .param p1, "solid"    # Z

    .line 605
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 606
    iput-boolean v0, p0, Lcom/github/junrar/unpack/Unpack;->tablesRead:Z

    .line 607
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack;->oldDist:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 609
    iput v0, p0, Lcom/github/junrar/unpack/Unpack;->oldDistPtr:I

    .line 610
    iput v0, p0, Lcom/github/junrar/unpack/Unpack;->lastDist:I

    .line 611
    iput v0, p0, Lcom/github/junrar/unpack/Unpack;->lastLength:I

    .line 613
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack;->unpOldTable:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 615
    iput v0, p0, Lcom/github/junrar/unpack/Unpack;->unpPtr:I

    .line 616
    iput v0, p0, Lcom/github/junrar/unpack/Unpack;->wrPtr:I

    .line 617
    const/4 v1, 0x2

    iput v1, p0, Lcom/github/junrar/unpack/Unpack;->ppmEscChar:I

    .line 619
    invoke-direct {p0}, Lcom/github/junrar/unpack/Unpack;->initFilters()V

    .line 621
    :cond_0
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack;->InitBitInput()V

    .line 622
    iput-boolean v0, p0, Lcom/github/junrar/unpack/Unpack;->ppmError:Z

    .line 623
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/github/junrar/unpack/Unpack;->writtenFileSize:J

    .line 624
    iput v0, p0, Lcom/github/junrar/unpack/Unpack;->readTop:I

    .line 625
    iput v0, p0, Lcom/github/junrar/unpack/Unpack;->readBorder:I

    .line 626
    invoke-virtual {p0, p1}, Lcom/github/junrar/unpack/Unpack;->unpInitData20(Z)V

    .line 627
    return-void
.end method
