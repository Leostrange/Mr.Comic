.class public Lcom/github/junrar/rarfile/MainHeader;
.super Lcom/github/junrar/rarfile/BaseBlock;
.source "MainHeader.java"


# static fields
.field private static final logger:Lorg/slf4j/Logger;

.field public static final mainHeaderSize:S = 0x6s

.field public static final mainHeaderSizeWithEnc:S = 0x7s


# instance fields
.field private encryptVersion:B

.field private final highPosAv:S

.field private final posAv:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/github/junrar/rarfile/MainHeader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/junrar/rarfile/MainHeader;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/github/junrar/rarfile/BaseBlock;[B)V
    .locals 3
    .param p1, "bb"    # Lcom/github/junrar/rarfile/BaseBlock;
    .param p2, "mainHeader"    # [B

    .line 41
    invoke-direct {p0, p1}, Lcom/github/junrar/rarfile/BaseBlock;-><init>(Lcom/github/junrar/rarfile/BaseBlock;)V

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "pos":I
    invoke-static {p2, v0}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    iput-short v1, p0, Lcom/github/junrar/rarfile/MainHeader;->highPosAv:S

    .line 44
    add-int/lit8 v0, v0, 0x2

    .line 45
    invoke-static {p2, v0}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    iput v1, p0, Lcom/github/junrar/rarfile/MainHeader;->posAv:I

    .line 46
    add-int/lit8 v0, v0, 0x4

    .line 48
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/MainHeader;->hasEncryptVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-byte v1, p0, Lcom/github/junrar/rarfile/MainHeader;->encryptVersion:B

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/github/junrar/rarfile/MainHeader;->encryptVersion:B

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public getEncryptVersion()B
    .locals 1

    .line 65
    iget-byte v0, p0, Lcom/github/junrar/rarfile/MainHeader;->encryptVersion:B

    return v0
.end method

.method public getHighPosAv()S
    .locals 1

    .line 69
    iget-short v0, p0, Lcom/github/junrar/rarfile/MainHeader;->highPosAv:S

    return v0
.end method

.method public getPosAv()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/github/junrar/rarfile/MainHeader;->posAv:I

    return v0
.end method

.method public hasArchCmt()Z
    .locals 1

    .line 58
    iget-short v0, p0, Lcom/github/junrar/rarfile/MainHeader;->flags:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAV()Z
    .locals 1

    .line 135
    iget-short v0, p0, Lcom/github/junrar/rarfile/MainHeader;->flags:S

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    .line 81
    iget-short v0, p0, Lcom/github/junrar/rarfile/MainHeader;->flags:S

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFirstVolume()Z
    .locals 1

    .line 97
    iget-short v0, p0, Lcom/github/junrar/rarfile/MainHeader;->flags:S

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLocked()Z
    .locals 1

    .line 127
    iget-short v0, p0, Lcom/github/junrar/rarfile/MainHeader;->flags:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMultiVolume()Z
    .locals 2

    .line 89
    iget-short v0, p0, Lcom/github/junrar/rarfile/MainHeader;->flags:S

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNewNumbering()Z
    .locals 1

    .line 143
    iget-short v0, p0, Lcom/github/junrar/rarfile/MainHeader;->flags:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProtected()Z
    .locals 1

    .line 131
    iget-short v0, p0, Lcom/github/junrar/rarfile/MainHeader;->flags:S

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSolid()Z
    .locals 1

    .line 123
    iget-short v0, p0, Lcom/github/junrar/rarfile/MainHeader;->flags:S

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public print()V
    .locals 3

    .line 101
    invoke-super {p0}, Lcom/github/junrar/rarfile/BaseBlock;->print()V

    .line 102
    sget-object v0, Lcom/github/junrar/rarfile/MainHeader;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "posav: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/MainHeader;->getPosAv()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, "\nhighposav: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/MainHeader;->getHighPosAv()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, "\nhasencversion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/MainHeader;->hasEncryptVersion()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/MainHeader;->hasEncryptVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/MainHeader;->getEncryptVersion()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "\nhasarchcmt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/MainHeader;->hasArchCmt()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "\nisEncrypted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/MainHeader;->isEncrypted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, "\nisMultivolume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/MainHeader;->isMultiVolume()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, "\nisFirstvolume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/MainHeader;->isFirstVolume()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, "\nisSolid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/MainHeader;->isSolid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, "\nisLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/MainHeader;->isLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "\nisProtected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/MainHeader;->isProtected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, "\nisAV: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/MainHeader;->isAV()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    sget-object v1, Lcom/github/junrar/rarfile/MainHeader;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 117
    .end local v0    # "str":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method
