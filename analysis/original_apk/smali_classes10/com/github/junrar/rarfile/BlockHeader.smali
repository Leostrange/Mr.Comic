.class public Lcom/github/junrar/rarfile/BlockHeader;
.super Lcom/github/junrar/rarfile/BaseBlock;
.source "BlockHeader.java"


# static fields
.field public static final blockHeaderSize:S = 0x4s

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private dataSize:J

.field private packSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/github/junrar/rarfile/BlockHeader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/junrar/rarfile/BlockHeader;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/github/junrar/rarfile/BaseBlock;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/github/junrar/rarfile/BaseBlock;[B)V
    .locals 2
    .param p1, "bb"    # Lcom/github/junrar/rarfile/BaseBlock;
    .param p2, "blockHeader"    # [B

    .line 52
    invoke-direct {p0, p1}, Lcom/github/junrar/rarfile/BaseBlock;-><init>(Lcom/github/junrar/rarfile/BaseBlock;)V

    .line 54
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/github/junrar/io/Raw;->readIntLittleEndianAsLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/junrar/rarfile/BlockHeader;->packSize:J

    .line 55
    iget-wide v0, p0, Lcom/github/junrar/rarfile/BlockHeader;->packSize:J

    iput-wide v0, p0, Lcom/github/junrar/rarfile/BlockHeader;->dataSize:J

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/github/junrar/rarfile/BlockHeader;)V
    .locals 2
    .param p1, "bh"    # Lcom/github/junrar/rarfile/BlockHeader;

    .line 45
    invoke-direct {p0, p1}, Lcom/github/junrar/rarfile/BaseBlock;-><init>(Lcom/github/junrar/rarfile/BaseBlock;)V

    .line 46
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/BlockHeader;->getDataSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/junrar/rarfile/BlockHeader;->packSize:J

    .line 47
    iget-wide v0, p0, Lcom/github/junrar/rarfile/BlockHeader;->packSize:J

    iput-wide v0, p0, Lcom/github/junrar/rarfile/BlockHeader;->dataSize:J

    .line 48
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/BlockHeader;->getPositionInFile()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/junrar/rarfile/BlockHeader;->positionInFile:J

    .line 49
    return-void
.end method


# virtual methods
.method public getDataSize()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/github/junrar/rarfile/BlockHeader;->dataSize:J

    return-wide v0
.end method

.method public getPackSize()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/github/junrar/rarfile/BlockHeader;->packSize:J

    return-wide v0
.end method

.method public print()V
    .locals 4

    .line 67
    invoke-super {p0}, Lcom/github/junrar/rarfile/BaseBlock;->print()V

    .line 68
    sget-object v0, Lcom/github/junrar/rarfile/BlockHeader;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/github/junrar/rarfile/BlockHeader;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/BlockHeader;->getDataSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/BlockHeader;->getPackSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "DataSize: {} packSize: {}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    :cond_0
    return-void
.end method
