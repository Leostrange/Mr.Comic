.class public abstract Lnet/lingala/zip4j/model/AbstractFileHeader;
.super Lnet/lingala/zip4j/model/ZipHeader;
.source "AbstractFileHeader.java"


# instance fields
.field private aesExtraDataRecord:Lnet/lingala/zip4j/model/AESExtraDataRecord;

.field private compressedSize:J

.field private compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

.field private crc:J

.field private dataDescriptorExists:Z

.field private encryptionMethod:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

.field private extraDataRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;"
        }
    .end annotation
.end field

.field private extraFieldLength:I

.field private fileName:Ljava/lang/String;

.field private fileNameLength:I

.field private fileNameUTF8Encoded:Z

.field private generalPurposeFlag:[B

.field private isDirectory:Z

.field private isEncrypted:Z

.field private lastModifiedTime:J

.field private uncompressedSize:J

.field private versionNeededToExtract:I

.field private zip64ExtendedInfo:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Lnet/lingala/zip4j/model/ZipHeader;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->crc:J

    .line 16
    iput-wide v0, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->compressedSize:J

    .line 17
    iput-wide v0, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->uncompressedSize:J

    .line 22
    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->encryptionMethod:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 180
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 181
    return v0

    .line 184
    :cond_0
    instance-of v1, p1, Lnet/lingala/zip4j/model/AbstractFileHeader;

    if-nez v1, :cond_1

    .line 185
    return v0

    .line 188
    :cond_1
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lnet/lingala/zip4j/model/AbstractFileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .locals 1

    .line 147
    iget-object v0, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->aesExtraDataRecord:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    return-object v0
.end method

.method public getCompressedSize()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->compressedSize:J

    return-wide v0
.end method

.method public getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;
    .locals 1

    .line 47
    iget-object v0, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    return-object v0
.end method

.method public getCrc()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->crc:J

    return-wide v0
.end method

.method public getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;
    .locals 1

    .line 123
    iget-object v0, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->encryptionMethod:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    return-object v0
.end method

.method public getExtraDataRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->extraDataRecords:Ljava/util/List;

    return-object v0
.end method

.method public getExtraFieldLength()I
    .locals 1

    .line 99
    iget v0, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->extraFieldLength:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileNameLength()I
    .locals 1

    .line 91
    iget v0, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->fileNameLength:I

    return v0
.end method

.method public getGeneralPurposeFlag()[B
    .locals 1

    .line 39
    iget-object v0, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->generalPurposeFlag:[B

    return-object v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->lastModifiedTime:J

    return-wide v0
.end method

.method public getLastModifiedTimeEpoch()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->lastModifiedTime:J

    invoke-static {v0, v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->dosToExtendedEpochTme(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUncompressedSize()J
    .locals 2

    .line 83
    iget-wide v0, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->uncompressedSize:J

    return-wide v0
.end method

.method public getVersionNeededToExtract()I
    .locals 1

    .line 31
    iget v0, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->versionNeededToExtract:I

    return v0
.end method

.method public getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    .locals 1

    .line 139
    iget-object v0, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->zip64ExtendedInfo:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    return-object v0
.end method

.method public isDataDescriptorExists()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->dataDescriptorExists:Z

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->isDirectory:Z

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->isEncrypted:Z

    return v0
.end method

.method public isFileNameUTF8Encoded()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->fileNameUTF8Encoded:Z

    return v0
.end method

.method public setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V
    .locals 0
    .param p1, "aesExtraDataRecord"    # Lnet/lingala/zip4j/model/AESExtraDataRecord;

    .line 151
    iput-object p1, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->aesExtraDataRecord:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    .line 152
    return-void
.end method

.method public setCompressedSize(J)V
    .locals 0
    .param p1, "compressedSize"    # J

    .line 79
    iput-wide p1, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->compressedSize:J

    .line 80
    return-void
.end method

.method public setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V
    .locals 0
    .param p1, "compressionMethod"    # Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 51
    iput-object p1, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 52
    return-void
.end method

.method public setCrc(J)V
    .locals 0
    .param p1, "crc"    # J

    .line 71
    iput-wide p1, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->crc:J

    .line 72
    return-void
.end method

.method public setDataDescriptorExists(Z)V
    .locals 0
    .param p1, "dataDescriptorExists"    # Z

    .line 135
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->dataDescriptorExists:Z

    .line 136
    return-void
.end method

.method public setDirectory(Z)V
    .locals 0
    .param p1, "directory"    # Z

    .line 175
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->isDirectory:Z

    .line 176
    return-void
.end method

.method public setEncrypted(Z)V
    .locals 0
    .param p1, "encrypted"    # Z

    .line 119
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->isEncrypted:Z

    .line 120
    return-void
.end method

.method public setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V
    .locals 0
    .param p1, "encryptionMethod"    # Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 127
    iput-object p1, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->encryptionMethod:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 128
    return-void
.end method

.method public setExtraDataRecords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;)V"
        }
    .end annotation

    .line 167
    .local p1, "extraDataRecords":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/ExtraDataRecord;>;"
    iput-object p1, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->extraDataRecords:Ljava/util/List;

    .line 168
    return-void
.end method

.method public setExtraFieldLength(I)V
    .locals 0
    .param p1, "extraFieldLength"    # I

    .line 103
    iput p1, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->extraFieldLength:I

    .line 104
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->fileName:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setFileNameLength(I)V
    .locals 0
    .param p1, "fileNameLength"    # I

    .line 95
    iput p1, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->fileNameLength:I

    .line 96
    return-void
.end method

.method public setFileNameUTF8Encoded(Z)V
    .locals 0
    .param p1, "fileNameUTF8Encoded"    # Z

    .line 159
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->fileNameUTF8Encoded:Z

    .line 160
    return-void
.end method

.method public setGeneralPurposeFlag([B)V
    .locals 0
    .param p1, "generalPurposeFlag"    # [B

    .line 43
    iput-object p1, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->generalPurposeFlag:[B

    .line 44
    return-void
.end method

.method public setLastModifiedTime(J)V
    .locals 0
    .param p1, "lastModifiedTime"    # J

    .line 59
    iput-wide p1, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->lastModifiedTime:J

    .line 60
    return-void
.end method

.method public setUncompressedSize(J)V
    .locals 0
    .param p1, "uncompressedSize"    # J

    .line 87
    iput-wide p1, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->uncompressedSize:J

    .line 88
    return-void
.end method

.method public setVersionNeededToExtract(I)V
    .locals 0
    .param p1, "versionNeededToExtract"    # I

    .line 35
    iput p1, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->versionNeededToExtract:I

    .line 36
    return-void
.end method

.method public setZip64ExtendedInfo(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V
    .locals 0
    .param p1, "zip64ExtendedInfo"    # Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    .line 143
    iput-object p1, p0, Lnet/lingala/zip4j/model/AbstractFileHeader;->zip64ExtendedInfo:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    .line 144
    return-void
.end method
