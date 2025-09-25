.class public Lcom/github/junrar/Archive;
.super Ljava/lang/Object;
.source "Archive.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/junrar/Archive$EmptyInputStream;,
        Lcom/github/junrar/Archive$ExtractorExecutorHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Ljava/lang/Iterable<",
        "Lcom/github/junrar/rarfile/FileHeader;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_HEADER_SIZE:I = 0x1400000

.field private static final PIPE_BUFFER_SIZE:I

.field private static final USE_EXECUTOR:Z

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private channel:Lcom/github/junrar/io/SeekableReadOnlyByteChannel;

.field private currentHeaderIndex:I

.field private final dataIO:Lcom/github/junrar/unpack/ComprDataIO;

.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/junrar/rarfile/BaseBlock;",
            ">;"
        }
    .end annotation
.end field

.field private markHead:Lcom/github/junrar/rarfile/MarkHeader;

.field private newMhd:Lcom/github/junrar/rarfile/MainHeader;

.field private nextFileHeader:Lcom/github/junrar/rarfile/FileHeader;

.field private password:Ljava/lang/String;

.field private totalPackedRead:J

.field private totalPackedSize:J

.field private unpack:Lcom/github/junrar/unpack/Unpack;

.field private final unrarCallback:Lcom/github/junrar/UnrarCallback;

.field private volume:Lcom/github/junrar/volume/Volume;

.field private volumeManager:Lcom/github/junrar/volume/VolumeManager;


