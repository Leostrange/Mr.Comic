.class public Lcom/github/junrar/unpack/vm/RarVM;
.super Lcom/github/junrar/unpack/vm/BitInput;
.source "RarVM.java"


# static fields
.field private static final UINT_MASK:J = -0x1L

.field public static final VM_FIXEDGLOBALSIZE:I = 0x40

.field public static final VM_GLOBALMEMADDR:I = 0x3c000

.field public static final VM_GLOBALMEMSIZE:I = 0x2000

.field public static final VM_MEMMASK:I = 0x3ffff

.field public static final VM_MEMSIZE:I = 0x40000

.field private static final regCount:I = 0x8


# instance fields
.field private IP:I

.field private final R:[I

.field private codeSize:I

.field private flags:I

.field private maxOpCount:I

.field private mem:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/github/junrar/unpack/vm/BitInput;-><init>()V

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    .line 55
    const v0, 0x17d7840

    iput v0, p0, Lcom/github/junrar/unpack/vm/RarVM;->maxOpCount:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    .line 63
    return-void
.end method

.method private ExecuteCode(Ljava/util/List;I)Z
    .locals 17
    .param p2, "cmdCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/junrar/unpack/vm/VMPreparedCommand;",
            ">;I)Z"
        }
    .end annotation

    .line 223
    .local p1, "preparedCode":Ljava/util/List;, "Ljava/util/List<Lcom/github/junrar/unpack/vm/VMPreparedCommand;>;"
    move-object/from16 v0, p0

    const v1, 0x17d7840

    iput v1, v0, Lcom/github/junrar/unpack/vm/RarVM;->maxOpCount:I

    .line 224
    move/from16 v1, p2

    iput v1, v0, Lcom/github/junrar/unpack/vm/RarVM;->codeSize:I

    .line 225
    const/4 v2, 0x0

    iput v2, v0, Lcom/github/junrar/unpack/vm/RarVM;->IP:I

    .line 228
    :goto_0
    iget v3, v0, Lcom/github/junrar/unpack/vm/RarVM;->IP:I

    move-object/from16 v4, p1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/junrar/unpack/vm/VMPreparedCommand;

    .line 229
    .local v3, "cmd":Lcom/github/junrar/unpack/vm/VMPreparedCommand;
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getOperand(Lcom/github/junrar/unpack/vm/VMPreparedOperand;)I

    move-result v5

    .line 230
    .local v5, "op1":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp2()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getOperand(Lcom/github/junrar/unpack/vm/VMPreparedOperand;)I

    move-result v6

    .line 231
    .local v6, "op2":I
    sget-object v7, Lcom/github/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$github$junrar$unpack$vm$VMCommands:[I

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/github/junrar/unpack/vm/VMCommands;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMCommands;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/16 v8, 0x8

    const-wide/16 v9, -0x2

    const v13, 0x3ffff

    const/4 v14, 0x7

    const-wide/16 v15, -0x1

    const/4 v11, 0x1

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_20

    .line 621
    :pswitch_0
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v7

    .line 622
    invoke-virtual {v7}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->getData()I

    move-result v7

    .line 621
    invoke-static {v7}, Lcom/github/junrar/unpack/vm/VMStandardFilters;->findFilter(I)Lcom/github/junrar/unpack/vm/VMStandardFilters;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/github/junrar/unpack/vm/RarVM;->ExecuteStandardFilter(Lcom/github/junrar/unpack/vm/VMStandardFilters;)V

    .line 623
    goto/16 :goto_20

    .line 613
    :pswitch_1
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v7, v7, v14

    const/high16 v8, 0x40000

    if-lt v7, v8, :cond_0

    .line 614
    return v11

    .line 616
    :cond_0
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v8, v8, v14

    and-int/2addr v8, v13

    invoke-direct {v0, v2, v7, v8}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setIP(I)Z

    .line 617
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v8, v7, v14

    add-int/lit8 v8, v8, 0x4

    aput v8, v7, v14

    .line 618
    goto :goto_0

    .line 597
    :pswitch_2
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 598
    .local v7, "value1":I
    iget v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    and-int/2addr v8, v9

    .line 599
    .local v8, "FC":I
    int-to-long v9, v7

    .line 600
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v12

    iget-object v13, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v12, v13, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v12

    int-to-long v12, v12

    sub-long v12, v15, v12

    and-long/2addr v9, v12

    int-to-long v12, v8

    sub-long v12, v15, v12

    and-long/2addr v9, v12

    and-long/2addr v9, v15

    long-to-int v9, v9

    .line 602
    .local v9, "result":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 603
    and-int/lit16 v9, v9, 0xff

    .line 605
    :cond_1
    if-gt v9, v7, :cond_4

    if-ne v9, v7, :cond_2

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    if-nez v9, :cond_3

    sget-object v10, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 606
    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v10

    goto :goto_1

    :cond_3
    sget-object v10, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 607
    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v10

    and-int/2addr v10, v9

    :goto_1
    or-int/2addr v10, v2

    goto :goto_3

    .line 605
    :cond_4
    :goto_2
    move v10, v11

    .line 607
    :goto_3
    iput v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 608
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v10

    iget-object v12, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v10, v12, v5, v9}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 610
    .end local v7    # "value1":I
    .end local v8    # "FC":I
    .end local v9    # "result":I
    goto/16 :goto_20

    .line 581
    :pswitch_3
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 582
    .restart local v7    # "value1":I
    iget v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    and-int/2addr v8, v9

    .line 583
    .restart local v8    # "FC":I
    int-to-long v9, v7

    .line 584
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v12

    iget-object v13, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v12, v13, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v12, v15

    and-long/2addr v9, v12

    int-to-long v12, v8

    add-long/2addr v12, v15

    and-long/2addr v9, v12

    and-long/2addr v9, v15

    long-to-int v9, v9

    .line 586
    .restart local v9    # "result":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 587
    and-int/lit16 v9, v9, 0xff

    .line 590
    :cond_5
    if-lt v9, v7, :cond_8

    if-ne v9, v7, :cond_6

    if-eqz v8, :cond_6

    goto :goto_5

    :cond_6
    if-nez v9, :cond_7

    sget-object v10, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 591
    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v10

    goto :goto_4

    :cond_7
    sget-object v10, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 592
    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v10

    and-int/2addr v10, v9

    :goto_4
    or-int/2addr v10, v2

    goto :goto_6

    .line 590
    :cond_8
    :goto_5
    move v10, v11

    .line 592
    :goto_6
    iput v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 593
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v10

    iget-object v12, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v10, v12, v5, v9}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 595
    .end local v7    # "value1":I
    .end local v8    # "FC":I
    .end local v9    # "result":I
    goto/16 :goto_20

    .line 573
    :pswitch_4
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 574
    .local v7, "divider":I
    if-eqz v7, :cond_9

    .line 575
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    div-int/2addr v8, v7

    .line 576
    .local v8, "result":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v9

    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v9, v10, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 579
    .end local v7    # "divider":I
    .end local v8    # "result":I
    :cond_9
    goto/16 :goto_20

    .line 566
    :pswitch_5
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    int-to-long v7, v7

    .line 568
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v9

    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v9, v10, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v9

    int-to-long v9, v9

    mul-long/2addr v9, v15

    and-long/2addr v7, v9

    and-long/2addr v7, v15

    and-long/2addr v7, v15

    long-to-int v7, v7

    .line 569
    .local v7, "result":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v5, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 571
    .end local v7    # "result":I
    goto/16 :goto_20

    .line 559
    :pswitch_6
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 560
    .local v7, "value1":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v10

    iget-object v12, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v10, v12, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v10

    invoke-direct {v0, v8, v9, v5, v10}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 562
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v6, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 564
    .end local v7    # "value1":I
    goto/16 :goto_20

    .line 556
    :pswitch_7
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v11, v8, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    int-to-byte v8, v8

    invoke-direct {v0, v2, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 557
    goto/16 :goto_20

    .line 553
    :pswitch_8
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v11, v8, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    invoke-direct {v0, v2, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 554
    goto/16 :goto_20

    .line 549
    :pswitch_9
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v8, v8, v14

    and-int/2addr v8, v13

    invoke-direct {v0, v2, v7, v8}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    iput v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 550
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v8, v7, v14

    add-int/lit8 v8, v8, 0x4

    aput v8, v7, v14

    .line 551
    goto/16 :goto_20

    .line 545
    :pswitch_a
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v8, v7, v14

    add-int/lit8 v8, v8, -0x4

    aput v8, v7, v14

    .line 546
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v8, v8, v14

    and-int/2addr v8, v13

    iget v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    invoke-direct {v0, v2, v7, v8, v9}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 547
    goto/16 :goto_20

    .line 539
    :pswitch_b
    const/4 v7, 0x0

    .local v7, "i":I
    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v9, v9, v14

    .local v9, "SP":I
    :goto_7
    if-ge v7, v8, :cond_a

    .line 540
    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    rsub-int/lit8 v12, v7, 0x7

    iget-object v14, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    and-int v15, v9, v13

    invoke-direct {v0, v2, v14, v15}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v14

    aput v14, v10, v12

    .line 539
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, 0x4

    goto :goto_7

    .line 543
    .end local v7    # "i":I
    .end local v9    # "SP":I
    :cond_a
    goto/16 :goto_20

    .line 532
    :pswitch_c
    const/4 v7, 0x0

    .restart local v7    # "i":I
    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v9, v9, v14

    add-int/lit8 v9, v9, -0x4

    .restart local v9    # "SP":I
    :goto_8
    if-ge v7, v8, :cond_b

    .line 533
    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    and-int v12, v9, v13

    iget-object v15, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v15, v15, v7

    invoke-direct {v0, v2, v10, v12, v15}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 532
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, -0x4

    goto :goto_8

    .line 535
    .end local v7    # "i":I
    .end local v9    # "SP":I
    :cond_b
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v8, v7, v14

    add-int/lit8 v8, v8, -0x20

    aput v8, v7, v14

    .line 537
    goto/16 :goto_20

    .line 529
    :pswitch_d
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    neg-int v8, v8

    invoke-direct {v0, v2, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 530
    goto/16 :goto_20

    .line 526
    :pswitch_e
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v11, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    neg-int v8, v8

    invoke-direct {v0, v11, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 527
    goto/16 :goto_20

    .line 517
    :pswitch_f
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    neg-int v7, v7

    .line 518
    .local v7, "result":I
    if-nez v7, :cond_c

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    goto :goto_9

    :cond_c
    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 519
    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 520
    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    and-int/2addr v9, v7

    or-int/2addr v8, v9

    :goto_9
    iput v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 521
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v5, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 523
    .end local v7    # "result":I
    goto/16 :goto_20

    .line 507
    :pswitch_10
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 508
    .local v7, "value1":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    .line 509
    .local v8, "value2":I
    ushr-int v9, v7, v8

    .line 510
    .local v9, "result":I
    if-nez v9, :cond_d

    sget-object v10, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v10

    goto :goto_a

    :cond_d
    sget-object v10, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 511
    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v10

    and-int/2addr v10, v9

    :goto_a
    add-int/lit8 v12, v8, -0x1

    ushr-int v12, v7, v12

    sget-object v13, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 512
    invoke-virtual {v13}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    and-int/2addr v12, v13

    or-int/2addr v10, v12

    iput v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 513
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v10

    iget-object v12, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v10, v12, v5, v9}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 515
    .end local v7    # "value1":I
    .end local v8    # "value2":I
    .end local v9    # "result":I
    goto/16 :goto_20

    .line 497
    :pswitch_11
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 498
    .restart local v7    # "value1":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    .line 499
    .restart local v8    # "value2":I
    ushr-int v9, v7, v8

    .line 500
    .restart local v9    # "result":I
    if-nez v9, :cond_e

    sget-object v10, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v10

    goto :goto_b

    :cond_e
    sget-object v10, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 501
    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v10

    and-int/2addr v10, v9

    :goto_b
    add-int/lit8 v12, v8, -0x1

    ushr-int v12, v7, v12

    sget-object v13, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 502
    invoke-virtual {v13}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    and-int/2addr v12, v13

    or-int/2addr v10, v12

    iput v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 503
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v10

    iget-object v12, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v10, v12, v5, v9}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 505
    .end local v7    # "value1":I
    .end local v8    # "value2":I
    .end local v9    # "result":I
    goto/16 :goto_20

    .line 485
    :pswitch_12
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 486
    .restart local v7    # "value1":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    .line 487
    .restart local v8    # "value2":I
    shl-int v9, v7, v8

    .line 488
    .restart local v9    # "result":I
    if-nez v9, :cond_f

    sget-object v10, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v10

    goto :goto_c

    :cond_f
    sget-object v10, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 489
    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v10

    and-int/2addr v10, v9

    :goto_c
    add-int/lit8 v12, v8, -0x1

    shl-int v12, v7, v12

    const/high16 v13, -0x80000000

    and-int/2addr v12, v13

    if-eqz v12, :cond_10

    sget-object v12, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 491
    invoke-virtual {v12}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v12

    goto :goto_d

    :cond_10
    move v12, v2

    :goto_d
    or-int/2addr v10, v12

    iput v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 493
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v10

    iget-object v12, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v10, v12, v5, v9}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 495
    .end local v7    # "value1":I
    .end local v8    # "value2":I
    .end local v9    # "result":I
    goto/16 :goto_20

    .line 481
    :pswitch_13
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    .line 482
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v9

    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    .line 481
    invoke-direct {v0, v9, v10, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v9

    not-int v9, v9

    invoke-direct {v0, v7, v8, v5, v9}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 483
    goto/16 :goto_20

    .line 476
    :pswitch_14
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v8, v7, v14

    add-int/lit8 v8, v8, -0x4

    aput v8, v7, v14

    .line 477
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v8, v8, v14

    and-int/2addr v8, v13

    iget v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->IP:I

    add-int/2addr v9, v11

    invoke-direct {v0, v2, v7, v8, v9}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 478
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setIP(I)Z

    .line 479
    goto/16 :goto_0

    .line 471
    :pswitch_15
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v9, v9, v14

    and-int/2addr v9, v13

    invoke-direct {v0, v2, v8, v9}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    invoke-direct {v0, v2, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 473
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v8, v7, v14

    add-int/lit8 v8, v8, 0x4

    aput v8, v7, v14

    .line 474
    goto/16 :goto_20

    .line 466
    :pswitch_16
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v8, v7, v14

    add-int/lit8 v8, v8, -0x4

    aput v8, v7, v14

    .line 467
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v8, v8, v14

    and-int/2addr v8, v13

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v9, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v9

    invoke-direct {v0, v2, v7, v8, v9}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 469
    goto/16 :goto_20

    .line 460
    :pswitch_17
    iget v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v7, v8

    if-nez v7, :cond_26

    .line 461
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setIP(I)Z

    .line 462
    goto/16 :goto_0

    .line 454
    :pswitch_18
    iget v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    or-int/2addr v8, v9

    and-int/2addr v7, v8

    if-nez v7, :cond_26

    .line 455
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setIP(I)Z

    .line 456
    goto/16 :goto_0

    .line 448
    :pswitch_19
    iget v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    or-int/2addr v8, v9

    and-int/2addr v7, v8

    if-eqz v7, :cond_26

    .line 449
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setIP(I)Z

    .line 450
    goto/16 :goto_0

    .line 442
    :pswitch_1a
    iget v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_26

    .line 443
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setIP(I)Z

    .line 444
    goto/16 :goto_0

    .line 436
    :pswitch_1b
    iget v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v7, v8

    if-nez v7, :cond_26

    .line 437
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setIP(I)Z

    .line 438
    goto/16 :goto_0

    .line 430
    :pswitch_1c
    iget v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_26

    .line 431
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setIP(I)Z

    .line 432
    goto/16 :goto_0

    .line 423
    :pswitch_1d
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 424
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    and-int/2addr v7, v8

    .line 425
    .local v7, "result":I
    if-nez v7, :cond_11

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    goto :goto_e

    :cond_11
    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 426
    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v8, v7

    :goto_e
    iput v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 428
    .end local v7    # "result":I
    goto/16 :goto_20

    .line 415
    :pswitch_1e
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 416
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    or-int/2addr v7, v8

    .line 417
    .restart local v7    # "result":I
    if-nez v7, :cond_12

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    goto :goto_f

    :cond_12
    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 418
    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v8, v7

    :goto_f
    iput v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 419
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v5, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 421
    .end local v7    # "result":I
    goto/16 :goto_20

    .line 407
    :pswitch_1f
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 408
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    and-int/2addr v7, v8

    .line 409
    .restart local v7    # "result":I
    if-nez v7, :cond_13

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    goto :goto_10

    :cond_13
    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 410
    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v8, v7

    :goto_10
    iput v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 411
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v5, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 413
    .end local v7    # "result":I
    goto/16 :goto_20

    .line 399
    :pswitch_20
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 400
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    xor-int/2addr v7, v8

    .line 401
    .restart local v7    # "result":I
    if-nez v7, :cond_14

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    goto :goto_11

    :cond_14
    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 402
    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v8, v7

    :goto_11
    iput v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 403
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v5, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 405
    .end local v7    # "result":I
    goto/16 :goto_20

    .line 396
    :pswitch_21
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setIP(I)Z

    .line 397
    goto/16 :goto_0

    .line 391
    :pswitch_22
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    int-to-long v12, v8

    and-long v8, v12, v9

    long-to-int v8, v8

    invoke-direct {v0, v2, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 393
    goto/16 :goto_20

    .line 384
    :pswitch_23
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    .line 388
    invoke-direct {v0, v11, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    int-to-long v12, v8

    and-long v8, v12, v9

    long-to-int v8, v8

    .line 384
    invoke-direct {v0, v11, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 389
    goto/16 :goto_20

    .line 376
    :pswitch_24
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v9

    long-to-int v7, v7

    .line 377
    .restart local v7    # "result":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v5, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 378
    if-nez v7, :cond_15

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    goto :goto_12

    :cond_15
    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 379
    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v8, v7

    :goto_12
    iput v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 381
    .end local v7    # "result":I
    goto/16 :goto_20

    .line 371
    :pswitch_25
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    int-to-long v8, v8

    const-wide/16 v12, 0x0

    and-long/2addr v8, v12

    long-to-int v8, v8

    invoke-direct {v0, v2, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 373
    goto/16 :goto_20

    .line 364
    :pswitch_26
    const-wide/16 v12, 0x0

    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    .line 368
    invoke-direct {v0, v11, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    int-to-long v8, v8

    and-long/2addr v8, v12

    long-to-int v8, v8

    .line 364
    invoke-direct {v0, v11, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 369
    goto/16 :goto_20

    .line 352
    :pswitch_27
    const-wide/16 v12, 0x0

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v12

    long-to-int v7, v7

    .line 353
    .restart local v7    # "result":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 354
    and-int/lit16 v7, v7, 0xff

    .line 357
    :cond_16
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v5, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 358
    if-nez v7, :cond_17

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    goto :goto_13

    :cond_17
    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 359
    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v8, v7

    :goto_13
    iput v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 361
    .end local v7    # "result":I
    goto/16 :goto_20

    .line 346
    :pswitch_28
    iget v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v7, v8

    if-nez v7, :cond_26

    .line 347
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setIP(I)Z

    .line 348
    goto/16 :goto_0

    .line 340
    :pswitch_29
    iget v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_26

    .line 341
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setIP(I)Z

    .line 342
    goto/16 :goto_0

    .line 331
    :pswitch_2a
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    .line 335
    invoke-direct {v0, v2, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    int-to-long v8, v8

    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    .line 336
    invoke-direct {v0, v2, v10, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v10

    int-to-long v12, v10

    sub-long v12, v15, v12

    and-long/2addr v8, v12

    and-long/2addr v8, v15

    long-to-int v8, v8

    .line 331
    invoke-direct {v0, v2, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 337
    goto/16 :goto_20

    .line 326
    :pswitch_2b
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    .line 327
    invoke-direct {v0, v11, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    int-to-long v8, v8

    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    .line 328
    invoke-direct {v0, v11, v10, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v10

    int-to-long v12, v10

    sub-long v12, v15, v12

    and-long/2addr v8, v12

    and-long/2addr v8, v15

    long-to-int v8, v8

    .line 326
    invoke-direct {v0, v11, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 329
    goto/16 :goto_20

    .line 315
    :pswitch_2c
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 316
    .local v7, "value1":I
    int-to-long v8, v7

    .line 317
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v10

    iget-object v12, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v10, v12, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v10

    int-to-long v12, v10

    sub-long v12, v15, v12

    and-long/2addr v8, v12

    and-long/2addr v8, v15

    long-to-int v8, v8

    .line 318
    .local v8, "result":I
    if-nez v8, :cond_18

    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    goto :goto_14

    :cond_18
    if-le v8, v7, :cond_19

    move v9, v11

    goto :goto_14

    :cond_19
    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 320
    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    and-int/2addr v9, v8

    or-int/2addr v9, v2

    :goto_14
    iput v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 321
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v9

    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v9, v10, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 323
    .end local v7    # "value1":I
    .end local v8    # "result":I
    goto/16 :goto_20

    .line 306
    :pswitch_2d
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    .line 310
    invoke-direct {v0, v2, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    int-to-long v8, v8

    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    .line 311
    invoke-direct {v0, v2, v10, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v10

    int-to-long v12, v10

    add-long/2addr v12, v15

    and-long/2addr v8, v12

    and-long/2addr v8, v15

    long-to-int v8, v8

    .line 306
    invoke-direct {v0, v2, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 312
    goto/16 :goto_20

    .line 301
    :pswitch_2e
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    .line 302
    invoke-direct {v0, v11, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    int-to-long v8, v8

    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    .line 303
    invoke-direct {v0, v11, v10, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v10

    int-to-long v12, v10

    add-long/2addr v12, v15

    and-long/2addr v8, v12

    and-long/2addr v8, v15

    long-to-int v8, v8

    .line 301
    invoke-direct {v0, v11, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 304
    goto/16 :goto_20

    .line 280
    :pswitch_2f
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 281
    .restart local v7    # "value1":I
    int-to-long v8, v7

    .line 282
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v10

    iget-object v12, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    .line 281
    invoke-direct {v0, v10, v12, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v10

    int-to-long v12, v10

    add-long/2addr v8, v12

    and-long/2addr v8, v15

    long-to-int v8, v8

    .line 283
    .restart local v8    # "result":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 284
    and-int/lit16 v8, v8, 0xff

    .line 285
    if-ge v8, v7, :cond_1a

    move v9, v11

    goto :goto_16

    :cond_1a
    if-nez v8, :cond_1b

    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 286
    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    goto :goto_15

    :cond_1b
    and-int/lit16 v9, v8, 0x80

    if-eqz v9, :cond_1c

    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 288
    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    goto :goto_15

    :cond_1c
    move v9, v2

    :goto_15
    or-int/2addr v9, v2

    :goto_16
    iput v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    goto :goto_19

    .line 292
    :cond_1d
    if-ge v8, v7, :cond_1e

    move v9, v11

    goto :goto_18

    :cond_1e
    if-nez v8, :cond_1f

    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 293
    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    goto :goto_17

    :cond_1f
    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 294
    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    and-int/2addr v9, v8

    :goto_17
    or-int/2addr v9, v2

    :goto_18
    iput v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 296
    :goto_19
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v9

    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v9, v10, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 298
    .end local v7    # "value1":I
    .end local v8    # "result":I
    goto/16 :goto_20

    .line 268
    :pswitch_30
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 269
    .restart local v7    # "value1":I
    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v8, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    sub-int v8, v7, v8

    .line 270
    .restart local v8    # "result":I
    if-nez v8, :cond_20

    .line 271
    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    iput v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    goto :goto_1b

    .line 273
    :cond_20
    if-le v8, v7, :cond_21

    move v9, v11

    goto :goto_1a

    :cond_21
    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 274
    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    and-int/2addr v9, v8

    or-int/2addr v9, v2

    :goto_1a
    iput v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 277
    .end local v7    # "value1":I
    .end local v8    # "result":I
    :goto_1b
    goto/16 :goto_20

    .line 257
    :pswitch_31
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v11, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 258
    .restart local v7    # "value1":I
    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v11, v8, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    sub-int v8, v7, v8

    .line 259
    .restart local v8    # "result":I
    if-nez v8, :cond_22

    .line 260
    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    iput v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    goto :goto_1d

    .line 262
    :cond_22
    if-le v8, v7, :cond_23

    move v9, v11

    goto :goto_1c

    :cond_23
    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 263
    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    and-int/2addr v9, v8

    or-int/2addr v9, v2

    :goto_1c
    iput v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 266
    .end local v7    # "value1":I
    .end local v8    # "result":I
    :goto_1d
    goto :goto_20

    .line 244
    :pswitch_32
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 245
    .restart local v7    # "value1":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    sub-int v8, v7, v8

    .line 247
    .restart local v8    # "result":I
    if-nez v8, :cond_24

    .line 248
    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    iput v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    goto :goto_1f

    .line 250
    :cond_24
    if-le v8, v7, :cond_25

    move v9, v11

    goto :goto_1e

    :cond_25
    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    .line 251
    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    and-int/2addr v9, v8

    or-int/2addr v9, v2

    :goto_1e
    iput v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 254
    .end local v7    # "value1":I
    .end local v8    # "result":I
    :goto_1f
    goto :goto_20

    .line 240
    :pswitch_33
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v8, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    invoke-direct {v0, v2, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 241
    goto :goto_20

    .line 237
    :pswitch_34
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v11, v8, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    invoke-direct {v0, v11, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 238
    goto :goto_20

    .line 233
    :pswitch_35
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v9

    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v9, v10, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v9

    invoke-direct {v0, v7, v8, v5, v9}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 235
    nop

    .line 627
    :cond_26
    :goto_20
    iget v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->IP:I

    add-int/2addr v7, v11

    iput v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->IP:I

    .line 628
    iget v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->maxOpCount:I

    sub-int/2addr v7, v11

    iput v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->maxOpCount:I

    .line 629
    .end local v3    # "cmd":Lcom/github/junrar/unpack/vm/VMPreparedCommand;
    .end local v5    # "op1":I
    .end local v6    # "op2":I
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ExecuteStandardFilter(Lcom/github/junrar/unpack/vm/VMStandardFilters;)V
    .locals 45
    .param p1, "filterType"    # Lcom/github/junrar/unpack/vm/VMStandardFilters;

    .line 915
    move-object/from16 v0, p0

    sget-object v1, Lcom/github/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$github$junrar$unpack$vm$VMStandardFilters:[I

    invoke-virtual/range {p1 .. p1}, Lcom/github/junrar/unpack/vm/VMStandardFilters;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const v2, 0x3c000

    const v7, 0x1e000

    const v8, 0x3c020

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/16 v16, 0x1

    packed-switch v1, :pswitch_data_0

    move-object/from16 v6, p1

    goto/16 :goto_16

    .line 1152
    :pswitch_0
    iget-object v1, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v1, v1, v14

    .local v1, "dataSize":I
    const/4 v2, 0x0

    .local v2, "srcPos":I
    move v3, v1

    .line 1153
    .local v3, "destPos":I
    if-lt v1, v7, :cond_0

    .line 1154
    move-object/from16 v6, p1

    goto/16 :goto_16

    .line 1156
    :cond_0
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1157
    iget-object v4, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "srcPos":I
    .local v5, "srcPos":I
    aget-byte v2, v4, v2

    .line 1158
    .local v2, "curByte":B
    if-ne v2, v13, :cond_1

    iget-object v4, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "srcPos":I
    .local v6, "srcPos":I
    aget-byte v4, v4, v5

    move v2, v4

    if-eq v4, v13, :cond_2

    .line 1159
    add-int/lit8 v4, v2, -0x20

    int-to-byte v2, v4

    goto :goto_1

    .line 1158
    .end local v6    # "srcPos":I
    .restart local v5    # "srcPos":I
    :cond_1
    move v6, v5

    .line 1161
    .end local v5    # "srcPos":I
    .restart local v6    # "srcPos":I
    :cond_2
    :goto_1
    iget-object v4, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "destPos":I
    .local v5, "destPos":I
    aput-byte v2, v4, v3

    .line 1162
    .end local v2    # "curByte":B
    move v3, v5

    move v2, v6

    goto :goto_0

    .line 1163
    .end local v5    # "destPos":I
    .end local v6    # "srcPos":I
    .local v2, "srcPos":I
    .restart local v3    # "destPos":I
    :cond_3
    iget-object v4, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    const v5, 0x3c01c

    sub-int v6, v3, v1

    invoke-direct {v0, v15, v4, v5, v6}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 1164
    iget-object v4, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v15, v4, v8, v1}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    move-object/from16 v6, p1

    goto/16 :goto_16

    .line 1064
    .end local v1    # "dataSize":I
    .end local v2    # "srcPos":I
    .end local v3    # "destPos":I
    :pswitch_1
    iget-object v1, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v1, v1, v14

    .restart local v1    # "dataSize":I
    iget-object v2, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v2, v2, v15

    .line 1065
    .local v2, "channels":I
    const/16 v17, 0x0

    .line 1066
    .local v17, "srcPos":I
    move/from16 v18, v1

    .line 1068
    .local v18, "destDataPos":I
    iget-object v11, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v15, v11, v8, v1}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 1069
    if-lt v1, v7, :cond_4

    .line 1070
    move-object/from16 v6, p1

    goto/16 :goto_16

    .line 1072
    :cond_4
    const/4 v7, 0x0

    .local v7, "curChannel":I
    :goto_2
    if-ge v7, v2, :cond_9

    .line 1073
    const-wide/16 v20, 0x0

    .line 1074
    .local v20, "prevByte":J
    const-wide/16 v22, 0x0

    .line 1075
    .local v22, "prevDelta":J
    const/4 v8, 0x7

    new-array v8, v8, [J

    .line 1076
    .local v8, "Dif":[J
    const/4 v11, 0x0

    .local v11, "D1":I
    const/16 v24, 0x0

    .line 1077
    .local v24, "D2":I
    const/16 v25, 0x0

    .local v25, "K1":I
    const/16 v26, 0x0

    .local v26, "K2":I
    const/16 v27, 0x0

    .line 1079
    .local v27, "K3":I
    move/from16 v28, v7

    .local v28, "i":I
    const/16 v29, 0x0

    move-wide/from16 v9, v22

    move/from16 v4, v25

    move/from16 v3, v26

    move/from16 v14, v27

    move/from16 v13, v28

    .end local v22    # "prevDelta":J
    .end local v25    # "K1":I
    .end local v26    # "K2":I
    .end local v27    # "K3":I
    .end local v28    # "i":I
    .local v3, "K2":I
    .local v4, "K1":I
    .local v9, "prevDelta":J
    .local v13, "i":I
    .local v14, "K3":I
    .local v29, "byteCount":I
    :goto_3
    if-ge v13, v1, :cond_8

    .line 1080
    move/from16 v30, v24

    .line 1081
    .local v30, "D3":I
    long-to-int v15, v9

    sub-int v24, v15, v11

    .line 1082
    long-to-int v11, v9

    .line 1084
    const-wide/16 v31, 0x8

    mul-long v31, v31, v20

    mul-int v15, v4, v11

    int-to-long v5, v15

    add-long v31, v31, v5

    mul-int v5, v3, v24

    int-to-long v5, v5

    add-long v31, v31, v5

    mul-int v5, v14, v30

    int-to-long v5, v5

    add-long v31, v31, v5

    .line 1085
    .local v31, "predicted":J
    ushr-long v5, v31, v12

    const-wide/16 v33, 0xff

    and-long v5, v5, v33

    .line 1087
    .end local v31    # "predicted":J
    .local v5, "predicted":J
    iget-object v15, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v31, v17, 0x1

    .end local v17    # "srcPos":I
    .local v31, "srcPos":I
    aget-byte v15, v15, v17

    and-int/lit16 v15, v15, 0xff

    move/from16 v35, v13

    .end local v13    # "i":I
    .local v35, "i":I
    int-to-long v12, v15

    .line 1089
    .local v12, "curByte":J
    sub-long v36, v5, v12

    const-wide/16 v38, -0x1

    and-long v5, v36, v38

    .line 1090
    iget-object v15, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int v17, v18, v35

    move/from16 v36, v1

    .end local v1    # "dataSize":I
    .local v36, "dataSize":I
    long-to-int v1, v5

    int-to-byte v1, v1

    aput-byte v1, v15, v17

    .line 1091
    move-wide/from16 v37, v9

    .end local v9    # "prevDelta":J
    .local v37, "prevDelta":J
    sub-long v9, v5, v20

    long-to-int v1, v9

    int-to-byte v1, v1

    int-to-long v9, v1

    .line 1092
    .end local v37    # "prevDelta":J
    .restart local v9    # "prevDelta":J
    move-wide/from16 v20, v5

    .line 1094
    long-to-int v1, v12

    int-to-byte v1, v1

    const/4 v15, 0x3

    shl-int/2addr v1, v15

    .line 1096
    .local v1, "D":I
    const/4 v15, 0x0

    aget-wide v37, v8, v15

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v15

    move-wide/from16 v39, v5

    .end local v5    # "predicted":J
    .local v39, "predicted":J
    int-to-long v5, v15

    add-long v37, v37, v5

    const/4 v5, 0x0

    aput-wide v37, v8, v5

    .line 1097
    aget-wide v5, v8, v16

    sub-int v15, v1, v11

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    move-wide/from16 v37, v9

    .end local v9    # "prevDelta":J
    .restart local v37    # "prevDelta":J
    int-to-long v9, v15

    add-long/2addr v5, v9

    aput-wide v5, v8, v16

    .line 1098
    const/4 v5, 0x2

    aget-wide v9, v8, v5

    add-int v6, v1, v11

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    move v15, v11

    move-wide/from16 v41, v12

    .end local v11    # "D1":I
    .end local v12    # "curByte":J
    .local v15, "D1":I
    .local v41, "curByte":J
    int-to-long v11, v6

    add-long/2addr v9, v11

    aput-wide v9, v8, v5

    .line 1099
    const/4 v5, 0x3

    aget-wide v9, v8, v5

    sub-int v6, v1, v24

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-long v11, v6

    add-long/2addr v9, v11

    aput-wide v9, v8, v5

    .line 1100
    const/4 v5, 0x4

    aget-wide v9, v8, v5

    add-int v6, v1, v24

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-long v11, v6

    add-long/2addr v9, v11

    aput-wide v9, v8, v5

    .line 1101
    const/4 v5, 0x5

    aget-wide v9, v8, v5

    sub-int v6, v1, v30

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-long v11, v6

    add-long/2addr v9, v11

    aput-wide v9, v8, v5

    .line 1102
    const/4 v5, 0x6

    aget-wide v9, v8, v5

    add-int v6, v1, v30

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-long v11, v6

    add-long/2addr v9, v11

    aput-wide v9, v8, v5

    .line 1104
    and-int/lit8 v5, v29, 0x1f

    if-nez v5, :cond_7

    .line 1105
    const/4 v5, 0x0

    aget-wide v9, v8, v5

    .local v9, "minDif":J
    const-wide/16 v11, 0x0

    .line 1106
    .local v11, "numMinDif":J
    const-wide/16 v22, 0x0

    aput-wide v22, v8, v5

    .line 1107
    const/4 v5, 0x1

    .local v5, "j":I
    :goto_4
    array-length v6, v8

    if-ge v5, v6, :cond_6

    .line 1108
    aget-wide v43, v8, v5

    cmp-long v6, v43, v9

    if-gez v6, :cond_5

    .line 1109
    aget-wide v9, v8, v5

    .line 1110
    int-to-long v11, v5

    .line 1112
    :cond_5
    const-wide/16 v22, 0x0

    aput-wide v22, v8, v5

    .line 1107
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1114
    .end local v5    # "j":I
    :cond_6
    long-to-int v5, v11

    const/16 v6, -0x10

    packed-switch v5, :pswitch_data_1

    goto :goto_5

    .line 1141
    :pswitch_2
    const/16 v5, 0x10

    if-ge v14, v5, :cond_7

    .line 1142
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 1136
    :pswitch_3
    if-lt v14, v6, :cond_7

    .line 1137
    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    .line 1131
    :pswitch_4
    const/16 v5, 0x10

    if-ge v3, v5, :cond_7

    .line 1132
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1126
    :pswitch_5
    if-lt v3, v6, :cond_7

    .line 1127
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 1121
    :pswitch_6
    const/16 v5, 0x10

    if-ge v4, v5, :cond_7

    .line 1122
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1116
    :pswitch_7
    if-lt v4, v6, :cond_7

    .line 1117
    add-int/lit8 v4, v4, -0x1

    .line 1079
    .end local v1    # "D":I
    .end local v9    # "minDif":J
    .end local v11    # "numMinDif":J
    .end local v39    # "predicted":J
    .end local v41    # "curByte":J
    :cond_7
    :goto_5
    add-int v13, v35, v2

    .end local v35    # "i":I
    .restart local v13    # "i":I
    add-int/lit8 v29, v29, 0x1

    move v11, v15

    move/from16 v17, v31

    move/from16 v1, v36

    move-wide/from16 v9, v37

    const/4 v12, 0x3

    const/4 v15, 0x0

    goto/16 :goto_3

    .end local v15    # "D1":I
    .end local v30    # "D3":I
    .end local v31    # "srcPos":I
    .end local v36    # "dataSize":I
    .end local v37    # "prevDelta":J
    .local v1, "dataSize":I
    .local v9, "prevDelta":J
    .local v11, "D1":I
    .restart local v17    # "srcPos":I
    :cond_8
    move/from16 v36, v1

    move-wide/from16 v37, v9

    move/from16 v35, v13

    .line 1072
    .end local v1    # "dataSize":I
    .end local v3    # "K2":I
    .end local v4    # "K1":I
    .end local v8    # "Dif":[J
    .end local v9    # "prevDelta":J
    .end local v11    # "D1":I
    .end local v13    # "i":I
    .end local v14    # "K3":I
    .end local v20    # "prevByte":J
    .end local v24    # "D2":I
    .end local v29    # "byteCount":I
    .restart local v36    # "dataSize":I
    add-int/lit8 v7, v7, 0x1

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x4

    const/4 v15, 0x0

    goto/16 :goto_2

    .end local v36    # "dataSize":I
    .restart local v1    # "dataSize":I
    :cond_9
    move/from16 v36, v1

    .line 1150
    .end local v1    # "dataSize":I
    .end local v2    # "channels":I
    .end local v7    # "curChannel":I
    .end local v17    # "srcPos":I
    .end local v18    # "destDataPos":I
    move-object/from16 v6, p1

    goto/16 :goto_16

    .line 1016
    :pswitch_8
    iget-object v1, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    .restart local v1    # "dataSize":I
    iget-object v2, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x3

    sub-int/2addr v2, v3

    .local v2, "width":I
    iget-object v3, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v3, v3, v16

    .line 1017
    .local v3, "posR":I
    const/4 v4, 0x3

    .line 1018
    .local v4, "channels":I
    const/4 v5, 0x0

    .line 1019
    .local v5, "srcPos":I
    move v6, v1

    .line 1020
    .local v6, "destDataPos":I
    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    const/4 v10, 0x0

    invoke-direct {v0, v10, v9, v8, v1}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 1021
    if-ge v1, v7, :cond_11

    if-gez v3, :cond_a

    .line 1022
    move-object/from16 v6, p1

    goto/16 :goto_16

    .line 1024
    :cond_a
    const/4 v7, 0x0

    .restart local v7    # "curChannel":I
    :goto_6
    if-ge v7, v4, :cond_f

    .line 1025
    const-wide/16 v8, 0x0

    .line 1027
    .local v8, "prevByte":J
    move v10, v7

    .local v10, "i":I
    :goto_7
    if-ge v10, v1, :cond_e

    .line 1029
    sub-int v11, v10, v2

    .line 1030
    .local v11, "upperPos":I
    const/4 v12, 0x3

    if-lt v11, v12, :cond_d

    .line 1031
    add-int v13, v6, v11

    .line 1032
    .local v13, "upperDataPos":I
    iget-object v14, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    aget-byte v14, v14, v13

    and-int/lit16 v14, v14, 0xff

    .line 1033
    .local v14, "upperByte":I
    iget-object v15, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v17, v13, -0x3

    aget-byte v15, v15, v17

    and-int/lit16 v15, v15, 0xff

    .line 1034
    .local v15, "upperLeftByte":I
    move/from16 v17, v13

    .end local v13    # "upperDataPos":I
    .local v17, "upperDataPos":I
    int-to-long v12, v14

    add-long/2addr v12, v8

    move/from16 v18, v1

    move/from16 v19, v2

    .end local v1    # "dataSize":I
    .end local v2    # "width":I
    .local v18, "dataSize":I
    .local v19, "width":I
    int-to-long v1, v15

    sub-long/2addr v12, v1

    .line 1035
    .local v12, "predicted":J
    sub-long v1, v12, v8

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1036
    .local v1, "pa":I
    move/from16 v20, v3

    .end local v3    # "posR":I
    .local v20, "posR":I
    int-to-long v2, v14

    sub-long v2, v12, v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1037
    .local v2, "pb":I
    move/from16 v21, v4

    .end local v4    # "channels":I
    .local v21, "channels":I
    int-to-long v3, v15

    sub-long v3, v12, v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1038
    .local v3, "pc":I
    if-gt v1, v2, :cond_b

    if-gt v1, v3, :cond_b

    .line 1039
    move-wide v12, v8

    goto :goto_8

    .line 1041
    :cond_b
    if-gt v2, v3, :cond_c

    .line 1042
    int-to-long v12, v14

    goto :goto_8

    .line 1044
    :cond_c
    int-to-long v12, v15

    .line 1047
    .end local v1    # "pa":I
    .end local v2    # "pb":I
    .end local v3    # "pc":I
    .end local v14    # "upperByte":I
    .end local v15    # "upperLeftByte":I
    .end local v17    # "upperDataPos":I
    :goto_8
    goto :goto_9

    .line 1048
    .end local v12    # "predicted":J
    .end local v18    # "dataSize":I
    .end local v19    # "width":I
    .end local v20    # "posR":I
    .end local v21    # "channels":I
    .local v1, "dataSize":I
    .local v2, "width":I
    .local v3, "posR":I
    .restart local v4    # "channels":I
    :cond_d
    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    .end local v1    # "dataSize":I
    .end local v2    # "width":I
    .end local v3    # "posR":I
    .end local v4    # "channels":I
    .restart local v18    # "dataSize":I
    .restart local v19    # "width":I
    .restart local v20    # "posR":I
    .restart local v21    # "channels":I
    move-wide v12, v8

    .line 1051
    .restart local v12    # "predicted":J
    :goto_9
    iget-object v1, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v2, v5, 0x1

    .end local v5    # "srcPos":I
    .local v2, "srcPos":I
    aget-byte v1, v1, v5

    int-to-long v3, v1

    sub-long v3, v12, v3

    const-wide/16 v14, 0xff

    and-long/2addr v3, v14

    and-long v8, v3, v14

    .line 1052
    iget-object v1, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int v3, v6, v10

    and-long v4, v8, v14

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1027
    .end local v11    # "upperPos":I
    .end local v12    # "predicted":J
    add-int v10, v10, v21

    move v5, v2

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    goto :goto_7

    .end local v18    # "dataSize":I
    .end local v19    # "width":I
    .end local v20    # "posR":I
    .end local v21    # "channels":I
    .restart local v1    # "dataSize":I
    .local v2, "width":I
    .restart local v3    # "posR":I
    .restart local v4    # "channels":I
    .restart local v5    # "srcPos":I
    :cond_e
    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    const-wide/16 v14, 0xff

    .line 1024
    .end local v1    # "dataSize":I
    .end local v2    # "width":I
    .end local v3    # "posR":I
    .end local v4    # "channels":I
    .end local v8    # "prevByte":J
    .end local v10    # "i":I
    .restart local v18    # "dataSize":I
    .restart local v19    # "width":I
    .restart local v20    # "posR":I
    .restart local v21    # "channels":I
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    .end local v18    # "dataSize":I
    .end local v19    # "width":I
    .end local v20    # "posR":I
    .end local v21    # "channels":I
    .restart local v1    # "dataSize":I
    .restart local v2    # "width":I
    .restart local v3    # "posR":I
    .restart local v4    # "channels":I
    :cond_f
    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    .line 1056
    .end local v1    # "dataSize":I
    .end local v2    # "width":I
    .end local v3    # "posR":I
    .end local v4    # "channels":I
    .end local v7    # "curChannel":I
    .restart local v18    # "dataSize":I
    .restart local v19    # "width":I
    .restart local v20    # "posR":I
    .restart local v21    # "channels":I
    move/from16 v1, v20

    .local v1, "i":I
    add-int/lit8 v2, v18, -0x2

    .local v2, "border":I
    :goto_a
    if-ge v1, v2, :cond_10

    .line 1057
    iget-object v3, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int v4, v6, v1

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    .line 1058
    .local v3, "G":B
    iget-object v4, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int v7, v6, v1

    aget-byte v8, v4, v7

    add-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 1059
    iget-object v4, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int v7, v6, v1

    const/4 v8, 0x2

    add-int/2addr v7, v8

    aget-byte v8, v4, v7

    add-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 1056
    .end local v3    # "G":B
    add-int/lit8 v1, v1, 0x3

    goto :goto_a

    .line 1062
    .end local v1    # "i":I
    .end local v2    # "border":I
    .end local v5    # "srcPos":I
    .end local v6    # "destDataPos":I
    .end local v18    # "dataSize":I
    .end local v19    # "width":I
    .end local v20    # "posR":I
    .end local v21    # "channels":I
    :cond_10
    move-object/from16 v6, p1

    goto/16 :goto_16

    .line 1021
    .local v1, "dataSize":I
    .local v2, "width":I
    .local v3, "posR":I
    .restart local v4    # "channels":I
    .restart local v5    # "srcPos":I
    .restart local v6    # "destDataPos":I
    :cond_11
    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    .end local v1    # "dataSize":I
    .end local v2    # "width":I
    .end local v3    # "posR":I
    .end local v4    # "channels":I
    .restart local v18    # "dataSize":I
    .restart local v19    # "width":I
    .restart local v20    # "posR":I
    .restart local v21    # "channels":I
    move-object/from16 v6, p1

    goto/16 :goto_16

    .line 994
    .end local v5    # "srcPos":I
    .end local v6    # "destDataPos":I
    .end local v18    # "dataSize":I
    .end local v19    # "width":I
    .end local v20    # "posR":I
    .end local v21    # "channels":I
    :pswitch_9
    iget-object v1, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    and-int/lit8 v1, v1, -0x1

    .line 995
    .restart local v1    # "dataSize":I
    iget-object v2, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    and-int/lit8 v2, v2, -0x1

    .line 996
    .local v2, "channels":I
    const/4 v4, 0x0

    .line 997
    .local v4, "srcPos":I
    mul-int/lit8 v5, v1, 0x2

    and-int/lit8 v5, v5, -0x1

    .line 998
    .local v5, "border":I
    iget-object v6, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v3, v6, v8, v1}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 999
    if-lt v1, v7, :cond_12

    .line 1000
    move-object/from16 v6, p1

    goto/16 :goto_16

    .line 1005
    :cond_12
    const/4 v3, 0x0

    .local v3, "curChannel":I
    :goto_b
    if-ge v3, v2, :cond_14

    .line 1006
    const/4 v6, 0x0

    .line 1007
    .local v6, "PrevByte":B
    add-int v7, v1, v3

    .local v7, "destPos":I
    :goto_c
    if-ge v7, v5, :cond_13

    .line 1008
    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v10, v4, 0x1

    .end local v4    # "srcPos":I
    .local v10, "srcPos":I
    aget-byte v4, v9, v4

    sub-int v4, v6, v4

    int-to-byte v4, v4

    move v6, v4

    aput-byte v4, v8, v7

    .line 1007
    add-int/2addr v7, v2

    move v4, v10

    goto :goto_c

    .line 1005
    .end local v6    # "PrevByte":B
    .end local v7    # "destPos":I
    .end local v10    # "srcPos":I
    .restart local v4    # "srcPos":I
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1013
    .end local v1    # "dataSize":I
    .end local v2    # "channels":I
    .end local v3    # "curChannel":I
    .end local v4    # "srcPos":I
    .end local v5    # "border":I
    :cond_14
    move-object/from16 v6, p1

    goto/16 :goto_16

    .line 960
    :pswitch_a
    iget-object v1, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    const/4 v3, 0x4

    aget v1, v1, v3

    .line 961
    .restart local v1    # "dataSize":I
    iget-object v3, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    and-int/lit8 v3, v3, -0x1

    int-to-long v3, v3

    .line 963
    .local v3, "fileOffset":J
    if-lt v1, v2, :cond_15

    .line 964
    move-object/from16 v6, p1

    goto/16 :goto_16

    .line 966
    :cond_15
    const/4 v2, 0x0

    .line 967
    .local v2, "curPos":I
    const/16 v5, 0x10

    new-array v6, v5, [B

    fill-array-data v6, :array_0

    move-object v5, v6

    .line 968
    .local v5, "Masks":[B
    const/4 v6, 0x4

    ushr-long/2addr v3, v6

    .line 970
    :goto_d
    add-int/lit8 v6, v1, -0x15

    if-ge v2, v6, :cond_1b

    .line 971
    iget-object v6, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    aget-byte v6, v6, v2

    and-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x10

    sub-int/2addr v6, v7

    .line 972
    .local v6, "Byte":I
    if-ltz v6, :cond_1a

    .line 974
    aget-byte v8, v5, v6

    .line 975
    .local v8, "cmdMask":B
    if-eqz v8, :cond_19

    .line 976
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_e
    const/4 v10, 0x2

    if-gt v9, v10, :cond_18

    .line 977
    shl-int v11, v16, v9

    and-int/2addr v11, v8

    if-eqz v11, :cond_17

    .line 978
    mul-int/lit8 v11, v9, 0x29

    const/4 v12, 0x5

    add-int/2addr v11, v12

    .line 979
    .local v11, "startPos":I
    add-int/lit8 v13, v11, 0x25

    const/4 v14, 0x4

    invoke-direct {v0, v2, v13, v14}, Lcom/github/junrar/unpack/vm/RarVM;->filterItanium_GetBits(III)I

    move-result v13

    .line 980
    .local v13, "opType":I
    if-ne v13, v12, :cond_16

    .line 981
    add-int/lit8 v14, v11, 0xd

    const/16 v15, 0x14

    invoke-direct {v0, v2, v14, v15}, Lcom/github/junrar/unpack/vm/RarVM;->filterItanium_GetBits(III)I

    move-result v14

    .line 982
    .local v14, "offset":I
    move/from16 v17, v8

    .end local v8    # "cmdMask":B
    .local v17, "cmdMask":B
    int-to-long v7, v14

    sub-long/2addr v7, v3

    long-to-int v7, v7

    const v8, 0xfffff

    and-int/2addr v7, v8

    add-int/lit8 v8, v11, 0xd

    invoke-direct {v0, v2, v7, v8, v15}, Lcom/github/junrar/unpack/vm/RarVM;->filterItanium_SetBits(IIII)V

    goto :goto_f

    .line 980
    .end local v14    # "offset":I
    .end local v17    # "cmdMask":B
    .restart local v8    # "cmdMask":B
    :cond_16
    move/from16 v17, v8

    .end local v8    # "cmdMask":B
    .restart local v17    # "cmdMask":B
    goto :goto_f

    .line 977
    .end local v11    # "startPos":I
    .end local v13    # "opType":I
    .end local v17    # "cmdMask":B
    .restart local v8    # "cmdMask":B
    :cond_17
    move/from16 v17, v8

    const/4 v12, 0x5

    .line 976
    .end local v8    # "cmdMask":B
    .restart local v17    # "cmdMask":B
    :goto_f
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v17

    const/16 v7, 0x10

    goto :goto_e

    .end local v17    # "cmdMask":B
    .restart local v8    # "cmdMask":B
    :cond_18
    move/from16 v17, v8

    const/4 v12, 0x5

    .end local v8    # "cmdMask":B
    .restart local v17    # "cmdMask":B
    goto :goto_10

    .line 975
    .end local v9    # "i":I
    .end local v17    # "cmdMask":B
    .restart local v8    # "cmdMask":B
    :cond_19
    move/from16 v17, v8

    const/4 v10, 0x2

    const/4 v12, 0x5

    .end local v8    # "cmdMask":B
    .restart local v17    # "cmdMask":B
    goto :goto_10

    .line 972
    .end local v17    # "cmdMask":B
    :cond_1a
    const/4 v10, 0x2

    const/4 v12, 0x5

    .line 988
    :goto_10
    add-int/lit8 v2, v2, 0x10

    .line 989
    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    .line 990
    .end local v6    # "Byte":I
    goto :goto_d

    .line 992
    .end local v1    # "dataSize":I
    .end local v2    # "curPos":I
    .end local v3    # "fileOffset":J
    .end local v5    # "Masks":[B
    :cond_1b
    move-object/from16 v6, p1

    goto/16 :goto_16

    .line 918
    :pswitch_b
    iget-object v1, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    const/4 v3, 0x4

    aget v1, v1, v3

    .line 919
    .restart local v1    # "dataSize":I
    iget-object v3, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    and-int/lit8 v3, v3, -0x1

    int-to-long v3, v3

    .line 921
    .restart local v3    # "fileOffset":J
    if-lt v1, v2, :cond_1c

    .line 922
    move-object/from16 v6, p1

    goto/16 :goto_16

    .line 924
    :cond_1c
    const/high16 v2, 0x1000000

    .line 925
    .local v2, "fileSize":I
    sget-object v5, Lcom/github/junrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lcom/github/junrar/unpack/vm/VMStandardFilters;

    move-object/from16 v6, p1

    if-ne v6, v5, :cond_1d

    const/16 v5, 0xe9

    goto :goto_11

    :cond_1d
    const/16 v5, 0xe8

    :goto_11
    int-to-byte v5, v5

    .line 926
    .local v5, "cmpByte2":B
    const/4 v7, 0x0

    .local v7, "curPos":I
    :goto_12
    add-int/lit8 v8, v1, -0x4

    if-ge v7, v8, :cond_23

    .line 927
    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v9, v7, 0x1

    .end local v7    # "curPos":I
    .local v9, "curPos":I
    aget-byte v7, v8, v7

    .line 928
    .local v7, "curByte":B
    const/16 v8, -0x18

    if-eq v7, v8, :cond_1f

    if-ne v7, v5, :cond_1e

    goto :goto_13

    :cond_1e
    move-wide/from16 v16, v3

    move v7, v9

    const/4 v8, 0x0

    goto :goto_15

    .line 941
    :cond_1f
    :goto_13
    int-to-long v10, v9

    add-long/2addr v10, v3

    .line 942
    .local v10, "offset":J
    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    const/4 v12, 0x0

    invoke-direct {v0, v12, v8, v9}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    int-to-long v12, v8

    .line 943
    .local v12, "Addr":J
    const-wide/32 v14, -0x80000000

    and-long v16, v12, v14

    const-wide/16 v18, 0x0

    cmp-long v8, v16, v18

    if-eqz v8, :cond_21

    .line 944
    add-long v16, v12, v10

    and-long v14, v16, v14

    cmp-long v8, v14, v18

    if-nez v8, :cond_20

    .line 945
    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    long-to-int v14, v12

    add-int/2addr v14, v2

    const/4 v15, 0x0

    invoke-direct {v0, v15, v8, v9, v14}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    move-wide/from16 v16, v3

    move v8, v15

    goto :goto_14

    .line 944
    :cond_20
    move-wide/from16 v16, v3

    const/4 v8, 0x0

    goto :goto_14

    .line 948
    :cond_21
    move-wide/from16 v16, v3

    .end local v3    # "fileOffset":J
    .local v16, "fileOffset":J
    int-to-long v3, v2

    sub-long v3, v12, v3

    and-long/2addr v3, v14

    const-wide/16 v14, 0x0

    cmp-long v3, v3, v14

    if-eqz v3, :cond_22

    .line 949
    iget-object v3, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    sub-long v14, v12, v10

    long-to-int v4, v14

    const/4 v8, 0x0

    invoke-direct {v0, v8, v3, v9, v4}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto :goto_14

    .line 948
    :cond_22
    const/4 v8, 0x0

    .line 953
    :goto_14
    add-int/lit8 v9, v9, 0x4

    move v7, v9

    .line 955
    .end local v9    # "curPos":I
    .end local v10    # "offset":J
    .end local v12    # "Addr":J
    .local v7, "curPos":I
    :goto_15
    move-wide/from16 v3, v16

    goto :goto_12

    .line 926
    .end local v16    # "fileOffset":J
    .restart local v3    # "fileOffset":J
    :cond_23
    move-wide/from16 v16, v3

    .line 956
    .end local v3    # "fileOffset":J
    .end local v7    # "curPos":I
    .restart local v16    # "fileOffset":J
    nop

    .line 1169
    .end local v1    # "dataSize":I
    .end local v2    # "fileSize":I
    .end local v5    # "cmpByte2":B
    .end local v16    # "fileOffset":J
    :goto_16
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 1
        0x4t
        0x4t
        0x6t
        0x6t
        0x0t
        0x0t
        0x7t
        0x7t
        0x4t
        0x4t
        0x0t
        0x0t
        0x4t
        0x4t
        0x0t
        0x0t
    .end array-data
.end method

.method private IsStandardFilter([BI)Lcom/github/junrar/unpack/vm/VMStandardFilters;
    .locals 6
    .param p1, "code"    # [B
    .param p2, "codeSize"    # I

    .line 894
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;

    new-instance v1, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;

    const v2, -0x52a89779

    sget-object v3, Lcom/github/junrar/unpack/vm/VMStandardFilters;->VMSF_E8:Lcom/github/junrar/unpack/vm/VMStandardFilters;

    const/16 v4, 0x35

    invoke-direct {v1, v4, v2, v3}, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/github/junrar/unpack/vm/VMStandardFilters;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;

    const v3, 0x3cd7e57e

    sget-object v4, Lcom/github/junrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lcom/github/junrar/unpack/vm/VMStandardFilters;

    const/16 v5, 0x39

    invoke-direct {v1, v5, v3, v4}, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/github/junrar/unpack/vm/VMStandardFilters;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;

    const v3, 0x3769893f

    sget-object v4, Lcom/github/junrar/unpack/vm/VMStandardFilters;->VMSF_ITANIUM:Lcom/github/junrar/unpack/vm/VMStandardFilters;

    const/16 v5, 0x78

    invoke-direct {v1, v5, v3, v4}, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/github/junrar/unpack/vm/VMStandardFilters;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;

    const v3, 0xe06077d

    sget-object v4, Lcom/github/junrar/unpack/vm/VMStandardFilters;->VMSF_DELTA:Lcom/github/junrar/unpack/vm/VMStandardFilters;

    const/16 v5, 0x1d

    invoke-direct {v1, v5, v3, v4}, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/github/junrar/unpack/vm/VMStandardFilters;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;

    const v3, 0x1c2c5dc8

    sget-object v4, Lcom/github/junrar/unpack/vm/VMStandardFilters;->VMSF_RGB:Lcom/github/junrar/unpack/vm/VMStandardFilters;

    const/16 v5, 0x95

    invoke-direct {v1, v5, v3, v4}, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/github/junrar/unpack/vm/VMStandardFilters;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;

    const v3, -0x437a18ff

    sget-object v4, Lcom/github/junrar/unpack/vm/VMStandardFilters;->VMSF_AUDIO:Lcom/github/junrar/unpack/vm/VMStandardFilters;

    const/16 v5, 0xd8

    invoke-direct {v1, v5, v3, v4}, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/github/junrar/unpack/vm/VMStandardFilters;)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;

    const v3, 0x46b9c560    # 23778.688f

    sget-object v4, Lcom/github/junrar/unpack/vm/VMStandardFilters;->VMSF_UPCASE:Lcom/github/junrar/unpack/vm/VMStandardFilters;

    const/16 v5, 0x28

    invoke-direct {v1, v5, v3, v4}, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/github/junrar/unpack/vm/VMStandardFilters;)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 903
    .local v0, "stdList":[Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;
    const/4 v1, -0x1

    array-length v3, p1

    invoke-static {v1, p1, v2, v3}, Lcom/github/junrar/crc/RarCRC;->checkCrc(I[BII)I

    move-result v1

    not-int v1, v1

    .line 904
    .local v1, "CodeCRC":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 905
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;->getCRC()I

    move-result v3

    if-ne v3, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;->getLength()I

    move-result v3

    array-length v4, p1

    if-ne v3, v4, :cond_0

    .line 906
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;->getType()Lcom/github/junrar/unpack/vm/VMStandardFilters;

    move-result-object v3

    return-object v3

    .line 904
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 910
    .end local v2    # "i":I
    :cond_1
    sget-object v2, Lcom/github/junrar/unpack/vm/VMStandardFilters;->VMSF_NONE:Lcom/github/junrar/unpack/vm/VMStandardFilters;

    return-object v2
.end method

.method public static ReadData(Lcom/github/junrar/unpack/vm/BitInput;)I
    .locals 4
    .param p0, "rarVM"    # Lcom/github/junrar/unpack/vm/BitInput;

    .line 864
    invoke-virtual {p0}, Lcom/github/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v0

    .line 865
    .local v0, "data":I
    const v1, 0xc000

    and-int/2addr v1, v0

    const/4 v2, 0x2

    const/16 v3, 0x10

    sparse-switch v1, :sswitch_data_0

    .line 884
    invoke-virtual {p0, v2}, Lcom/github/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 885
    invoke-virtual {p0}, Lcom/github/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v1

    shl-int/lit8 v0, v1, 0x10

    .line 886
    invoke-virtual {p0, v3}, Lcom/github/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 887
    invoke-virtual {p0}, Lcom/github/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v1

    or-int/2addr v0, v1

    .line 888
    invoke-virtual {p0, v3}, Lcom/github/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 889
    return v0

    .line 879
    :sswitch_0
    invoke-virtual {p0, v2}, Lcom/github/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 880
    invoke-virtual {p0}, Lcom/github/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v0

    .line 881
    invoke-virtual {p0, v3}, Lcom/github/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 882
    return v0

    .line 870
    :sswitch_1
    and-int/lit16 v1, v0, 0x3c00

    if-nez v1, :cond_0

    .line 871
    ushr-int/lit8 v1, v0, 0x2

    and-int/lit16 v1, v1, 0xff

    or-int/lit16 v0, v1, -0x100

    .line 872
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/github/junrar/unpack/vm/BitInput;->faddbits(I)V

    goto :goto_0

    .line 874
    :cond_0
    ushr-int/lit8 v1, v0, 0x6

    and-int/lit16 v0, v1, 0xff

    .line 875
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/github/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 877
    :goto_0
    return v0

    .line 867
    :sswitch_2
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/github/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 868
    ushr-int/lit8 v1, v0, 0xa

    and-int/lit8 v1, v1, 0xf

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_0
    .end sparse-switch
.end method

.method private decodeArg(Lcom/github/junrar/unpack/vm/VMPreparedOperand;Z)V
    .locals 5
    .param p1, "op"    # Lcom/github/junrar/unpack/vm/VMPreparedOperand;
    .param p2, "byteMode"    # Z

    .line 764
    invoke-virtual {p0}, Lcom/github/junrar/unpack/vm/RarVM;->fgetbits()I

    move-result v0

    .line 765
    .local v0, "data":I
    const v1, 0x8000

    and-int/2addr v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x7

    if-eqz v1, :cond_0

    .line 766
    sget-object v1, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPREG:Lcom/github/junrar/unpack/vm/VMOpType;

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/github/junrar/unpack/vm/VMOpType;)V

    .line 767
    ushr-int/lit8 v1, v0, 0xc

    and-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 768
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->getData()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setOffset(I)V

    .line 769
    invoke-virtual {p0, v2}, Lcom/github/junrar/unpack/vm/RarVM;->faddbits(I)V

    goto :goto_1

    .line 771
    :cond_0
    const v1, 0xc000

    and-int/2addr v1, v0

    if-nez v1, :cond_2

    .line 772
    sget-object v1, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPINT:Lcom/github/junrar/unpack/vm/VMOpType;

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/github/junrar/unpack/vm/VMOpType;)V

    .line 773
    if-eqz p2, :cond_1

    .line 774
    ushr-int/lit8 v1, v0, 0x6

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 775
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/github/junrar/unpack/vm/RarVM;->faddbits(I)V

    goto :goto_1

    .line 777
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/github/junrar/unpack/vm/RarVM;->faddbits(I)V

    .line 778
    invoke-static {p0}, Lcom/github/junrar/unpack/vm/RarVM;->ReadData(Lcom/github/junrar/unpack/vm/BitInput;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    goto :goto_1

    .line 781
    :cond_2
    sget-object v1, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPREGMEM:Lcom/github/junrar/unpack/vm/VMOpType;

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/github/junrar/unpack/vm/VMOpType;)V

    .line 782
    and-int/lit16 v1, v0, 0x2000

    const/4 v4, 0x0

    if-nez v1, :cond_3

    .line 783
    ushr-int/lit8 v1, v0, 0xa

    and-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 784
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->getData()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setOffset(I)V

    .line 785
    invoke-virtual {p1, v4}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setBase(I)V

    .line 786
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/github/junrar/unpack/vm/RarVM;->faddbits(I)V

    goto :goto_1

    .line 788
    :cond_3
    and-int/lit16 v1, v0, 0x1000

    if-nez v1, :cond_4

    .line 789
    ushr-int/lit8 v1, v0, 0x9

    and-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 790
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->getData()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setOffset(I)V

    .line 791
    invoke-virtual {p0, v3}, Lcom/github/junrar/unpack/vm/RarVM;->faddbits(I)V

    goto :goto_0

    .line 793
    :cond_4
    invoke-virtual {p1, v4}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 794
    invoke-virtual {p0, v2}, Lcom/github/junrar/unpack/vm/RarVM;->faddbits(I)V

    .line 796
    :goto_0
    invoke-static {p0}, Lcom/github/junrar/unpack/vm/RarVM;->ReadData(Lcom/github/junrar/unpack/vm/BitInput;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setBase(I)V

    .line 801
    :goto_1
    return-void
.end method

.method private filterItanium_GetBits(III)I
    .locals 5
    .param p1, "curPos"    # I
    .param p2, "bitPos"    # I
    .param p3, "bitCount"    # I

    .line 1189
    div-int/lit8 v0, p2, 0x8

    .line 1190
    .local v0, "inAddr":I
    and-int/lit8 v1, p2, 0x7

    .line 1191
    .local v1, "inBit":I
    iget-object v2, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "inAddr":I
    .local v3, "inAddr":I
    add-int/2addr v0, p1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    .line 1192
    .local v0, "bitField":I
    iget-object v2, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "inAddr":I
    .local v4, "inAddr":I
    add-int/2addr v3, p1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 1193
    iget-object v2, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "inAddr":I
    .restart local v3    # "inAddr":I
    add-int/2addr v4, p1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    .line 1194
    iget-object v2, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int v4, p1, v3

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    .line 1195
    ushr-int/2addr v0, v1

    .line 1196
    rsub-int/lit8 v2, p3, 0x20

    const/4 v4, -0x1

    ushr-int v2, v4, v2

    and-int/2addr v2, v0

    return v2
.end method

.method private filterItanium_SetBits(IIII)V
    .locals 7
    .param p1, "curPos"    # I
    .param p2, "bitField"    # I
    .param p3, "bitPos"    # I
    .param p4, "bitCount"    # I

    .line 1172
    div-int/lit8 v0, p3, 0x8

    .line 1173
    .local v0, "inAddr":I
    and-int/lit8 v1, p3, 0x7

    .line 1174
    .local v1, "inBit":I
    rsub-int/lit8 v2, p4, 0x20

    const/4 v3, -0x1

    ushr-int v2, v3, v2

    .line 1175
    .local v2, "andMask":I
    shl-int v3, v2, v1

    not-int v2, v3

    .line 1177
    shl-int/2addr p2, v1

    .line 1179
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 1180
    iget-object v4, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int v5, p1, v0

    add-int/2addr v5, v3

    aget-byte v6, v4, v5

    and-int/2addr v6, v2

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1181
    iget-object v4, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int v5, p1, v0

    add-int/2addr v5, v3

    aget-byte v6, v4, v5

    or-int/2addr v6, p2

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1182
    ushr-int/lit8 v4, v2, 0x8

    const/high16 v5, -0x1000000

    or-int v2, v4, v5

    .line 1183
    ushr-int/lit8 p2, p2, 0x8

    .line 1179
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1186
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method private getOperand(Lcom/github/junrar/unpack/vm/VMPreparedOperand;)I
    .locals 3
    .param p1, "cmdOp"    # Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "ret":I
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->getType()Lcom/github/junrar/unpack/vm/VMOpType;

    move-result-object v1

    sget-object v2, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPREGMEM:Lcom/github/junrar/unpack/vm/VMOpType;

    if-ne v1, v2, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->getOffset()I

    move-result v1

    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->getBase()I

    move-result v2

    add-int/2addr v1, v2

    const v2, 0x3ffff

    and-int/2addr v1, v2

    .line 137
    .local v1, "pos":I
    iget-object v2, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-static {v2, v1}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v0

    .line 138
    .end local v1    # "pos":I
    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->getOffset()I

    move-result v1

    .line 140
    .restart local v1    # "pos":I
    iget-object v2, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-static {v2, v1}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v0

    .line 142
    .end local v1    # "pos":I
    :goto_0
    return v0
.end method

.method private getValue(Z[BI)I
    .locals 1
    .param p1, "byteMode"    # Z
    .param p2, "mem"    # [B
    .param p3, "offset"    # I

    .line 76
    if-eqz p1, :cond_1

    .line 77
    invoke-direct {p0, p2}, Lcom/github/junrar/unpack/vm/RarVM;->isVMMem([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    aget-byte v0, p2, p3

    return v0

    .line 80
    :cond_0
    aget-byte v0, p2, p3

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 83
    :cond_1
    invoke-direct {p0, p2}, Lcom/github/junrar/unpack/vm/RarVM;->isVMMem([B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-static {p2, p3}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v0

    return v0

    .line 88
    :cond_2
    invoke-static {p2, p3}, Lcom/github/junrar/io/Raw;->readIntBigEndian([BI)I

    move-result v0

    return v0
.end method

.method private isVMMem([B)Z
    .locals 1
    .param p1, "mem"    # [B

    .line 72
    iget-object v0, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private optimize(Lcom/github/junrar/unpack/vm/VMPreparedProgram;)V
    .locals 7
    .param p1, "prg"    # Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    .line 805
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    move-result-object v0

    .line 807
    .local v0, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/github/junrar/unpack/vm/VMPreparedCommand;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/junrar/unpack/vm/VMPreparedCommand;

    .line 808
    .local v2, "cmd":Lcom/github/junrar/unpack/vm/VMPreparedCommand;
    sget-object v3, Lcom/github/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$github$junrar$unpack$vm$VMCommands:[I

    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/github/junrar/unpack/vm/VMCommands;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/junrar/unpack/vm/VMCommands;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 818
    sget-object v3, Lcom/github/junrar/unpack/vm/VMCmdFlags;->VM_CmdFlags:[B

    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/github/junrar/unpack/vm/VMCommands;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/junrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v4

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_2

    .line 819
    goto :goto_0

    .line 814
    :sswitch_0
    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CMPB:Lcom/github/junrar/unpack/vm/VMCommands;

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CMPD:Lcom/github/junrar/unpack/vm/VMCommands;

    :goto_1
    invoke-virtual {v2, v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V

    .line 816
    goto :goto_0

    .line 810
    :sswitch_1
    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVB:Lcom/github/junrar/unpack/vm/VMCommands;

    goto :goto_2

    :cond_1
    sget-object v3, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVD:Lcom/github/junrar/unpack/vm/VMCommands;

    :goto_2
    invoke-virtual {v2, v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V

    .line 812
    goto :goto_0

    .line 821
    :cond_2
    const/4 v3, 0x0

    .line 823
    .local v3, "flagsRequired":Z
    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .local v4, "i":I
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 824
    sget-object v5, Lcom/github/junrar/unpack/vm/VMCmdFlags;->VM_CmdFlags:[B

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/junrar/unpack/vm/VMPreparedCommand;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/github/junrar/unpack/vm/VMCommands;

    move-result-object v6

    .line 825
    invoke-virtual {v6}, Lcom/github/junrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v6

    aget-byte v5, v5, v6

    .line 826
    .local v5, "flags":I
    and-int/lit8 v6, v5, 0x38

    if-eqz v6, :cond_3

    .line 827
    const/4 v3, 0x1

    .line 828
    goto :goto_4

    .line 830
    :cond_3
    and-int/lit8 v6, v5, 0x40

    if-eqz v6, :cond_4

    .line 831
    goto :goto_4

    .line 823
    .end local v5    # "flags":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 834
    .end local v4    # "i":I
    :cond_5
    :goto_4
    if-eqz v3, :cond_6

    .line 835
    goto :goto_0

    .line 837
    :cond_6
    sget-object v4, Lcom/github/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$github$junrar$unpack$vm$VMCommands:[I

    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/github/junrar/unpack/vm/VMCommands;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/junrar/unpack/vm/VMCommands;->ordinal()I

    move-result v5

    aget v4, v4, v5

    sparse-switch v4, :sswitch_data_1

    .line 859
    .end local v2    # "cmd":Lcom/github/junrar/unpack/vm/VMPreparedCommand;
    .end local v3    # "flagsRequired":Z
    goto/16 :goto_0

    .line 855
    .restart local v2    # "cmd":Lcom/github/junrar/unpack/vm/VMPreparedCommand;
    .restart local v3    # "flagsRequired":Z
    :sswitch_2
    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NEGB:Lcom/github/junrar/unpack/vm/VMCommands;

    goto :goto_5

    :cond_7
    sget-object v4, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NEGD:Lcom/github/junrar/unpack/vm/VMCommands;

    :goto_5
    invoke-virtual {v2, v4}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V

    .line 857
    goto/16 :goto_0

    .line 851
    :sswitch_3
    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DECB:Lcom/github/junrar/unpack/vm/VMCommands;

    goto :goto_6

    :cond_8
    sget-object v4, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DECD:Lcom/github/junrar/unpack/vm/VMCommands;

    :goto_6
    invoke-virtual {v2, v4}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V

    .line 853
    goto/16 :goto_0

    .line 847
    :sswitch_4
    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lcom/github/junrar/unpack/vm/VMCommands;->VM_INCB:Lcom/github/junrar/unpack/vm/VMCommands;

    goto :goto_7

    :cond_9
    sget-object v4, Lcom/github/junrar/unpack/vm/VMCommands;->VM_INCD:Lcom/github/junrar/unpack/vm/VMCommands;

    :goto_7
    invoke-virtual {v2, v4}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V

    .line 849
    goto/16 :goto_0

    .line 843
    :sswitch_5
    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SUBB:Lcom/github/junrar/unpack/vm/VMCommands;

    goto :goto_8

    :cond_a
    sget-object v4, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SUBD:Lcom/github/junrar/unpack/vm/VMCommands;

    :goto_8
    invoke-virtual {v2, v4}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V

    .line 845
    goto/16 :goto_0

    .line 839
    :sswitch_6
    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADDB:Lcom/github/junrar/unpack/vm/VMCommands;

    goto :goto_9

    :cond_b
    sget-object v4, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADDD:Lcom/github/junrar/unpack/vm/VMCommands;

    :goto_9
    invoke-virtual {v2, v4}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V

    .line 841
    goto/16 :goto_0

    .line 861
    .end local v2    # "cmd":Lcom/github/junrar/unpack/vm/VMPreparedCommand;
    .end local v3    # "flagsRequired":Z
    :cond_c
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7 -> :sswitch_6
        0xa -> :sswitch_5
        0xf -> :sswitch_4
        0x12 -> :sswitch_3
        0x27 -> :sswitch_2
    .end sparse-switch
.end method

.method private setIP(I)Z
    .locals 2
    .param p1, "ip"    # I

    .line 208
    iget v0, p0, Lcom/github/junrar/unpack/vm/RarVM;->codeSize:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    .line 209
    return v1

    .line 212
    :cond_0
    iget v0, p0, Lcom/github/junrar/unpack/vm/RarVM;->maxOpCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/github/junrar/unpack/vm/RarVM;->maxOpCount:I

    if-gtz v0, :cond_1

    .line 213
    const/4 v0, 0x0

    return v0

    .line 216
    :cond_1
    iput p1, p0, Lcom/github/junrar/unpack/vm/RarVM;->IP:I

    .line 217
    return v1
.end method

.method private setValue(Z[BII)V
    .locals 2
    .param p1, "byteMode"    # Z
    .param p2, "mem"    # [B
    .param p3, "offset"    # I
    .param p4, "value"    # I

    .line 94
    if-eqz p1, :cond_1

    .line 95
    invoke-direct {p0, p2}, Lcom/github/junrar/unpack/vm/RarVM;->isVMMem([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    int-to-byte v0, p4

    aput-byte v0, p2, p3

    goto :goto_0

    .line 98
    :cond_0
    aget-byte v0, p2, p3

    and-int/lit8 v0, v0, 0x0

    and-int/lit16 v1, p4, 0xff

    int-to-byte v1, v1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    goto :goto_0

    .line 101
    :cond_1
    invoke-direct {p0, p2}, Lcom/github/junrar/unpack/vm/RarVM;->isVMMem([B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-static {p2, p3, p4}, Lcom/github/junrar/io/Raw;->writeIntLittleEndian([BII)V

    goto :goto_0

    .line 108
    :cond_2
    invoke-static {p2, p3, p4}, Lcom/github/junrar/io/Raw;->writeIntBigEndian([BII)V

    .line 118
    :goto_0
    return-void
.end method


# virtual methods
.method public execute(Lcom/github/junrar/unpack/vm/VMPreparedProgram;)V
    .locals 13
    .param p1, "prg"    # Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v2

    aget v2, v2, v0

    aput v2, v1, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "i":I
    :cond_0
    nop

    .line 151
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    and-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    .line 152
    .local v0, "globalSize":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const v5, 0x3c000

    if-eqz v4, :cond_1

    .line 153
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    int-to-long v6, v4

    cmp-long v6, v6, v0

    if-gez v6, :cond_1

    .line 154
    iget-object v6, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int v7, v4, v5

    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v6, v7

    .line 153
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 158
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getStaticData()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    int-to-long v6, v4

    const-wide/16 v8, 0x2000

    sub-long/2addr v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    and-long/2addr v6, v8

    .line 160
    .local v6, "staticSize":J
    cmp-long v2, v6, v2

    if-eqz v2, :cond_2

    .line 161
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    int-to-long v3, v2

    cmp-long v3, v3, v6

    if-gez v3, :cond_2

    .line 162
    iget-object v3, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    long-to-int v4, v0

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    .line 163
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getStaticData()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v3, v4

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 167
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    const/4 v3, 0x7

    const/high16 v4, 0x40000

    aput v4, v2, v3

    .line 168
    const/4 v2, 0x0

    iput v2, p0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 170
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getAltCmd()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_3

    .line 171
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getAltCmd()Ljava/util/List;

    move-result-object v3

    goto :goto_3

    .line 172
    :cond_3
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    move-result-object v3

    :goto_3
    nop

    .line 174
    .local v3, "preparedCode":Ljava/util/List;, "Ljava/util/List<Lcom/github/junrar/unpack/vm/VMPreparedCommand;>;"
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    move-result v8

    invoke-direct {p0, v3, v8}, Lcom/github/junrar/unpack/vm/RarVM;->ExecuteCode(Ljava/util/List;I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 175
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/junrar/unpack/vm/VMPreparedCommand;

    sget-object v9, Lcom/github/junrar/unpack/vm/VMCommands;->VM_RET:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v8, v9}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V

    .line 177
    :cond_4
    iget-object v8, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    const v9, 0x3c020

    invoke-direct {p0, v2, v8, v9}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    const v9, 0x3ffff

    and-int/2addr v8, v9

    .line 179
    .local v8, "newBlockPos":I
    iget-object v10, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    const v11, 0x3c01c

    invoke-direct {p0, v2, v10, v11}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v10

    and-int/2addr v9, v10

    .line 181
    .local v9, "newBlockSize":I
    add-int v10, v8, v9

    if-lt v10, v4, :cond_5

    .line 182
    const/4 v8, 0x0

    .line 183
    const/4 v9, 0x0

    .line 186
    :cond_5
    invoke-virtual {p1, v8}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->setFilteredDataOffset(I)V

    .line 187
    invoke-virtual {p1, v9}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->setFilteredDataSize(I)V

    .line 189
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 191
    iget-object v4, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    const v10, 0x3c030

    invoke-direct {p0, v2, v4, v10}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    const/16 v4, 0x1fc0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 193
    .local v2, "dataSize":I
    if-eqz v2, :cond_6

    .line 194
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v4

    add-int/lit8 v10, v2, 0x40

    invoke-virtual {v4, v10}, Ljava/util/Vector;->setSize(I)V

    .line 197
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    add-int/lit8 v10, v2, 0x40

    if-ge v4, v10, :cond_6

    .line 198
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v10

    iget-object v11, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int v12, v4, v5

    aget-byte v11, v11, v12

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 197
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 201
    .end local v4    # "i":I
    :cond_6
    return-void
.end method

.method public getMem()[B
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    return-object v0
.end method

.method public init()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    if-nez v0, :cond_0

    .line 67
    const v0, 0x40004

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    .line 69
    :cond_0
    return-void
.end method

.method public prepare([BILcom/github/junrar/unpack/vm/VMPreparedProgram;)V
    .locals 16
    .param p1, "code"    # [B
    .param p2, "codeSize"    # I
    .param p3, "prg"    # Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    .line 633
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/vm/RarVM;->InitBitInput()V

    .line 634
    const v3, 0x8000

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 635
    .local v4, "cpLength":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 636
    iget-object v6, v0, Lcom/github/junrar/unpack/vm/RarVM;->inBuf:[B

    aget-byte v7, v6, v5

    aget-byte v8, p1, v5

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    .line 635
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 639
    .end local v5    # "i":I
    :cond_0
    const/4 v5, 0x0

    .line 640
    .local v5, "xorSum":B
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_1

    .line 641
    aget-byte v7, p1, v6

    xor-int/2addr v7, v5

    int-to-byte v5, v7

    .line 640
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 644
    .end local v6    # "i":I
    :cond_1
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Lcom/github/junrar/unpack/vm/RarVM;->faddbits(I)V

    .line 646
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    .line 647
    aget-byte v8, p1, v7

    const/4 v9, 0x1

    if-ne v5, v8, :cond_d

    .line 648
    invoke-direct/range {p0 .. p2}, Lcom/github/junrar/unpack/vm/RarVM;->IsStandardFilter([BI)Lcom/github/junrar/unpack/vm/VMStandardFilters;

    move-result-object v8

    .line 649
    .local v8, "filterType":Lcom/github/junrar/unpack/vm/VMStandardFilters;
    sget-object v10, Lcom/github/junrar/unpack/vm/VMStandardFilters;->VMSF_NONE:Lcom/github/junrar/unpack/vm/VMStandardFilters;

    if-eq v8, v10, :cond_2

    .line 651
    new-instance v10, Lcom/github/junrar/unpack/vm/VMPreparedCommand;

    invoke-direct {v10}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;-><init>()V

    .line 652
    .local v10, "curCmd":Lcom/github/junrar/unpack/vm/VMPreparedCommand;
    sget-object v11, Lcom/github/junrar/unpack/vm/VMCommands;->VM_STANDARD:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v10, v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V

    .line 653
    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v11

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMStandardFilters;->getFilter()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 654
    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v11

    sget-object v12, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPNONE:Lcom/github/junrar/unpack/vm/VMOpType;

    invoke-virtual {v11, v12}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/github/junrar/unpack/vm/VMOpType;)V

    .line 655
    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp2()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v11

    sget-object v12, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPNONE:Lcom/github/junrar/unpack/vm/VMOpType;

    invoke-virtual {v11, v12}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/github/junrar/unpack/vm/VMOpType;)V

    .line 656
    const/4 v1, 0x0

    .line 657
    .end local p2    # "codeSize":I
    .local v1, "codeSize":I
    invoke-virtual/range {p3 .. p3}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    invoke-virtual/range {p3 .. p3}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    move-result v11

    add-int/2addr v11, v9

    invoke-virtual {v2, v11}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    .line 667
    .end local v10    # "curCmd":Lcom/github/junrar/unpack/vm/VMPreparedCommand;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/vm/RarVM;->fgetbits()I

    move-result v10

    .line 668
    .local v10, "dataFlag":I
    invoke-virtual {v0, v9}, Lcom/github/junrar/unpack/vm/RarVM;->faddbits(I)V

    .line 674
    and-int v11, v10, v3

    if-eqz v11, :cond_3

    .line 675
    invoke-static/range {p0 .. p0}, Lcom/github/junrar/unpack/vm/RarVM;->ReadData(Lcom/github/junrar/unpack/vm/BitInput;)I

    move-result v11

    int-to-long v11, v11

    const-wide/16 v13, 0x0

    and-long/2addr v11, v13

    .line 676
    .local v11, "dataSize":J
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    iget v14, v0, Lcom/github/junrar/unpack/vm/RarVM;->inAddr:I

    if-ge v14, v1, :cond_3

    int-to-long v14, v13

    cmp-long v14, v14, v11

    if-gez v14, :cond_3

    .line 677
    invoke-virtual/range {p3 .. p3}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getStaticData()Ljava/util/Vector;

    move-result-object v14

    .line 678
    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/vm/RarVM;->fgetbits()I

    move-result v15

    ushr-int/2addr v15, v6

    int-to-byte v15, v15

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    .line 677
    invoke-virtual {v14, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 679
    invoke-virtual {v0, v6}, Lcom/github/junrar/unpack/vm/RarVM;->faddbits(I)V

    .line 676
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 683
    .end local v11    # "dataSize":J
    .end local v13    # "i":I
    :cond_3
    :goto_3
    iget v11, v0, Lcom/github/junrar/unpack/vm/RarVM;->inAddr:I

    if-ge v11, v1, :cond_d

    .line 684
    new-instance v11, Lcom/github/junrar/unpack/vm/VMPreparedCommand;

    invoke-direct {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;-><init>()V

    .line 685
    .local v11, "curCmd":Lcom/github/junrar/unpack/vm/VMPreparedCommand;
    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/vm/RarVM;->fgetbits()I

    move-result v12

    .line 686
    .local v12, "data":I
    and-int v13, v12, v3

    const/4 v14, 0x4

    if-nez v13, :cond_4

    .line 687
    ushr-int/lit8 v13, v12, 0xc

    invoke-static {v13}, Lcom/github/junrar/unpack/vm/VMCommands;->findVMCommand(I)Lcom/github/junrar/unpack/vm/VMCommands;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V

    .line 688
    invoke-virtual {v0, v14}, Lcom/github/junrar/unpack/vm/RarVM;->faddbits(I)V

    goto :goto_4

    .line 690
    :cond_4
    ushr-int/lit8 v13, v12, 0xa

    add-int/lit8 v13, v13, -0x18

    .line 691
    invoke-static {v13}, Lcom/github/junrar/unpack/vm/VMCommands;->findVMCommand(I)Lcom/github/junrar/unpack/vm/VMCommands;

    move-result-object v13

    .line 690
    invoke-virtual {v11, v13}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V

    .line 692
    const/4 v13, 0x6

    invoke-virtual {v0, v13}, Lcom/github/junrar/unpack/vm/RarVM;->faddbits(I)V

    .line 694
    :goto_4
    sget-object v13, Lcom/github/junrar/unpack/vm/VMCmdFlags;->VM_CmdFlags:[B

    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/github/junrar/unpack/vm/VMCommands;

    move-result-object v15

    invoke-virtual {v15}, Lcom/github/junrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v15

    aget-byte v13, v13, v15

    and-int/2addr v13, v14

    if-eqz v13, :cond_6

    .line 695
    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/vm/RarVM;->fgetbits()I

    move-result v13

    ushr-int/lit8 v13, v13, 0xf

    if-ne v13, v9, :cond_5

    move v13, v9

    goto :goto_5

    :cond_5
    move v13, v7

    :goto_5
    invoke-virtual {v11, v13}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setByteMode(Z)V

    .line 696
    invoke-virtual {v0, v9}, Lcom/github/junrar/unpack/vm/RarVM;->faddbits(I)V

    goto :goto_6

    .line 698
    :cond_6
    invoke-virtual {v11, v7}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setByteMode(Z)V

    .line 700
    :goto_6
    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v13

    sget-object v14, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPNONE:Lcom/github/junrar/unpack/vm/VMOpType;

    invoke-virtual {v13, v14}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/github/junrar/unpack/vm/VMOpType;)V

    .line 701
    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp2()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v13

    sget-object v14, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPNONE:Lcom/github/junrar/unpack/vm/VMOpType;

    invoke-virtual {v13, v14}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/github/junrar/unpack/vm/VMOpType;)V

    .line 703
    sget-object v13, Lcom/github/junrar/unpack/vm/VMCmdFlags;->VM_CmdFlags:[B

    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/github/junrar/unpack/vm/VMCommands;

    move-result-object v14

    .line 704
    invoke-virtual {v14}, Lcom/github/junrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v14

    aget-byte v13, v13, v14

    and-int/lit8 v13, v13, 0x3

    .line 706
    .local v13, "opNum":I
    if-lez v13, :cond_c

    .line 707
    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v14

    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v15

    invoke-direct {v0, v14, v15}, Lcom/github/junrar/unpack/vm/RarVM;->decodeArg(Lcom/github/junrar/unpack/vm/VMPreparedOperand;Z)V

    .line 708
    const/4 v14, 0x2

    if-ne v13, v14, :cond_7

    .line 709
    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp2()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v14

    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v15

    invoke-direct {v0, v14, v15}, Lcom/github/junrar/unpack/vm/RarVM;->decodeArg(Lcom/github/junrar/unpack/vm/VMPreparedOperand;Z)V

    goto :goto_9

    .line 711
    :cond_7
    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->getType()Lcom/github/junrar/unpack/vm/VMOpType;

    move-result-object v14

    sget-object v15, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPINT:Lcom/github/junrar/unpack/vm/VMOpType;

    if-ne v14, v15, :cond_c

    sget-object v14, Lcom/github/junrar/unpack/vm/VMCmdFlags;->VM_CmdFlags:[B

    .line 712
    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/github/junrar/unpack/vm/VMCommands;

    move-result-object v15

    .line 713
    invoke-virtual {v15}, Lcom/github/junrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v15

    aget-byte v14, v14, v15

    and-int/lit8 v14, v14, 0x18

    if-eqz v14, :cond_c

    .line 714
    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->getData()I

    move-result v14

    .line 715
    .local v14, "distance":I
    const/16 v15, 0x100

    if-lt v14, v15, :cond_8

    .line 716
    add-int/lit16 v14, v14, -0x100

    goto :goto_8

    .line 718
    :cond_8
    const/16 v15, 0x88

    if-lt v14, v15, :cond_9

    .line 719
    add-int/lit16 v14, v14, -0x108

    goto :goto_7

    .line 721
    :cond_9
    const/16 v15, 0x10

    if-lt v14, v15, :cond_a

    .line 722
    add-int/lit8 v14, v14, -0x8

    goto :goto_7

    .line 724
    :cond_a
    if-lt v14, v6, :cond_b

    .line 725
    add-int/lit8 v14, v14, -0x10

    .line 729
    :cond_b
    :goto_7
    invoke-virtual/range {p3 .. p3}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    move-result v15

    add-int/2addr v14, v15

    .line 731
    :goto_8
    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 735
    .end local v14    # "distance":I
    :cond_c
    :goto_9
    invoke-virtual/range {p3 .. p3}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    move-result v14

    add-int/2addr v14, v9

    invoke-virtual {v2, v14}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    .line 736
    invoke-virtual/range {p3 .. p3}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    .end local v11    # "curCmd":Lcom/github/junrar/unpack/vm/VMPreparedCommand;
    .end local v12    # "data":I
    .end local v13    # "opNum":I
    goto/16 :goto_3

    .line 739
    .end local v8    # "filterType":Lcom/github/junrar/unpack/vm/VMStandardFilters;
    .end local v10    # "dataFlag":I
    :cond_d
    new-instance v3, Lcom/github/junrar/unpack/vm/VMPreparedCommand;

    invoke-direct {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;-><init>()V

    .line 740
    .local v3, "curCmd":Lcom/github/junrar/unpack/vm/VMPreparedCommand;
    sget-object v6, Lcom/github/junrar/unpack/vm/VMCommands;->VM_RET:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v3, v6}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V

    .line 743
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v6

    sget-object v7, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPNONE:Lcom/github/junrar/unpack/vm/VMOpType;

    invoke-virtual {v6, v7}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/github/junrar/unpack/vm/VMOpType;)V

    .line 744
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp2()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v6

    sget-object v7, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPNONE:Lcom/github/junrar/unpack/vm/VMOpType;

    invoke-virtual {v6, v7}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/github/junrar/unpack/vm/VMOpType;)V

    .line 755
    invoke-virtual/range {p3 .. p3}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    invoke-virtual/range {p3 .. p3}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    move-result v6

    add-int/2addr v6, v9

    invoke-virtual {v2, v6}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    .line 758
    if-eqz v1, :cond_e

    .line 759
    invoke-direct {v0, v2}, Lcom/github/junrar/unpack/vm/RarVM;->optimize(Lcom/github/junrar/unpack/vm/VMPreparedProgram;)V

    .line 761
    :cond_e
    return-void
.end method

.method public setLowEndianValue(Ljava/util/Vector;II)V
    .locals 2
    .param p2, "offset"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/Byte;",
            ">;II)V"
        }
    .end annotation

    .line 128
    .local p1, "mem":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Byte;>;"
    add-int/lit8 v0, p2, 0x0

    and-int/lit16 v1, p3, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 129
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 130
    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 131
    add-int/lit8 v0, p2, 0x3

    ushr-int/lit8 v1, p3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method

.method public setLowEndianValue([BII)V
    .locals 0
    .param p1, "mem"    # [B
    .param p2, "offset"    # I
    .param p3, "value"    # I

    .line 121
    invoke-static {p1, p2, p3}, Lcom/github/junrar/io/Raw;->writeIntLittleEndian([BII)V

    .line 126
    return-void
.end method

.method public setMemory(I[BII)V
    .locals 5
    .param p1, "pos"    # I
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "dataSize"    # I

    .line 1201
    const/high16 v0, 0x40000

    if-ge p1, v0, :cond_1

    .line 1203
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    sub-int/2addr v2, p3

    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1204
    sub-int v2, v0, p1

    if-ge v2, v1, :cond_0

    .line 1205
    goto :goto_1

    .line 1207
    :cond_0
    iget-object v2, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int v3, p1, v1

    add-int v4, p3, v1

    aget-byte v4, p2, v4

    aput-byte v4, v2, v3

    .line 1203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1210
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method
