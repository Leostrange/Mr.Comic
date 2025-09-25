.class public Lcom/github/junrar/rarfile/EAHeader;
.super Lcom/github/junrar/rarfile/SubBlockHeader;
.source "EAHeader.java"


# static fields
.field public static final EAHeaderSize:S = 0xas

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final EACRC:I

.field private method:B

.field private final unpSize:I

.field private unpVer:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/github/junrar/rarfile/EAHeader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/junrar/rarfile/EAHeader;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/github/junrar/rarfile/SubBlockHeader;[B)V
    .locals 3
    .param p1, "sb"    # Lcom/github/junrar/rarfile/SubBlockHeader;
    .param p2, "eahead"    # [B

    .line 41
    invoke-direct {p0, p1}, Lcom/github/junrar/rarfile/SubBlockHeader;-><init>(Lcom/github/junrar/rarfile/SubBlockHeader;)V

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "pos":I
    invoke-static {p2, v0}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    iput v1, p0, Lcom/github/junrar/rarfile/EAHeader;->unpSize:I

    .line 44
    add-int/lit8 v0, v0, 0x4

    .line 45
    iget-byte v1, p0, Lcom/github/junrar/rarfile/EAHeader;->unpVer:B

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/github/junrar/rarfile/EAHeader;->unpVer:B

    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    iget-byte v1, p0, Lcom/github/junrar/rarfile/EAHeader;->method:B

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/github/junrar/rarfile/EAHeader;->method:B

    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 49
    invoke-static {p2, v0}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    iput v1, p0, Lcom/github/junrar/rarfile/EAHeader;->EACRC:I

    .line 50
    return-void
.end method


# virtual methods
.method public getEACRC()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/github/junrar/rarfile/EAHeader;->EACRC:I

    return v0
.end method

.method public getMethod()B
    .locals 1

    .line 63
    iget-byte v0, p0, Lcom/github/junrar/rarfile/EAHeader;->method:B

    return v0
.end method

.method public getUnpSize()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/github/junrar/rarfile/EAHeader;->unpSize:I

    return v0
.end method

.method public getUnpVer()B
    .locals 1

    .line 77
    iget-byte v0, p0, Lcom/github/junrar/rarfile/EAHeader;->unpVer:B

    return v0
.end method

.method public print()V
    .locals 3

    .line 81
    invoke-super {p0}, Lcom/github/junrar/rarfile/SubBlockHeader;->print()V

    .line 82
    sget-object v0, Lcom/github/junrar/rarfile/EAHeader;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/github/junrar/rarfile/EAHeader;->logger:Lorg/slf4j/Logger;

    iget v1, p0, Lcom/github/junrar/rarfile/EAHeader;->unpSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "unpSize: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    sget-object v0, Lcom/github/junrar/rarfile/EAHeader;->logger:Lorg/slf4j/Logger;

    iget-byte v1, p0, Lcom/github/junrar/rarfile/EAHeader;->unpVer:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "unpVersion: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    sget-object v0, Lcom/github/junrar/rarfile/EAHeader;->logger:Lorg/slf4j/Logger;

    iget-byte v1, p0, Lcom/github/junrar/rarfile/EAHeader;->method:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "method: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    sget-object v0, Lcom/github/junrar/rarfile/EAHeader;->logger:Lorg/slf4j/Logger;

    iget v1, p0, Lcom/github/junrar/rarfile/EAHeader;->EACRC:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EACRC: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    :cond_0
    return-void
.end method
