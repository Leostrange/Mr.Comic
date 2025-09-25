.class public Lcom/github/junrar/io/Raw;
.super Ljava/lang/Object;
.source "Raw.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static incShortLittleEndian([BII)V
    .locals 4
    .param p0, "array"    # [B
    .param p1, "pos"    # I
    .param p2, "dv"    # I

    .line 251
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, p2, 0xff

    add-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x8

    .line 252
    .local v0, "c":I
    aget-byte v1, p0, p1

    and-int/lit16 v2, p2, 0xff

    add-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 253
    if-gtz v0, :cond_0

    const v1, 0xff00

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    .line 254
    :cond_0
    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, v1

    ushr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v0

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 256
    :cond_1
    return-void
.end method

.method public static readIntBigEndian([BI)I
    .locals 2
    .param p0, "array"    # [B
    .param p1, "pos"    # I

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "temp":I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 54
    shl-int/lit8 v0, v0, 0x8

    .line 55
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 56
    shl-int/lit8 v0, v0, 0x8

    .line 57
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 58
    shl-int/lit8 v0, v0, 0x8

    .line 59
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 60
    return v0
.end method

.method public static readIntLittleEndian([BI)I
    .locals 2
    .param p0, "array"    # [B
    .param p1, "pos"    # I

    .line 121
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static readIntLittleEndianAsLong([BI)J
    .locals 7
    .param p0, "array"    # [B
    .param p1, "pos"    # I

    .line 135
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    aget-byte v4, p0, p1

    int-to-long v4, v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static readLongBigEndian([BI)J
    .locals 3
    .param p0, "array"    # [B
    .param p1, "pos"    # I

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "temp":I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 75
    shl-int/lit8 v0, v0, 0x8

    .line 76
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 77
    shl-int/lit8 v0, v0, 0x8

    .line 78
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 79
    shl-int/lit8 v0, v0, 0x8

    .line 80
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 81
    shl-int/lit8 v0, v0, 0x8

    .line 82
    add-int/lit8 v1, p1, 0x4

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 83
    shl-int/lit8 v0, v0, 0x8

    .line 84
    add-int/lit8 v1, p1, 0x5

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 85
    shl-int/lit8 v0, v0, 0x8

    .line 86
    add-int/lit8 v1, p1, 0x6

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 87
    shl-int/lit8 v0, v0, 0x8

    .line 88
    add-int/lit8 v1, p1, 0x7

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 89
    int-to-long v1, v0

    return-wide v1
.end method

.method public static readLongLittleEndian([BI)J
    .locals 5
    .param p0, "array"    # [B
    .param p1, "pos"    # I

    .line 152
    const-wide/16 v0, 0x0

    .line 153
    .local v0, "temp":J
    add-int/lit8 v2, p1, 0x7

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 154
    const/16 v2, 0x8

    shl-long/2addr v0, v2

    .line 155
    add-int/lit8 v3, p1, 0x6

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 156
    shl-long/2addr v0, v2

    .line 157
    add-int/lit8 v3, p1, 0x5

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 158
    shl-long/2addr v0, v2

    .line 159
    add-int/lit8 v3, p1, 0x4

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 160
    shl-long/2addr v0, v2

    .line 161
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 162
    shl-long/2addr v0, v2

    .line 163
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 164
    shl-long/2addr v0, v2

    .line 165
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 166
    shl-long/2addr v0, v2

    .line 167
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 168
    return-wide v0
.end method

.method public static readShortBigEndian([BI)S
    .locals 2
    .param p0, "array"    # [B
    .param p1, "pos"    # I

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "temp":S
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 37
    shl-int/lit8 v1, v0, 0x8

    int-to-short v0, v1

    .line 38
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 39
    return v0
.end method

.method public static readShortLittleEndian([BI)S
    .locals 2
    .param p0, "array"    # [B
    .param p1, "pos"    # I

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "result":S
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v0

    int-to-short v0, v1

    .line 105
    shl-int/lit8 v1, v0, 0x8

    int-to-short v0, v1

    .line 106
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v0

    int-to-short v0, v1

    .line 107
    return v0
.end method

.method public static writeIntBigEndian([BII)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "pos"    # I
    .param p2, "value"    # I

    .line 198
    ushr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 199
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 200
    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 201
    add-int/lit8 v0, p1, 0x3

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 202
    return-void
.end method

.method public static writeIntLittleEndian([BII)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "pos"    # I
    .param p2, "value"    # I

    .line 270
    add-int/lit8 v0, p1, 0x3

    ushr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 271
    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 272
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 273
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 274
    return-void
.end method

.method public static writeLongBigEndian([BIJ)V
    .locals 3
    .param p0, "array"    # [B
    .param p1, "pos"    # I
    .param p2, "value"    # J

    .line 215
    const/16 v0, 0x38

    ushr-long v0, p2, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 216
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x30

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 217
    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x28

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 218
    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x20

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 219
    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x18

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 220
    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x10

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 221
    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x8

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 222
    add-int/lit8 v0, p1, 0x7

    const-wide/16 v1, 0xff

    and-long/2addr v1, p2

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 223
    return-void
.end method

.method public static writeLongLittleEndian([BIJ)V
    .locals 3
    .param p0, "array"    # [B
    .param p1, "pos"    # I
    .param p2, "value"    # J

    .line 288
    add-int/lit8 v0, p1, 0x7

    const/16 v1, 0x38

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 289
    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x30

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 290
    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x28

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 291
    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x20

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 292
    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x18

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 293
    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x10

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 294
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x8

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 295
    const-wide/16 v0, 0xff

    and-long/2addr v0, p2

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 296
    return-void
.end method

.method public static writeShortBigEndian([BIS)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "pos"    # I
    .param p2, "value"    # S

    .line 183
    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 184
    add-int/lit8 v0, p1, 0x1

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 185
    return-void
.end method

.method public static writeShortLittleEndian([BIS)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "pos"    # I
    .param p2, "value"    # S

    .line 237
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 238
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 239
    return-void
.end method
