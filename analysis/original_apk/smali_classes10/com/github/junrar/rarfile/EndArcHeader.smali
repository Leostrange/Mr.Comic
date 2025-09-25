.class public Lcom/github/junrar/rarfile/EndArcHeader;
.super Lcom/github/junrar/rarfile/BaseBlock;
.source "EndArcHeader.java"


# static fields
.field public static final endArcArchiveDataCrcSize:S = 0x4s

.field public static final endArcVolumeNumberSize:S = 0x2s


# instance fields
.field private archiveDataCRC:I

.field private volumeNumber:S


# direct methods
.method public constructor <init>(Lcom/github/junrar/rarfile/BaseBlock;[B)V
    .locals 2
    .param p1, "bb"    # Lcom/github/junrar/rarfile/BaseBlock;
    .param p2, "endArcHeader"    # [B

    .line 38
    invoke-direct {p0, p1}, Lcom/github/junrar/rarfile/BaseBlock;-><init>(Lcom/github/junrar/rarfile/BaseBlock;)V

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "pos":I
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/EndArcHeader;->hasArchiveDataCRC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-static {p2, v0}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    iput v1, p0, Lcom/github/junrar/rarfile/EndArcHeader;->archiveDataCRC:I

    .line 43
    add-int/lit8 v0, v0, 0x4

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/EndArcHeader;->hasVolumeNumber()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    invoke-static {p2, v0}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    iput-short v1, p0, Lcom/github/junrar/rarfile/EndArcHeader;->volumeNumber:S

    .line 48
    :cond_1
    return-void
.end method


# virtual methods
.method public getArchiveDataCRC()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/github/junrar/rarfile/EndArcHeader;->archiveDataCRC:I

    return v0
.end method

.method public getVolumeNumber()S
    .locals 1

    .line 68
    iget-short v0, p0, Lcom/github/junrar/rarfile/EndArcHeader;->volumeNumber:S

    return v0
.end method

.method public isValid()Z
    .locals 3

    .line 51
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/EndArcHeader;->getHeadCRC()S

    move-result v0

    const/16 v1, 0x3dc4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 52
    return v2

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/EndArcHeader;->getHeaderType()Lcom/github/junrar/rarfile/UnrarHeadertype;

    move-result-object v0

    sget-object v1, Lcom/github/junrar/rarfile/UnrarHeadertype;->EndArcHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    if-eq v0, v1, :cond_1

    .line 55
    return v2

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/EndArcHeader;->getFlags()S

    move-result v0

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_2

    .line 58
    return v2

    .line 60
    :cond_2
    invoke-virtual {p0, v2}, Lcom/github/junrar/rarfile/EndArcHeader;->getHeaderSize(Z)S

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method
