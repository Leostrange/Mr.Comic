.class public Lcom/github/junrar/rarfile/MacInfoHeader;
.super Lcom/github/junrar/rarfile/SubBlockHeader;
.source "MacInfoHeader.java"


# static fields
.field public static final MacInfoHeaderSize:S = 0x8s

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private fileCreator:I

.field private fileType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/github/junrar/rarfile/MacInfoHeader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/junrar/rarfile/MacInfoHeader;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/github/junrar/rarfile/SubBlockHeader;[B)V
    .locals 2
    .param p1, "sb"    # Lcom/github/junrar/rarfile/SubBlockHeader;
    .param p2, "macHeader"    # [B

    .line 39
    invoke-direct {p0, p1}, Lcom/github/junrar/rarfile/SubBlockHeader;-><init>(Lcom/github/junrar/rarfile/SubBlockHeader;)V

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "pos":I
    invoke-static {p2, v0}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    iput v1, p0, Lcom/github/junrar/rarfile/MacInfoHeader;->fileType:I

    .line 42
    add-int/lit8 v0, v0, 0x4

    .line 43
    invoke-static {p2, v0}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    iput v1, p0, Lcom/github/junrar/rarfile/MacInfoHeader;->fileCreator:I

    .line 44
    return-void
.end method


# virtual methods
.method public getFileCreator()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/github/junrar/rarfile/MacInfoHeader;->fileCreator:I

    return v0
.end method

.method public getFileType()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/github/junrar/rarfile/MacInfoHeader;->fileType:I

    return v0
.end method

.method public print()V
    .locals 3

    .line 75
    invoke-super {p0}, Lcom/github/junrar/rarfile/SubBlockHeader;->print()V

    .line 76
    sget-object v0, Lcom/github/junrar/rarfile/MacInfoHeader;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/github/junrar/rarfile/MacInfoHeader;->logger:Lorg/slf4j/Logger;

    iget v1, p0, Lcom/github/junrar/rarfile/MacInfoHeader;->fileType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "filetype: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    sget-object v0, Lcom/github/junrar/rarfile/MacInfoHeader;->logger:Lorg/slf4j/Logger;

    iget v1, p0, Lcom/github/junrar/rarfile/MacInfoHeader;->fileCreator:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "creator: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    :cond_0
    return-void
.end method

.method public setFileCreator(I)V
    .locals 0
    .param p1, "fileCreator"    # I

    .line 57
    iput p1, p0, Lcom/github/junrar/rarfile/MacInfoHeader;->fileCreator:I

    .line 58
    return-void
.end method

.method public setFileType(I)V
    .locals 0
    .param p1, "fileType"    # I

    .line 71
    iput p1, p0, Lcom/github/junrar/rarfile/MacInfoHeader;->fileType:I

    .line 72
    return-void
.end method
