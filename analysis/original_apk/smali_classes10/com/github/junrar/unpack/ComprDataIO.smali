.class public Lcom/github/junrar/unpack/ComprDataIO;
.super Ljava/lang/Object;
.source "ComprDataIO.java"


# instance fields
.field private final archive:Lcom/github/junrar/Archive;

.field private curPackRead:J

.field private curPackWrite:J

.field private curUnpRead:J

.field private curUnpWrite:J

.field private decryption:I

.field private encryption:I

.field private nextVolumeMissing:Z

.field private outputStream:Ljava/io/OutputStream;

.field private packFileCRC:J

.field private packVolume:Z

.field private packedCRC:J

.field private processedArcSize:J

.field private skipUnpCRC:Z

.field private subHead:Lcom/github/junrar/rarfile/FileHeader;

.field private testMode:Z

.field private totalArcSize:J

.field private totalPackRead:J

.field private underlyingDataIo:Lcom/github/junrar/io/RawDataIo;

.field private unpArcSize:J

.field private unpFileCRC:J

.field private unpPackedSize:J

.field private unpVolume:Z


# direct methods
.method public constructor <init>(Lcom/github/junrar/Archive;)V
    .locals 0
    .param p1, "arc"    # Lcom/github/junrar/Archive;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->archive:Lcom/github/junrar/Archive;

    .line 82
    return-void
.end method


# virtual methods
.method public getCurPackRead()J
    .locals 2

    .line 215
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->curPackRead:J

    return-wide v0
.end method

.method public getCurPackWrite()J
    .locals 2

    .line 223
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->curPackWrite:J

    return-wide v0
.end method

.method public getCurUnpRead()J
    .locals 2

    .line 231
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->curUnpRead:J

    return-wide v0
.end method

.method public getCurUnpWrite()J
    .locals 2

    .line 239
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->curUnpWrite:J

    return-wide v0
.end method

.method public getDecryption()I
    .locals 1

    .line 247
    iget v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->decryption:I

    return v0
.end method

.method public getEncryption()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->encryption:I

    return v0
.end method

.method public getPackFileCRC()J
    .locals 2

    .line 279
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->packFileCRC:J

    return-wide v0
.end method

.method public getPackedCRC()J
    .locals 2

    .line 271
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->packedCRC:J

    return-wide v0
.end method

.method public getProcessedArcSize()J
    .locals 2

    .line 295
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->processedArcSize:J

    return-wide v0
.end method

.method public getSubHeader()Lcom/github/junrar/rarfile/FileHeader;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->subHead:Lcom/github/junrar/rarfile/FileHeader;

    return-object v0
.end method

.method public getTotalArcSize()J
    .locals 2

    .line 303
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->totalArcSize:J

    return-wide v0
.end method

.method public getTotalPackRead()J
    .locals 2

    .line 311
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->totalPackRead:J

    return-wide v0
.end method

.method public getUnpArcSize()J
    .locals 2

    .line 319
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpArcSize:J

    return-wide v0
.end method

.method public getUnpFileCRC()J
    .locals 2

    .line 327
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpFileCRC:J

    return-wide v0
.end method

