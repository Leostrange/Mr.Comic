.class public Lnet/lingala/zip4j/crypto/engine/AESEngine;
.super Ljava/lang/Object;
.source "AESEngine.java"


# static fields
.field private static final S:[B

.field private static final T0:[I

.field private static final rcon:[I


# instance fields
.field private C0:I

.field private C1:I

.field private C2:I

.field private C3:I

.field private rounds:I

.field private workingKey:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 189
    const/16 v0, 0x100

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    .line 224
    const/16 v1, 0x1e

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lnet/lingala/zip4j/crypto/engine/AESEngine;->rcon:[I

    .line 228
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    return-void

    :array_0
    .array-data 1
        0x63t
        0x7ct
        0x77t
        0x7bt
        -0xet
        0x6bt
        0x6ft
        -0x3bt
        0x30t
        0x1t
        0x67t
        0x2bt
        -0x2t
        -0x29t
        -0x55t
        0x76t
        -0x36t
        -0x7et
        -0x37t
        0x7dt
        -0x6t
        0x59t
        0x47t
        -0x10t
        -0x53t
        -0x2ct
        -0x5et
        -0x51t
        -0x64t
        -0x5ct
        0x72t
        -0x40t
        -0x49t
        -0x3t
        -0x6dt
        0x26t
        0x36t
        0x3ft
        -0x9t
        -0x34t
        0x34t
        -0x5bt
        -0x1bt
        -0xft
        0x71t
        -0x28t
        0x31t
        0x15t
        0x4t
        -0x39t
        0x23t
        -0x3dt
        0x18t
        -0x6at
        0x5t
        -0x66t
        0x7t
        0x12t
        -0x80t
        -0x1et
        -0x15t
        0x27t
        -0x4et
        0x75t
        0x9t
        -0x7dt
        0x2ct
        0x1at
        0x1bt
        0x6et
        0x5at
        -0x60t
        0x52t
        0x3bt
        -0x2at
        -0x4dt
        0x29t
        -0x1dt
        0x2ft
        -0x7ct
        0x53t
        -0x2ft
        0x0t
        -0x13t
        0x20t
        -0x4t
        -0x4ft
        0x5bt
        0x6at
        -0x35t
        -0x42t
        0x39t
        0x4at
        0x4ct
        0x58t
        -0x31t
        -0x30t
        -0x11t
        -0x56t
        -0x5t
        0x43t
        0x4dt
        0x33t
        -0x7bt
        0x45t
        -0x7t
        0x2t
        0x7ft
        0x50t
        0x3ct
        -0x61t
        -0x58t
        0x51t
        -0x5dt
        0x40t
        -0x71t
        -0x6et
        -0x63t
        0x38t
        -0xbt
        -0x44t
        -0x4at
        -0x26t
        0x21t
        0x10t
        -0x1t
        -0xdt
        -0x2et
        -0x33t
        0xct
        0x13t
        -0x14t
        0x5ft
        -0x69t
        0x44t
        0x17t
        -0x3ct
        -0x59t
        0x7et
        0x3dt
        0x64t
        0x5dt
        0x19t
        0x73t
        0x60t
        -0x7ft
        0x4ft
        -0x24t
        0x22t
        0x2at
        -0x70t
        -0x78t
        0x46t
        -0x12t
        -0x48t
        0x14t
        -0x22t
        0x5et
        0xbt
        -0x25t
        -0x20t
        0x32t
        0x3at
        0xat
        0x49t
        0x6t
        0x24t
        0x5ct
        -0x3et
        -0x2dt
        -0x54t
        0x62t
        -0x6ft
        -0x6bt
        -0x1ct
        0x79t
        -0x19t
        -0x38t
        0x37t
        0x6dt
        -0x73t
        -0x2bt
        0x4et
        -0x57t
        0x6ct
        0x56t
        -0xct
        -0x16t
        0x65t
        0x7at
        -0x52t
        0x8t
        -0x46t
        0x78t
        0x25t
        0x2et
        0x1ct
        -0x5at
        -0x4ct
        -0x3at
        -0x18t
        -0x23t
        0x74t
        0x1ft
        0x4bt
        -0x43t
        -0x75t
        -0x76t
        0x70t
        0x3et
        -0x4bt
        0x66t
        0x48t
        0x3t
        -0xat
        0xet
        0x61t
        0x35t
        0x57t
        -0x47t
        -0x7at
        -0x3ft
        0x1dt
        -0x62t
        -0x1ft
        -0x8t
        -0x68t
        0x11t
        0x69t
        -0x27t
        -0x72t
        -0x6ct
        -0x65t
        0x1et
        -0x79t
        -0x17t
        -0x32t
        0x55t
        0x28t
        -0x21t
        -0x74t
        -0x5ft
        -0x77t
        0xdt
        -0x41t
        -0x1at
        0x42t
        0x68t
        0x41t
        -0x67t
        0x2dt
        0xft
        -0x50t
        0x54t
        -0x45t
        0x16t
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x1b
        0x36
        0x6c
        0xd8
        0xab
        0x4d
        0x9a
        0x2f
        0x5e
        0xbc
        0x63
        0xc6
        0x97
        0x35
        0x6a
        0xd4
        0xb3
        0x7d
        0xfa
        0xef
        0xc5
        0x91
    .end array-data

    :array_2
    .array-data 4
        -0x5a9c9c3a
        -0x7b838308
        -0x66888812
        -0x7284840a
        0xdf2f2ff
        -0x4294942a
        -0x4e909022
        0x54c5c591
        0x50303060
        0x3010102
        -0x56989832
        0x7d2b2b56
        0x19fefee7
        0x62d7d7b5
        -0x195454b3
        -0x65898914
        0x45caca8f
        -0x627d7de1
        0x40c9c989
        -0x78828206
        0x15fafaef
        -0x14a6a64e
        -0x36b8b872
        0xbf0f0fb
        -0x135252bf
        0x67d4d4b3
        -0x25d5da1
        -0x155050bb
        -0x406363dd
        -0x85b5bad
        -0x698d8d1c
        0x5bc0c09b
        -0x3d48488b
        0x1cfdfde1
        -0x516c6cc3
        0x6a26264c
        0x5a36366c
        0x413f3f7e
        0x2f7f7f5
        0x4fcccc83
        0x5c343468
        -0xb5a5aaf
        0x34e5e5d1
        0x8f1f1f9
        -0x6c8e8e1e
        0x73d8d8ab
        0x53313162
        0x3f15152a
        0xc040408
        0x52c7c795
        0x65232346
        0x5ec3c39d
        0x28181830
        -0x5e6969c9
        0xf05050a
        -0x4a6565d1
        0x907070e
        0x36121224
        -0x647f7fe5
        0x3de2e2df
        0x26ebebcd
        0x6927274e
        -0x324d4d81
        -0x608a8a16
        0x1b090912
        -0x617c7ce3
        0x742c2c58
        0x2e1a1a34
        0x2d1b1b36
        -0x4d919124
        -0x11a5a54c
        -0x45f5fa5
        -0x9adad5c
        0x4d3b3b76    # 1.96327264E8f
        0x61d6d6b7
        -0x314c4c83
        0x7b292952
        0x3ee3e3dd
        0x712f2f5e
        -0x687b7bed
        -0xaacac5a
        0x68d1d1b9
        0x0
        0x2cededc1
        0x60202040
        0x1ffcfce3
        -0x374e4e87
        -0x12a4a44a
        -0x4195952c
        0x46cbcb8d
        -0x26414199
        0x4b393972    # 1.2138866E7f
        -0x21b5b56c
        -0x2bb3b368
        -0x17a7a750
        0x4acfcf85    # 6809538.5f
        0x6bd0d0bb
        0x2aefefc5
        -0x1a5555b1
        0x16fbfbed
        -0x3abcbc7a
        -0x28b2b266
        0x55333366
        -0x6b7a7aef
        -0x30baba76
        0x10f9f9e9
        0x6020204
        -0x7e808002
        -0xfafaf60
        0x443c3c78
        -0x456060db
        -0x1c5757b5
        -0xcaeae5e
        -0x15c5ca3
        -0x3fbfbf80
        -0x757070fb
        -0x526d6dc1
        -0x436262df
        0x48383870    # 188641.75f
        0x4f5f5f1
        -0x2043439d
        -0x3e494989
        0x75dadaaf
        0x63212142
        0x30101020
        0x1affffe5
        0xef3f3fd
        0x6dd2d2bf
        0x4ccdcd81    # 1.07899912E8f
        0x140c0c18
        0x35131326
        0x2fececc3
        -0x1ea0a042
        -0x5d6868cb
        -0x33bbbb78    # -5.14504E7f
        0x3917172e
        0x57c4c493
        -0xd5858ab
        -0x7d818104
        0x473d3d7a
        -0x539b9b38
        -0x18a2a246
        0x2b191932
        -0x6a8c8c1a
        -0x5f9f9f40
        -0x677e7ee7
        -0x2eb0b062
        0x7fdcdca3
        0x66222244
        0x7e2a2a54
        -0x546f6fc5
        -0x7c7777f5
        -0x35b9b974    # -3248547.0f
        0x29eeeec7
        -0x2c474795
        0x3c141428
        0x79dedea7
        -0x1da1a144
        0x1d0b0b16
        0x76dbdbad
        0x3be0e0db
        0x56323264
        0x4e3a3a74
        0x1e0a0a14
        -0x24b6b66e
        0xa06060c
        0x6c242448
        -0x1ba3a348
        0x5dc2c29f
        0x6ed3d3bd
        -0x105353bd
        -0x599d9d3c
        -0x576e6ec7
        -0x5b6a6acf
        0x37e4e4d3
        -0x7486860e
        0x32e7e7d5
        0x43c8c88b
        0x5937376e
        -0x48929226
        -0x737272ff
        0x64d5d5b1
        -0x2db1b164
        -0x1f5656b7
        -0x4b939328
        -0x5a9a954
        0x7f4f4f3
        0x25eaeacf
        -0x509a9a36
        -0x7185850c
        -0x165151b9
        0x18080810
        -0x2a454591
        -0x77878710
        0x6f25254a
        0x722e2e5c
        0x241c1c38
        -0xe5959a9
        -0x384b4b8d
        0x51c6c697
        0x23e8e8cb
        0x7cdddda1
        -0x638b8b18
        0x211f1f3e
        -0x22b4b46a
        -0x2342429f
        -0x797474f3
        -0x7a7575f1
        -0x6f8f8f20
        0x423e3e7c
        -0x3b4a4a8f
        -0x55999934
        -0x27b7b770
        0x5030306
        0x1f6f6f7
        0x120e0e1c
        -0x5c9e9e3e
        0x5f35356a
        -0x6a8a852
        -0x2f464697
        -0x6e7979e9
        0x58c1c199
        0x271d1d3a
        -0x466161d9
        0x38e1e1d9
        0x13f8f8eb
        -0x4c6767d5
        0x33111122
        -0x4496962e
        0x70d9d9a9
        -0x767171f9
        -0x586b6bcd
        -0x496464d3
        0x221e1e3c
        -0x6d7878eb
        0x20e9e9c9
        0x49cece87
        -0xaaaa56
        0x78282850
        0x7adfdfa5
        -0x707373fd
        -0x75e5ea7
        -0x7f7676f7
        0x170d0d1a
        -0x2540409b
        0x31e6e6d7
        -0x39bdbd7c
        -0x47979730
        -0x3cbebe7e
        -0x4f6666d7
        0x772d2d5a
        0x110f0f1e
        -0x344f4f85    # -2.315903E7f
        -0x3abab58
        -0x29444493
        0x3a16162c
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->workingKey:[[I

    .line 35
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->init([B)V

    .line 36
    return-void
.end method

.method private encryptBlock([[I)V
    .locals 16
    .param p1, "KW"    # [[I

    .line 151
    move-object/from16 v0, p0

    iget v1, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    const/4 v2, 0x0

    aget-object v3, p1, v2

    aget v3, v3, v2

    xor-int/2addr v1, v3

    iput v1, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    .line 152
    iget v1, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    aget-object v3, p1, v2

    const/4 v4, 0x1

    aget v3, v3, v4

    xor-int/2addr v1, v3

    iput v1, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    .line 153
    iget v1, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    aget-object v3, p1, v2

    const/4 v5, 0x2

    aget v3, v3, v5

    xor-int/2addr v1, v3

    iput v1, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    .line 154
    iget v1, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    aget-object v3, p1, v2

    const/4 v6, 0x3

    aget v3, v3, v6

    xor-int/2addr v1, v3

    iput v1, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    .line 156
    const/4 v1, 0x1

    .line 158
    .local v1, "r":I
    :goto_0
    iget v3, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->rounds:I

    sub-int/2addr v3, v4

    const/16 v7, 0x10

    const/16 v8, 0x18

    const/16 v9, 0x8

    if-ge v1, v3, :cond_0

    .line 159
    sget-object v3, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v10, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    and-int/lit16 v10, v10, 0xff

    aget v3, v3, v10

    sget-object v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v11, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    shr-int/2addr v11, v9

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    invoke-direct {v0, v10, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v3, v10

    sget-object v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v11, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    shr-int/2addr v11, v7

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    invoke-direct {v0, v10, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v3, v10

    sget-object v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v11, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    shr-int/2addr v11, v8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    invoke-direct {v0, v10, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v3, v10

    aget-object v10, p1, v1

    aget v10, v10, v2

    xor-int/2addr v3, v10

    .line 160
    .local v3, "r0":I
    sget-object v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v11, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    sget-object v11, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v12, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    shr-int/2addr v12, v9

    and-int/lit16 v12, v12, 0xff

    aget v11, v11, v12

    invoke-direct {v0, v11, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v11

    xor-int/2addr v10, v11

    sget-object v11, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v12, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    shr-int/2addr v12, v7

    and-int/lit16 v12, v12, 0xff

    aget v11, v11, v12

    invoke-direct {v0, v11, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v11

    xor-int/2addr v10, v11

    sget-object v11, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v12, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    shr-int/2addr v12, v8

    and-int/lit16 v12, v12, 0xff

    aget v11, v11, v12

    invoke-direct {v0, v11, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v11

    xor-int/2addr v10, v11

    aget-object v11, p1, v1

    aget v11, v11, v4

    xor-int/2addr v10, v11

    .line 161
    .local v10, "r1":I
    sget-object v11, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v12, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    and-int/lit16 v12, v12, 0xff

    aget v11, v11, v12

    sget-object v12, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    shr-int/2addr v13, v9

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    invoke-direct {v0, v12, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v11, v12

    sget-object v12, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    shr-int/2addr v13, v7

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    invoke-direct {v0, v12, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v11, v12

    sget-object v12, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    shr-int/2addr v13, v8

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    invoke-direct {v0, v12, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v11, v12

    aget-object v12, p1, v1

    aget v12, v12, v5

    xor-int/2addr v11, v12

    .line 162
    .local v11, "r2":I
    sget-object v12, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    sget-object v13, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v14, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    shr-int/2addr v14, v9

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    invoke-direct {v0, v13, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v13

    xor-int/2addr v12, v13

    sget-object v13, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v14, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    shr-int/2addr v14, v7

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    invoke-direct {v0, v13, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v13

    xor-int/2addr v12, v13

    sget-object v13, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v14, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    shr-int/2addr v14, v8

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    invoke-direct {v0, v13, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v13

    xor-int/2addr v12, v13

    add-int/lit8 v13, v1, 0x1

    .end local v1    # "r":I
    .local v13, "r":I
    aget-object v1, p1, v1

    aget v1, v1, v6

    xor-int/2addr v1, v12

    .line 163
    .local v1, "r3":I
    sget-object v12, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    and-int/lit16 v14, v3, 0xff

    aget v12, v12, v14

    sget-object v14, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    shr-int/lit8 v15, v10, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    invoke-direct {v0, v14, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v12, v14

    sget-object v14, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    shr-int/lit8 v15, v11, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    invoke-direct {v0, v14, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v12, v14

    sget-object v14, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    shr-int/lit8 v15, v1, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    invoke-direct {v0, v14, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v12, v14

    aget-object v14, p1, v13

    aget v14, v14, v2

    xor-int/2addr v12, v14

    iput v12, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    .line 164
    sget-object v12, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    and-int/lit16 v14, v10, 0xff

    aget v12, v12, v14

    sget-object v14, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    shr-int/lit8 v15, v11, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    invoke-direct {v0, v14, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v12, v14

    sget-object v14, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    shr-int/lit8 v15, v1, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    invoke-direct {v0, v14, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v12, v14

    sget-object v14, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    shr-int/lit8 v15, v3, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    invoke-direct {v0, v14, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v12, v14

    aget-object v14, p1, v13

    aget v14, v14, v4

    xor-int/2addr v12, v14

    iput v12, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    .line 165
    sget-object v12, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    and-int/lit16 v14, v11, 0xff

    aget v12, v12, v14

    sget-object v14, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    shr-int/lit8 v15, v1, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    invoke-direct {v0, v14, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v12, v14

    sget-object v14, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    shr-int/lit8 v15, v3, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    invoke-direct {v0, v14, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v12, v14

    sget-object v14, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    shr-int/lit8 v15, v10, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    invoke-direct {v0, v14, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v12, v14

    aget-object v14, p1, v13

    aget v14, v14, v5

    xor-int/2addr v12, v14

    iput v12, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    .line 166
    sget-object v12, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    and-int/lit16 v14, v1, 0xff

    aget v12, v12, v14

    sget-object v14, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    shr-int/lit8 v15, v3, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    invoke-direct {v0, v14, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v8, v12

    sget-object v12, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    shr-int/lit8 v14, v10, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v12, v12, v14

    invoke-direct {v0, v12, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v7, v8

    sget-object v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    shr-int/lit8 v12, v11, 0x18

    and-int/lit16 v12, v12, 0xff

    aget v8, v8, v12

    invoke-direct {v0, v8, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    add-int/lit8 v8, v13, 0x1

    .end local v13    # "r":I
    .local v8, "r":I
    aget-object v9, p1, v13

    aget v9, v9, v6

    xor-int/2addr v7, v9

    iput v7, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    move v1, v8

    goto/16 :goto_0

    .line 169
    .end local v3    # "r0":I
    .end local v8    # "r":I
    .end local v10    # "r1":I
    .end local v11    # "r2":I
    .local v1, "r":I
    :cond_0
    sget-object v3, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v10, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    and-int/lit16 v10, v10, 0xff

    aget v3, v3, v10

    sget-object v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v11, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    shr-int/2addr v11, v9

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    invoke-direct {v0, v10, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v3, v10

    sget-object v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v11, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    shr-int/2addr v11, v7

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    invoke-direct {v0, v10, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v3, v10

    sget-object v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v11, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    shr-int/2addr v11, v8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    invoke-direct {v0, v10, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v3, v10

    aget-object v10, p1, v1

    aget v10, v10, v2

    xor-int/2addr v3, v10

    .line 170
    .restart local v3    # "r0":I
    sget-object v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v11, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    sget-object v11, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v12, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    shr-int/2addr v12, v9

    and-int/lit16 v12, v12, 0xff

    aget v11, v11, v12

    invoke-direct {v0, v11, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v11

    xor-int/2addr v10, v11

    sget-object v11, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v12, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    shr-int/2addr v12, v7

    and-int/lit16 v12, v12, 0xff

    aget v11, v11, v12

    invoke-direct {v0, v11, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v11

    xor-int/2addr v10, v11

    sget-object v11, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v12, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    shr-int/2addr v12, v8

    and-int/lit16 v12, v12, 0xff

    aget v11, v11, v12

    invoke-direct {v0, v11, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v11

    xor-int/2addr v10, v11

    aget-object v11, p1, v1

    aget v11, v11, v4

    xor-int/2addr v10, v11

    .line 171
    .restart local v10    # "r1":I
    sget-object v11, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v12, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    and-int/lit16 v12, v12, 0xff

    aget v11, v11, v12

    sget-object v12, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    shr-int/2addr v13, v9

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    invoke-direct {v0, v12, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v11, v12

    sget-object v12, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    shr-int/2addr v13, v7

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    invoke-direct {v0, v12, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v11, v12

    sget-object v12, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    shr-int/2addr v13, v8

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    invoke-direct {v0, v12, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v11, v12

    aget-object v12, p1, v1

    aget v12, v12, v5

    xor-int/2addr v11, v12

    .line 172
    .restart local v11    # "r2":I
    sget-object v12, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    sget-object v13, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v14, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    shr-int/2addr v14, v9

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    invoke-direct {v0, v13, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v13

    xor-int/2addr v12, v13

    sget-object v13, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v14, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    shr-int/2addr v14, v7

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    invoke-direct {v0, v13, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v13

    xor-int/2addr v12, v13

    sget-object v13, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v14, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    shr-int/2addr v14, v8

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    invoke-direct {v0, v13, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v13

    xor-int/2addr v12, v13

    add-int/lit8 v13, v1, 0x1

    .end local v1    # "r":I
    .restart local v13    # "r":I
    aget-object v1, p1, v1

    aget v1, v1, v6

    xor-int/2addr v1, v12

    .line 174
    .local v1, "r3":I
    sget-object v12, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    and-int/lit16 v14, v3, 0xff

    aget-byte v12, v12, v14

    and-int/lit16 v12, v12, 0xff

    sget-object v14, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    shr-int/lit8 v15, v10, 0x8

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v9

    xor-int/2addr v12, v14

    sget-object v14, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    shr-int/lit8 v15, v11, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v7

    xor-int/2addr v12, v14

    sget-object v14, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    shr-int/lit8 v15, v1, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    shl-int/2addr v14, v8

    xor-int/2addr v12, v14

    aget-object v14, p1, v13

    aget v2, v14, v2

    xor-int/2addr v2, v12

    iput v2, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    .line 175
    sget-object v2, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    and-int/lit16 v12, v10, 0xff

    aget-byte v2, v2, v12

    and-int/lit16 v2, v2, 0xff

    sget-object v12, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    shr-int/lit8 v14, v11, 0x8

    and-int/lit16 v14, v14, 0xff

    aget-byte v12, v12, v14

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v9

    xor-int/2addr v2, v12

    sget-object v12, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    shr-int/lit8 v14, v1, 0x10

    and-int/lit16 v14, v14, 0xff

    aget-byte v12, v12, v14

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v7

    xor-int/2addr v2, v12

    sget-object v12, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    shr-int/lit8 v14, v3, 0x18

    and-int/lit16 v14, v14, 0xff

    aget-byte v12, v12, v14

    shl-int/2addr v12, v8

    xor-int/2addr v2, v12

    aget-object v12, p1, v13

    aget v4, v12, v4

    xor-int/2addr v2, v4

    iput v2, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    .line 176
    sget-object v2, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    and-int/lit16 v4, v11, 0xff

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    sget-object v4, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    shr-int/lit8 v12, v1, 0x8

    and-int/lit16 v12, v12, 0xff

    aget-byte v4, v4, v12

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v9

    xor-int/2addr v2, v4

    sget-object v4, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    shr-int/lit8 v12, v3, 0x10

    and-int/lit16 v12, v12, 0xff

    aget-byte v4, v4, v12

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v7

    xor-int/2addr v2, v4

    sget-object v4, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    shr-int/lit8 v12, v10, 0x18

    and-int/lit16 v12, v12, 0xff

    aget-byte v4, v4, v12

    shl-int/2addr v4, v8

    xor-int/2addr v2, v4

    aget-object v4, p1, v13

    aget v4, v4, v5

    xor-int/2addr v2, v4

    iput v2, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    .line 177
    sget-object v2, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    and-int/lit16 v4, v1, 0xff

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    sget-object v4, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v9

    xor-int/2addr v2, v4

    sget-object v4, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    shr-int/lit8 v5, v10, 0x10

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v7

    xor-int/2addr v2, v4

    sget-object v4, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    shr-int/lit8 v5, v11, 0x18

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    shl-int/2addr v4, v8

    xor-int/2addr v2, v4

    aget-object v4, p1, v13

    aget v4, v4, v6

    xor-int/2addr v2, v4

    iput v2, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    .line 179
    return-void
.end method

.method private generateWorkingKey([B)[[I
    .locals 13
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 43
    array-length v0, p1

    const/4 v1, 0x4

    div-int/2addr v0, v1

    .line 46
    .local v0, "kc":I
    const/16 v2, 0x8

    const/4 v3, 0x6

    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_5

    :cond_0
    mul-int/lit8 v4, v0, 0x4

    array-length v5, p1

    if-ne v4, v5, :cond_5

    .line 50
    add-int/lit8 v4, v0, 0x6

    iput v4, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->rounds:I

    .line 51
    iget v4, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->rounds:I

    add-int/lit8 v4, v4, 0x1

    filled-new-array {v4, v1}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 53
    .local v4, "W":[[I
    const/4 v5, 0x0

    .line 54
    .local v5, "t":I
    const/4 v6, 0x0

    .line 55
    .local v6, "i":I
    :goto_0
    array-length v7, p1

    if-ge v6, v7, :cond_1

    .line 56
    shr-int/lit8 v7, v5, 0x2

    aget-object v7, v4, v7

    and-int/lit8 v8, v5, 0x3

    aget-byte v9, p1, v6

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v2

    or-int/2addr v9, v10

    add-int/lit8 v10, v6, 0x2

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    add-int/lit8 v10, v6, 0x3

    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v9, v10

    aput v9, v7, v8

    .line 58
    add-int/lit8 v6, v6, 0x4

    .line 59
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 62
    :cond_1
    iget v7, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->rounds:I

    add-int/lit8 v7, v7, 0x1

    shl-int/lit8 v7, v7, 0x2

    .line 63
    .local v7, "k":I
    move v6, v0

    :goto_1
    if-ge v6, v7, :cond_4

    .line 64
    add-int/lit8 v8, v6, -0x1

    shr-int/lit8 v8, v8, 0x2

    aget-object v8, v4, v8

    add-int/lit8 v9, v6, -0x1

    and-int/lit8 v9, v9, 0x3

    aget v8, v8, v9

    .line 65
    .local v8, "temp":I
    rem-int v9, v6, v0

    if-nez v9, :cond_2

    .line 66
    invoke-direct {p0, v8, v2}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v9

    invoke-direct {p0, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->subWord(I)I

    move-result v9

    sget-object v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->rcon:[I

    div-int v11, v6, v0

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    xor-int v8, v9, v10

    goto :goto_2

    .line 67
    :cond_2
    if-le v0, v3, :cond_3

    rem-int v9, v6, v0

    if-ne v9, v1, :cond_3

    .line 68
    invoke-direct {p0, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->subWord(I)I

    move-result v8

    .line 71
    :cond_3
    :goto_2
    shr-int/lit8 v9, v6, 0x2

    aget-object v9, v4, v9

    and-int/lit8 v10, v6, 0x3

    sub-int v11, v6, v0

    shr-int/lit8 v11, v11, 0x2

    aget-object v11, v4, v11

    sub-int v12, v6, v0

    and-int/lit8 v12, v12, 0x3

    aget v11, v11, v12

    xor-int/2addr v11, v8

    aput v11, v9, v10

    .line 63
    .end local v8    # "temp":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 73
    :cond_4
    return-object v4

    .line 47
    .end local v4    # "W":[[I
    .end local v5    # "t":I
    .end local v6    # "i":I
    .end local v7    # "k":I
    :cond_5
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "invalid key length (not 128/192/256)"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private init([B)V
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->generateWorkingKey([B)[[I

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->workingKey:[[I

    .line 40
    return-void
.end method

.method private shift(II)I
    .locals 2
    .param p1, "r"    # I
    .param p2, "shift"    # I

    .line 182
    ushr-int v0, p1, p2

    neg-int v1, p2

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private stateIn([BI)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "off"    # I

    .line 101
    move v0, p2

    .line 103
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    .line 104
    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    .line 105
    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    .line 106
    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    .line 108
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "index":I
    .restart local v0    # "index":I
    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    .line 109
    iget v1, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .restart local v2    # "index":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    .line 110
    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    .line 111
    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    .line 113
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "index":I
    .restart local v0    # "index":I
    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    .line 114
    iget v1, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .restart local v2    # "index":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    .line 115
    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    .line 116
    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    .line 118
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "index":I
    .restart local v0    # "index":I
    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    .line 119
    iget v1, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .restart local v2    # "index":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    .line 120
    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    .line 121
    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    .line 122
    return-void
.end method

.method private stateOut([BI)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "off"    # I

    .line 125
    move v0, p2

    .line 127
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    iget v2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 128
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 129
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 130
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 132
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 133
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 134
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 135
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 137
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 138
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 139
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 140
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 142
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 143
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 144
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 145
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 146
    return-void
.end method

.method private subWord(I)I
    .locals 3
    .param p1, "x"    # I

    .line 186
    sget-object v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    and-int/lit16 v1, p1, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    sget-object v1, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sget-object v1, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public processBlock([BI[BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->workingKey:[[I

    if-eqz v0, :cond_2

    .line 85
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-gt v0, v1, :cond_1

    .line 89
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-gt v0, v1, :cond_0

    .line 93
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->stateIn([BI)V

    .line 94
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->workingKey:[[I

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->encryptBlock([[I)V

    .line 95
    invoke-direct {p0, p3, p4}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->stateOut([BI)V

    .line 97
    const/16 v0, 0x10

    return v0

    .line 90
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "AES engine not initialised"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([B[B)I
    .locals 1
    .param p1, "in"    # [B
    .param p2, "out"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v0}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->processBlock([BI[BI)I

    move-result v0

    return v0
.end method
