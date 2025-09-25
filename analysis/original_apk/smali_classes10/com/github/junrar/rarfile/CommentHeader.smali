.class public Lcom/github/junrar/rarfile/CommentHeader;
.super Lcom/github/junrar/rarfile/BaseBlock;
.source "CommentHeader.java"


# static fields
.field public static final commentHeaderSize:S = 0x6s


# instance fields
.field private final commCRC:S

.field private unpMethod:B

.field private final unpSize:S

.field private unpVersion:B


# direct methods
.method public constructor <init>(Lcom/github/junrar/rarfile/BaseBlock;[B)V
    .locals 3
    .param p1, "bb"    # Lcom/github/junrar/rarfile/BaseBlock;
    .param p2, "commentHeader"    # [B

    .line 41
    invoke-direct {p0, p1}, Lcom/github/junrar/rarfile/BaseBlock;-><init>(Lcom/github/junrar/rarfile/BaseBlock;)V

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "pos":I
    invoke-static {p2, v0}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    iput-short v1, p0, Lcom/github/junrar/rarfile/CommentHeader;->unpSize:S

    .line 45
    add-int/lit8 v0, v0, 0x2

    .line 46
    iget-byte v1, p0, Lcom/github/junrar/rarfile/CommentHeader;->unpVersion:B

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/github/junrar/rarfile/CommentHeader;->unpVersion:B

    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 49
    iget-byte v1, p0, Lcom/github/junrar/rarfile/CommentHeader;->unpMethod:B

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/github/junrar/rarfile/CommentHeader;->unpMethod:B

    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 51
    invoke-static {p2, v0}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    iput-short v1, p0, Lcom/github/junrar/rarfile/CommentHeader;->commCRC:S

    .line 53
    return-void
.end method


# virtual methods
.method public getCommCRC()S
    .locals 1

    .line 56
    iget-short v0, p0, Lcom/github/junrar/rarfile/CommentHeader;->commCRC:S

    return v0
.end method

.method public getUnpMethod()B
    .locals 1

    .line 60
    iget-byte v0, p0, Lcom/github/junrar/rarfile/CommentHeader;->unpMethod:B

    return v0
.end method

.method public getUnpSize()S
    .locals 1

    .line 64
    iget-short v0, p0, Lcom/github/junrar/rarfile/CommentHeader;->unpSize:S

    return v0
.end method

.method public getUnpVersion()B
    .locals 1

    .line 68
    iget-byte v0, p0, Lcom/github/junrar/rarfile/CommentHeader;->unpVersion:B

    return v0
.end method
