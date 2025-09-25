.class public Lcom/github/junrar/rarfile/FileHeader;
.super Lcom/github/junrar/rarfile/BlockHeader;
.source "FileHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;
    }
.end annotation


# static fields
.field private static final NANOS_PER_UNIT:J = 0x64L

.field private static final NEWLHD_SIZE:B = 0x20t

.field private static final SALT_SIZE:B = 0x8t

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private aTime:Ljava/nio/file/attribute/FileTime;

.field private arcTime:Ljava/nio/file/attribute/FileTime;

.field private cTime:Ljava/nio/file/attribute/FileTime;

.field private fileAttr:I

.field private final fileCRC:I

.field private fileName:Ljava/lang/String;

.field private final fileNameBytes:[B

.field private fileNameW:Ljava/lang/String;

.field private fullPackSize:J

.field private fullUnpackSize:J

.field private final highPackSize:I

.field private highUnpackSize:I

.field private final hostOS:Lcom/github/junrar/rarfile/HostSystem;

.field private mTime:Ljava/nio/file/attribute/FileTime;

.field private nameSize:S

.field private recoverySectors:I

.field private final salt:[B

.field private subData:[B

.field private subFlags:I

.field private unpMethod:B

.field private final unpSize:J

.field private unpVersion:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/github/junrar/rarfile/FileHeader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/junrar/rarfile/FileHeader;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/github/junrar/rarfile/BlockHeader;[B)V
    .locals 10
    .param p1, "bh"    # Lcom/github/junrar/rarfile/BlockHeader;
    .param p2, "fileHeader"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/CorruptHeaderException;
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1}, Lcom/github/junrar/rarfile/BlockHeader;-><init>(Lcom/github/junrar/rarfile/BlockHeader;)V

    .line 74
    const/16 v0, 0x8

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/github/junrar/rarfile/FileHeader;->salt:[B

    .line 92
    const/4 v1, -0x1

    iput v1, p0, Lcom/github/junrar/rarfile/FileHeader;->recoverySectors:I

    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, "position":I
    invoke-static {p2, v1}, Lcom/github/junrar/io/Raw;->readIntLittleEndianAsLong([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/github/junrar/rarfile/FileHeader;->unpSize:J

    .line 99
    const/4 v2, 0x4

    add-int/2addr v1, v2

    .line 100
    aget-byte v3, p2, v2

    invoke-static {v3}, Lcom/github/junrar/rarfile/HostSystem;->findHostSystem(B)Lcom/github/junrar/rarfile/HostSystem;

    move-result-object v3

    iput-object v3, p0, Lcom/github/junrar/rarfile/FileHeader;->hostOS:Lcom/github/junrar/rarfile/HostSystem;

    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 103
    invoke-static {p2, v1}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v3

    iput v3, p0, Lcom/github/junrar/rarfile/FileHeader;->fileCRC:I

    .line 104
    add-int/2addr v1, v2

    .line 106
    invoke-static {p2, v1}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v3

    .line 107
    .local v3, "fileTime":I
    add-int/2addr v1, v2

    .line 109
    iget-byte v4, p0, Lcom/github/junrar/rarfile/FileHeader;->unpVersion:B

    const/16 v5, 0xd

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/github/junrar/rarfile/FileHeader;->unpVersion:B

    .line 110
    add-int/lit8 v1, v1, 0x1

    .line 111
    iget-byte v4, p0, Lcom/github/junrar/rarfile/FileHeader;->unpMethod:B

    const/16 v5, 0xe

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/github/junrar/rarfile/FileHeader;->unpMethod:B

    .line 112
    add-int/lit8 v1, v1, 0x1

    .line 113
    invoke-static {p2, v1}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v4

    iput-short v4, p0, Lcom/github/junrar/rarfile/FileHeader;->nameSize:S

    .line 114
    add-int/lit8 v1, v1, 0x2

    .line 116
    invoke-static {p2, v1}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v4

    iput v4, p0, Lcom/github/junrar/rarfile/FileHeader;->fileAttr:I

    .line 117
    add-int/2addr v1, v2

    .line 118
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isLargeBlock()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 119
    invoke-static {p2, v1}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v4

    iput v4, p0, Lcom/github/junrar/rarfile/FileHeader;->highPackSize:I

    .line 120
    add-int/lit8 v1, v1, 0x4

    .line 122
    invoke-static {p2, v1}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v4

    iput v4, p0, Lcom/github/junrar/rarfile/FileHeader;->highUnpackSize:I

    .line 123
    add-int/2addr v1, v2

    goto :goto_0

    .line 125
    :cond_0
    iput v5, p0, Lcom/github/junrar/rarfile/FileHeader;->highPackSize:I

    .line 126
    iput v5, p0, Lcom/github/junrar/rarfile/FileHeader;->highUnpackSize:I

    .line 127
    iget-wide v6, p0, Lcom/github/junrar/rarfile/FileHeader;->unpSize:J

    const-wide/16 v8, -0x1

    cmp-long v4, v6, v8

    if-nez v4, :cond_1

    .line 128
    const v4, 0x7fffffff

    iput v4, p0, Lcom/github/junrar/rarfile/FileHeader;->highUnpackSize:I

    .line 132
    :cond_1
    :goto_0
    iget-wide v6, p0, Lcom/github/junrar/rarfile/FileHeader;->fullPackSize:J

    iget v4, p0, Lcom/github/junrar/rarfile/FileHeader;->highPackSize:I

    int-to-long v8, v4

    or-long/2addr v6, v8

    iput-wide v6, p0, Lcom/github/junrar/rarfile/FileHeader;->fullPackSize:J

    .line 133
    iget-wide v6, p0, Lcom/github/junrar/rarfile/FileHeader;->fullPackSize:J

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    iput-wide v6, p0, Lcom/github/junrar/rarfile/FileHeader;->fullPackSize:J

    .line 134
    iget-wide v6, p0, Lcom/github/junrar/rarfile/FileHeader;->fullPackSize:J

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getPackSize()J

    move-result-wide v8

    or-long/2addr v6, v8

    iput-wide v6, p0, Lcom/github/junrar/rarfile/FileHeader;->fullPackSize:J

    .line 136
    iget-wide v6, p0, Lcom/github/junrar/rarfile/FileHeader;->fullUnpackSize:J

    iget v8, p0, Lcom/github/junrar/rarfile/FileHeader;->highUnpackSize:I

    int-to-long v8, v8

    or-long/2addr v6, v8

    iput-wide v6, p0, Lcom/github/junrar/rarfile/FileHeader;->fullUnpackSize:J

    .line 137
    iget-wide v6, p0, Lcom/github/junrar/rarfile/FileHeader;->fullUnpackSize:J

    shl-long/2addr v6, v4

    iput-wide v6, p0, Lcom/github/junrar/rarfile/FileHeader;->fullUnpackSize:J

    .line 138
    iget-wide v6, p0, Lcom/github/junrar/rarfile/FileHeader;->fullUnpackSize:J

    iget-wide v8, p0, Lcom/github/junrar/rarfile/FileHeader;->unpSize:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/github/junrar/rarfile/FileHeader;->fullUnpackSize:J

    .line 140
    iget-short v6, p0, Lcom/github/junrar/rarfile/FileHeader;->nameSize:S

    const/16 v7, 0x1000

    if-le v6, v7, :cond_2

    goto :goto_1

    :cond_2
    iget-short v7, p0, Lcom/github/junrar/rarfile/FileHeader;->nameSize:S

    :goto_1
    iput-short v7, p0, Lcom/github/junrar/rarfile/FileHeader;->nameSize:S

    .line 142
    iget-short v6, p0, Lcom/github/junrar/rarfile/FileHeader;->nameSize:S

    if-lez v6, :cond_e

    .line 146
    iget-short v6, p0, Lcom/github/junrar/rarfile/FileHeader;->nameSize:S

    new-array v6, v6, [B

    iput-object v6, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameBytes:[B

    .line 147
    iget-object v6, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameBytes:[B

    iget-short v7, p0, Lcom/github/junrar/rarfile/FileHeader;->nameSize:S

    invoke-static {p2, v1, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    iget-short v6, p0, Lcom/github/junrar/rarfile/FileHeader;->nameSize:S

    add-int/2addr v1, v6

    .line 150
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isFileHeader()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 151
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isUnicode()Z

    move-result v6

    const-string v7, ""

    if-eqz v6, :cond_5

    .line 152
    const/4 v6, 0x0

    .line 153
    .local v6, "length":I
    :goto_2
    iget-object v8, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameBytes:[B

    array-length v8, v8

    if-ge v6, v8, :cond_3

    iget-object v8, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameBytes:[B

    aget-byte v8, v8, v6

    if-eqz v8, :cond_3

    .line 155
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 157
    :cond_3
    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameBytes:[B

    invoke-direct {v8, v9, v5, v6}, Ljava/lang/String;-><init>([BII)V

    iput-object v8, p0, Lcom/github/junrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    .line 158
    iget-short v8, p0, Lcom/github/junrar/rarfile/FileHeader;->nameSize:S

    if-eq v6, v8, :cond_4

    .line 159
    add-int/lit8 v6, v6, 0x1

    .line 160
    iget-object v7, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameBytes:[B

    invoke-static {v7, v6}, Lcom/github/junrar/rarfile/FileNameDecoder;->decode([BI)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    goto :goto_3

    .line 162
    :cond_4
    iput-object v7, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    .line 164
    .end local v6    # "length":I
    :goto_3
    goto :goto_4

    .line 165
    :cond_5
    new-instance v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameBytes:[B

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    iput-object v6, p0, Lcom/github/junrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    .line 166
    iput-object v7, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    .line 169
    :goto_4
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/github/junrar/rarfile/FileHeader;->isFilenameValid(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_5

    .line 170
    :cond_6
    new-instance v0, Lcom/github/junrar/exception/CorruptHeaderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid filename: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/github/junrar/exception/CorruptHeaderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_7
    :goto_5
    sget-object v6, Lcom/github/junrar/rarfile/UnrarHeadertype;->NewSubHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    iget-byte v7, p0, Lcom/github/junrar/rarfile/FileHeader;->headerType:B

    invoke-virtual {v6, v7}, Lcom/github/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 175
    iget-short v6, p0, Lcom/github/junrar/rarfile/FileHeader;->headerSize:S

    sub-int/2addr v6, v4

    iget-short v4, p0, Lcom/github/junrar/rarfile/FileHeader;->nameSize:S

    sub-int/2addr v6, v4

    .line 176
    .local v6, "datasize":I
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->hasSalt()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 177
    add-int/lit8 v6, v6, -0x8

    .line 179
    :cond_8
    if-lez v6, :cond_9

    .line 180
    new-array v4, v6, [B

    iput-object v4, p0, Lcom/github/junrar/rarfile/FileHeader;->subData:[B

    .line 181
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    if-ge v4, v6, :cond_9

    .line 182
    iget-object v7, p0, Lcom/github/junrar/rarfile/FileHeader;->subData:[B

    aget-byte v8, p2, v1

    aput-byte v8, v7, v4

    .line 183
    add-int/lit8 v1, v1, 0x1

    .line 181
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 187
    .end local v4    # "i":I
    :cond_9
    sget-object v4, Lcom/github/junrar/rarfile/NewSubHeaderType;->SUBHEAD_TYPE_RR:Lcom/github/junrar/rarfile/NewSubHeaderType;

    iget-object v7, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameBytes:[B

    invoke-virtual {v4, v7}, Lcom/github/junrar/rarfile/NewSubHeaderType;->byteEquals([B)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 188
    iget-object v4, p0, Lcom/github/junrar/rarfile/FileHeader;->subData:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    iget-object v7, p0, Lcom/github/junrar/rarfile/FileHeader;->subData:[B

    const/16 v8, 0x9

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v0

    add-int/2addr v4, v7

    iget-object v7, p0, Lcom/github/junrar/rarfile/FileHeader;->subData:[B

    const/16 v8, 0xa

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    add-int/2addr v4, v7

    iget-object v7, p0, Lcom/github/junrar/rarfile/FileHeader;->subData:[B

    const/16 v8, 0xb

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    add-int/2addr v4, v7

    iput v4, p0, Lcom/github/junrar/rarfile/FileHeader;->recoverySectors:I

    .line 193
    .end local v6    # "datasize":I
    :cond_a
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->hasSalt()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 194
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_7
    if-ge v4, v0, :cond_b

    .line 195
    iget-object v6, p0, Lcom/github/junrar/rarfile/FileHeader;->salt:[B

    aget-byte v7, p2, v1

    aput-byte v7, v6, v4

    .line 196
    add-int/lit8 v1, v1, 0x1

    .line 194
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 200
    .end local v4    # "i":I
    :cond_b
    invoke-static {v3}, Lcom/github/junrar/rarfile/FileHeader;->getDateDos(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v4

    iput-object v4, p0, Lcom/github/junrar/rarfile/FileHeader;->mTime:Ljava/nio/file/attribute/FileTime;

    .line 202
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->hasExtTime()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 204
    add-int/lit8 v4, v1, 0x1

    array-length v6, p2

    if-ge v4, v6, :cond_c

    .line 205
    invoke-static {p2, v1}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v4

    .line 206
    .local v4, "extTimeFlags":S
    add-int/lit8 v1, v1, 0x2

    goto :goto_8

    .line 208
    .end local v4    # "extTimeFlags":S
    :cond_c
    const/4 v4, 0x0

    .line 209
    .restart local v4    # "extTimeFlags":S
    sget-object v6, Lcom/github/junrar/rarfile/FileHeader;->logger:Lorg/slf4j/Logger;

    const-string v7, "FileHeader for entry \'{}\' signals extended time data, but does not contain any"

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    :goto_8
    const/16 v6, 0xc

    iget-object v7, p0, Lcom/github/junrar/rarfile/FileHeader;->mTime:Ljava/nio/file/attribute/FileTime;

    invoke-static {v6, v4, p2, v1, v7}, Lcom/github/junrar/rarfile/FileHeader;->parseExtTime(IS[BILjava/nio/file/attribute/FileTime;)Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;

    move-result-object v6

    .line 213
    .local v6, "mTimeTuple":Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;
    invoke-static {v6}, Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;->access$000(Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;)Ljava/nio/file/attribute/FileTime;

    move-result-object v7

    iput-object v7, p0, Lcom/github/junrar/rarfile/FileHeader;->mTime:Ljava/nio/file/attribute/FileTime;

    .line 214
    invoke-static {v6}, Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;->access$100(Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;)I

    move-result v1

    .line 216
    invoke-static {v0, v4, p2, v1}, Lcom/github/junrar/rarfile/FileHeader;->parseExtTime(IS[BI)Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;

    move-result-object v0

    .line 217
    .local v0, "cTimeTuple":Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;
    invoke-static {v0}, Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;->access$000(Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;)Ljava/nio/file/attribute/FileTime;

    move-result-object v7

    iput-object v7, p0, Lcom/github/junrar/rarfile/FileHeader;->cTime:Ljava/nio/file/attribute/FileTime;

    .line 218
    invoke-static {v0}, Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;->access$100(Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;)I

    move-result v1

    .line 220
    invoke-static {v2, v4, p2, v1}, Lcom/github/junrar/rarfile/FileHeader;->parseExtTime(IS[BI)Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;

    move-result-object v2

    .line 221
    .local v2, "aTimeTuple":Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;
    invoke-static {v2}, Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;->access$000(Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;)Ljava/nio/file/attribute/FileTime;

    move-result-object v7

    iput-object v7, p0, Lcom/github/junrar/rarfile/FileHeader;->aTime:Ljava/nio/file/attribute/FileTime;

    .line 222
    invoke-static {v2}, Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;->access$100(Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;)I

    move-result v1

    .line 224
    invoke-static {v5, v4, p2, v1}, Lcom/github/junrar/rarfile/FileHeader;->parseExtTime(IS[BI)Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;

    move-result-object v5

    .line 225
    .local v5, "arcTimeTuple":Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;
    invoke-static {v5}, Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;->access$000(Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;)Ljava/nio/file/attribute/FileTime;

    move-result-object v7

    iput-object v7, p0, Lcom/github/junrar/rarfile/FileHeader;->arcTime:Ljava/nio/file/attribute/FileTime;

    .line 226
    invoke-static {v5}, Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;->access$100(Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;)I

    move-result v1

    .line 228
    .end local v0    # "cTimeTuple":Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;
    .end local v2    # "aTimeTuple":Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;
    .end local v4    # "extTimeFlags":S
    .end local v5    # "arcTimeTuple":Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;
    .end local v6    # "mTimeTuple":Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;
    :cond_d
    return-void

    .line 143
    :cond_e
    new-instance v0, Lcom/github/junrar/exception/CorruptHeaderException;

    const-string v2, "Invalid file name with negative size"

    invoke-direct {v0, v2}, Lcom/github/junrar/exception/CorruptHeaderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getDateDos(I)J
    .locals 4
    .param p0, "time"    # I

    .line 316
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 317
    .local v0, "cal":Ljava/util/Calendar;
    ushr-int/lit8 v1, p0, 0x19

    add-int/lit16 v1, v1, 0x7bc

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 318
    ushr-int/lit8 v1, p0, 0x15

    and-int/lit8 v1, v1, 0xf

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 319
    ushr-int/lit8 v1, p0, 0x10

    and-int/lit8 v1, v1, 0x1f

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 320
    ushr-int/lit8 v1, p0, 0xb

    and-int/lit8 v1, v1, 0x1f

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 321
    ushr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x3f

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 322
    and-int/lit8 v1, p0, 0x1f

    mul-int/2addr v1, v2

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 323
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 324
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method private static isFilenameValid(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .line 232
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .local v0, "ignored":Ljava/lang/String;
    const/4 v1, 0x1

    return v1

    .line 234
    .end local v0    # "ignored":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method private static parseExtTime(IS[BI)Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;
    .locals 1
    .param p0, "shift"    # I
    .param p1, "flags"    # S
    .param p2, "fileHeader"    # [B
    .param p3, "position"    # I

    .line 250
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/github/junrar/rarfile/FileHeader;->parseExtTime(IS[BILjava/nio/file/attribute/FileTime;)Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;

    move-result-object v0

    return-object v0
.end method

.method private static parseExtTime(IS[BILjava/nio/file/attribute/FileTime;)Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;
    .locals 15
    .param p0, "shift"    # I
    .param p1, "flags"    # S
    .param p2, "fileHeader"    # [B
    .param p3, "position"    # I
    .param p4, "baseTime"    # Ljava/nio/file/attribute/FileTime;

    .line 254
    move/from16 v0, p3

    move-object/from16 v1, p4

    ushr-int v2, p1, p0

    .line 255
    .local v2, "flag":I
    and-int/lit8 v3, v2, 0x8

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 257
    if-eqz v1, :cond_0

    .line 258
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    .local v5, "seconds":J
    goto :goto_0

    .line 260
    .end local v5    # "seconds":J
    :cond_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {p2 .. p3}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v5

    invoke-static {v5}, Lcom/github/junrar/rarfile/FileHeader;->getDateDos(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    .line 261
    .restart local v5    # "seconds":J
    add-int/lit8 v0, v0, 0x4

    .line 263
    .end local p3    # "position":I
    .local v0, "position":I
    :goto_0
    and-int/lit8 v3, v2, 0x3

    .line 264
    .local v3, "count":I
    const-wide/16 v7, 0x0

    .line 265
    .local v7, "remainder":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v3, :cond_1

    .line 266
    aget-byte v10, p2, v0

    and-int/lit16 v10, v10, 0xff

    .line 267
    .local v10, "b":I
    shl-int/lit8 v11, v10, 0x10

    int-to-long v11, v11

    const/16 v13, 0x8

    ushr-long v13, v7, v13

    or-long v7, v11, v13

    .line 268
    nop

    .end local v10    # "b":I
    add-int/lit8 v0, v0, 0x1

    .line 265
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 270
    .end local v9    # "i":I
    :cond_1
    const-wide/16 v9, 0x64

    mul-long/2addr v9, v7

    .line 271
    .local v9, "nanos":J
    and-int/lit8 v11, v2, 0x4

    if-eqz v11, :cond_2

    .line 272
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x1

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v11

    add-long/2addr v9, v11

    .line 274
    :cond_2
    invoke-static {v5, v6, v9, v10}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v11

    invoke-static {v11}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v11

    .line 275
    .local v11, "time":Ljava/nio/file/attribute/FileTime;
    new-instance v12, Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;

    invoke-direct {v12, v0, v11, v4}, Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;-><init>(ILjava/nio/file/attribute/FileTime;Lcom/github/junrar/rarfile/FileHeader$1;)V

    return-object v12

    .line 277
    .end local v0    # "position":I
    .end local v3    # "count":I
    .end local v5    # "seconds":J
    .end local v7    # "remainder":J
    .end local v9    # "nanos":J
    .end local v11    # "time":Ljava/nio/file/attribute/FileTime;
    .restart local p3    # "position":I
    :cond_3
    new-instance v3, Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;

    invoke-direct {v3, v0, v1, v4}, Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;-><init>(ILjava/nio/file/attribute/FileTime;Lcom/github/junrar/rarfile/FileHeader$1;)V

    return-object v3
.end method

.method private static toDate(Ljava/nio/file/attribute/FileTime;)Ljava/util/Date;
    .locals 3
    .param p0, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 328
    if-eqz p0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static toFileTime(Ljava/util/Date;)Ljava/nio/file/attribute/FileTime;
    .locals 2
    .param p0, "time"    # Ljava/util/Date;

    .line 332
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getATime()Ljava/util/Date;
    .locals 1

    .line 401
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getLastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Lcom/github/junrar/rarfile/FileHeader;->toDate(Ljava/nio/file/attribute/FileTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getArcTime()Ljava/util/Date;
    .locals 1

    .line 362
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getArchivalTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Lcom/github/junrar/rarfile/FileHeader;->toDate(Ljava/nio/file/attribute/FileTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getArchivalTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->arcTime:Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public getCTime()Ljava/util/Date;
    .locals 1

    .line 440
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getCreationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Lcom/github/junrar/rarfile/FileHeader;->toDate(Ljava/nio/file/attribute/FileTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->cTime:Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public getFileAttr()I
    .locals 1

    .line 453
    iget v0, p0, Lcom/github/junrar/rarfile/FileHeader;->fileAttr:I

    return v0
.end method

.method public getFileCRC()I
    .locals 1

    .line 461
    iget v0, p0, Lcom/github/junrar/rarfile/FileHeader;->fileCRC:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 671
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isUnicode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getFileNameByteArray()[B
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameBytes:[B

    return-object v0
.end method

.method public getFileNameString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileNameW()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    return-object v0
.end method

.method public getFullPackSize()J
    .locals 2

    .line 582
    iget-wide v0, p0, Lcom/github/junrar/rarfile/FileHeader;->fullPackSize:J

    return-wide v0
.end method

.method public getFullUnpackSize()J
    .locals 2

    .line 586
    iget-wide v0, p0, Lcom/github/junrar/rarfile/FileHeader;->fullUnpackSize:J

    return-wide v0
.end method

.method public getHighPackSize()I
    .locals 1

    .line 499
    iget v0, p0, Lcom/github/junrar/rarfile/FileHeader;->highPackSize:I

    return v0
.end method

.method public getHighUnpackSize()I
    .locals 1

    .line 503
    iget v0, p0, Lcom/github/junrar/rarfile/FileHeader;->highUnpackSize:I

    return v0
.end method

.method public getHostOS()Lcom/github/junrar/rarfile/HostSystem;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->hostOS:Lcom/github/junrar/rarfile/HostSystem;

    return-object v0
.end method

.method public getLastAccessTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->aTime:Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public getLastModifiedTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->mTime:Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public getMTime()Ljava/util/Date;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getLastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Lcom/github/junrar/rarfile/FileHeader;->toDate(Ljava/nio/file/attribute/FileTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNameSize()S
    .locals 1

    .line 550
    iget-short v0, p0, Lcom/github/junrar/rarfile/FileHeader;->nameSize:S

    return v0
.end method

.method public getRecoverySectors()I
    .locals 1

    .line 554
    iget v0, p0, Lcom/github/junrar/rarfile/FileHeader;->recoverySectors:I

    return v0
.end method

.method public getSalt()[B
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->salt:[B

    return-object v0
.end method

.method public getSubData()[B
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader;->subData:[B

    return-object v0
.end method

.method public getSubFlags()I
    .locals 1

    .line 566
    iget v0, p0, Lcom/github/junrar/rarfile/FileHeader;->subFlags:I

    return v0
.end method

.method public getUnpMethod()B
    .locals 1

    .line 570
    iget-byte v0, p0, Lcom/github/junrar/rarfile/FileHeader;->unpMethod:B

    return v0
.end method

.method public getUnpSize()J
    .locals 2

    .line 574
    iget-wide v0, p0, Lcom/github/junrar/rarfile/FileHeader;->unpSize:J

    return-wide v0
.end method

.method public getUnpVersion()B
    .locals 1

    .line 578
    iget-byte v0, p0, Lcom/github/junrar/rarfile/FileHeader;->unpVersion:B

    return v0
.end method

.method public hasExtTime()Z
    .locals 1

    .line 648
    iget-short v0, p0, Lcom/github/junrar/rarfile/FileHeader;->flags:S

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSalt()Z
    .locals 1

    .line 644
    iget-short v0, p0, Lcom/github/junrar/rarfile/FileHeader;->flags:S

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .line 661
    iget-short v0, p0, Lcom/github/junrar/rarfile/FileHeader;->flags:S

    const/16 v1, 0xe0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    .line 627
    iget-short v0, p0, Lcom/github/junrar/rarfile/FileHeader;->flags:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFileHeader()Z
    .locals 2

    .line 640
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    iget-byte v1, p0, Lcom/github/junrar/rarfile/FileHeader;->headerType:B

    invoke-virtual {v0, v1}, Lcom/github/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    return v0
.end method

.method public isLargeBlock()Z
    .locals 1

    .line 652
    iget-short v0, p0, Lcom/github/junrar/rarfile/FileHeader;->flags:S

    and-int/lit16 v0, v0, 0x100

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

    .line 618
    iget-short v0, p0, Lcom/github/junrar/rarfile/FileHeader;->flags:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSplitAfter()Z
    .locals 1

    .line 600
    iget-short v0, p0, Lcom/github/junrar/rarfile/FileHeader;->flags:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSplitBefore()Z
    .locals 2

    .line 609
    iget-short v0, p0, Lcom/github/junrar/rarfile/FileHeader;->flags:S

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUnicode()Z
    .locals 1

    .line 636
    iget-short v0, p0, Lcom/github/junrar/rarfile/FileHeader;->flags:S

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public print()V
    .locals 4

    .line 283
    invoke-super {p0}, Lcom/github/junrar/rarfile/BlockHeader;->print()V

    .line 284
    sget-object v0, Lcom/github/junrar/rarfile/FileHeader;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "unpSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getUnpSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 287
    const-string v1, "\nHostOS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/junrar/rarfile/FileHeader;->hostOS:Lcom/github/junrar/rarfile/HostSystem;

    invoke-virtual {v2}, Lcom/github/junrar/rarfile/HostSystem;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    const-string v1, "\nMTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/junrar/rarfile/FileHeader;->mTime:Ljava/nio/file/attribute/FileTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 289
    const-string v1, "\nCTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/junrar/rarfile/FileHeader;->cTime:Ljava/nio/file/attribute/FileTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    const-string v1, "\nATime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/junrar/rarfile/FileHeader;->aTime:Ljava/nio/file/attribute/FileTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 291
    const-string v1, "\nArcTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/junrar/rarfile/FileHeader;->arcTime:Ljava/nio/file/attribute/FileTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    const-string v1, "\nFileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/junrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v1, "\nFileNameW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v1, "\nunpMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getUnpMethod()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string v1, "\nunpVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getUnpVersion()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v1, "\nfullpackedsize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getFullPackSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 297
    const-string v1, "\nfullunpackedsize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getFullUnpackSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 298
    const-string v1, "\nisEncrypted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isEncrypted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 299
    const-string v1, "\nisfileHeader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isFileHeader()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 300
    const-string v1, "\nisSolid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isSolid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 301
    const-string v1, "\nisSplitafter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isSplitAfter()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 302
    const-string v1, "\nisSplitBefore:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isSplitBefore()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, "\nunpSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getUnpSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 304
    const-string v1, "\ndataSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getDataSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 305
    const-string v1, "\nisUnicode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isUnicode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 306
    const-string v1, "\nhasVolumeNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->hasVolumeNumber()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 307
    const-string v1, "\nhasArchiveDataCRC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->hasArchiveDataCRC()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 308
    const-string v1, "\nhasSalt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->hasSalt()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 309
    const-string v1, "\nhasEncryptVersions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->hasEncryptVersion()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 310
    const-string v1, "\nisSubBlock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isSubBlock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 311
    sget-object v1, Lcom/github/junrar/rarfile/FileHeader;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 313
    .end local v0    # "str":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public setATime(Ljava/util/Date;)V
    .locals 1
    .param p1, "time"    # Ljava/util/Date;

    .line 410
    invoke-static {p1}, Lcom/github/junrar/rarfile/FileHeader;->toFileTime(Ljava/util/Date;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/junrar/rarfile/FileHeader;->setLastAccessTime(Ljava/nio/file/attribute/FileTime;)V

    .line 411
    return-void
.end method

.method public setArcTime(Ljava/util/Date;)V
    .locals 1
    .param p1, "arcTime"    # Ljava/util/Date;

    .line 371
    invoke-static {p1}, Lcom/github/junrar/rarfile/FileHeader;->toFileTime(Ljava/util/Date;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/junrar/rarfile/FileHeader;->setArchivalTime(Ljava/nio/file/attribute/FileTime;)V

    .line 372
    return-void
.end method

.method public setArchivalTime(Ljava/nio/file/attribute/FileTime;)V
    .locals 0
    .param p1, "archivalTime"    # Ljava/nio/file/attribute/FileTime;

    .line 352
    iput-object p1, p0, Lcom/github/junrar/rarfile/FileHeader;->arcTime:Ljava/nio/file/attribute/FileTime;

    .line 353
    return-void
.end method

.method public setCTime(Ljava/util/Date;)V
    .locals 1
    .param p1, "time"    # Ljava/util/Date;

    .line 449
    invoke-static {p1}, Lcom/github/junrar/rarfile/FileHeader;->toFileTime(Ljava/util/Date;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/junrar/rarfile/FileHeader;->setCreationTime(Ljava/nio/file/attribute/FileTime;)V

    .line 450
    return-void
.end method

.method public setCreationTime(Ljava/nio/file/attribute/FileTime;)V
    .locals 0
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 430
    iput-object p1, p0, Lcom/github/junrar/rarfile/FileHeader;->cTime:Ljava/nio/file/attribute/FileTime;

    .line 431
    return-void
.end method

.method public setFileAttr(I)V
    .locals 0
    .param p1, "fileAttr"    # I

    .line 457
    iput p1, p0, Lcom/github/junrar/rarfile/FileHeader;->fileAttr:I

    .line 458
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .line 480
    iput-object p1, p0, Lcom/github/junrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    .line 481
    return-void
.end method

.method public setFileNameW(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileNameW"    # Ljava/lang/String;

    .line 495
    iput-object p1, p0, Lcom/github/junrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    .line 496
    return-void
.end method

.method public setLastAccessTime(Ljava/nio/file/attribute/FileTime;)V
    .locals 0
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 391
    iput-object p1, p0, Lcom/github/junrar/rarfile/FileHeader;->aTime:Ljava/nio/file/attribute/FileTime;

    .line 392
    return-void
.end method

.method public setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)V
    .locals 0
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 527
    iput-object p1, p0, Lcom/github/junrar/rarfile/FileHeader;->mTime:Ljava/nio/file/attribute/FileTime;

    .line 528
    return-void
.end method

.method public setMTime(Ljava/util/Date;)V
    .locals 1
    .param p1, "time"    # Ljava/util/Date;

    .line 546
    invoke-static {p1}, Lcom/github/junrar/rarfile/FileHeader;->toFileTime(Ljava/util/Date;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/junrar/rarfile/FileHeader;->setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)V

    .line 547
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 591
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
