.class public Lcom/github/junrar/crc/RarCRC;
.super Ljava/lang/Object;
.source "RarCRC.java"


# static fields
.field private static final crcTab:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 31
    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Lcom/github/junrar/crc/RarCRC;->crcTab:[I

    .line 32
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 33
    move v2, v1

    .line 34
    .local v2, "c":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    .line 35
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    .line 36
    ushr-int/lit8 v2, v2, 0x1

    .line 37
    const v4, -0x12477ce0

    xor-int/2addr v2, v4

    goto :goto_2

    .line 39
    :cond_0
    ushr-int/lit8 v2, v2, 0x1

    .line 34
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 42
    .end local v3    # "j":I
    :cond_1
    sget-object v3, Lcom/github/junrar/crc/RarCRC;->crcTab:[I

    aput v2, v3, v1

    .line 32
    .end local v2    # "c":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static checkCrc(I[BII)I
    .locals 4
    .param p0, "startCrc"    # I
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 51
    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 83
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 108
    sget-object v2, Lcom/github/junrar/crc/RarCRC;->crcTab:[I

    add-int v3, p2, v1

    aget-byte v3, p1, v3

    xor-int/2addr v3, p0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    ushr-int/lit8 v3, p0, 0x8

    xor-int p0, v2, v3

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "i":I
    :cond_0
    return p0
.end method

.method public static checkOldCrc(S[BI)S
    .locals 4
    .param p0, "startCrc"    # S
    .param p1, "data"    # [B
    .param p2, "count"    # I

    .line 119
    array-length v0, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 120
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 121
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    add-int/2addr v2, p0

    int-to-short v2, v2

    and-int/lit8 v2, v2, -0x1

    int-to-short p0, v2

    .line 122
    shl-int/lit8 v2, p0, 0x1

    ushr-int/lit8 v3, p0, 0xf

    or-int/2addr v2, v3

    and-int/lit8 v2, v2, -0x1

    int-to-short p0, v2

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "i":I
    :cond_0
    return p0
.end method
