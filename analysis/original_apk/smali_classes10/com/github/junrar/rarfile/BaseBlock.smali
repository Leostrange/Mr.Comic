.class public Lcom/github/junrar/rarfile/BaseBlock;
.super Ljava/lang/Object;
.source "BaseBlock.java"


# static fields
.field public static final BaseBlockSize:S = 0x7s

.field public static final EARC_DATACRC:S = 0x2s

.field public static final EARC_NEXT_VOLUME:S = 0x1s

.field public static final EARC_REVSPACE:S = 0x4s

.field public static final EARC_VOLNUMBER:S = 0x8s

.field public static final LHD_COMMENT:S = 0x8s

.field public static final LHD_DIRECTORY:S = 0xe0s

.field public static final LHD_EXTFLAGS:S = 0x2000s

.field public static final LHD_EXTTIME:S = 0x1000s

.field public static final LHD_LARGE:S = 0x100s

.field public static final LHD_PASSWORD:S = 0x4s

.field public static final LHD_SALT:S = 0x400s

.field public static final LHD_SOLID:S = 0x10s

.field public static final LHD_SPLIT_AFTER:S = 0x2s

.field public static final LHD_SPLIT_BEFORE:S = 0x1s

.field public static final LHD_UNICODE:S = 0x200s

.field public static final LHD_VERSION:S = 0x800s

.field public static final LHD_WINDOW1024:S = 0x80s

.field public static final LHD_WINDOW128:S = 0x20s

.field public static final LHD_WINDOW2048:S = 0xa0s

.field public static final LHD_WINDOW256:S = 0x40s

.field public static final LHD_WINDOW4096:S = 0xc0s

.field public static final LHD_WINDOW512:S = 0x60s

.field public static final LHD_WINDOW64:S = 0x0s

.field public static final LHD_WINDOWMASK:S = 0xe0s

.field public static final LONG_BLOCK:S = -0x8000s

.field public static final MHD_AV:S = 0x20s

.field public static final MHD_COMMENT:S = 0x2s

.field public static final MHD_ENCRYPTVER:S = 0x200s

.field public static final MHD_FIRSTVOLUME:S = 0x100s

.field public static final MHD_LOCK:S = 0x4s

.field public static final MHD_NEWNUMBERING:S = 0x10s

.field public static final MHD_PACK_COMMENT:S = 0x10s

.field public static final MHD_PASSWORD:S = 0x80s

.field public static final MHD_PROTECT:S = 0x40s

.field public static final MHD_SOLID:S = 0x8s

.field public static final MHD_VOLUME:S = 0x1s

.field public static final SKIP_IF_UNKNOWN:S = 0x4000s

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field protected flags:S

.field protected headCRC:S

.field protected headerSize:S

.field protected headerType:B

.field protected positionInFile:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/github/junrar/rarfile/BaseBlock;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/junrar/rarfile/BaseBlock;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headCRC:S

    .line 89
    iput-byte v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerType:B

    .line 90
    iput-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->flags:S

    .line 91
    iput-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerSize:S

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/github/junrar/rarfile/BaseBlock;)V
    .locals 2
    .param p1, "bb"    # Lcom/github/junrar/rarfile/BaseBlock;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headCRC:S

    .line 89
    iput-byte v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerType:B

    .line 90
    iput-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->flags:S

    .line 91
    iput-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerSize:S

    .line 101
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/BaseBlock;->getFlags()S

    move-result v1

    iput-short v1, p0, Lcom/github/junrar/rarfile/BaseBlock;->flags:S

    .line 102
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/BaseBlock;->getHeadCRC()S

    move-result v1

    iput-short v1, p0, Lcom/github/junrar/rarfile/BaseBlock;->headCRC:S

    .line 103
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/github/junrar/rarfile/UnrarHeadertype;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/junrar/rarfile/UnrarHeadertype;->getHeaderByte()B

    move-result v1

    iput-byte v1, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerType:B

    .line 104
    invoke-virtual {p1, v0}, Lcom/github/junrar/rarfile/BaseBlock;->getHeaderSize(Z)S

    move-result v0

    iput-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerSize:S

    .line 105
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/BaseBlock;->getPositionInFile()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->positionInFile:J

    .line 106
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "baseBlockHeader"    # [B

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headCRC:S

    .line 89
    iput-byte v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerType:B

    .line 90
    iput-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->flags:S

    .line 91
    iput-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerSize:S

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "pos":I
    invoke-static {p1, v0}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    iput-short v1, p0, Lcom/github/junrar/rarfile/BaseBlock;->headCRC:S

    .line 111
    add-int/lit8 v0, v0, 0x2

    .line 112
    iget-byte v1, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerType:B

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerType:B

    .line 113
    add-int/lit8 v0, v0, 0x1

    .line 114
    invoke-static {p1, v0}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    iput-short v1, p0, Lcom/github/junrar/rarfile/BaseBlock;->flags:S

    .line 115
    add-int/lit8 v0, v0, 0x2

    .line 116
    invoke-static {p1, v0}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    iput-short v1, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerSize:S

    .line 117
    return-void