# direct methods
.method public static synthetic $r8$lambda$9n7RVDxEHN1NBeUnIiF8nJXHB3I(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Igo2_uSZRCxpiknzZ5VtqFp77VI(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 90
    const-class v0, Lcom/github/junrar/Archive;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/junrar/Archive;->logger:Lorg/slf4j/Logger;

    .line 94
    new-instance v0, Lcom/github/junrar/Archive$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/github/junrar/Archive$$ExternalSyntheticLambda0;-><init>()V

    .line 97
    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 94
    const-string v2, "junrar.extractor.buffer-size"

    invoke-static {v2, v0, v1}, Lcom/github/junrar/Archive;->getPropertyAs(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/github/junrar/Archive;->PIPE_BUFFER_SIZE:I

    .line 100
    new-instance v0, Lcom/github/junrar/Archive$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/github/junrar/Archive$$ExternalSyntheticLambda1;-><init>()V

    .line 103
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 100
    const-string v2, "junrar.extractor.use-executor"

    invoke-static {v2, v0, v1}, Lcom/github/junrar/Archive;->getPropertyAs(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/github/junrar/Archive;->USE_EXECUTOR:Z

    return-void
.end method

.method public constructor <init>(Lcom/github/junrar/volume/VolumeManager;Lcom/github/junrar/UnrarCallback;Ljava/lang/String;)V
    .locals 4
    .param p1, "volumeManager"    # Lcom/github/junrar/volume/VolumeManager;
    .param p2, "unrarCallback"    # Lcom/github/junrar/UnrarCallback;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/junrar/Archive;->markHead:Lcom/github/junrar/rarfile/MarkHeader;

    .line 116
    iput-object v0, p0, Lcom/github/junrar/Archive;->newMhd:Lcom/github/junrar/rarfile/MainHeader;

    .line 125
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/github/junrar/Archive;->totalPackedSize:J

    .line 130
    iput-wide v1, p0, Lcom/github/junrar/Archive;->totalPackedRead:J

    .line 144
    iput-object p1, p0, Lcom/github/junrar/Archive;->volumeManager:Lcom/github/junrar/volume/VolumeManager;

    .line 145
    iput-object p2, p0, Lcom/github/junrar/Archive;->unrarCallback:Lcom/github/junrar/UnrarCallback;

    .line 146
    iput-object p3, p0, Lcom/github/junrar/Archive;->password:Ljava/lang/String;

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/github/junrar/Archive;->volumeManager:Lcom/github/junrar/volume/VolumeManager;

    invoke-interface {v1, p0, v0}, Lcom/github/junrar/volume/VolumeManager;->nextVolume(Lcom/github/junrar/Archive;Lcom/github/junrar/volume/Volume;)Lcom/github/junrar/volume/Volume;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/junrar/Archive;->setVolume(Lcom/github/junrar/volume/Volume;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/github/junrar/exception/RarException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    nop

    .line 158
    new-instance v0, Lcom/github/junrar/unpack/ComprDataIO;

    invoke-direct {v0, p0}, Lcom/github/junrar/unpack/ComprDataIO;-><init>(Lcom/github/junrar/Archive;)V

    iput-object v0, p0, Lcom/github/junrar/Archive;->dataIO:Lcom/github/junrar/unpack/ComprDataIO;

    .line 159
    return-void

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/github/junrar/Archive;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 155
    goto :goto_1

    .line 153
    :catch_2
    move-exception v1

    .line 154
    .local v1, "e1":Ljava/io/IOException;
    sget-object v2, Lcom/github/junrar/Archive;->logger:Lorg/slf4j/Logger;

    const-string v3, "Failed to close the archive after an internal error!"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 156
    .end local v1    # "e1":Ljava/io/IOException;
    :goto_1
    throw v0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "firstVolume"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    new-instance v0, Lcom/github/junrar/volume/FileVolumeManager;

    invoke-direct {v0, p1}, Lcom/github/junrar/volume/FileVolumeManager;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/github/junrar/Archive;-><init>(Lcom/github/junrar/volume/VolumeManager;Lcom/github/junrar/UnrarCallback;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/github/junrar/UnrarCallback;)V
    .locals 2
    .param p1, "firstVolume"    # Ljava/io/File;
    .param p2, "unrarCallback"    # Lcom/github/junrar/UnrarCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    new-instance v0, Lcom/github/junrar/volume/FileVolumeManager;

    invoke-direct {v0, p1}, Lcom/github/junrar/volume/FileVolumeManager;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/github/junrar/Archive;-><init>(Lcom/github/junrar/volume/VolumeManager;Lcom/github/junrar/UnrarCallback;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/github/junrar/UnrarCallback;Ljava/lang/String;)V
    .locals 1
    .param p1, "firstVolume"    # Ljava/io/File;
    .param p2, "unrarCallback"    # Lcom/github/junrar/UnrarCallback;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    new-instance v0, Lcom/github/junrar/volume/FileVolumeManager;

    invoke-direct {v0, p1}, Lcom/github/junrar/volume/FileVolumeManager;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/github/junrar/Archive;-><init>(Lcom/github/junrar/volume/VolumeManager;Lcom/github/junrar/UnrarCallback;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "firstVolume"    # Ljava/io/File;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    new-instance v0, Lcom/github/junrar/volume/FileVolumeManager;

    invoke-direct {v0, p1}, Lcom/github/junrar/volume/FileVolumeManager;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/github/junrar/Archive;-><init>(Lcom/github/junrar/volume/VolumeManager;Lcom/github/junrar/UnrarCallback;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "rarAsStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    new-instance v0, Lcom/github/junrar/volume/InputStreamVolumeManager;

    invoke-direct {v0, p1}, Lcom/github/junrar/volume/InputStreamVolumeManager;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/github/junrar/Archive;-><init>(Lcom/github/junrar/volume/VolumeManager;Lcom/github/junrar/UnrarCallback;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/github/junrar/UnrarCallback;)V
    .locals 2
    .param p1, "rarAsStream"    # Ljava/io/InputStream;
    .param p2, "unrarCallback"    # Lcom/github/junrar/UnrarCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    new-instance v0, Lcom/github/junrar/volume/InputStreamVolumeManager;

    invoke-direct {v0, p1}, Lcom/github/junrar/volume/InputStreamVolumeManager;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/github/junrar/Archive;-><init>(Lcom/github/junrar/volume/VolumeManager;Lcom/github/junrar/UnrarCallback;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/github/junrar/UnrarCallback;Ljava/lang/String;)V
    .locals 1
    .param p1, "rarAsStream"    # Ljava/io/InputStream;
    .param p2, "unrarCallback"    # Lcom/github/junrar/UnrarCallback;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 190
    new-instance v0, Lcom/github/junrar/volume/InputStreamVolumeManager;

    invoke-direct {v0, p1}, Lcom/github/junrar/volume/InputStreamVolumeManager;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/github/junrar/Archive;-><init>(Lcom/github/junrar/volume/VolumeManager;Lcom/github/junrar/UnrarCallback;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "rarAsStream"    # Ljava/io/InputStream;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 186
    new-instance v0, Lcom/github/junrar/volume/InputStreamVolumeManager;

    invoke-direct {v0, p1}, Lcom/github/junrar/volume/InputStreamVolumeManager;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/github/junrar/Archive;-><init>(Lcom/github/junrar/volume/VolumeManager;Lcom/github/junrar/UnrarCallback;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/util/function/Function;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 88
    invoke-static {p0, p1, p2}, Lcom/github/junrar/Archive;->getPropertyAs(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/github/junrar/Archive;)Lcom/github/junrar/rarfile/FileHeader;
    .locals 1
    .param p0, "x0"    # Lcom/github/junrar/Archive;

    .line 88
    iget-object v0, p0, Lcom/github/junrar/Archive;->nextFileHeader:Lcom/github/junrar/rarfile/FileHeader;

    return-object v0
.end method

.method static synthetic access$302(Lcom/github/junrar/Archive;Lcom/github/junrar/rarfile/FileHeader;)Lcom/github/junrar/rarfile/FileHeader;
    .locals 0
    .param p0, "x0"    # Lcom/github/junrar/Archive;
    .param p1, "x1"    # Lcom/github/junrar/rarfile/FileHeader;

    .line 88
    iput-object p1, p0, Lcom/github/junrar/Archive;->nextFileHeader:Lcom/github/junrar/rarfile/FileHeader;

    return-object p1
.end method

.method private doExtractFile(Lcom/github/junrar/rarfile/FileHeader;Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "hd"    # Lcom/github/junrar/rarfile/FileHeader;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 709
    iget-object v0, p0, Lcom/github/junrar/Archive;->dataIO:Lcom/github/junrar/unpack/ComprDataIO;

    invoke-virtual {v0, p2}, Lcom/github/junrar/unpack/ComprDataIO;->init(Ljava/io/OutputStream;)V

    .line 710
    iget-object v0, p0, Lcom/github/junrar/Archive;->dataIO:Lcom/github/junrar/unpack/ComprDataIO;

    invoke-virtual {v0, p1}, Lcom/github/junrar/unpack/ComprDataIO;->init(Lcom/github/junrar/rarfile/FileHeader;)V

    .line 711
    iget-object v0, p0, Lcom/github/junrar/Archive;->dataIO:Lcom/github/junrar/unpack/ComprDataIO;

    invoke-virtual {p0}, Lcom/github/junrar/Archive;->isOldFormat()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/github/junrar/unpack/ComprDataIO;->setUnpFileCRC(J)V

    .line 712
    iget-object v0, p0, Lcom/github/junrar/Archive;->unpack:Lcom/github/junrar/unpack/Unpack;

    if-nez v0, :cond_1

    .line 713
    new-instance v0, Lcom/github/junrar/unpack/Unpack;

    iget-object v1, p0, Lcom/github/junrar/Archive;->dataIO:Lcom/github/junrar/unpack/ComprDataIO;

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/Unpack;-><init>(Lcom/github/junrar/unpack/ComprDataIO;)V

    iput-object v0, p0, Lcom/github/junrar/Archive;->unpack:Lcom/github/junrar/unpack/Unpack;

    .line 715
    :cond_1
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->isSolid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 716
    iget-object v0, p0, Lcom/github/junrar/Archive;->unpack:Lcom/github/junrar/unpack/Unpack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/Unpack;->init([B)V

    .line 718
    :cond_2
    iget-object v0, p0, Lcom/github/junrar/Archive;->unpack:Lcom/github/junrar/unpack/Unpack;

    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->getFullUnpackSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/github/junrar/unpack/Unpack;->setDestSize(J)V

    .line 720
    :try_start_0
    iget-object v0, p0, Lcom/github/junrar/Archive;->unpack:Lcom/github/junrar/unpack/Unpack;

    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->getUnpVersion()B

    move-result v1

    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->isSolid()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/junrar/unpack/Unpack;->doUnpack(IZ)V

    .line 722
    iget-object v0, p0, Lcom/github/junrar/Archive;->dataIO:Lcom/github/junrar/unpack/ComprDataIO;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ComprDataIO;->getSubHeader()Lcom/github/junrar/rarfile/FileHeader;

    move-result-object v0

    move-object p1, v0

    .line 723
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->isSplitAfter()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/github/junrar/Archive;->dataIO:Lcom/github/junrar/unpack/ComprDataIO;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ComprDataIO;->getPackedCRC()J

    move-result-wide v0

    not-long v0, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/github/junrar/Archive;->dataIO:Lcom/github/junrar/unpack/ComprDataIO;

    .line 724
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ComprDataIO;->getUnpFileCRC()J

    move-result-wide v0

    not-long v0, v0

    :goto_1
    nop

    .line 725
    .local v0, "actualCRC":J
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->getFileCRC()I

    move-result v2

    .line 726
    .local v2, "expectedCRC":I
    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_4

    .line 743
    .end local v0    # "actualCRC":J
    .end local v2    # "expectedCRC":I
    nop

    .line 744
    return-void

    .line 727
    .restart local v0    # "actualCRC":J
    .restart local v2    # "expectedCRC":I
    :cond_4
    new-instance v3, Lcom/github/junrar/exception/CrcErrorException;

    invoke-direct {v3}, Lcom/github/junrar/exception/CrcErrorException;-><init>()V

    .end local p1    # "hd":Lcom/github/junrar/rarfile/FileHeader;
    .end local p2    # "os":Ljava/io/OutputStream;
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    .end local v0    # "actualCRC":J
    .end local v2    # "expectedCRC":I
    .restart local p1    # "hd":Lcom/github/junrar/rarfile/FileHeader;
    .restart local p2    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/github/junrar/Archive;->unpack:Lcom/github/junrar/unpack/Unpack;

    invoke-virtual {v1}, Lcom/github/junrar/unpack/Unpack;->cleanUp()V

    .line 737
    instance-of v1, v0, Lcom/github/junrar/exception/RarException;

    if-eqz v1, :cond_5

    .line 739
    move-object v1, v0

    check-cast v1, Lcom/github/junrar/exception/RarException;

    throw v1

    .line 741
    :cond_5
    new-instance v1, Lcom/github/junrar/exception/RarException;

    invoke-direct {v1, v0}, Lcom/github/junrar/exception/RarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getPropertyAs(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 620
    .local p1, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    const-string v0, "default value must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 622
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, "integerString":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 624
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 634
    .end local v0    # "integerString":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 626
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 627
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    sget-object v1, Lcom/github/junrar/Archive;->logger:Lorg/slf4j/Logger;

    .line 630
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p0, v2, p2, v0}, [Ljava/lang/Object;

    move-result-object v2

    .line 627
    const-string v3, "Could not parse the System Property \'{}\' into an \'{}\'. Defaulting to \'{}\'"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 635
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-object p2
.end method

.method private readHeaders(J)V
    .locals 22
    .param p1, "fileLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 298
    move-object/from16 v1, p0

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/github/junrar/Archive;->markHead:Lcom/github/junrar/rarfile/MarkHeader;

    .line 299
    iput-object v0, v1, Lcom/github/junrar/Archive;->newMhd:Lcom/github/junrar/rarfile/MainHeader;

    .line 300
    iget-object v2, v1, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 301
    const/4 v2, 0x0

    iput v2, v1, Lcom/github/junrar/Archive;->currentHeaderIndex:I

    .line 302
    const/4 v3, 0x0

    .line 306
    .local v3, "toRead":I
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 308
    .local v4, "processedPositions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :goto_0
    const/4 v5, 0x0

    .line 309
    .local v5, "size":I
    const-wide/16 v6, 0x0

    .line 310
    .local v6, "newpos":J
    new-instance v8, Lcom/github/junrar/io/RawDataIo;

    iget-object v9, v1, Lcom/github/junrar/Archive;->channel:Lcom/github/junrar/io/SeekableReadOnlyByteChannel;

    invoke-direct {v8, v9}, Lcom/github/junrar/io/RawDataIo;-><init>(Lcom/github/junrar/io/SeekableReadOnlyByteChannel;)V

    .line 311
    .local v8, "rawData":Lcom/github/junrar/io/RawDataIo;
    const-wide/16 v9, 0x7

    const/high16 v11, 0x1400000

    invoke-static {v9, v10, v11}, Lcom/github/junrar/Archive;->safelyAllocate(JI)[B

    move-result-object v9

    .line 314
    .local v9, "baseBlockBuffer":[B
    iget-object v10, v1, Lcom/github/junrar/Archive;->newMhd:Lcom/github/junrar/rarfile/MainHeader;

    if-eqz v10, :cond_0

    iget-object v10, v1, Lcom/github/junrar/Archive;->newMhd:Lcom/github/junrar/rarfile/MainHeader;

    invoke-virtual {v10}, Lcom/github/junrar/rarfile/MainHeader;->isEncrypted()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 315
    const/16 v10, 0x8

    new-array v12, v10, [B

    .line 316
    .local v12, "salt":[B
    invoke-virtual {v8, v12, v10}, Lcom/github/junrar/io/RawDataIo;->readFully([BI)I

    .line 318
    :try_start_0
    iget-object v10, v1, Lcom/github/junrar/Archive;->password:Ljava/lang/String;

    invoke-static {v10, v12}, Lcom/github/junrar/crypt/Rijndael;->buildDecipherer(Ljava/lang/String;[B)Ljavax/crypto/Cipher;

    move-result-object v10

    .line 319
    .local v10, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v8, v10}, Lcom/github/junrar/io/RawDataIo;->setCipher(Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v10    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_1

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/github/junrar/exception/InitDeciphererFailedException;

    invoke-direct {v2, v0}, Lcom/github/junrar/exception/InitDeciphererFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "salt":[B
    :cond_0
    :goto_1
    iget-object v10, v1, Lcom/github/junrar/Archive;->channel:Lcom/github/junrar/io/SeekableReadOnlyByteChannel;

    invoke-interface {v10}, Lcom/github/junrar/io/SeekableReadOnlyByteChannel;->getPosition()J

    move-result-wide v12

    .line 328
    .local v12, "position":J
    cmp-long v10, v12, p1

    if-ltz v10, :cond_1

    .line 329
    goto :goto_2

    .line 333
    :cond_1
    array-length v10, v9

    invoke-virtual {v8, v9, v10}, Lcom/github/junrar/io/RawDataIo;->readFully([BI)I

    move-result v5

    .line 335
    if-nez v5, :cond_2

    .line 336
    nop

    .line 539
    .end local v5    # "size":I
    .end local v6    # "newpos":J
    .end local v8    # "rawData":Lcom/github/junrar/io/RawDataIo;
    .end local v9    # "baseBlockBuffer":[B
    .end local v12    # "position":J
    :goto_2
    return-void

    .line 338
    .restart local v5    # "size":I
    .restart local v6    # "newpos":J
    .restart local v8    # "rawData":Lcom/github/junrar/io/RawDataIo;
    .restart local v9    # "baseBlockBuffer":[B
    .restart local v12    # "position":J
    :cond_2
    new-instance v10, Lcom/github/junrar/rarfile/BaseBlock;

    invoke-direct {v10, v9}, Lcom/github/junrar/rarfile/BaseBlock;-><init>([B)V

    .line 340
    .local v10, "block":Lcom/github/junrar/rarfile/BaseBlock;
    invoke-virtual {v10, v12, v13}, Lcom/github/junrar/rarfile/BaseBlock;->setPositionInFile(J)V

    .line 342
    invoke-virtual {v10}, Lcom/github/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/github/junrar/rarfile/UnrarHeadertype;

    move-result-object v14

    .line 343
    .local v14, "headerType":Lcom/github/junrar/rarfile/UnrarHeadertype;
    if-eqz v14, :cond_10

    .line 347
    sget-object v15, Lcom/github/junrar/Archive$2;->$SwitchMap$com$github$junrar$rarfile$UnrarHeadertype:[I

    invoke-virtual {v14}, Lcom/github/junrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v16

    aget v15, v15, v16

    const/16 v16, 0x7

    packed-switch v15, :pswitch_data_0

    .line 432
    move-wide/from16 v17, v6

    move v7, v5

    .end local v5    # "size":I
    .end local v6    # "newpos":J
    .local v7, "size":I
    .local v17, "newpos":J
    const-wide/16 v5, 0x4

    invoke-static {v5, v6, v11}, Lcom/github/junrar/Archive;->safelyAllocate(JI)[B

    move-result-object v2

    .line 433
    .local v2, "blockHeaderBuffer":[B
    array-length v5, v2

    invoke-virtual {v8, v2, v5}, Lcom/github/junrar/io/RawDataIo;->readFully([BI)I

    .line 434
    new-instance v5, Lcom/github/junrar/rarfile/BlockHeader;

    invoke-direct {v5, v10, v2}, Lcom/github/junrar/rarfile/BlockHeader;-><init>(Lcom/github/junrar/rarfile/BaseBlock;[B)V

    .line 437
    .local v5, "blockHead":Lcom/github/junrar/rarfile/BlockHeader;
    sget-object v6, Lcom/github/junrar/Archive$2;->$SwitchMap$com$github$junrar$rarfile$UnrarHeadertype:[I

    invoke-virtual {v5}, Lcom/github/junrar/rarfile/BlockHeader;->getHeaderType()Lcom/github/junrar/rarfile/UnrarHeadertype;

    move-result-object v15

    invoke-virtual {v15}, Lcom/github/junrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v15

    aget v6, v6, v15

    packed-switch v6, :pswitch_data_1

    .line 532
    move-object v6, v1

    sget-object v0, Lcom/github/junrar/Archive;->logger:Lorg/slf4j/Logger;

    const-string v1, "Unknown Header"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 533
    new-instance v0, Lcom/github/junrar/exception/NotRarArchiveException;

    invoke-direct {v0}, Lcom/github/junrar/exception/NotRarArchiveException;-><init>()V

    throw v0

    .line 410
    .end local v2    # "blockHeaderBuffer":[B
    .end local v7    # "size":I
    .end local v17    # "newpos":J
    .local v5, "size":I
    .restart local v6    # "newpos":J
    :pswitch_0
    const/4 v2, 0x0

    .line 411
    .end local v3    # "toRead":I
    .local v2, "toRead":I
    invoke-virtual {v10}, Lcom/github/junrar/rarfile/BaseBlock;->hasArchiveDataCRC()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 412
    add-int/lit8 v2, v2, 0x4

    .line 414
    :cond_3
    invoke-virtual {v10}, Lcom/github/junrar/rarfile/BaseBlock;->hasVolumeNumber()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 415
    add-int/lit8 v2, v2, 0x2

    .line 418
    :cond_4
    if-lez v2, :cond_5

    .line 419
    move-wide/from16 v17, v6

    move v7, v5

    .end local v5    # "size":I
    .end local v6    # "newpos":J
    .restart local v7    # "size":I
    .restart local v17    # "newpos":J
    int-to-long v5, v2

    invoke-static {v5, v6, v11}, Lcom/github/junrar/Archive;->safelyAllocate(JI)[B

    move-result-object v0

    .line 420
    .local v0, "endArchBuff":[B
    array-length v3, v0

    invoke-virtual {v8, v0, v3}, Lcom/github/junrar/io/RawDataIo;->readFully([BI)I

    .line 421
    new-instance v3, Lcom/github/junrar/rarfile/EndArcHeader;

    invoke-direct {v3, v10, v0}, Lcom/github/junrar/rarfile/EndArcHeader;-><init>(Lcom/github/junrar/rarfile/BaseBlock;[B)V

    move-object v0, v3

    .line 422
    .local v0, "endArcHead":Lcom/github/junrar/rarfile/EndArcHeader;
    goto :goto_3

    .line 423
    .end local v0    # "endArcHead":Lcom/github/junrar/rarfile/EndArcHeader;
    .end local v7    # "size":I
    .end local v17    # "newpos":J
    .restart local v5    # "size":I
    .restart local v6    # "newpos":J
    :cond_5
    move-wide/from16 v17, v6

    move v7, v5

    .end local v5    # "size":I
    .end local v6    # "newpos":J
    .restart local v7    # "size":I
    .restart local v17    # "newpos":J
    new-instance v3, Lcom/github/junrar/rarfile/EndArcHeader;

    invoke-direct {v3, v10, v0}, Lcom/github/junrar/rarfile/EndArcHeader;-><init>(Lcom/github/junrar/rarfile/BaseBlock;[B)V

    move-object v0, v3

    .line 425
    .restart local v0    # "endArcHead":Lcom/github/junrar/rarfile/EndArcHeader;
    :goto_3
    iget-object v3, v1, Lcom/github/junrar/Archive;->newMhd:Lcom/github/junrar/rarfile/MainHeader;

    invoke-virtual {v3}, Lcom/github/junrar/rarfile/MainHeader;->isMultiVolume()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, Lcom/github/junrar/rarfile/EndArcHeader;->isValid()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    .line 426
    :cond_6
    new-instance v3, Lcom/github/junrar/exception/CorruptHeaderException;

    const-string v5, "Invalid End Archive Header"

    invoke-direct {v3, v5}, Lcom/github/junrar/exception/CorruptHeaderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 428
    :cond_7
    :goto_4
    iget-object v3, v1, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    return-void

    .line 393
    .end local v0    # "endArcHead":Lcom/github/junrar/rarfile/EndArcHeader;
    .end local v2    # "toRead":I
    .end local v7    # "size":I
    .end local v17    # "newpos":J
    .restart local v3    # "toRead":I
    .restart local v5    # "size":I
    .restart local v6    # "newpos":J
    :pswitch_1
    move-wide/from16 v17, v6

    move v7, v5

    .end local v5    # "size":I
    .end local v6    # "newpos":J
    .restart local v7    # "size":I
    .restart local v17    # "newpos":J
    const/4 v3, 0x6

    .line 394
    int-to-long v5, v3

    invoke-static {v5, v6, v11}, Lcom/github/junrar/Archive;->safelyAllocate(JI)[B

    move-result-object v5

    .line 395
    .local v5, "commBuff":[B
    array-length v6, v5

    invoke-virtual {v8, v5, v6}, Lcom/github/junrar/io/RawDataIo;->readFully([BI)I

    .line 396
    new-instance v6, Lcom/github/junrar/rarfile/CommentHeader;

    invoke-direct {v6, v10, v5}, Lcom/github/junrar/rarfile/CommentHeader;-><init>(Lcom/github/junrar/rarfile/BaseBlock;[B)V

    .line 397
    .local v6, "commHead":Lcom/github/junrar/rarfile/CommentHeader;
    iget-object v11, v1, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-virtual {v6}, Lcom/github/junrar/rarfile/CommentHeader;->getPositionInFile()J

    move-result-wide v15

    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/Archive;->isEncrypted()Z

    move-result v11

    invoke-virtual {v6, v11}, Lcom/github/junrar/rarfile/CommentHeader;->getHeaderSize(Z)S

    move-result v11

    move/from16 v19, v3

    .end local v3    # "toRead":I
    .local v19, "toRead":I
    int-to-long v2, v11

    add-long/2addr v2, v15

    .line 400
    .end local v17    # "newpos":J
    .local v2, "newpos":J
    iget-object v11, v1, Lcom/github/junrar/Archive;->channel:Lcom/github/junrar/io/SeekableReadOnlyByteChannel;

    invoke-interface {v11, v2, v3}, Lcom/github/junrar/io/SeekableReadOnlyByteChannel;->setPosition(J)V

    .line 402
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 405
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 407
    move-object v6, v1

    move/from16 v3, v19

    goto/16 :goto_7

    .line 403
    :cond_8
    new-instance v0, Lcom/github/junrar/exception/BadRarArchiveException;

    invoke-direct {v0}, Lcom/github/junrar/exception/BadRarArchiveException;-><init>()V

    throw v0

    .line 385
    .end local v2    # "newpos":J
    .end local v7    # "size":I
    .end local v19    # "toRead":I
    .restart local v3    # "toRead":I
    .local v5, "size":I
    .local v6, "newpos":J
    :pswitch_2
    move-wide/from16 v17, v6

    move v7, v5

    .end local v5    # "size":I
    .end local v6    # "newpos":J
    .restart local v7    # "size":I
    .restart local v17    # "newpos":J
    const/4 v2, 0x7

    .line 386
    .end local v3    # "toRead":I
    .local v2, "toRead":I
    int-to-long v5, v2

    invoke-static {v5, v6, v11}, Lcom/github/junrar/Archive;->safelyAllocate(JI)[B

    move-result-object v3

    .line 387
    .local v3, "avBuff":[B
    array-length v5, v3

    invoke-virtual {v8, v3, v5}, Lcom/github/junrar/io/RawDataIo;->readFully([BI)I

    .line 388
    new-instance v5, Lcom/github/junrar/rarfile/AVHeader;

    invoke-direct {v5, v10, v3}, Lcom/github/junrar/rarfile/AVHeader;-><init>(Lcom/github/junrar/rarfile/BaseBlock;[B)V

    .line 389
    .local v5, "avHead":Lcom/github/junrar/rarfile/AVHeader;
    iget-object v6, v1, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    move-object v6, v1

    move v3, v2

    goto/16 :goto_7

    .line 377
    .end local v2    # "toRead":I
    .end local v7    # "size":I
    .end local v17    # "newpos":J
    .local v3, "toRead":I
    .local v5, "size":I
    .restart local v6    # "newpos":J
    :pswitch_3
    move-wide/from16 v17, v6

    move v7, v5

    .end local v5    # "size":I
    .end local v6    # "newpos":J
    .restart local v7    # "size":I
    .restart local v17    # "newpos":J
    const/16 v2, 0x8

    .line 378
    .end local v3    # "toRead":I
    .restart local v2    # "toRead":I
    int-to-long v5, v2

    invoke-static {v5, v6, v11}, Lcom/github/junrar/Archive;->safelyAllocate(JI)[B

    move-result-object v3

    .line 379
    .local v3, "signBuff":[B
    array-length v5, v3

    invoke-virtual {v8, v3, v5}, Lcom/github/junrar/io/RawDataIo;->readFully([BI)I

    .line 380
    new-instance v5, Lcom/github/junrar/rarfile/SignHeader;

    invoke-direct {v5, v10, v3}, Lcom/github/junrar/rarfile/SignHeader;-><init>(Lcom/github/junrar/rarfile/BaseBlock;[B)V

    .line 381
    .local v5, "signHead":Lcom/github/junrar/rarfile/SignHeader;
    iget-object v6, v1, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    move-object v6, v1

    move v3, v2

    goto/16 :goto_7

    .line 367
    .end local v2    # "toRead":I
    .end local v7    # "size":I
    .end local v17    # "newpos":J
    .local v3, "toRead":I
    .local v5, "size":I
    .restart local v6    # "newpos":J
    :pswitch_4
    move-wide/from16 v17, v6

    move v7, v5

    .end local v5    # "size":I
    .end local v6    # "newpos":J
    .restart local v7    # "size":I
    .restart local v17    # "newpos":J
    invoke-virtual {v10}, Lcom/github/junrar/rarfile/BaseBlock;->hasEncryptVersion()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    const/16 v16, 0x6

    :goto_5
    move/from16 v2, v16

    .line 369
    .end local v3    # "toRead":I
    .restart local v2    # "toRead":I
    int-to-long v5, v2

    invoke-static {v5, v6, v11}, Lcom/github/junrar/Archive;->safelyAllocate(JI)[B

    move-result-object v3

    .line 370
    .local v3, "mainbuff":[B
    array-length v5, v3

    invoke-virtual {v8, v3, v5}, Lcom/github/junrar/io/RawDataIo;->readFully([BI)I

    .line 371
    new-instance v5, Lcom/github/junrar/rarfile/MainHeader;

    invoke-direct {v5, v10, v3}, Lcom/github/junrar/rarfile/MainHeader;-><init>(Lcom/github/junrar/rarfile/BaseBlock;[B)V

    .line 372
    .local v5, "mainhead":Lcom/github/junrar/rarfile/MainHeader;
    iget-object v6, v1, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    iput-object v5, v1, Lcom/github/junrar/Archive;->newMhd:Lcom/github/junrar/rarfile/MainHeader;

    .line 374
    move-object v6, v1

    move v3, v2

    goto/16 :goto_7

    .line 350
    .end local v2    # "toRead":I
    .end local v7    # "size":I
    .end local v17    # "newpos":J
    .local v3, "toRead":I
    .local v5, "size":I
    .restart local v6    # "newpos":J
    :pswitch_5
    move-wide/from16 v17, v6

    move v7, v5

    .end local v5    # "size":I
    .end local v6    # "newpos":J
    .restart local v7    # "size":I
    .restart local v17    # "newpos":J
    new-instance v2, Lcom/github/junrar/rarfile/MarkHeader;

    invoke-direct {v2, v10}, Lcom/github/junrar/rarfile/MarkHeader;-><init>(Lcom/github/junrar/rarfile/BaseBlock;)V

    iput-object v2, v1, Lcom/github/junrar/Archive;->markHead:Lcom/github/junrar/rarfile/MarkHeader;

    .line 351
    iget-object v2, v1, Lcom/github/junrar/Archive;->markHead:Lcom/github/junrar/rarfile/MarkHeader;

    invoke-virtual {v2}, Lcom/github/junrar/rarfile/MarkHeader;->isSignature()Z

    move-result v2

    if-nez v2, :cond_b

    .line 352
    iget-object v0, v1, Lcom/github/junrar/Archive;->markHead:Lcom/github/junrar/rarfile/MarkHeader;

    invoke-virtual {v0}, Lcom/github/junrar/rarfile/MarkHeader;->getVersion()Lcom/github/junrar/rarfile/RARVersion;

    move-result-object v0

    sget-object v2, Lcom/github/junrar/rarfile/RARVersion;->V5:Lcom/github/junrar/rarfile/RARVersion;

    if-ne v0, v2, :cond_a

    .line 353
    sget-object v0, Lcom/github/junrar/Archive;->logger:Lorg/slf4j/Logger;

    const-string v2, "Support for rar version 5 is not yet implemented!"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 354
    new-instance v0, Lcom/github/junrar/exception/UnsupportedRarV5Exception;

    invoke-direct {v0}, Lcom/github/junrar/exception/UnsupportedRarV5Exception;-><init>()V

    throw v0

    .line 356
    :cond_a
    new-instance v0, Lcom/github/junrar/exception/BadRarArchiveException;

    invoke-direct {v0}, Lcom/github/junrar/exception/BadRarArchiveException;-><init>()V

    throw v0

    .line 359
    :cond_b
    iget-object v2, v1, Lcom/github/junrar/Archive;->markHead:Lcom/github/junrar/rarfile/MarkHeader;

    invoke-virtual {v2}, Lcom/github/junrar/rarfile/MarkHeader;->isValid()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 362
    iget-object v2, v1, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    iget-object v5, v1, Lcom/github/junrar/Archive;->markHead:Lcom/github/junrar/rarfile/MarkHeader;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    move-object v6, v1

    move/from16 v21, v3

    goto/16 :goto_6

    .line 360
    :cond_c
    new-instance v0, Lcom/github/junrar/exception/CorruptHeaderException;

    const-string v2, "Invalid Mark Header"

    invoke-direct {v0, v2}, Lcom/github/junrar/exception/CorruptHeaderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    .local v2, "blockHeaderBuffer":[B
    .local v5, "blockHead":Lcom/github/junrar/rarfile/BlockHeader;
    :pswitch_6
    const-wide/16 v0, 0x3

    invoke-static {v0, v1, v11}, Lcom/github/junrar/Archive;->safelyAllocate(JI)[B

    move-result-object v0

    .line 479
    .local v0, "subHeadbuffer":[B
    array-length v1, v0

    invoke-virtual {v8, v0, v1}, Lcom/github/junrar/io/RawDataIo;->readFully([BI)I

    .line 480
    new-instance v1, Lcom/github/junrar/rarfile/SubBlockHeader;

    invoke-direct {v1, v5, v0}, Lcom/github/junrar/rarfile/SubBlockHeader;-><init>(Lcom/github/junrar/rarfile/BlockHeader;[B)V

    .line 482
    .local v1, "subHead":Lcom/github/junrar/rarfile/SubBlockHeader;
    invoke-virtual {v1}, Lcom/github/junrar/rarfile/SubBlockHeader;->print()V

    .line 483
    invoke-virtual {v1}, Lcom/github/junrar/rarfile/SubBlockHeader;->getSubType()Lcom/github/junrar/rarfile/SubBlockHeaderType;

    move-result-object v15

    .line 484
    .local v15, "subType":Lcom/github/junrar/rarfile/SubBlockHeaderType;
    if-nez v15, :cond_d

    move-object/from16 v6, p0

    move/from16 v21, v3

    goto/16 :goto_6

    .line 485
    :cond_d
    sget-object v16, Lcom/github/junrar/Archive$2;->$SwitchMap$com$github$junrar$rarfile$SubBlockHeaderType:[I

    invoke-virtual {v15}, Lcom/github/junrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v19

    aget v16, v16, v19

    packed-switch v16, :pswitch_data_2

    .line 526
    move-object/from16 v6, p0

    move-object/from16 v16, v0

    move/from16 v21, v3

    move/from16 v20, v7

    move-object v7, v2

    .end local v0    # "subHeadbuffer":[B
    .end local v2    # "blockHeaderBuffer":[B
    .end local v3    # "toRead":I
    .local v7, "blockHeaderBuffer":[B
    .local v16, "subHeadbuffer":[B
    .local v20, "size":I
    .local v21, "toRead":I
    goto/16 :goto_6

    .line 514
    .end local v16    # "subHeadbuffer":[B
    .end local v20    # "size":I
    .end local v21    # "toRead":I
    .restart local v0    # "subHeadbuffer":[B
    .restart local v2    # "blockHeaderBuffer":[B
    .restart local v3    # "toRead":I
    .local v7, "size":I
    :pswitch_7
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/github/junrar/rarfile/SubBlockHeader;->getHeaderSize(Z)S

    move-result v3

    .line 515
    add-int/lit8 v3, v3, -0x7

    .line 516
    add-int/lit8 v3, v3, -0x4

    .line 517
    add-int/lit8 v3, v3, -0x3

    .line 518
    move/from16 v20, v7

    .end local v7    # "size":I
    .restart local v20    # "size":I
    int-to-long v6, v3

    invoke-static {v6, v7, v11}, Lcom/github/junrar/Archive;->safelyAllocate(JI)[B

    move-result-object v6

    .line 519
    .local v6, "uoHeaderBuffer":[B
    array-length v7, v6

    invoke-virtual {v8, v6, v7}, Lcom/github/junrar/io/RawDataIo;->readFully([BI)I

    .line 520
    new-instance v7, Lcom/github/junrar/rarfile/UnixOwnersHeader;

    invoke-direct {v7, v1, v6}, Lcom/github/junrar/rarfile/UnixOwnersHeader;-><init>(Lcom/github/junrar/rarfile/SubBlockHeader;[B)V

    .line 522
    .local v7, "uoHeader":Lcom/github/junrar/rarfile/UnixOwnersHeader;
    invoke-virtual {v7}, Lcom/github/junrar/rarfile/UnixOwnersHeader;->print()V

    .line 523
    move-object/from16 v11, p0

    move-object/from16 v16, v0

    .end local v0    # "subHeadbuffer":[B
    .restart local v16    # "subHeadbuffer":[B
    iget-object v0, v11, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    move-object v6, v11

    goto/16 :goto_7

    .line 512
    .end local v6    # "uoHeaderBuffer":[B
    .end local v16    # "subHeadbuffer":[B
    .end local v20    # "size":I
    .restart local v0    # "subHeadbuffer":[B
    .local v7, "size":I
    :pswitch_8
    move-object/from16 v11, p0

    move-object/from16 v16, v0

    move/from16 v20, v7

    .end local v0    # "subHeadbuffer":[B
    .end local v7    # "size":I
    .restart local v16    # "subHeadbuffer":[B
    .restart local v20    # "size":I
    move/from16 v21, v3

    move-object v6, v11

    goto :goto_6

    .line 510
    .end local v16    # "subHeadbuffer":[B
    .end local v20    # "size":I
    .restart local v0    # "subHeadbuffer":[B
    .restart local v7    # "size":I
    :pswitch_9
    move-object/from16 v11, p0

    move-object/from16 v16, v0

    move/from16 v20, v7

    .end local v0    # "subHeadbuffer":[B
    .end local v7    # "size":I
    .restart local v16    # "subHeadbuffer":[B
    .restart local v20    # "size":I
    move/from16 v21, v3

    move-object v6, v11

    goto :goto_6

    .line 500
    .end local v16    # "subHeadbuffer":[B
    .end local v20    # "size":I
    .restart local v0    # "subHeadbuffer":[B
    .restart local v7    # "size":I
    :pswitch_a
    move-object/from16 v6, p0

    move-object/from16 v16, v0

    move/from16 v20, v7

    .end local v0    # "subHeadbuffer":[B
    .end local v7    # "size":I
    .restart local v16    # "subHeadbuffer":[B
    .restart local v20    # "size":I
    move-object v7, v2

    move/from16 v21, v3

    .end local v2    # "blockHeaderBuffer":[B
    .end local v3    # "toRead":I
    .local v7, "blockHeaderBuffer":[B
    .restart local v21    # "toRead":I
    const-wide/16 v2, 0xa

    invoke-static {v2, v3, v11}, Lcom/github/junrar/Archive;->safelyAllocate(JI)[B

    move-result-object v0

    .line 501
    .local v0, "eaHeaderBuffer":[B
    array-length v2, v0

    invoke-virtual {v8, v0, v2}, Lcom/github/junrar/io/RawDataIo;->readFully([BI)I

    .line 502
    new-instance v2, Lcom/github/junrar/rarfile/EAHeader;

    invoke-direct {v2, v1, v0}, Lcom/github/junrar/rarfile/EAHeader;-><init>(Lcom/github/junrar/rarfile/SubBlockHeader;[B)V

    .line 504
    .local v2, "eaHeader":Lcom/github/junrar/rarfile/EAHeader;
    invoke-virtual {v2}, Lcom/github/junrar/rarfile/EAHeader;->print()V

    .line 505
    iget-object v3, v6, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    goto :goto_6

    .line 498
    .end local v16    # "subHeadbuffer":[B
    .end local v20    # "size":I
    .end local v21    # "toRead":I
    .local v0, "subHeadbuffer":[B
    .local v2, "blockHeaderBuffer":[B
    .restart local v3    # "toRead":I
    .local v7, "size":I
    :pswitch_b
    move-object/from16 v6, p0

    move-object/from16 v16, v0

    move/from16 v21, v3

    move/from16 v20, v7

    move-object v7, v2

    .end local v0    # "subHeadbuffer":[B
    .end local v2    # "blockHeaderBuffer":[B
    .end local v3    # "toRead":I
    .local v7, "blockHeaderBuffer":[B
    .restart local v16    # "subHeadbuffer":[B
    .restart local v20    # "size":I
    .restart local v21    # "toRead":I
    goto :goto_6

    .line 487
    .end local v16    # "subHeadbuffer":[B
    .end local v20    # "size":I
    .end local v21    # "toRead":I
    .restart local v0    # "subHeadbuffer":[B
    .restart local v2    # "blockHeaderBuffer":[B
    .restart local v3    # "toRead":I
    .local v7, "size":I
    :pswitch_c
    move-object/from16 v6, p0

    move-object/from16 v16, v0

    move/from16 v21, v3

    move/from16 v20, v7

    move-object v7, v2

    .end local v0    # "subHeadbuffer":[B
    .end local v2    # "blockHeaderBuffer":[B
    .end local v3    # "toRead":I
    .local v7, "blockHeaderBuffer":[B
    .restart local v16    # "subHeadbuffer":[B
    .restart local v20    # "size":I
    .restart local v21    # "toRead":I
    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v11}, Lcom/github/junrar/Archive;->safelyAllocate(JI)[B

    move-result-object v0

    .line 488
    .local v0, "macHeaderbuffer":[B
    array-length v2, v0

    invoke-virtual {v8, v0, v2}, Lcom/github/junrar/io/RawDataIo;->readFully([BI)I

    .line 489
    new-instance v2, Lcom/github/junrar/rarfile/MacInfoHeader;

    invoke-direct {v2, v1, v0}, Lcom/github/junrar/rarfile/MacInfoHeader;-><init>(Lcom/github/junrar/rarfile/SubBlockHeader;[B)V

    .line 491
    .local v2, "macHeader":Lcom/github/junrar/rarfile/MacInfoHeader;
    invoke-virtual {v2}, Lcom/github/junrar/rarfile/MacInfoHeader;->print()V

    .line 492
    iget-object v3, v6, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    nop

    .line 538
    .end local v0    # "macHeaderbuffer":[B
    .end local v1    # "subHead":Lcom/github/junrar/rarfile/SubBlockHeader;
    .end local v2    # "macHeader":Lcom/github/junrar/rarfile/MacInfoHeader;
    .end local v5    # "blockHead":Lcom/github/junrar/rarfile/BlockHeader;
    .end local v7    # "blockHeaderBuffer":[B
    .end local v8    # "rawData":Lcom/github/junrar/io/RawDataIo;
    .end local v9    # "baseBlockBuffer":[B
    .end local v10    # "block":Lcom/github/junrar/rarfile/BaseBlock;
    .end local v12    # "position":J
    .end local v14    # "headerType":Lcom/github/junrar/rarfile/UnrarHeadertype;
    .end local v15    # "subType":Lcom/github/junrar/rarfile/SubBlockHeaderType;
    .end local v16    # "subHeadbuffer":[B
    .end local v17    # "newpos":J
    .end local v20    # "size":I
    .end local v21    # "toRead":I
    .restart local v3    # "toRead":I
    :goto_6
    move/from16 v3, v21

    .end local v3    # "toRead":I
    .restart local v21    # "toRead":I
    goto/16 :goto_7

    .line 462
    .end local v21    # "toRead":I
    .local v2, "blockHeaderBuffer":[B
    .restart local v3    # "toRead":I
    .restart local v5    # "blockHead":Lcom/github/junrar/rarfile/BlockHeader;
    .local v7, "size":I
    .restart local v8    # "rawData":Lcom/github/junrar/io/RawDataIo;
    .restart local v9    # "baseBlockBuffer":[B
    .restart local v10    # "block":Lcom/github/junrar/rarfile/BaseBlock;
    .restart local v12    # "position":J
    .restart local v14    # "headerType":Lcom/github/junrar/rarfile/UnrarHeadertype;
    .restart local v17    # "newpos":J
    :pswitch_d
    move-object v6, v1

    move/from16 v21, v3

    move/from16 v20, v7

    move-object v7, v2

    .end local v2    # "blockHeaderBuffer":[B
    .end local v3    # "toRead":I
    .local v7, "blockHeaderBuffer":[B
    .restart local v20    # "size":I
    .restart local v21    # "toRead":I
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/github/junrar/rarfile/BlockHeader;->getHeaderSize(Z)S

    move-result v1

    add-int/lit8 v1, v1, -0x7

    add-int/lit8 v1, v1, -0x4

    .line 465
    .end local v21    # "toRead":I
    .local v1, "toRead":I
    int-to-long v2, v1

    invoke-static {v2, v3, v11}, Lcom/github/junrar/Archive;->safelyAllocate(JI)[B

    move-result-object v0

    .line 466
    .local v0, "protectHeaderBuffer":[B
    array-length v2, v0

    invoke-virtual {v8, v0, v2}, Lcom/github/junrar/io/RawDataIo;->readFully([BI)I

    .line 467
    new-instance v2, Lcom/github/junrar/rarfile/ProtectHeader;

    invoke-direct {v2, v5, v0}, Lcom/github/junrar/rarfile/ProtectHeader;-><init>(Lcom/github/junrar/rarfile/BlockHeader;[B)V

    .line 468
    .local v2, "ph":Lcom/github/junrar/rarfile/ProtectHeader;
    invoke-virtual {v2}, Lcom/github/junrar/rarfile/ProtectHeader;->getPositionInFile()J

    move-result-wide v15

    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/Archive;->isEncrypted()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/junrar/rarfile/ProtectHeader;->getHeaderSize(Z)S

    move-result v3

    move-object v11, v0

    move/from16 v21, v1

    .end local v0    # "protectHeaderBuffer":[B
    .end local v1    # "toRead":I
    .local v11, "protectHeaderBuffer":[B
    .restart local v21    # "toRead":I
    int-to-long v0, v3

    add-long/2addr v15, v0

    invoke-virtual {v2}, Lcom/github/junrar/rarfile/ProtectHeader;->getDataSize()J

    move-result-wide v0

    add-long/2addr v0, v15

    .line 469
    .end local v17    # "newpos":J
    .local v0, "newpos":J
    iget-object v3, v6, Lcom/github/junrar/Archive;->channel:Lcom/github/junrar/io/SeekableReadOnlyByteChannel;

    invoke-interface {v3, v0, v1}, Lcom/github/junrar/io/SeekableReadOnlyByteChannel;->setPosition(J)V

    .line 471
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 474
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 475
    move/from16 v3, v21

    goto :goto_7

    .line 472
    :cond_e
    new-instance v3, Lcom/github/junrar/exception/BadRarArchiveException;

    invoke-direct {v3}, Lcom/github/junrar/exception/BadRarArchiveException;-><init>()V

    throw v3

    .line 440
    .end local v0    # "newpos":J
    .end local v11    # "protectHeaderBuffer":[B
    .end local v20    # "size":I
    .end local v21    # "toRead":I
    .local v2, "blockHeaderBuffer":[B
    .restart local v3    # "toRead":I
    .local v7, "size":I
    .restart local v17    # "newpos":J
    :pswitch_e
    move-object v6, v1

    move/from16 v21, v3

    move/from16 v20, v7

    move-object v7, v2

    .end local v2    # "blockHeaderBuffer":[B
    .end local v3    # "toRead":I
    .local v7, "blockHeaderBuffer":[B
    .restart local v20    # "size":I
    .restart local v21    # "toRead":I
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/github/junrar/rarfile/BlockHeader;->getHeaderSize(Z)S

    move-result v1

    add-int/lit8 v1, v1, -0x7

    add-int/lit8 v1, v1, -0x4

    .line 443
    .end local v21    # "toRead":I
    .restart local v1    # "toRead":I
    int-to-long v2, v1

    invoke-static {v2, v3, v11}, Lcom/github/junrar/Archive;->safelyAllocate(JI)[B

    move-result-object v2

    .line 445
    .local v2, "fileHeaderBuffer":[B
    :try_start_1
    array-length v3, v2

    invoke-virtual {v8, v2, v3}, Lcom/github/junrar/io/RawDataIo;->readFully([BI)I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    .line 448
    nop

    .line 450
    new-instance v3, Lcom/github/junrar/rarfile/FileHeader;

    invoke-direct {v3, v5, v2}, Lcom/github/junrar/rarfile/FileHeader;-><init>(Lcom/github/junrar/rarfile/BlockHeader;[B)V

    .line 451
    .local v3, "fh":Lcom/github/junrar/rarfile/FileHeader;
    iget-object v11, v6, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-virtual {v3}, Lcom/github/junrar/rarfile/FileHeader;->getPositionInFile()J

    move-result-wide v15

    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/Archive;->isEncrypted()Z

    move-result v11

    invoke-virtual {v3, v11}, Lcom/github/junrar/rarfile/FileHeader;->getHeaderSize(Z)S

    move-result v11

    move/from16 v21, v1

    .end local v1    # "toRead":I
    .restart local v21    # "toRead":I
    int-to-long v0, v11

    add-long/2addr v15, v0

    invoke-virtual {v3}, Lcom/github/junrar/rarfile/FileHeader;->getFullPackSize()J

    move-result-wide v0

    add-long/2addr v0, v15

    .line 453
    .end local v17    # "newpos":J
    .restart local v0    # "newpos":J
    iget-object v11, v6, Lcom/github/junrar/Archive;->channel:Lcom/github/junrar/io/SeekableReadOnlyByteChannel;

    invoke-interface {v11, v0, v1}, Lcom/github/junrar/io/SeekableReadOnlyByteChannel;->setPosition(J)V

    .line 455
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 458
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 459
    move/from16 v3, v21

    .line 538
    .end local v0    # "newpos":J
    .end local v2    # "fileHeaderBuffer":[B
    .end local v5    # "blockHead":Lcom/github/junrar/rarfile/BlockHeader;
    .end local v7    # "blockHeaderBuffer":[B
    .end local v8    # "rawData":Lcom/github/junrar/io/RawDataIo;
    .end local v9    # "baseBlockBuffer":[B
    .end local v10    # "block":Lcom/github/junrar/rarfile/BaseBlock;
    .end local v12    # "position":J
    .end local v14    # "headerType":Lcom/github/junrar/rarfile/UnrarHeadertype;
    .end local v20    # "size":I
    .end local v21    # "toRead":I
    .local v3, "toRead":I
    :goto_7
    move-object v1, v6

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 456
    .restart local v0    # "newpos":J
    .restart local v2    # "fileHeaderBuffer":[B
    .local v3, "fh":Lcom/github/junrar/rarfile/FileHeader;
    .restart local v5    # "blockHead":Lcom/github/junrar/rarfile/BlockHeader;
    .restart local v7    # "blockHeaderBuffer":[B
    .restart local v8    # "rawData":Lcom/github/junrar/io/RawDataIo;
    .restart local v9    # "baseBlockBuffer":[B
    .restart local v10    # "block":Lcom/github/junrar/rarfile/BaseBlock;
    .restart local v12    # "position":J
    .restart local v14    # "headerType":Lcom/github/junrar/rarfile/UnrarHeadertype;
    .restart local v20    # "size":I
    .restart local v21    # "toRead":I
    :cond_f
    new-instance v11, Lcom/github/junrar/exception/BadRarArchiveException;

    invoke-direct {v11}, Lcom/github/junrar/exception/BadRarArchiveException;-><init>()V

    throw v11

    .line 446
    .end local v0    # "newpos":J
    .end local v3    # "fh":Lcom/github/junrar/rarfile/FileHeader;
    .end local v21    # "toRead":I
    .restart local v1    # "toRead":I
    .restart local v17    # "newpos":J
    :catch_1
    move-exception v0

    move/from16 v21, v1

    .line 447
    .end local v1    # "toRead":I
    .local v0, "e":Ljava/io/EOFException;
    .restart local v21    # "toRead":I
    new-instance v1, Lcom/github/junrar/exception/CorruptHeaderException;

    const-string v3, "Unexpected end of file"

    invoke-direct {v1, v3}, Lcom/github/junrar/exception/CorruptHeaderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    .end local v0    # "e":Ljava/io/EOFException;
    .end local v2    # "fileHeaderBuffer":[B
    .end local v7    # "blockHeaderBuffer":[B
    .end local v17    # "newpos":J
    .end local v20    # "size":I
    .end local v21    # "toRead":I
    .local v3, "toRead":I
    .local v5, "size":I
    .local v6, "newpos":J
    :cond_10
    move-wide/from16 v17, v6

    move-object v6, v1

    .end local v6    # "newpos":J
    .restart local v17    # "newpos":J
    sget-object v0, Lcom/github/junrar/Archive;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v1, "unknown block header!"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 345
    new-instance v0, Lcom/github/junrar/exception/CorruptHeaderException;

    invoke-direct {v0}, Lcom/github/junrar/exception/CorruptHeaderException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static safelyAllocate(JI)[B
    .locals 2
    .param p0, "len"    # J
    .param p2, "maxSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 542
    if-ltz p2, :cond_1

    .line 545
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    int-to-long v0, p2

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 548
    long-to-int v0, p0

    new-array v0, v0, [B

    return-object v0

    .line 546
    :cond_0
    new-instance v0, Lcom/github/junrar/exception/BadRarArchiveException;

    invoke-direct {v0}, Lcom/github/junrar/exception/BadRarArchiveException;-><init>()V

    throw v0

    .line 543
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxsize must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setChannel(Lcom/github/junrar/io/SeekableReadOnlyByteChannel;J)V
    .locals 6
    .param p1, "channel"    # Lcom/github/junrar/io/SeekableReadOnlyByteChannel;
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 194
    const-string v0, "exception in archive constructor maybe file is encrypted, corrupt or support not yet implemented"

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/github/junrar/Archive;->totalPackedSize:J

    .line 195
    iput-wide v1, p0, Lcom/github/junrar/Archive;->totalPackedRead:J

    .line 196
    invoke-virtual {p0}, Lcom/github/junrar/Archive;->close()V

    .line 197
    iput-object p1, p0, Lcom/github/junrar/Archive;->channel:Lcom/github/junrar/io/SeekableReadOnlyByteChannel;

    .line 199
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/github/junrar/Archive;->readHeaders(J)V
    :try_end_0
    .catch Lcom/github/junrar/exception/UnsupportedRarEncryptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/github/junrar/exception/UnsupportedRarV5Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/github/junrar/exception/CorruptHeaderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/github/junrar/exception/BadRarArchiveException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/github/junrar/Archive;->logger:Lorg/slf4j/Logger;

    invoke-interface {v2, v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/junrar/rarfile/BaseBlock;

    .line 209
    .local v1, "block":Lcom/github/junrar/rarfile/BaseBlock;
    invoke-virtual {v1}, Lcom/github/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/github/junrar/rarfile/UnrarHeadertype;

    move-result-object v2

    sget-object v3, Lcom/github/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    if-ne v2, v3, :cond_0

    .line 210
    iget-wide v2, p0, Lcom/github/junrar/Archive;->totalPackedSize:J

    move-object v4, v1

    check-cast v4, Lcom/github/junrar/rarfile/FileHeader;

    invoke-virtual {v4}, Lcom/github/junrar/rarfile/FileHeader;->getFullPackSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/github/junrar/Archive;->totalPackedSize:J

    .line 212
    .end local v1    # "block":Lcom/github/junrar/rarfile/BaseBlock;
    :cond_0
    goto :goto_1

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/github/junrar/Archive;->unrarCallback:Lcom/github/junrar/UnrarCallback;

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/github/junrar/Archive;->unrarCallback:Lcom/github/junrar/UnrarCallback;

    iget-wide v1, p0, Lcom/github/junrar/Archive;->totalPackedRead:J

    iget-wide v3, p0, Lcom/github/junrar/Archive;->totalPackedSize:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/github/junrar/UnrarCallback;->volumeProgressChanged(JJ)V

    .line 217
    :cond_2
    return-void

    .line 200
    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    .line 201
    .local v1, "e":Lcom/github/junrar/exception/RarException;
    :goto_2
    sget-object v2, Lcom/github/junrar/Archive;->logger:Lorg/slf4j/Logger;

    invoke-interface {v2, v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    throw v1
.end method


# virtual methods
.method public bytesReadRead(I)V
    .locals 5
    .param p1, "count"    # I

    .line 220
    if-lez p1, :cond_0

    .line 221
    iget-wide v0, p0, Lcom/github/junrar/Archive;->totalPackedRead:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/github/junrar/Archive;->totalPackedRead:J

    .line 222
    iget-object v0, p0, Lcom/github/junrar/Archive;->unrarCallback:Lcom/github/junrar/UnrarCallback;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/github/junrar/Archive;->unrarCallback:Lcom/github/junrar/UnrarCallback;

    iget-wide v1, p0, Lcom/github/junrar/Archive;->totalPackedRead:J

    iget-wide v3, p0, Lcom/github/junrar/Archive;->totalPackedSize:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/github/junrar/UnrarCallback;->volumeProgressChanged(JJ)V

    .line 227
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 765
    iget-object v0, p0, Lcom/github/junrar/Archive;->channel:Lcom/github/junrar/io/SeekableReadOnlyByteChannel;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/github/junrar/Archive;->channel:Lcom/github/junrar/io/SeekableReadOnlyByteChannel;

    invoke-interface {v0}, Lcom/github/junrar/io/SeekableReadOnlyByteChannel;->close()V

    .line 767
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/junrar/Archive;->channel:Lcom/github/junrar/io/SeekableReadOnlyByteChannel;

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/github/junrar/Archive;->unpack:Lcom/github/junrar/unpack/Unpack;

    if-eqz v0, :cond_1

    .line 770
    iget-object v0, p0, Lcom/github/junrar/Archive;->unpack:Lcom/github/junrar/unpack/Unpack;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/Unpack;->cleanUp()V

    .line 772
    :cond_1
    return-void
.end method

.method public extractFile(Lcom/github/junrar/rarfile/FileHeader;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "hd"    # Lcom/github/junrar/rarfile/FileHeader;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/github/junrar/Archive;->doExtractFile(Lcom/github/junrar/rarfile/FileHeader;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    nop

    .line 572
    return-void

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Lcom/github/junrar/exception/RarException;

    if-eqz v1, :cond_0

    .line 567
    move-object v1, v0

    check-cast v1, Lcom/github/junrar/exception/RarException;

    throw v1

    .line 569
    :cond_0
    new-instance v1, Lcom/github/junrar/exception/RarException;

    invoke-direct {v1, v0}, Lcom/github/junrar/exception/RarException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 561
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Lcom/github/junrar/exception/HeaderNotInArchiveException;

    invoke-direct {v0}, Lcom/github/junrar/exception/HeaderNotInArchiveException;-><init>()V

    throw v0
.end method

.method public getChannel()Lcom/github/junrar/io/SeekableReadOnlyByteChannel;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/github/junrar/Archive;->channel:Lcom/github/junrar/io/SeekableReadOnlyByteChannel;

    return-object v0
.end method

.method public getFileHeaders()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/junrar/rarfile/FileHeader;",
            ">;"
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/github/junrar/rarfile/FileHeader;>;"
    iget-object v1, p0, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/junrar/rarfile/BaseBlock;

    .line 248
    .local v2, "block":Lcom/github/junrar/rarfile/BaseBlock;
    invoke-virtual {v2}, Lcom/github/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/github/junrar/rarfile/UnrarHeadertype;

    move-result-object v3

    sget-object v4, Lcom/github/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v3, v4}, Lcom/github/junrar/rarfile/UnrarHeadertype;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    move-object v3, v2

    check-cast v3, Lcom/github/junrar/rarfile/FileHeader;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v2    # "block":Lcom/github/junrar/rarfile/BaseBlock;
    :cond_0
    goto :goto_0

    .line 252
    :cond_1
    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/junrar/rarfile/BaseBlock;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getInputStream(Lcom/github/junrar/rarfile/FileHeader;)Ljava/io/InputStream;
    .locals 5
    .param p1, "hd"    # Lcom/github/junrar/rarfile/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 674
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->getFullUnpackSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 675
    new-instance v0, Lcom/github/junrar/Archive$EmptyInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/junrar/Archive$EmptyInputStream;-><init>(Lcom/github/junrar/Archive$1;)V

    return-object v0

    .line 680
    :cond_0
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->getFullUnpackSize()J

    move-result-wide v0

    sget v2, Lcom/github/junrar/Archive;->PIPE_BUFFER_SIZE:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 682
    .local v0, "bufferSize":I
    new-instance v1, Ljava/io/PipedInputStream;

    invoke-direct {v1, v0}, Ljava/io/PipedInputStream;-><init>(I)V

    .line 683
    .local v1, "in":Ljava/io/PipedInputStream;
    new-instance v2, Ljava/io/PipedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    .line 687
    .local v2, "out":Ljava/io/PipedOutputStream;
    new-instance v3, Lcom/github/junrar/Archive$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, v2}, Lcom/github/junrar/Archive$$ExternalSyntheticLambda2;-><init>(Lcom/github/junrar/Archive;Lcom/github/junrar/rarfile/FileHeader;Ljava/io/PipedOutputStream;)V

    .line 698
    .local v3, "r":Ljava/lang/Runnable;
    sget-boolean v4, Lcom/github/junrar/Archive;->USE_EXECUTOR:Z

    if-eqz v4, :cond_1

    .line 699
    invoke-static {}, Lcom/github/junrar/Archive$ExtractorExecutorHolder;->access$200()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 701
    :cond_1
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 704
    :goto_0
    return-object v1
.end method

.method public getMainHeader()Lcom/github/junrar/rarfile/MainHeader;
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/github/junrar/Archive;->newMhd:Lcom/github/junrar/rarfile/MainHeader;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/github/junrar/Archive;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUnrarCallback()Lcom/github/junrar/UnrarCallback;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/github/junrar/Archive;->unrarCallback:Lcom/github/junrar/UnrarCallback;

    return-object v0
.end method

.method public getVolume()Lcom/github/junrar/volume/Volume;
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/github/junrar/Archive;->volume:Lcom/github/junrar/volume/Volume;

    return-object v0
.end method

.method public getVolumeManager()Lcom/github/junrar/volume/VolumeManager;
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/github/junrar/Archive;->volumeManager:Lcom/github/junrar/volume/VolumeManager;

    return-object v0
.end method

.method public isEncrypted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/github/junrar/Archive;->newMhd:Lcom/github/junrar/rarfile/MainHeader;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/github/junrar/Archive;->newMhd:Lcom/github/junrar/rarfile/MainHeader;

    invoke-virtual {v0}, Lcom/github/junrar/rarfile/MainHeader;->isEncrypted()Z

    move-result v0

    return v0

    .line 278
    :cond_0
    new-instance v0, Lcom/github/junrar/exception/MainHeaderNullException;

    invoke-direct {v0}, Lcom/github/junrar/exception/MainHeaderNullException;-><init>()V

    throw v0
.end method

.method public isOldFormat()Z
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/github/junrar/Archive;->markHead:Lcom/github/junrar/rarfile/MarkHeader;

    invoke-virtual {v0}, Lcom/github/junrar/rarfile/MarkHeader;->isOldFormat()Z

    move-result v0

    return v0
.end method

.method public isPasswordProtected()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Lcom/github/junrar/Archive;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/github/junrar/Archive;->getFileHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/junrar/Archive$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/github/junrar/Archive$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/github/junrar/rarfile/FileHeader;",
            ">;"
        }
    .end annotation

    .line 816
    new-instance v0, Lcom/github/junrar/Archive$1;

    invoke-direct {v0, p0}, Lcom/github/junrar/Archive$1;-><init>(Lcom/github/junrar/Archive;)V

    return-object v0
.end method

.method synthetic lambda$getInputStream$0$com-github-junrar-Archive(Lcom/github/junrar/rarfile/FileHeader;Ljava/io/PipedOutputStream;)V
    .locals 2
    .param p1, "hd"    # Lcom/github/junrar/rarfile/FileHeader;
    .param p2, "out"    # Ljava/io/PipedOutputStream;

    .line 689
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/github/junrar/Archive;->extractFile(Lcom/github/junrar/rarfile/FileHeader;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lcom/github/junrar/exception/RarException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    :try_start_1
    invoke-virtual {p2}, Ljava/io/PipedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 695
    :goto_0
    goto :goto_2

    .line 694
    :catch_0
    move-exception v0

    .line 696
    goto :goto_2

    .line 692
    :catchall_0
    move-exception v0

    .line 693
    :try_start_2
    invoke-virtual {p2}, Ljava/io/PipedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 695
    goto :goto_1

    .line 694
    :catch_1
    move-exception v1

    .line 696
    :goto_1
    throw v0

    .line 690
    :catch_2
    move-exception v0

    .line 693
    :try_start_3
    invoke-virtual {p2}, Ljava/io/PipedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 697
    :goto_2
    return-void
.end method

.method public nextFileHeader()Lcom/github/junrar/rarfile/FileHeader;
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 257
    .local v0, "n":I
    :goto_0
    iget v1, p0, Lcom/github/junrar/Archive;->currentHeaderIndex:I

    if-ge v1, v0, :cond_1

    .line 258
    iget-object v1, p0, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    iget v2, p0, Lcom/github/junrar/Archive;->currentHeaderIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/github/junrar/Archive;->currentHeaderIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/junrar/rarfile/BaseBlock;

    .line 259
    .local v1, "block":Lcom/github/junrar/rarfile/BaseBlock;
    invoke-virtual {v1}, Lcom/github/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/github/junrar/rarfile/UnrarHeadertype;

    move-result-object v2

    sget-object v3, Lcom/github/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    if-ne v2, v3, :cond_0

    .line 260
    move-object v2, v1

    check-cast v2, Lcom/github/junrar/rarfile/FileHeader;

    return-object v2

    .line 262
    .end local v1    # "block":Lcom/github/junrar/rarfile/BaseBlock;
    :cond_0
    goto :goto_0

    .line 263
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .line 800
    iput-object p1, p0, Lcom/github/junrar/Archive;->password:Ljava/lang/String;

    .line 801
    return-void
.end method

.method public setVolume(Lcom/github/junrar/volume/Volume;)V
    .locals 3
    .param p1, "volume"    # Lcom/github/junrar/volume/Volume;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 810
    iput-object p1, p0, Lcom/github/junrar/Archive;->volume:Lcom/github/junrar/volume/Volume;

    .line 811
    invoke-interface {p1}, Lcom/github/junrar/volume/Volume;->getChannel()Lcom/github/junrar/io/SeekableReadOnlyByteChannel;

    move-result-object v0

    invoke-interface {p1}, Lcom/github/junrar/volume/Volume;->getLength()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/github/junrar/Archive;->setChannel(Lcom/github/junrar/io/SeekableReadOnlyByteChannel;J)V

    .line 812
    return-void
.end method

.method public setVolumeManager(Lcom/github/junrar/volume/VolumeManager;)V
    .locals 0
    .param p1, "volumeManager"    # Lcom/github/junrar/volume/VolumeManager;

    .line 785
    iput-object p1, p0, Lcom/github/junrar/Archive;->volumeManager:Lcom/github/junrar/volume/VolumeManager;

    .line 786
    return-void
.end method
