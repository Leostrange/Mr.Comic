.class public Lcom/github/junrar/rarfile/ProtectHeader;
.super Lcom/github/junrar/rarfile/BlockHeader;
.source "ProtectHeader.java"


# static fields
.field public static final protectHeaderSize:I = 0x8


# instance fields
.field private mark:B

.field private final recSectors:S

.field private final totalBlocks:I

.field private version:B


# direct methods
.method public constructor <init>(Lcom/github/junrar/rarfile/BlockHeader;[B)V
    .locals 3
    .param p1, "bh"    # Lcom/github/junrar/rarfile/BlockHeader;
    .param p2, "protectHeader"    # [B

    .line 43
    invoke-direct {p0, p1}, Lcom/github/junrar/rarfile/BlockHeader;-><init>(Lcom/github/junrar/rarfile/BlockHeader;)V

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "pos":I
    iget-byte v1, p0, Lcom/github/junrar/rarfile/ProtectHeader;->version:B

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/github/junrar/rarfile/ProtectHeader;->version:B

    .line 48
    invoke-static {p2, v0}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    iput-short v1, p0, Lcom/github/junrar/rarfile/ProtectHeader;->recSectors:S

    .line 49
    add-int/lit8 v0, v0, 0x2

    .line 50
    invoke-static {p2, v0}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    iput v1, p0, Lcom/github/junrar/rarfile/ProtectHeader;->totalBlocks:I

    .line 51
    add-int/lit8 v0, v0, 0x4

    .line 52
    iget-byte v1, p0, Lcom/github/junrar/rarfile/ProtectHeader;->mark:B

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/github/junrar/rarfile/ProtectHeader;->mark:B

    .line 53
    return-void
.end method


# virtual methods
.method public getMark()B
    .locals 1

    .line 57
    iget-byte v0, p0, Lcom/github/junrar/rarfile/ProtectHeader;->mark:B

    return v0
.end method

.method public getRecSectors()S
    .locals 1

    .line 61
    iget-short v0, p0, Lcom/github/junrar/rarfile/ProtectHeader;->recSectors:S

    return v0
.end method

.method public getTotalBlocks()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/github/junrar/rarfile/ProtectHeader;->totalBlocks:I

    return v0
.end method

.method public getVersion()B
    .locals 1

    .line 69
    iget-byte v0, p0, Lcom/github/junrar/rarfile/ProtectHeader;->version:B

    return v0
.end method