.method public init(Lcom/github/junrar/rarfile/FileHeader;)V
    .locals 4
    .param p1, "hd"    # Lcom/github/junrar/rarfile/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 103
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->getPositionInFile()J

    move-result-wide v0

    iget-object v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->archive:Lcom/github/junrar/Archive;

    invoke-virtual {v2}, Lcom/github/junrar/Archive;->isEncrypted()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/github/junrar/rarfile/FileHeader;->getHeaderSize(Z)S

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 104
    .local v0, "startPos":J
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->getFullPackSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpPackedSize:J

    .line 105
    iget-object v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->archive:Lcom/github/junrar/Archive;

    invoke-virtual {v2}, Lcom/github/junrar/Archive;->getChannel()Lcom/github/junrar/io/SeekableReadOnlyByteChannel;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/github/junrar/io/SeekableReadOnlyByteChannel;->setPosition(J)V

    .line 106
    new-instance v2, Lcom/github/junrar/io/RawDataIo;

    iget-object v3, p0, Lcom/github/junrar/unpack/ComprDataIO;->archive:Lcom/github/junrar/Archive;

    invoke-virtual {v3}, Lcom/github/junrar/Archive;->getChannel()Lcom/github/junrar/io/SeekableReadOnlyByteChannel;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/github/junrar/io/RawDataIo;-><init>(Lcom/github/junrar/io/SeekableReadOnlyByteChannel;)V

    iput-object v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->underlyingDataIo:Lcom/github/junrar/io/RawDataIo;

    .line 107
    iput-object p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->subHead:Lcom/github/junrar/rarfile/FileHeader;

    .line 108
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->curUnpRead:J

    .line 109
    iput-wide v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->curPackWrite:J

    .line 110
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->packedCRC:J

    .line 112
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->isEncrypted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->archive:Lcom/github/junrar/Archive;

    invoke-virtual {v2}, Lcom/github/junrar/Archive;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->getSalt()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/github/junrar/crypt/Rijndael;->buildDecipherer(Ljava/lang/String;[B)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 115
    .local v2, "cipher":Ljavax/crypto/Cipher;
    iget-object v3, p0, Lcom/github/junrar/unpack/ComprDataIO;->underlyingDataIo:Lcom/github/junrar/io/RawDataIo;

    invoke-virtual {v3, v2}, Lcom/github/junrar/io/RawDataIo;->setCipher(Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/github/junrar/exception/InitDeciphererFailedException;

    invoke-direct {v3, v2}, Lcom/github/junrar/exception/InitDeciphererFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 120
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public init(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 85
    iput-object p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->outputStream:Ljava/io/OutputStream;

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpPackedSize:J

    .line 87
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->testMode:Z

    .line 88
    iput-boolean v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->skipUnpCRC:Z

    .line 89
    iput-boolean v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->packVolume:Z

    .line 90
    iput-boolean v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpVolume:Z

    .line 91
    iput-boolean v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->nextVolumeMissing:Z

    .line 93
    iput v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->encryption:I

    .line 94
    iput v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->decryption:I

    .line 95
    iput-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->totalPackRead:J

    .line 96
    iput-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->curUnpWrite:J

    iput-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->curUnpRead:J

    iput-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->curPackWrite:J

    iput-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->curPackRead:J

    .line 97
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->packedCRC:J

    iput-wide v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpFileCRC:J

    iput-wide v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->packFileCRC:J

    .line 98
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->subHead:Lcom/github/junrar/rarfile/FileHeader;

    .line 99
    iput-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->totalArcSize:J

    iput-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->processedArcSize:J

    .line 100
    return-void
.end method

.method public isNextVolumeMissing()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->nextVolumeMissing:Z

    return v0
.end method

.method public isPackVolume()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->packVolume:Z

    return v0
.end method

.method public isUnpVolume()Z
    .locals 1

    .line 335
    iget-boolean v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpVolume:Z

    return v0
.end method

.method public setCurPackRead(J)V
    .locals 0
    .param p1, "curPackRead"    # J

    .line 219
    iput-wide p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->curPackRead:J

    .line 220
    return-void
.end method

.method public setCurPackWrite(J)V
    .locals 0
    .param p1, "curPackWrite"    # J

    .line 227
    iput-wide p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->curPackWrite:J

    .line 228
    return-void
.end method

.method public setCurUnpRead(J)V
    .locals 0
    .param p1, "curUnpRead"    # J

    .line 235
    iput-wide p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->curUnpRead:J

    .line 236
    return-void
.end method

.method public setCurUnpWrite(J)V
    .locals 0
    .param p1, "curUnpWrite"    # J

    .line 243
    iput-wide p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->curUnpWrite:J

    .line 244
    return-void
.end method

.method public setDecryption(I)V
    .locals 0
    .param p1, "decryption"    # I

    .line 251
    iput p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->decryption:I

    .line 252
    return-void
.end method

.method public setEncryption(I)V
    .locals 0
    .param p1, "encryption"    # I

    .line 259
    iput p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->encryption:I

    .line 260
    return-void
.end method

.method public setNextVolumeMissing(Z)V
    .locals 0
    .param p1, "nextVolumeMissing"    # Z

    .line 267
    iput-boolean p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->nextVolumeMissing:Z

    .line 268
    return-void
.end method

.method public setPackFileCRC(J)V
    .locals 0
    .param p1, "packFileCRC"    # J

    .line 283
    iput-wide p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->packFileCRC:J

    .line 284
    return-void
.end method

.method public setPackVolume(Z)V
    .locals 0
    .param p1, "packVolume"    # Z

    .line 291
    iput-boolean p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->packVolume:Z

    .line 292
    return-void
.end method

.method public setPackedCRC(J)V
    .locals 0
    .param p1, "packedCRC"    # J

    .line 275
    iput-wide p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->packedCRC:J

    .line 276
    return-void
.end method

.method public setPackedSizeToRead(J)V
    .locals 0
    .param p1, "size"    # J

    .line 198
    iput-wide p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpPackedSize:J

    .line 199
    return-void
.end method

.method public setProcessedArcSize(J)V
    .locals 0
    .param p1, "processedArcSize"    # J

    .line 299
    iput-wide p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->processedArcSize:J

    .line 300
    return-void
.end method

.method public setSkipUnpCRC(Z)V
    .locals 0
    .param p1, "skip"    # Z

    .line 206
    iput-boolean p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->skipUnpCRC:Z

    .line 207
    return-void
.end method

.method public setSubHeader(Lcom/github/junrar/rarfile/FileHeader;)V
    .locals 0
    .param p1, "hd"    # Lcom/github/junrar/rarfile/FileHeader;

    .line 210
    iput-object p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->subHead:Lcom/github/junrar/rarfile/FileHeader;

    .line 212
    return-void
.end method

.method public setTestMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .line 202
    iput-boolean p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->testMode:Z

    .line 203
    return-void
.end method

.method public setTotalArcSize(J)V
    .locals 0
    .param p1, "totalArcSize"    # J

    .line 307
    iput-wide p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->totalArcSize:J

    .line 308
    return-void
.end method

.method public setTotalPackRead(J)V
    .locals 0
    .param p1, "totalPackRead"    # J

    .line 315
    iput-wide p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->totalPackRead:J

    .line 316
    return-void
.end method

.method public setUnpArcSize(J)V
    .locals 0
    .param p1, "unpArcSize"    # J

    .line 323
    iput-wide p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpArcSize:J

    .line 324
    return-void
.end method

.method public setUnpFileCRC(J)V
    .locals 0
    .param p1, "unpFileCRC"    # J

    .line 331
    iput-wide p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpFileCRC:J

    .line 332
    return-void
.end method

.method public setUnpVolume(Z)V
    .locals 0
    .param p1, "unpVolume"    # Z

    .line 339
    iput-boolean p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpVolume:Z

    .line 340
    return-void
.end method

.method public unpRead([BII)I
    .locals 10
    .param p1, "addr"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    .local v0, "retCode":I
    const/4 v1, 0x0

    .line 124
    .local v1, "totalRead":I
    :goto_0
    const/4 v2, -0x1

    if-lez p3, :cond_8

    .line 125
    int-to-long v3, p3

    iget-wide v5, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpPackedSize:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-wide v3, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpPackedSize:J

    long-to-int v3, v3

    goto :goto_1

    :cond_0
    move v3, p3

    .line 126
    .local v3, "readSize":I
    :goto_1
    iget-object v4, p0, Lcom/github/junrar/unpack/ComprDataIO;->underlyingDataIo:Lcom/github/junrar/io/RawDataIo;

    invoke-virtual {v4, p1, p2, v3}, Lcom/github/junrar/io/RawDataIo;->read([BII)I

    move-result v0

    .line 127
    if-ltz v0, :cond_7

    .line 131
    iget-object v4, p0, Lcom/github/junrar/unpack/ComprDataIO;->subHead:Lcom/github/junrar/rarfile/FileHeader;

    invoke-virtual {v4}, Lcom/github/junrar/rarfile/FileHeader;->isSplitAfter()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    iget-wide v4, p0, Lcom/github/junrar/unpack/ComprDataIO;->packedCRC:J

    long-to-int v4, v4

    invoke-static {v4, p1, p2, v0}, Lcom/github/junrar/crc/RarCRC;->checkCrc(I[BII)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/github/junrar/unpack/ComprDataIO;->packedCRC:J

    .line 135
    :cond_1
    add-int/2addr v1, v0

    .line 136
    sub-int/2addr p3, v0

    .line 137
    add-int/2addr p2, v0

    .line 138
    iget-wide v4, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpPackedSize:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpPackedSize:J

    .line 139
    iget-wide v4, p0, Lcom/github/junrar/unpack/ComprDataIO;->curUnpRead:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/github/junrar/unpack/ComprDataIO;->curUnpRead:J

    .line 141
    iget-object v4, p0, Lcom/github/junrar/unpack/ComprDataIO;->archive:Lcom/github/junrar/Archive;

    invoke-virtual {v4, v0}, Lcom/github/junrar/Archive;->bytesReadRead(I)V

    .line 143
    iget-wide v4, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpPackedSize:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/github/junrar/unpack/ComprDataIO;->subHead:Lcom/github/junrar/rarfile/FileHeader;

    invoke-virtual {v4}, Lcom/github/junrar/rarfile/FileHeader;->isSplitAfter()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 144
    iget-object v4, p0, Lcom/github/junrar/unpack/ComprDataIO;->archive:Lcom/github/junrar/Archive;

    invoke-virtual {v4}, Lcom/github/junrar/Archive;->getVolumeManager()Lcom/github/junrar/volume/VolumeManager;

    move-result-object v4

    iget-object v5, p0, Lcom/github/junrar/unpack/ComprDataIO;->archive:Lcom/github/junrar/Archive;

    iget-object v6, p0, Lcom/github/junrar/unpack/ComprDataIO;->archive:Lcom/github/junrar/Archive;

    invoke-virtual {v6}, Lcom/github/junrar/Archive;->getVolume()Lcom/github/junrar/volume/Volume;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/github/junrar/volume/VolumeManager;->nextVolume(Lcom/github/junrar/Archive;Lcom/github/junrar/volume/Volume;)Lcom/github/junrar/volume/Volume;

    move-result-object v4

    .line 145
    .local v4, "nextVolume":Lcom/github/junrar/volume/Volume;
    if-nez v4, :cond_2

    .line 146
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/github/junrar/unpack/ComprDataIO;->nextVolumeMissing:Z

    .line 147
    return v2

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ComprDataIO;->getSubHeader()Lcom/github/junrar/rarfile/FileHeader;

    move-result-object v5

    .line 151
    .local v5, "hd":Lcom/github/junrar/rarfile/FileHeader;
    invoke-virtual {v5}, Lcom/github/junrar/rarfile/FileHeader;->getUnpVersion()B

    move-result v6

    const/16 v7, 0x14

    if-lt v6, v7, :cond_4

    invoke-virtual {v5}, Lcom/github/junrar/rarfile/FileHeader;->getFileCRC()I

    move-result v6

    if-eq v6, v2, :cond_4

    .line 152
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ComprDataIO;->getPackedCRC()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/github/junrar/rarfile/FileHeader;->getFileCRC()I

    move-result v8

    not-int v8, v8

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    goto :goto_2

    .line 153
    :cond_3
    new-instance v2, Lcom/github/junrar/exception/CrcErrorException;

    invoke-direct {v2}, Lcom/github/junrar/exception/CrcErrorException;-><init>()V

    throw v2

    .line 155
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/github/junrar/unpack/ComprDataIO;->archive:Lcom/github/junrar/Archive;

    invoke-virtual {v6}, Lcom/github/junrar/Archive;->getUnrarCallback()Lcom/github/junrar/UnrarCallback;

    move-result-object v6

    .line 156
    .local v6, "callback":Lcom/github/junrar/UnrarCallback;
    if-eqz v6, :cond_5

    invoke-interface {v6, v4}, Lcom/github/junrar/UnrarCallback;->isNextVolumeReady(Lcom/github/junrar/volume/Volume;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 157
    return v2

    .line 159
    :cond_5
    iget-object v7, p0, Lcom/github/junrar/unpack/ComprDataIO;->archive:Lcom/github/junrar/Archive;

    invoke-virtual {v7, v4}, Lcom/github/junrar/Archive;->setVolume(Lcom/github/junrar/volume/Volume;)V

    .line 160
    iget-object v7, p0, Lcom/github/junrar/unpack/ComprDataIO;->archive:Lcom/github/junrar/Archive;

    invoke-virtual {v7}, Lcom/github/junrar/Archive;->nextFileHeader()Lcom/github/junrar/rarfile/FileHeader;

    move-result-object v5

    .line 161
    if-nez v5, :cond_6

    .line 162
    return v2

    .line 164
    :cond_6
    invoke-virtual {p0, v5}, Lcom/github/junrar/unpack/ComprDataIO;->init(Lcom/github/junrar/rarfile/FileHeader;)V

    .line 168
    .end local v3    # "readSize":I
    .end local v4    # "nextVolume":Lcom/github/junrar/volume/Volume;
    .end local v5    # "hd":Lcom/github/junrar/rarfile/FileHeader;
    .end local v6    # "callback":Lcom/github/junrar/UnrarCallback;
    goto/16 :goto_0

    .line 128
    .restart local v3    # "readSize":I
    :cond_7
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 170
    .end local v3    # "readSize":I
    :cond_8
    if-eq v0, v2, :cond_9

    .line 171
    move v0, v1

    .line 173
    :cond_9
    return v0
.end method

.method public unpWrite([BII)V
    .locals 4
    .param p1, "addr"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget-boolean v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->testMode:Z

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 183
    :cond_0
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->curUnpWrite:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->curUnpWrite:J

    .line 185
    iget-boolean v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->skipUnpCRC:Z

    if-nez v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->archive:Lcom/github/junrar/Archive;

    invoke-virtual {v0}, Lcom/github/junrar/Archive;->isOldFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpFileCRC:J

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-static {v0, p1, p3}, Lcom/github/junrar/crc/RarCRC;->checkOldCrc(S[BI)S

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpFileCRC:J

    goto :goto_0

    .line 189
    :cond_1
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpFileCRC:J

    long-to-int v0, v0

    invoke-static {v0, p1, p2, p3}, Lcom/github/junrar/crc/RarCRC;->checkCrc(I[BII)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpFileCRC:J

    .line 195
    :cond_2
    :goto_0
    return-void
.end method
