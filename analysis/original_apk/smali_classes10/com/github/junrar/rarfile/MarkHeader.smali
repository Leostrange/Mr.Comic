.class public Lcom/github/junrar/rarfile/MarkHeader;
.super Lcom/github/junrar/rarfile/BaseBlock;
.source "MarkHeader.java"


# instance fields
.field private final logger:Lorg/slf4j/Logger;

.field private version:Lcom/github/junrar/rarfile/RARVersion;


# direct methods
.method public constructor <init>(Lcom/github/junrar/rarfile/BaseBlock;)V
    .locals 1
    .param p1, "bb"    # Lcom/github/junrar/rarfile/BaseBlock;

    .line 39
    invoke-direct {p0, p1}, Lcom/github/junrar/rarfile/BaseBlock;-><init>(Lcom/github/junrar/rarfile/BaseBlock;)V

    .line 34
    const-class v0, Lcom/github/junrar/rarfile/MarkHeader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/github/junrar/rarfile/MarkHeader;->logger:Lorg/slf4j/Logger;

    .line 40
    return-void
.end method


# virtual methods
.method public getVersion()Lcom/github/junrar/rarfile/RARVersion;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/github/junrar/rarfile/MarkHeader;->version:Lcom/github/junrar/rarfile/RARVersion;

    return-object v0
.end method

.method public isOldFormat()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/github/junrar/rarfile/MarkHeader;->version:Lcom/github/junrar/rarfile/RARVersion;

    invoke-static {v0}, Lcom/github/junrar/rarfile/RARVersion;->isOldFormat(Lcom/github/junrar/rarfile/RARVersion;)Z

    move-result v0

    return v0
.end method

.method public isSignature()Z
    .locals 9

    .line 55
    const/4 v0, 0x7

    new-array v1, v0, [B

    .line 56
    .local v1, "d":[B
    iget-short v2, p0, Lcom/github/junrar/rarfile/MarkHeader;->headCRC:S

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/github/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    .line 57
    iget-byte v2, p0, Lcom/github/junrar/rarfile/MarkHeader;->headerType:B

    const/4 v4, 0x2

    aput-byte v2, v1, v4

    .line 58
    iget-short v2, p0, Lcom/github/junrar/rarfile/MarkHeader;->flags:S

    const/4 v5, 0x3

    invoke-static {v1, v5, v2}, Lcom/github/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    .line 59
    iget-short v2, p0, Lcom/github/junrar/rarfile/MarkHeader;->headerSize:S

    const/4 v6, 0x5

    invoke-static {v1, v6, v2}, Lcom/github/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    .line 61
    aget-byte v2, v1, v3

    const/16 v7, 0x52

    const/4 v8, 0x1

    if-ne v2, v7, :cond_2

    .line 62
    aget-byte v2, v1, v8

    const/16 v7, 0x45

    if-ne v2, v7, :cond_0

    aget-byte v2, v1, v4

    const/16 v7, 0x7e

    if-ne v2, v7, :cond_0

    aget-byte v2, v1, v5

    const/16 v7, 0x5e

    if-ne v2, v7, :cond_0

    .line 63
    sget-object v0, Lcom/github/junrar/rarfile/RARVersion;->OLD:Lcom/github/junrar/rarfile/RARVersion;

    iput-object v0, p0, Lcom/github/junrar/rarfile/MarkHeader;->version:Lcom/github/junrar/rarfile/RARVersion;

    goto :goto_0

    .line 64
    :cond_0
    aget-byte v2, v1, v8

    const/16 v7, 0x61

    if-ne v2, v7, :cond_2

    aget-byte v2, v1, v4

    const/16 v4, 0x72

    if-ne v2, v4, :cond_2

    aget-byte v2, v1, v5

    const/16 v4, 0x21

    if-ne v2, v4, :cond_2

    const/4 v2, 0x4

    aget-byte v2, v1, v2

    const/16 v4, 0x1a

    if-ne v2, v4, :cond_2

    aget-byte v2, v1, v6

    if-ne v2, v0, :cond_2

    .line 65
    const/4 v0, 0x6

    aget-byte v2, v1, v0

    if-nez v2, :cond_1

    .line 66
    sget-object v0, Lcom/github/junrar/rarfile/RARVersion;->V4:Lcom/github/junrar/rarfile/RARVersion;

    iput-object v0, p0, Lcom/github/junrar/rarfile/MarkHeader;->version:Lcom/github/junrar/rarfile/RARVersion;

    goto :goto_0

    .line 67
    :cond_1
    aget-byte v0, v1, v0

    if-ne v0, v8, :cond_2

    .line 68
    sget-object v0, Lcom/github/junrar/rarfile/RARVersion;->V5:Lcom/github/junrar/rarfile/RARVersion;

    iput-object v0, p0, Lcom/github/junrar/rarfile/MarkHeader;->version:Lcom/github/junrar/rarfile/RARVersion;

    .line 72
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/github/junrar/rarfile/MarkHeader;->version:Lcom/github/junrar/rarfile/RARVersion;

    sget-object v2, Lcom/github/junrar/rarfile/RARVersion;->OLD:Lcom/github/junrar/rarfile/RARVersion;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/github/junrar/rarfile/MarkHeader;->version:Lcom/github/junrar/rarfile/RARVersion;

    sget-object v2, Lcom/github/junrar/rarfile/RARVersion;->V4:Lcom/github/junrar/rarfile/RARVersion;

    if-ne v0, v2, :cond_4

    :cond_3
    move v3, v8

    :cond_4
    return v3
.end method

.method public isValid()Z
    .locals 3

    .line 42
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/MarkHeader;->getHeadCRC()S

    move-result v0

    const/16 v1, 0x6152

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 43
    return v2

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/MarkHeader;->getHeaderType()Lcom/github/junrar/rarfile/UnrarHeadertype;

    move-result-object v0

    sget-object v1, Lcom/github/junrar/rarfile/UnrarHeadertype;->MarkHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    if-eq v0, v1, :cond_1

    .line 46
    return v2

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/MarkHeader;->getFlags()S

    move-result v0

    const/16 v1, 0x1a21

    if-eq v0, v1, :cond_2

    .line 49
    return v2

    .line 51
    :cond_2
    invoke-virtual {p0, v2}, Lcom/github/junrar/rarfile/MarkHeader;->getHeaderSize(Z)S

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public print()V
    .locals 3

    .line 84
    invoke-super {p0}, Lcom/github/junrar/rarfile/BaseBlock;->print()V

    .line 85
    iget-object v0, p0, Lcom/github/junrar/rarfile/MarkHeader;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/github/junrar/rarfile/MarkHeader;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/MarkHeader;->isValid()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "valid: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    :cond_0
    return-void
.end method
