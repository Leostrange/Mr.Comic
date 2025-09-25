.class public Lcom/github/junrar/unsigned/UnsignedByte;
.super Ljava/lang/Object;
.source "UnsignedByte.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(BB)S
    .locals 1
    .param p0, "unsignedByte1"    # B
    .param p1, "unsignedByte2"    # B

    .line 43
    add-int v0, p0, p1

    int-to-short v0, v0

    return v0
.end method

.method public static intToByte(I)B
    .locals 1
    .param p0, "unsignedByte1"    # I

    .line 35
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public static longToByte(J)B
    .locals 2
    .param p0, "unsignedByte1"    # J

    .line 31
    const-wide/16 v0, 0xff

    and-long/2addr v0, p0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public static shortToByte(S)B
    .locals 1
    .param p0, "unsignedByte1"    # S

    .line 39
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public static sub(BB)S
    .locals 1
    .param p0, "unsignedByte1"    # B
    .param p1, "unsignedByte2"    # B

    .line 47
    sub-int v0, p0, p1

    int-to-short v0, v0

    return v0
.end method
