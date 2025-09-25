.class public Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;
.super Lnet/lingala/zip4j/model/ZipHeader;
.source "Zip64EndOfCentralDirectoryRecord.java"


# instance fields
.field private extensibleDataSector:[B

.field private numberOfThisDisk:I

.field private numberOfThisDiskStartOfCentralDirectory:I

.field private offsetStartCentralDirectoryWRTStartDiskNumber:J

.field private sizeOfCentralDirectory:J

.field private sizeOfZip64EndCentralDirectoryRecord:J

.field private totalNumberOfEntriesInCentralDirectory:J

.field private totalNumberOfEntriesInCentralDirectoryOnThisDisk:J

.field private versionMadeBy:I

.field private versionNeededToExtract:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lnet/lingala/zip4j/model/ZipHeader;-><init>()V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->offsetStartCentralDirectoryWRTStartDiskNumber:J

    return-void
.end method


# virtual methods
.method public getExtensibleDataSector()[B
    .locals 1

    .line 107
    iget-object v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->extensibleDataSector:[B

    return-object v0
.end method

.method public getNumberOfThisDisk()I
    .locals 1

    .line 57
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->numberOfThisDisk:I

    return v0
.end method

.method public getNumberOfThisDiskStartOfCentralDirectory()I
    .locals 1

    .line 65
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->numberOfThisDiskStartOfCentralDirectory:I

    return v0
.end method

.method public getOffsetStartCentralDirectoryWRTStartDiskNumber()J
    .locals 2

    .line 98
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->offsetStartCentralDirectoryWRTStartDiskNumber:J

    return-wide v0
.end method

.method public getSizeOfCentralDirectory()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->sizeOfCentralDirectory:J

    return-wide v0
.end method

.method public getSizeOfZip64EndCentralDirectoryRecord()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->sizeOfZip64EndCentralDirectoryRecord:J

    return-wide v0
.end method

.method public getTotalNumberOfEntriesInCentralDirectory()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->totalNumberOfEntriesInCentralDirectory:J

    return-wide v0
.end method

.method public getTotalNumberOfEntriesInCentralDirectoryOnThisDisk()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->totalNumberOfEntriesInCentralDirectoryOnThisDisk:J

    return-wide v0
.end method

.method public getVersionMadeBy()I
    .locals 1

    .line 41
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->versionMadeBy:I

    return v0
.end method

.method public getVersionNeededToExtract()I
    .locals 1

    .line 49
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->versionNeededToExtract:I

    return v0
.end method

.method public setExtensibleDataSector([B)V
    .locals 0
    .param p1, "extensibleDataSector"    # [B

    .line 111
    iput-object p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->extensibleDataSector:[B

    .line 112
    return-void
.end method

.method public setNumberOfThisDisk(I)V
    .locals 0
    .param p1, "numberOfThisDisk"    # I

    .line 61
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->numberOfThisDisk:I

    .line 62
    return-void
.end method

.method public setNumberOfThisDiskStartOfCentralDirectory(I)V
    .locals 0
    .param p1, "numberOfThisDiskStartOfCentralDirectory"    # I

    .line 69
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->numberOfThisDiskStartOfCentralDirectory:I

    .line 70
    return-void
.end method

.method public setOffsetStartCentralDirectoryWRTStartDiskNumber(J)V
    .locals 0
    .param p1, "offsetStartCentralDirectoryWRTStartDiskNumber"    # J

    .line 103
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->offsetStartCentralDirectoryWRTStartDiskNumber:J

    .line 104
    return-void
.end method

.method public setSizeOfCentralDirectory(J)V
    .locals 0
    .param p1, "sizeOfCentralDirectory"    # J

    .line 94
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->sizeOfCentralDirectory:J

    .line 95
    return-void
.end method

.method public setSizeOfZip64EndCentralDirectoryRecord(J)V
    .locals 0
    .param p1, "sizeOfZip64EndCentralDirectoryRecord"    # J

    .line 37
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->sizeOfZip64EndCentralDirectoryRecord:J

    .line 38
    return-void
.end method

.method public setTotalNumberOfEntriesInCentralDirectory(J)V
    .locals 0
    .param p1, "totalNumberOfEntriesInCentralDirectory"    # J

    .line 86
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->totalNumberOfEntriesInCentralDirectory:J

    .line 87
    return-void
.end method

.method public setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(J)V
    .locals 0
    .param p1, "totalNumberOfEntriesInCentralDirectoryOnThisDisk"    # J

    .line 78
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->totalNumberOfEntriesInCentralDirectoryOnThisDisk:J

    .line 79
    return-void
.end method

.method public setVersionMadeBy(I)V
    .locals 0
    .param p1, "versionMadeBy"    # I

    .line 45
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->versionMadeBy:I

    .line 46
    return-void
.end method

.method public setVersionNeededToExtract(I)V
    .locals 0
    .param p1, "versionNeededToExtract"    # I

    .line 53
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->versionNeededToExtract:I

    .line 54
    return-void
.end method
