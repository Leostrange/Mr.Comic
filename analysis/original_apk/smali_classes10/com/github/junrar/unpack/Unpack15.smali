.class public abstract Lcom/github/junrar/unpack/Unpack15;
.super Lcom/github/junrar/unpack/vm/BitInput;
.source "Unpack15.java"


# static fields
.field private static final DecHf0:[I

.field private static final DecHf1:[I

.field private static final DecHf2:[I

.field private static final DecHf3:[I

.field private static final DecHf4:[I

.field private static final DecL1:[I

.field private static final DecL2:[I

.field private static final PosHf0:[I

.field private static final PosHf1:[I

.field private static final PosHf2:[I

.field private static final PosHf3:[I

.field private static final PosHf4:[I

.field private static final PosL1:[I

.field private static final PosL2:[I

.field private static final STARTHF0:I = 0x4

.field private static final STARTHF1:I = 0x5

.field private static final STARTHF2:I = 0x5

.field private static final STARTHF3:I = 0x6

.field private static final STARTHF4:I = 0x8

.field private static final STARTL1:I = 0x2

.field private static final STARTL2:I = 0x3

.field static ShortLen1:[I

.field static ShortLen2:[I

.field static ShortXor1:[I

.field static ShortXor2:[I


# instance fields
.field protected AvrLn1:I

.field protected AvrLn2:I

.field protected AvrLn3:I

.field protected AvrPlc:I

.field protected AvrPlcB:I

.field protected Buf60:I

.field protected ChSet:[I

.field protected ChSetA:[I

.field protected ChSetB:[I

.field protected ChSetC:[I

.field protected FlagBuf:I

.field protected FlagsCnt:I

.field protected LCount:I

.field protected MaxDist3:I

.field protected NToPl:[I

.field protected NToPlB:[I

.field protected NToPlC:[I

.field protected Nhfb:I

.field protected Nlzb:I

.field protected NumHuf:I

.field protected Place:[I

.field protected PlaceA:[I

.field protected PlaceB:[I

.field protected PlaceC:[I

.field protected StMode:I

.field protected destUnpSize:J

.field protected lastDist:I

.field protected lastLength:I

.field protected oldDist:[I

.field protected oldDistPtr:I

.field protected readBorder:I

.field protected readTop:I

.field protected suspended:Z

.field protected unpAllBuf:Z

.field protected unpIO:Lcom/github/junrar/unpack/ComprDataIO;

.field protected unpPtr:I

.field protected unpSomeRead:Z

.field protected window:[B

.field protected wrPtr:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 77
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/junrar/unpack/Unpack15;->DecL1:[I

    .line 80
    const/16 v0, 0xd

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/github/junrar/unpack/Unpack15;->PosL1:[I

    .line 84
    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/github/junrar/unpack/Unpack15;->DecL2:[I

    .line 87
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/github/junrar/unpack/Unpack15;->PosL2:[I

    .line 91
    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    sput-object v1, Lcom/github/junrar/unpack/Unpack15;->DecHf0:[I

    .line 94
    new-array v1, v0, [I

    fill-array-data v1, :array_5

    sput-object v1, Lcom/github/junrar/unpack/Unpack15;->PosHf0:[I

    .line 99
    const/16 v1, 0x8

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    sput-object v2, Lcom/github/junrar/unpack/Unpack15;->DecHf1:[I

    .line 102
    new-array v2, v0, [I

    fill-array-data v2, :array_7

    sput-object v2, Lcom/github/junrar/unpack/Unpack15;->PosHf1:[I

    .line 107
    new-array v1, v1, [I

    fill-array-data v1, :array_8

    sput-object v1, Lcom/github/junrar/unpack/Unpack15;->DecHf2:[I

    .line 110
    new-array v1, v0, [I

    fill-array-data v1, :array_9

    sput-object v1, Lcom/github/junrar/unpack/Unpack15;->PosHf2:[I

    .line 114
    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_a

    sput-object v1, Lcom/github/junrar/unpack/Unpack15;->DecHf3:[I

    .line 117
    new-array v1, v0, [I

    fill-array-data v1, :array_b

    sput-object v1, Lcom/github/junrar/unpack/Unpack15;->PosHf3:[I

    .line 121
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_c

    sput-object v1, Lcom/github/junrar/unpack/Unpack15;->DecHf4:[I

    .line 124
    new-array v0, v0, [I

    fill-array-data v0, :array_d

    sput-object v0, Lcom/github/junrar/unpack/Unpack15;->PosHf4:[I

    .line 126
    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_e

    sput-object v1, Lcom/github/junrar/unpack/Unpack15;->ShortLen1:[I

    .line 128
    const/16 v1, 0xf

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    sput-object v2, Lcom/github/junrar/unpack/Unpack15;->ShortXor1:[I

    .line 131
    new-array v0, v0, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/github/junrar/unpack/Unpack15;->ShortLen2:[I

    .line 133
    new-array v0, v1, [I

    fill-array-data v0, :array_11

    sput-object v0, Lcom/github/junrar/unpack/Unpack15;->ShortXor2:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x8000
        0xa000
        0xc000
        0xd000
        0xe000
        0xea00
        0xee00
        0xf000
        0xf200
        0xf200
        0xffff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x2
        0x3
        0x5
        0x7
        0xb
        0x10
        0x14
        0x18
        0x20
        0x20
    .end array-data

    :array_2
    .array-data 4
        0xa000
        0xc000
        0xd000
        0xe000
        0xea00
        0xee00
        0xf000
        0xf200
        0xf240
        0xffff
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x5
        0x7
        0x9
        0xd
        0x12
        0x16
        0x1a
        0x22
        0x24
    .end array-data

    :array_4
    .array-data 4
        0x8000
        0xc000
        0xe000
        0xf200
        0xf200
        0xf200
        0xf200
        0xf200
        0xffff
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x8
        0x10
        0x18
        0x21
        0x21
        0x21
        0x21
        0x21
    .end array-data

    :array_6
    .array-data 4
        0x2000
        0xc000
        0xe000
        0xf000
        0xf200
        0xf200
        0xf7e0
        0xffff
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x2c
        0x3c
        0x4c
        0x50
        0x50
        0x7f
    .end array-data

    :array_8
    .array-data 4
        0x1000
        0x2400
        0x8000
        0xc000
        0xfa00
        0xffff
        0xffff
        0xffff
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x7
        0x35
        0x75
        0xe9
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x800
        0x2400
        0xee00
        0xfe80
        0xffff
        0xffff
        0xffff
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x10
        0xda
        0xfb
        0x0
        0x0
    .end array-data

    :array_c
    .array-data 4
        0xff00
        0xffff
        0xffff
        0xffff
        0xffff
        0xffff
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xff
        0x0
        0x0
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x3
        0x4
        0x4
        0x5
        0x6
        0x7
        0x8
        0x8
        0x4
        0x4
        0x5
        0x6
        0x6
        0x4
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x0
        0xa0
        0xd0
        0xe0
        0xf0
        0xf8
        0xfc
        0xfe
        0xff
        0xc0
        0x80
        0x90
        0x98
        0x9c
        0xb0
    .end array-data

    :array_10
    .array-data 4
        0x2
        0x3
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x4
        0x4
        0x5
        0x6
        0x6
        0x4
        0x0
    .end array-data

    :array_11
    .array-data 4
        0x0
        0x40
        0x60
        0xa0
        0xd0
        0xe0
        0xf0
        0xf8
        0xfc
        0xc0
        0x80
        0x90
        0x98
        0x9c
        0xb0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/github/junrar/unpack/vm/BitInput;-><init>()V

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/github/junrar/unpack/Unpack15;->oldDist:[I

    .line 58
    const/16 v0, 0x100

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->ChSet:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetA:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetB:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetC:[I

    .line 61
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->Place:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->PlaceA:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->PlaceB:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->PlaceC:[I

    .line 64
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->NToPl:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->NToPlB:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/github/junrar/unpack/Unpack15;->NToPlC:[I

    return-void
.end method

.method private getShortLen1(I)I
    .locals 1
    .param p1, "pos"    # I

    .line 239
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->Buf60:I

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/github/junrar/unpack/Unpack15;->ShortLen1:[I

    aget v0, v0, p1

    :goto_0
    return v0
.end method

.method private getShortLen2(I)I
    .locals 2
    .param p1, "pos"    # I

    .line 243
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget v1, p0, Lcom/github/junrar/unpack/Unpack15;->Buf60:I

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/github/junrar/unpack/Unpack15;->ShortLen2:[I

    aget v1, v0, p1

    :goto_0
    return v1
.end method


# virtual methods
.method protected corrHuff([I[I)V
    .locals 5
    .param p1, "CharSet"    # [I
    .param p2, "NumToPlace"    # [I

    .line 561
    const/4 v0, 0x0

    .line 562
    .local v0, "pos":I
    const/4 v1, 0x7

    .local v1, "I":I
    :goto_0
    const/16 v2, 0x20

    if-ltz v1, :cond_1

    .line 563
    const/4 v3, 0x0

    .local v3, "J":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 564
    aget v4, p1, v0

    and-int/lit16 v4, v4, -0x100

    or-int/2addr v4, v1

    aput v4, p1, v0

    .line 563
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 562
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 568
    .end local v3    # "J":I
    :cond_1
    const/4 v3, 0x0

    invoke-static {p2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 569
    const/4 v1, 0x6

    :goto_2
    if-ltz v1, :cond_2

    .line 570
    rsub-int/lit8 v3, v1, 0x7

    mul-int/2addr v3, v2

    aput v3, p2, v1

    .line 569
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 572
    :cond_2
    return-void
.end method

.method protected decodeNum(II[I[I)I
    .locals 3
    .param p1, "Num"    # I
    .param p2, "StartPos"    # I
    .param p3, "DecTab"    # [I
    .param p4, "PosTab"    # [I

    .line 602
    const v0, 0xfff0

    and-int/2addr p1, v0

    const/4 v0, 0x0

    .local v0, "I":I
    :goto_0
    aget v1, p3, v0

    if-gt v1, p1, :cond_0

    .line 603
    add-int/lit8 p2, p2, 0x1

    .line 602
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 605
    :cond_0
    invoke-virtual {p0, p2}, Lcom/github/junrar/unpack/Unpack15;->faddbits(I)V

    .line 606
    if-eqz v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget v1, p3, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sub-int v1, p1, v1

    rsub-int/lit8 v2, p2, 0x10

    ushr-int/2addr v1, v2

    aget v2, p4, p2

    add-int/2addr v1, v2

    return v1
.end method

.method protected getFlagsBuf()V
    .locals 6

    .line 515
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v0

    sget-object v1, Lcom/github/junrar/unpack/Unpack15;->DecHf2:[I

    sget-object v2, Lcom/github/junrar/unpack/Unpack15;->PosHf2:[I

    const/4 v3, 0x5

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v0

    .line 518
    .local v0, "FlagsPlace":I
    :goto_0
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetC:[I

    aget v1, v1, v0

    .line 519
    .local v1, "Flags":I
    ushr-int/lit8 v2, v1, 0x8

    iput v2, p0, Lcom/github/junrar/unpack/Unpack15;->FlagBuf:I

    .line 520
    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack15;->NToPlC:[I

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "Flags":I
    .local v3, "Flags":I
    and-int/lit16 v1, v1, 0xff

    aget v4, v2, v1

    add-int/lit8 v5, v4, 0x1

    aput v5, v2, v1

    move v1, v4

    .line 521
    .local v1, "NewFlagsPlace":I
    and-int/lit16 v2, v3, 0xff

    if-eqz v2, :cond_0

    .line 522
    nop

    .line 527
    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetC:[I

    iget-object v4, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetC:[I

    aget v4, v4, v1

    aput v4, v2, v0

    .line 528
    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetC:[I

    aput v3, v2, v1

    .line 529
    return-void

    .line 524
    :cond_0
    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetC:[I

    iget-object v4, p0, Lcom/github/junrar/unpack/Unpack15;->NToPlC:[I

    invoke-virtual {p0, v2, v4}, Lcom/github/junrar/unpack/Unpack15;->corrHuff([I[I)V

    goto :goto_0
.end method

.method protected huffDecode()V
    .locals 9

    .line 441
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v0

    .line 443
    .local v0, "BitField":I
    iget v1, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlc:I

    const/16 v2, 0x75ff

    const/4 v3, 0x4

    const/16 v4, 0x8

    const/4 v5, 0x5

    if-le v1, v2, :cond_0

    .line 444
    sget-object v1, Lcom/github/junrar/unpack/Unpack15;->DecHf4:[I

    sget-object v2, Lcom/github/junrar/unpack/Unpack15;->PosHf4:[I

    invoke-virtual {p0, v0, v4, v1, v2}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v1

    .local v1, "BytePlace":I
    goto :goto_0

    .line 446
    .end local v1    # "BytePlace":I
    :cond_0
    iget v1, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlc:I

    const/16 v2, 0x5dff

    if-le v1, v2, :cond_1

    .line 447
    sget-object v1, Lcom/github/junrar/unpack/Unpack15;->DecHf3:[I

    sget-object v2, Lcom/github/junrar/unpack/Unpack15;->PosHf3:[I

    const/4 v6, 0x6

    invoke-virtual {p0, v0, v6, v1, v2}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v1

    .restart local v1    # "BytePlace":I
    goto :goto_0

    .line 449
    .end local v1    # "BytePlace":I
    :cond_1
    iget v1, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlc:I

    const/16 v2, 0x35ff

    if-le v1, v2, :cond_2

    .line 450
    sget-object v1, Lcom/github/junrar/unpack/Unpack15;->DecHf2:[I

    sget-object v2, Lcom/github/junrar/unpack/Unpack15;->PosHf2:[I

    invoke-virtual {p0, v0, v5, v1, v2}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v1

    .restart local v1    # "BytePlace":I
    goto :goto_0

    .line 452
    .end local v1    # "BytePlace":I
    :cond_2
    iget v1, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlc:I

    const/16 v2, 0xdff

    if-le v1, v2, :cond_3

    .line 453
    sget-object v1, Lcom/github/junrar/unpack/Unpack15;->DecHf1:[I

    sget-object v2, Lcom/github/junrar/unpack/Unpack15;->PosHf1:[I

    invoke-virtual {p0, v0, v5, v1, v2}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v1

    .restart local v1    # "BytePlace":I
    goto :goto_0

    .line 456
    .end local v1    # "BytePlace":I
    :cond_3
    sget-object v1, Lcom/github/junrar/unpack/Unpack15;->DecHf0:[I

    sget-object v2, Lcom/github/junrar/unpack/Unpack15;->PosHf0:[I

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v1

    .line 462
    .restart local v1    # "BytePlace":I
    :goto_0
    const/16 v2, 0xff

    and-int/2addr v1, v2

    .line 463
    iget v6, p0, Lcom/github/junrar/unpack/Unpack15;->StMode:I

    const/16 v7, 0x10

    const/4 v8, 0x1

    if-eqz v6, :cond_7

    .line 464
    if-nez v1, :cond_4

    const/16 v6, 0xfff

    if-le v0, v6, :cond_4

    .line 465
    const/16 v1, 0x100

    .line 467
    :cond_4
    const/4 v6, -0x1

    add-int/2addr v1, v6

    if-ne v1, v6, :cond_8

    .line 468
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v0

    .line 469
    invoke-virtual {p0, v8}, Lcom/github/junrar/unpack/Unpack15;->faddbits(I)V

    .line 470
    const v2, 0x8000

    and-int/2addr v2, v0

    if-eqz v2, :cond_5

    .line 471
    const/4 v2, 0x0

    iput v2, p0, Lcom/github/junrar/unpack/Unpack15;->StMode:I

    iput v2, p0, Lcom/github/junrar/unpack/Unpack15;->NumHuf:I

    .line 472
    return-void

    .line 474
    :cond_5
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x3

    :goto_1
    move v2, v3

    .line 475
    .local v2, "Length":I
    invoke-virtual {p0, v8}, Lcom/github/junrar/unpack/Unpack15;->faddbits(I)V

    .line 476
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v3

    sget-object v4, Lcom/github/junrar/unpack/Unpack15;->DecHf2:[I

    sget-object v6, Lcom/github/junrar/unpack/Unpack15;->PosHf2:[I

    invoke-virtual {p0, v3, v5, v4, v6}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v3

    .line 477
    .local v3, "Distance":I
    shl-int/lit8 v4, v3, 0x5

    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v6

    ushr-int/lit8 v6, v6, 0xb

    or-int v3, v4, v6

    .line 478
    invoke-virtual {p0, v5}, Lcom/github/junrar/unpack/Unpack15;->faddbits(I)V

    .line 479
    invoke-virtual {p0, v3, v2}, Lcom/github/junrar/unpack/Unpack15;->oldCopyString(II)V

    .line 480
    return-void

    .line 484
    .end local v2    # "Length":I
    .end local v3    # "Distance":I
    :cond_7
    iget v3, p0, Lcom/github/junrar/unpack/Unpack15;->NumHuf:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/github/junrar/unpack/Unpack15;->NumHuf:I

    if-lt v3, v7, :cond_8

    iget v3, p0, Lcom/github/junrar/unpack/Unpack15;->FlagsCnt:I

    if-nez v3, :cond_8

    .line 485
    iput v8, p0, Lcom/github/junrar/unpack/Unpack15;->StMode:I

    .line 488
    :cond_8
    iget v3, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlc:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlc:I

    .line 489
    iget v3, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlc:I

    iget v5, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlc:I

    ushr-int/2addr v5, v4

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlc:I

    .line 490
    iget v3, p0, Lcom/github/junrar/unpack/Unpack15;->Nhfb:I

    add-int/2addr v3, v7

    iput v3, p0, Lcom/github/junrar/unpack/Unpack15;->Nhfb:I

    .line 491
    iget v3, p0, Lcom/github/junrar/unpack/Unpack15;->Nhfb:I

    if-le v3, v2, :cond_9

    .line 492
    const/16 v3, 0x90

    iput v3, p0, Lcom/github/junrar/unpack/Unpack15;->Nhfb:I

    .line 493
    iget v3, p0, Lcom/github/junrar/unpack/Unpack15;->Nlzb:I

    ushr-int/2addr v3, v8

    iput v3, p0, Lcom/github/junrar/unpack/Unpack15;->Nlzb:I

    .line 496
    :cond_9
    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack15;->window:[B

    iget v5, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    iget-object v6, p0, Lcom/github/junrar/unpack/Unpack15;->ChSet:[I

    aget v6, v6, v1

    ushr-int/lit8 v4, v6, 0x8

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    .line 497
    iget-wide v3, p0, Lcom/github/junrar/unpack/Unpack15;->destUnpSize:J

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/github/junrar/unpack/Unpack15;->destUnpSize:J

    .line 500
    :goto_2
    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack15;->ChSet:[I

    aget v3, v3, v1

    .line 501
    .local v3, "CurByte":I
    iget-object v4, p0, Lcom/github/junrar/unpack/Unpack15;->NToPl:[I

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "CurByte":I
    .local v5, "CurByte":I
    and-int/2addr v3, v2

    aget v6, v4, v3

    add-int/lit8 v7, v6, 0x1

    aput v7, v4, v3

    move v3, v6

    .line 502
    .local v3, "NewBytePlace":I
    and-int/lit16 v4, v5, 0xff

    const/16 v6, 0xa1

    if-le v4, v6, :cond_a

    .line 503
    iget-object v4, p0, Lcom/github/junrar/unpack/Unpack15;->ChSet:[I

    iget-object v6, p0, Lcom/github/junrar/unpack/Unpack15;->NToPl:[I

    invoke-virtual {p0, v4, v6}, Lcom/github/junrar/unpack/Unpack15;->corrHuff([I[I)V

    goto :goto_2

    .line 509
    :cond_a
    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack15;->ChSet:[I

    iget-object v4, p0, Lcom/github/junrar/unpack/Unpack15;->ChSet:[I

    aget v4, v4, v3

    aput v4, v2, v1

    .line 510
    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack15;->ChSet:[I

    aput v5, v2, v3

    .line 511
    return-void
.end method

.method protected initHuff()V
    .locals 4

    .line 546
    const/4 v0, 0x0

    .local v0, "I":I
    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->Place:[I

    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack15;->PlaceA:[I

    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack15;->PlaceB:[I

    aput v0, v3, v0

    aput v0, v2, v0

    aput v0, v1, v0

    .line 548
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->PlaceC:[I

    not-int v2, v0

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v0

    .line 549
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->ChSet:[I

    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetB:[I

    shl-int/lit8 v3, v0, 0x8

    aput v3, v2, v0

    aput v3, v1, v0

    .line 550
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetA:[I

    aput v0, v1, v0

    .line 551
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetC:[I

    not-int v2, v0

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aput v2, v1, v0

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    .end local v0    # "I":I
    :cond_0
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack15;->NToPl:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 555
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack15;->NToPlB:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 556
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack15;->NToPlC:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 557
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetB:[I

    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->NToPlB:[I

    invoke-virtual {p0, v0, v1}, Lcom/github/junrar/unpack/Unpack15;->corrHuff([I[I)V

    .line 558
    return-void
.end method

.method protected longLZ()V
    .locals 15

    .line 347
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->NumHuf:I

    .line 348
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->Nlzb:I

    const/16 v1, 0x10

    add-int/2addr v0, v1

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->Nlzb:I

    .line 349
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->Nlzb:I

    const/4 v2, 0x1

    const/16 v3, 0xff

    if-le v0, v3, :cond_0

    .line 350
    const/16 v0, 0x90

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->Nlzb:I

    .line 351
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->Nhfb:I

    ushr-int/2addr v0, v2

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->Nhfb:I

    .line 353
    :cond_0
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn2:I

    .line 355
    .local v0, "OldAvr2":I
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v4

    .line 356
    .local v4, "BitField":I
    iget v5, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn2:I

    const/16 v6, 0x7a

    const/16 v7, 0x100

    const/16 v8, 0x40

    const/4 v9, 0x3

    if-lt v5, v6, :cond_1

    .line 357
    sget-object v1, Lcom/github/junrar/unpack/Unpack15;->DecL2:[I

    sget-object v5, Lcom/github/junrar/unpack/Unpack15;->PosL2:[I

    invoke-virtual {p0, v4, v9, v1, v5}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v1

    .local v1, "Length":I
    goto :goto_1

    .line 359
    .end local v1    # "Length":I
    :cond_1
    iget v5, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn2:I

    if-lt v5, v8, :cond_2

    .line 360
    sget-object v1, Lcom/github/junrar/unpack/Unpack15;->DecL1:[I

    sget-object v5, Lcom/github/junrar/unpack/Unpack15;->PosL1:[I

    const/4 v6, 0x2

    invoke-virtual {p0, v4, v6, v1, v5}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v1

    .restart local v1    # "Length":I
    goto :goto_1

    .line 362
    .end local v1    # "Length":I
    :cond_2
    if-ge v4, v7, :cond_3

    .line 363
    move v5, v4

    .line 364
    .local v5, "Length":I
    invoke-virtual {p0, v1}, Lcom/github/junrar/unpack/Unpack15;->faddbits(I)V

    move v1, v5

    goto :goto_1

    .line 366
    .end local v5    # "Length":I
    :cond_3
    const/4 v1, 0x0

    .line 367
    .restart local v1    # "Length":I
    :goto_0
    shl-int v5, v4, v1

    const v6, 0x8000

    and-int/2addr v5, v6

    if-nez v5, :cond_4

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    :cond_4
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Lcom/github/junrar/unpack/Unpack15;->faddbits(I)V

    .line 374
    :goto_1
    iget v5, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn2:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn2:I

    .line 375
    iget v5, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn2:I

    iget v6, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn2:I

    const/4 v10, 0x5

    ushr-int/2addr v6, v10

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn2:I

    .line 377
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v4

    .line 378
    iget v5, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlcB:I

    const/16 v6, 0x28ff

    const/4 v11, 0x4

    if-le v5, v6, :cond_5

    .line 379
    sget-object v5, Lcom/github/junrar/unpack/Unpack15;->DecHf2:[I

    sget-object v6, Lcom/github/junrar/unpack/Unpack15;->PosHf2:[I

    invoke-virtual {p0, v4, v10, v5, v6}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v5

    .local v5, "DistancePlace":I
    goto :goto_2

    .line 381
    .end local v5    # "DistancePlace":I
    :cond_5
    iget v5, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlcB:I

    const/16 v6, 0x6ff

    if-le v5, v6, :cond_6

    .line 382
    sget-object v5, Lcom/github/junrar/unpack/Unpack15;->DecHf1:[I

    sget-object v6, Lcom/github/junrar/unpack/Unpack15;->PosHf1:[I

    invoke-virtual {p0, v4, v10, v5, v6}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v5

    .restart local v5    # "DistancePlace":I
    goto :goto_2

    .line 384
    .end local v5    # "DistancePlace":I
    :cond_6
    sget-object v5, Lcom/github/junrar/unpack/Unpack15;->DecHf0:[I

    sget-object v6, Lcom/github/junrar/unpack/Unpack15;->PosHf0:[I

    invoke-virtual {p0, v4, v11, v5, v6}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v5

    .line 387
    .restart local v5    # "DistancePlace":I
    :goto_2
    iget v6, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlcB:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlcB:I

    .line 388
    iget v6, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlcB:I

    iget v10, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlcB:I

    ushr-int/lit8 v10, v10, 0x8

    sub-int/2addr v6, v10

    iput v6, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlcB:I

    .line 390
    :goto_3
    iget-object v6, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetB:[I

    and-int/lit16 v10, v5, 0xff

    aget v6, v6, v10

    .line 391
    .local v6, "Distance":I
    iget-object v10, p0, Lcom/github/junrar/unpack/Unpack15;->NToPlB:[I

    add-int/lit8 v12, v6, 0x1

    .end local v6    # "Distance":I
    .local v12, "Distance":I
    and-int/2addr v6, v3

    aget v13, v10, v6

    add-int/lit8 v14, v13, 0x1

    aput v14, v10, v6

    move v6, v13

    .line 392
    .local v6, "NewDistancePlace":I
    and-int/lit16 v10, v12, 0xff

    if-nez v10, :cond_7

    .line 393
    iget-object v10, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetB:[I

    iget-object v13, p0, Lcom/github/junrar/unpack/Unpack15;->NToPlB:[I

    invoke-virtual {p0, v10, v13}, Lcom/github/junrar/unpack/Unpack15;->corrHuff([I[I)V

    goto :goto_3

    .line 399
    :cond_7
    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetB:[I

    iget-object v10, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetB:[I

    aget v10, v10, v6

    aput v10, v3, v5

    .line 400
    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetB:[I

    aput v12, v3, v6

    .line 402
    const v3, 0xff00

    and-int/2addr v3, v12

    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v10

    ushr-int/lit8 v10, v10, 0x8

    or-int/2addr v3, v10

    ushr-int/2addr v3, v2

    .line 403
    .end local v12    # "Distance":I
    .local v3, "Distance":I
    const/4 v10, 0x7

    invoke-virtual {p0, v10}, Lcom/github/junrar/unpack/Unpack15;->faddbits(I)V

    .line 405
    iget v10, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn3:I

    .line 406
    .local v10, "OldAvr3":I
    if-eq v1, v2, :cond_9

    if-eq v1, v11, :cond_9

    .line 407
    if-nez v1, :cond_8

    iget v11, p0, Lcom/github/junrar/unpack/Unpack15;->MaxDist3:I

    if-gt v3, v11, :cond_8

    .line 408
    iget v11, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn3:I

    add-int/2addr v11, v2

    iput v11, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn3:I

    .line 409
    iget v2, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn3:I

    iget v11, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn3:I

    ushr-int/lit8 v11, v11, 0x8

    sub-int/2addr v2, v11

    iput v2, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn3:I

    goto :goto_4

    .line 411
    :cond_8
    iget v11, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn3:I

    if-lez v11, :cond_9

    .line 412
    iget v11, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn3:I

    sub-int/2addr v11, v2

    iput v11, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn3:I

    .line 416
    :cond_9
    :goto_4
    add-int/2addr v1, v9

    .line 417
    iget v2, p0, Lcom/github/junrar/unpack/Unpack15;->MaxDist3:I

    if-lt v3, v2, :cond_a

    .line 418
    add-int/lit8 v1, v1, 0x1

    .line 420
    :cond_a
    if-gt v3, v7, :cond_b

    .line 421
    add-int/lit8 v1, v1, 0x8

    .line 423
    :cond_b
    const/16 v2, 0xb0

    if-gt v10, v2, :cond_d

    iget v2, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlc:I

    const/16 v7, 0x2a00

    if-lt v2, v7, :cond_c

    if-ge v0, v8, :cond_c

    goto :goto_5

    .line 426
    :cond_c
    const/16 v2, 0x2001

    iput v2, p0, Lcom/github/junrar/unpack/Unpack15;->MaxDist3:I

    goto :goto_6

    .line 424
    :cond_d
    :goto_5
    const/16 v2, 0x7f00

    iput v2, p0, Lcom/github/junrar/unpack/Unpack15;->MaxDist3:I

    .line 428
    :goto_6
    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack15;->oldDist:[I

    iget v7, p0, Lcom/github/junrar/unpack/Unpack15;->oldDistPtr:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/github/junrar/unpack/Unpack15;->oldDistPtr:I

    aput v3, v2, v7

    .line 429
    iget v2, p0, Lcom/github/junrar/unpack/Unpack15;->oldDistPtr:I

    and-int/2addr v2, v9

    iput v2, p0, Lcom/github/junrar/unpack/Unpack15;->oldDistPtr:I

    .line 430
    iput v1, p0, Lcom/github/junrar/unpack/Unpack15;->lastLength:I

    .line 431
    iput v3, p0, Lcom/github/junrar/unpack/Unpack15;->lastDist:I

    .line 432
    invoke-virtual {p0, v3, v1}, Lcom/github/junrar/unpack/Unpack15;->oldCopyString(II)V

    .line 433
    return-void
.end method

.method protected oldCopyString(II)V
    .locals 6
    .param p1, "distance"    # I
    .param p2, "length"    # I

    .line 575
    iget-wide v0, p0, Lcom/github/junrar/unpack/Unpack15;->destUnpSize:J

    int-to-long v2, p2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/github/junrar/unpack/Unpack15;->destUnpSize:J

    .line 576
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    sub-int/2addr v0, p1

    const v1, 0x3fffff

    and-int/2addr v0, v1

    .line 577
    .local v0, "destPtr":I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 580
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->window:[B

    iget v2, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    iget v3, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    add-int/2addr v3, p2

    iget-object v4, p0, Lcom/github/junrar/unpack/Unpack15;->window:[B

    aget-byte v4, v4, v0

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 582
    iget v1, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    .line 583
    const/4 p2, 0x0

    goto :goto_1

    .line 584
    :cond_0
    add-int v3, v0, p2

    iget v4, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    if-gt v3, v4, :cond_1

    .line 586
    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->window:[B

    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack15;->window:[B

    iget v3, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    invoke-static {v1, v0, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 588
    iget v1, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    .line 589
    const/4 p2, 0x0

    goto :goto_1

    .line 592
    :cond_1
    :goto_0
    add-int/lit8 v3, p2, -0x1

    .end local p2    # "length":I
    .local v3, "length":I
    if-eqz p2, :cond_2

    .line 593
    iget-object p2, p0, Lcom/github/junrar/unpack/Unpack15;->window:[B

    iget v4, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    iget-object v5, p0, Lcom/github/junrar/unpack/Unpack15;->window:[B

    aget-byte v5, v5, v0

    aput-byte v5, p2, v4

    .line 594
    iget p2, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    add-int/2addr p2, v2

    and-int/2addr p2, v1

    iput p2, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    .line 595
    add-int/lit8 p2, v0, 0x1

    and-int v0, p2, v1

    move p2, v3

    goto :goto_0

    .line 592
    :cond_2
    move p2, v3

    .line 598
    .end local v3    # "length":I
    .restart local p2    # "length":I
    :goto_1
    return-void
.end method

.method protected oldUnpInitData(Z)V
    .locals 2
    .param p1, "Solid"    # Z

    .line 532
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 533
    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->Buf60:I

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->NumHuf:I

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn3:I

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn2:I

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn1:I

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlcB:I

    .line 534
    const/16 v1, 0x3500

    iput v1, p0, Lcom/github/junrar/unpack/Unpack15;->AvrPlc:I

    .line 535
    const/16 v1, 0x2001

    iput v1, p0, Lcom/github/junrar/unpack/Unpack15;->MaxDist3:I

    .line 536
    const/16 v1, 0x80

    iput v1, p0, Lcom/github/junrar/unpack/Unpack15;->Nlzb:I

    iput v1, p0, Lcom/github/junrar/unpack/Unpack15;->Nhfb:I

    .line 538
    :cond_0
    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagsCnt:I

    .line 539
    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagBuf:I

    .line 540
    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->StMode:I

    .line 541
    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->LCount:I

    .line 542
    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->readTop:I

    .line 543
    return-void
.end method

.method protected oldUnpWriteBuf()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 610
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    iget v1, p0, Lcom/github/junrar/unpack/Unpack15;->wrPtr:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 611
    iput-boolean v2, p0, Lcom/github/junrar/unpack/Unpack15;->unpSomeRead:Z

    .line 613
    :cond_0
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    iget v1, p0, Lcom/github/junrar/unpack/Unpack15;->wrPtr:I

    if-ge v0, v1, :cond_1

    .line 614
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack15;->unpIO:Lcom/github/junrar/unpack/ComprDataIO;

    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->window:[B

    iget v3, p0, Lcom/github/junrar/unpack/Unpack15;->wrPtr:I

    iget v4, p0, Lcom/github/junrar/unpack/Unpack15;->wrPtr:I

    neg-int v4, v4

    const v5, 0x3fffff

    and-int/2addr v4, v5

    invoke-virtual {v0, v1, v3, v4}, Lcom/github/junrar/unpack/ComprDataIO;->unpWrite([BII)V

    .line 615
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack15;->unpIO:Lcom/github/junrar/unpack/ComprDataIO;

    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->window:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    invoke-virtual {v0, v1, v3, v4}, Lcom/github/junrar/unpack/ComprDataIO;->unpWrite([BII)V

    .line 616
    iput-boolean v2, p0, Lcom/github/junrar/unpack/Unpack15;->unpAllBuf:Z

    goto :goto_0

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/github/junrar/unpack/Unpack15;->unpIO:Lcom/github/junrar/unpack/ComprDataIO;

    iget-object v1, p0, Lcom/github/junrar/unpack/Unpack15;->window:[B

    iget v2, p0, Lcom/github/junrar/unpack/Unpack15;->wrPtr:I

    iget v3, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    iget v4, p0, Lcom/github/junrar/unpack/Unpack15;->wrPtr:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/junrar/unpack/ComprDataIO;->unpWrite([BII)V

    .line 620
    :goto_0
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->wrPtr:I

    .line 621
    return-void
.end method

.method protected shortLZ()V
    .locals 10

    .line 251
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->NumHuf:I

    .line 253
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v1

    .line 254
    .local v1, "BitField":I
    iget v2, p0, Lcom/github/junrar/unpack/Unpack15;->LCount:I

    const v3, 0x8000

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 255
    invoke-virtual {p0, v4}, Lcom/github/junrar/unpack/Unpack15;->faddbits(I)V

    .line 256
    if-lt v1, v3, :cond_0

    .line 257
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->lastDist:I

    iget v2, p0, Lcom/github/junrar/unpack/Unpack15;->lastLength:I

    invoke-virtual {p0, v0, v2}, Lcom/github/junrar/unpack/Unpack15;->oldCopyString(II)V

    .line 258
    return-void

    .line 260
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 261
    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->LCount:I

    .line 263
    :cond_1
    ushr-int/lit8 v1, v1, 0x8

    .line 264
    iget v2, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn1:I

    const/16 v6, 0x25

    const/16 v7, 0xff

    if-ge v2, v6, :cond_3

    .line 265
    const/4 v2, 0x0

    .line 266
    .local v2, "Length":I
    :goto_0
    sget-object v6, Lcom/github/junrar/unpack/Unpack15;->ShortXor1:[I

    aget v6, v6, v2

    xor-int/2addr v6, v1

    invoke-direct {p0, v2}, Lcom/github/junrar/unpack/Unpack15;->getShortLen1(I)I

    move-result v8

    ushr-int v8, v7, v8

    not-int v8, v8

    and-int/2addr v6, v8

    if-nez v6, :cond_2

    .line 267
    nop

    .line 270
    invoke-direct {p0, v2}, Lcom/github/junrar/unpack/Unpack15;->getShortLen1(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/github/junrar/unpack/Unpack15;->faddbits(I)V

    goto :goto_2

    .line 265
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    .end local v2    # "Length":I
    :cond_3
    const/4 v2, 0x0

    .line 273
    .restart local v2    # "Length":I
    :goto_1
    sget-object v6, Lcom/github/junrar/unpack/Unpack15;->ShortXor2:[I

    aget v6, v6, v2

    xor-int/2addr v6, v1

    invoke-direct {p0, v2}, Lcom/github/junrar/unpack/Unpack15;->getShortLen2(I)I

    move-result v8

    ushr-int v8, v7, v8

    not-int v8, v8

    and-int/2addr v6, v8

    if-nez v6, :cond_b

    .line 274
    nop

    .line 277
    invoke-direct {p0, v2}, Lcom/github/junrar/unpack/Unpack15;->getShortLen2(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/github/junrar/unpack/Unpack15;->faddbits(I)V

    .line 280
    :goto_2
    const/4 v6, 0x5

    const/16 v8, 0x9

    const/4 v9, 0x3

    if-lt v2, v8, :cond_9

    .line 281
    if-ne v2, v8, :cond_4

    .line 282
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->LCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->LCount:I

    .line 283
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->lastDist:I

    iget v3, p0, Lcom/github/junrar/unpack/Unpack15;->lastLength:I

    invoke-virtual {p0, v0, v3}, Lcom/github/junrar/unpack/Unpack15;->oldCopyString(II)V

    .line 284
    return-void

    .line 286
    :cond_4
    const/16 v7, 0xe

    if-ne v2, v7, :cond_5

    .line 287
    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->LCount:I

    .line 288
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v0

    sget-object v5, Lcom/github/junrar/unpack/Unpack15;->DecL2:[I

    sget-object v7, Lcom/github/junrar/unpack/Unpack15;->PosL2:[I

    invoke-virtual {p0, v0, v9, v5, v7}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v0

    add-int/2addr v0, v6

    .line 289
    .end local v2    # "Length":I
    .local v0, "Length":I
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v2

    ushr-int/2addr v2, v4

    or-int/2addr v2, v3

    .line 290
    .local v2, "Distance":I
    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Lcom/github/junrar/unpack/Unpack15;->faddbits(I)V

    .line 291
    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->lastLength:I

    .line 292
    iput v2, p0, Lcom/github/junrar/unpack/Unpack15;->lastDist:I

    .line 293
    invoke-virtual {p0, v2, v0}, Lcom/github/junrar/unpack/Unpack15;->oldCopyString(II)V

    .line 294
    return-void

    .line 297
    .end local v0    # "Length":I
    .local v2, "Length":I
    :cond_5
    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->LCount:I

    .line 298
    move v0, v2

    .line 299
    .local v0, "SaveLength":I
    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack15;->oldDist:[I

    iget v6, p0, Lcom/github/junrar/unpack/Unpack15;->oldDistPtr:I

    add-int/lit8 v7, v2, -0x9

    sub-int/2addr v6, v7

    and-int/2addr v6, v9

    aget v3, v3, v6

    .line 300
    .local v3, "Distance":I
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v6

    sget-object v7, Lcom/github/junrar/unpack/Unpack15;->DecL1:[I

    sget-object v8, Lcom/github/junrar/unpack/Unpack15;->PosL1:[I

    invoke-virtual {p0, v6, v5, v7, v8}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v6

    add-int/2addr v6, v5

    .line 301
    .end local v2    # "Length":I
    .local v6, "Length":I
    const/16 v2, 0x101

    if-ne v6, v2, :cond_6

    const/16 v2, 0xa

    if-ne v0, v2, :cond_6

    .line 302
    iget v2, p0, Lcom/github/junrar/unpack/Unpack15;->Buf60:I

    xor-int/2addr v2, v4

    iput v2, p0, Lcom/github/junrar/unpack/Unpack15;->Buf60:I

    .line 303
    return-void

    .line 305
    :cond_6
    const/16 v2, 0x100

    if-le v3, v2, :cond_7

    .line 306
    add-int/lit8 v6, v6, 0x1

    .line 308
    :cond_7
    iget v2, p0, Lcom/github/junrar/unpack/Unpack15;->MaxDist3:I

    if-lt v3, v2, :cond_8

    .line 309
    add-int/lit8 v6, v6, 0x1

    .line 312
    :cond_8
    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack15;->oldDist:[I

    iget v4, p0, Lcom/github/junrar/unpack/Unpack15;->oldDistPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/github/junrar/unpack/Unpack15;->oldDistPtr:I

    aput v3, v2, v4

    .line 313
    iget v2, p0, Lcom/github/junrar/unpack/Unpack15;->oldDistPtr:I

    and-int/2addr v2, v9

    iput v2, p0, Lcom/github/junrar/unpack/Unpack15;->oldDistPtr:I

    .line 314
    iput v6, p0, Lcom/github/junrar/unpack/Unpack15;->lastLength:I

    .line 315
    iput v3, p0, Lcom/github/junrar/unpack/Unpack15;->lastDist:I

    .line 316
    invoke-virtual {p0, v3, v6}, Lcom/github/junrar/unpack/Unpack15;->oldCopyString(II)V

    .line 317
    return-void

    .line 320
    .end local v0    # "SaveLength":I
    .end local v3    # "Distance":I
    .end local v6    # "Length":I
    .restart local v2    # "Length":I
    :cond_9
    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->LCount:I

    .line 321
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn1:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn1:I

    .line 322
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn1:I

    iget v3, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn1:I

    ushr-int/lit8 v3, v3, 0x4

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->AvrLn1:I

    .line 324
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->fgetbits()I

    move-result v0

    sget-object v3, Lcom/github/junrar/unpack/Unpack15;->DecHf2:[I

    sget-object v8, Lcom/github/junrar/unpack/Unpack15;->PosHf2:[I

    invoke-virtual {p0, v0, v6, v3, v8}, Lcom/github/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v0

    and-int/2addr v0, v7

    .line 325
    .local v0, "DistancePlace":I
    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetA:[I

    aget v3, v3, v0

    .line 326
    .restart local v3    # "Distance":I
    const/4 v6, -0x1

    add-int/2addr v0, v6

    if-eq v0, v6, :cond_a

    .line 327
    iget-object v6, p0, Lcom/github/junrar/unpack/Unpack15;->PlaceA:[I

    aget v7, v6, v3

    sub-int/2addr v7, v4

    aput v7, v6, v3

    .line 328
    iget-object v6, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetA:[I

    aget v6, v6, v0

    .line 329
    .local v6, "LastDistance":I
    iget-object v7, p0, Lcom/github/junrar/unpack/Unpack15;->PlaceA:[I

    aget v8, v7, v6

    add-int/2addr v8, v4

    aput v8, v7, v6

    .line 330
    iget-object v7, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetA:[I

    add-int/lit8 v8, v0, 0x1

    aput v6, v7, v8

    .line 331
    iget-object v7, p0, Lcom/github/junrar/unpack/Unpack15;->ChSetA:[I

    aput v3, v7, v0

    .line 333
    .end local v6    # "LastDistance":I
    :cond_a
    add-int/2addr v2, v5

    .line 334
    iget-object v5, p0, Lcom/github/junrar/unpack/Unpack15;->oldDist:[I

    iget v6, p0, Lcom/github/junrar/unpack/Unpack15;->oldDistPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/github/junrar/unpack/Unpack15;->oldDistPtr:I

    add-int/2addr v3, v4

    aput v3, v5, v6

    .line 335
    iget v4, p0, Lcom/github/junrar/unpack/Unpack15;->oldDistPtr:I

    and-int/2addr v4, v9

    iput v4, p0, Lcom/github/junrar/unpack/Unpack15;->oldDistPtr:I

    .line 336
    iput v2, p0, Lcom/github/junrar/unpack/Unpack15;->lastLength:I

    .line 337
    iput v3, p0, Lcom/github/junrar/unpack/Unpack15;->lastDist:I

    .line 338
    invoke-virtual {p0, v3, v2}, Lcom/github/junrar/unpack/Unpack15;->oldCopyString(II)V

    .line 339
    return-void

    .line 272
    .end local v0    # "DistancePlace":I
    .end local v3    # "Distance":I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method protected abstract unpInitData(Z)V
.end method

.method protected unpReadBuf()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 212
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->readTop:I

    iget v1, p0, Lcom/github/junrar/unpack/Unpack15;->inAddr:I

    sub-int/2addr v0, v1

    .line 213
    .local v0, "dataSize":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 214
    return v1

    .line 216
    :cond_0
    iget v2, p0, Lcom/github/junrar/unpack/Unpack15;->inAddr:I

    const/16 v3, 0x4000

    if-le v2, v3, :cond_2

    .line 217
    if-lez v0, :cond_1

    .line 222
    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack15;->inBuf:[B

    iget v3, p0, Lcom/github/junrar/unpack/Unpack15;->inAddr:I

    iget-object v4, p0, Lcom/github/junrar/unpack/Unpack15;->inBuf:[B

    invoke-static {v2, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    :cond_1
    iput v1, p0, Lcom/github/junrar/unpack/Unpack15;->inAddr:I

    .line 225
    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->readTop:I

    goto :goto_0

    .line 227
    :cond_2
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->readTop:I

    .line 230
    :goto_0
    iget-object v2, p0, Lcom/github/junrar/unpack/Unpack15;->unpIO:Lcom/github/junrar/unpack/ComprDataIO;

    iget-object v3, p0, Lcom/github/junrar/unpack/Unpack15;->inBuf:[B

    const v4, 0x8000

    sub-int/2addr v4, v0

    and-int/lit8 v4, v4, -0x10

    invoke-virtual {v2, v3, v0, v4}, Lcom/github/junrar/unpack/ComprDataIO;->unpRead([BII)I

    move-result v2

    .line 231
    .local v2, "readCode":I
    if-lez v2, :cond_3

    .line 232
    iget v3, p0, Lcom/github/junrar/unpack/Unpack15;->readTop:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/github/junrar/unpack/Unpack15;->readTop:I

    .line 234
    :cond_3
    iget v3, p0, Lcom/github/junrar/unpack/Unpack15;->readTop:I

    add-int/lit8 v3, v3, -0x1e

    iput v3, p0, Lcom/github/junrar/unpack/Unpack15;->readBorder:I

    .line 235
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method protected unpack15(Z)V
    .locals 5
    .param p1, "solid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 139
    iget-boolean v0, p0, Lcom/github/junrar/unpack/Unpack15;->suspended:Z

    if-eqz v0, :cond_0

    .line 140
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->wrPtr:I

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    goto :goto_1

    .line 142
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/junrar/unpack/Unpack15;->unpInitData(Z)V

    .line 143
    invoke-virtual {p0, p1}, Lcom/github/junrar/unpack/Unpack15;->oldUnpInitData(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->unpReadBuf()Z

    .line 145
    if-nez p1, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->initHuff()V

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    goto :goto_0

    .line 149
    :cond_1
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->wrPtr:I

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    .line 151
    :goto_0
    iget-wide v0, p0, Lcom/github/junrar/unpack/Unpack15;->destUnpSize:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/github/junrar/unpack/Unpack15;->destUnpSize:J

    .line 153
    :goto_1
    iget-wide v0, p0, Lcom/github/junrar/unpack/Unpack15;->destUnpSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->getFlagsBuf()V

    .line 155
    const/16 v0, 0x8

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagsCnt:I

    .line 158
    :cond_2
    :goto_2
    iget-wide v0, p0, Lcom/github/junrar/unpack/Unpack15;->destUnpSize:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    .line 159
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    const v1, 0x3fffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    .line 161
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->inAddr:I

    iget v4, p0, Lcom/github/junrar/unpack/Unpack15;->readTop:I

    add-int/lit8 v4, v4, -0x1e

    if-le v0, v4, :cond_3

    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->unpReadBuf()Z

    move-result v0

    if-nez v0, :cond_3

    .line 162
    goto/16 :goto_3

    .line 164
    :cond_3
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->wrPtr:I

    iget v4, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    sub-int/2addr v0, v4

    and-int/2addr v0, v1

    const/16 v1, 0x10e

    if-ge v0, v1, :cond_4

    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->wrPtr:I

    iget v1, p0, Lcom/github/junrar/unpack/Unpack15;->unpPtr:I

    if-eq v0, v1, :cond_4

    .line 166
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->oldUnpWriteBuf()V

    .line 167
    iget-boolean v0, p0, Lcom/github/junrar/unpack/Unpack15;->suspended:Z

    if-eqz v0, :cond_4

    .line 168
    return-void

    .line 171
    :cond_4
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->StMode:I

    if-eqz v0, :cond_5

    .line 172
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->huffDecode()V

    .line 173
    goto :goto_2

    .line 176
    :cond_5
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagsCnt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagsCnt:I

    const/4 v1, 0x7

    if-gez v0, :cond_6

    .line 177
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->getFlagsBuf()V

    .line 178
    iput v1, p0, Lcom/github/junrar/unpack/Unpack15;->FlagsCnt:I

    .line 181
    :cond_6
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagBuf:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    .line 182
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagBuf:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagBuf:I

    .line 183
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->Nlzb:I

    iget v1, p0, Lcom/github/junrar/unpack/Unpack15;->Nhfb:I

    if-le v0, v1, :cond_7

    .line 184
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->longLZ()V

    goto :goto_2

    .line 186
    :cond_7
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->huffDecode()V

    goto :goto_2

    .line 189
    :cond_8
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagBuf:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagBuf:I

    .line 190
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagsCnt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagsCnt:I

    if-gez v0, :cond_9

    .line 191
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->getFlagsBuf()V

    .line 192
    iput v1, p0, Lcom/github/junrar/unpack/Unpack15;->FlagsCnt:I

    .line 194
    :cond_9
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagBuf:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_b

    .line 195
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagBuf:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagBuf:I

    .line 196
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->Nlzb:I

    iget v1, p0, Lcom/github/junrar/unpack/Unpack15;->Nhfb:I

    if-le v0, v1, :cond_a

    .line 197
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->huffDecode()V

    goto/16 :goto_2

    .line 199
    :cond_a
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->longLZ()V

    goto/16 :goto_2

    .line 202
    :cond_b
    iget v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagBuf:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/junrar/unpack/Unpack15;->FlagBuf:I

    .line 203
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->shortLZ()V

    goto/16 :goto_2

    .line 207
    :cond_c
    :goto_3
    invoke-virtual {p0}, Lcom/github/junrar/unpack/Unpack15;->oldUnpWriteBuf()V

    .line 208
    return-void
.end method