.end method

.method private getHeaderPaddingSize()S
    .locals 1

    .line 184
    iget-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerSize:S

    not-int v0, v0

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0xf

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method public getFlags()S
    .locals 1

    .line 151
    iget-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->flags:S

    return v0
.end method

.method public getHeadCRC()S
    .locals 1

    .line 155
    iget-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headCRC:S

    return v0
.end method

.method public getHeaderSize()S
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 166
    iget-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerSize:S

    return v0
.end method

.method public getHeaderSize(Z)S
    .locals 2
    .param p1, "encrypted"    # Z

    .line 176
    if-eqz p1, :cond_0

    .line 177
    iget-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerSize:S

    invoke-direct {p0}, Lcom/github/junrar/rarfile/BaseBlock;->getHeaderPaddingSize()S

    move-result v1

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 179
    :cond_0
    iget-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerSize:S

    return v0
.end method

.method public getHeaderType()Lcom/github/junrar/rarfile/UnrarHeadertype;
    .locals 1

    .line 188
    iget-byte v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerType:B

    invoke-static {v0}, Lcom/github/junrar/rarfile/UnrarHeadertype;->findType(B)Lcom/github/junrar/rarfile/UnrarHeadertype;

    move-result-object v0

    return-object v0
.end method

.method public getPositionInFile()J
    .locals 2

    .line 147
    iget-wide v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->positionInFile:J

    return-wide v0
.end method

.method public hasArchiveDataCRC()Z
    .locals 1

    .line 121
    iget-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->flags:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEncryptVersion()Z
    .locals 1

    .line 129
    iget-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->flags:S

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVolumeNumber()Z
    .locals 1

    .line 125
    iget-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->flags:S

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSubBlock()Z
    .locals 3

    .line 136
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->SubHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    iget-byte v1, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerType:B

    invoke-virtual {v0, v1}, Lcom/github/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 137
    return v1

    .line 139
    :cond_0
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->NewSubHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    iget-byte v2, p0, Lcom/github/junrar/rarfile/BaseBlock;->headerType:B

    invoke-virtual {v0, v2}, Lcom/github/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-short v0, p0, Lcom/github/junrar/rarfile/BaseBlock;->flags:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 140
    return v1

    .line 142
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public print()V
    .locals 4

    .line 196
    sget-object v0, Lcom/github/junrar/rarfile/BaseBlock;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string v1, "HeaderType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/github/junrar/rarfile/UnrarHeadertype;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, "\nHeadCRC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/BaseBlock;->getHeadCRC()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, "\nFlags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/BaseBlock;->getFlags()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v1, "\nHeaderSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/github/junrar/rarfile/BaseBlock;->getHeaderSize(Z)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, "\nPosition in file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/BaseBlock;->getPositionInFile()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 203
    sget-object v1, Lcom/github/junrar/rarfile/BaseBlock;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 205
    .end local v0    # "str":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public setPositionInFile(J)V
    .locals 0
    .param p1, "positionInFile"    # J

    .line 192
    iput-wide p1, p0, Lcom/github/junrar/rarfile/BaseBlock;->positionInFile:J

    .line 193
    return-void
.end method
