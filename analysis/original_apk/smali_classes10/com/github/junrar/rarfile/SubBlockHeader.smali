.class public Lcom/github/junrar/rarfile/SubBlockHeader;
.super Lcom/github/junrar/rarfile/BlockHeader;
.source "SubBlockHeader.java"


# static fields
.field public static final SubBlockHeaderSize:S = 0x3s

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private level:B

.field private final subType:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/github/junrar/rarfile/SubBlockHeader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/junrar/rarfile/SubBlockHeader;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/github/junrar/rarfile/BlockHeader;[B)V
    .locals 3
    .param p1, "bh"    # Lcom/github/junrar/rarfile/BlockHeader;
    .param p2, "subblock"    # [B

    .line 41
    invoke-direct {p0, p1}, Lcom/github/junrar/rarfile/BlockHeader;-><init>(Lcom/github/junrar/rarfile/BlockHeader;)V

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "position":I
    invoke-static {p2, v0}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    iput-short v1, p0, Lcom/github/junrar/rarfile/SubBlockHeader;->subType:S

    .line 44
    add-int/lit8 v0, v0, 0x2

    .line 45
    iget-byte v1, p0, Lcom/github/junrar/rarfile/SubBlockHeader;->level:B

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/github/junrar/rarfile/SubBlockHeader;->level:B

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/github/junrar/rarfile/SubBlockHeader;)V
    .locals 1
    .param p1, "sb"    # Lcom/github/junrar/rarfile/SubBlockHeader;

    .line 35
    invoke-direct {p0, p1}, Lcom/github/junrar/rarfile/BlockHeader;-><init>(Lcom/github/junrar/rarfile/BlockHeader;)V

    .line 36
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/SubBlockHeader;->getSubType()Lcom/github/junrar/rarfile/SubBlockHeaderType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/junrar/rarfile/SubBlockHeaderType;->getSubblocktype()S

    move-result v0

    iput-short v0, p0, Lcom/github/junrar/rarfile/SubBlockHeader;->subType:S

    .line 37
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/SubBlockHeader;->getLevel()B

    move-result v0

    iput-byte v0, p0, Lcom/github/junrar/rarfile/SubBlockHeader;->level:B

    .line 38
    return-void
.end method


# virtual methods
.method public getLevel()B
    .locals 1

    .line 49
    iget-byte v0, p0, Lcom/github/junrar/rarfile/SubBlockHeader;->level:B

    return v0
.end method

.method public getSubType()Lcom/github/junrar/rarfile/SubBlockHeaderType;
    .locals 1

    .line 53
    iget-short v0, p0, Lcom/github/junrar/rarfile/SubBlockHeader;->subType:S

    invoke-static {v0}, Lcom/github/junrar/rarfile/SubBlockHeaderType;->findSubblockHeaderType(S)Lcom/github/junrar/rarfile/SubBlockHeaderType;

    move-result-object v0

    return-object v0
.end method

.method public print()V
    .locals 3

    .line 57
    invoke-super {p0}, Lcom/github/junrar/rarfile/BlockHeader;->print()V

    .line 58
    sget-object v0, Lcom/github/junrar/rarfile/SubBlockHeader;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/github/junrar/rarfile/SubBlockHeader;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v1, "subtype: {}"

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/SubBlockHeader;->getSubType()Lcom/github/junrar/rarfile/SubBlockHeaderType;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    sget-object v0, Lcom/github/junrar/rarfile/SubBlockHeader;->logger:Lorg/slf4j/Logger;

    iget-byte v1, p0, Lcom/github/junrar/rarfile/SubBlockHeader;->level:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "level: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    :cond_0
    return-void
.end method
