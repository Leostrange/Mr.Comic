.class public Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;
.super Lnet/lingala/zip4j/model/ZipHeader;
.source "Zip64EndOfCentralDirectoryLocator.java"


# instance fields
.field private numberOfDiskStartOfZip64EndOfCentralDirectoryRecord:I

.field private offsetZip64EndOfCentralDirectoryRecord:J

.field private totalNumberOfDiscs:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lnet/lingala/zip4j/model/ZipHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public getNumberOfDiskStartOfZip64EndOfCentralDirectoryRecord()I
    .locals 1

    .line 26
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->numberOfDiskStartOfZip64EndOfCentralDirectoryRecord:I

    return v0
.end method

.method public getOffsetZip64EndOfCentralDirectoryRecord()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->offsetZip64EndOfCentralDirectoryRecord:J

    return-wide v0
.end method

.method public getTotalNumberOfDiscs()I
    .locals 1

    .line 43
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->totalNumberOfDiscs:I

    return v0
.end method

.method public setNumberOfDiskStartOfZip64EndOfCentralDirectoryRecord(I)V
    .locals 0
    .param p1, "noOfDiskStartOfZip64EndOfCentralDirRec"    # I

    .line 31
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->numberOfDiskStartOfZip64EndOfCentralDirectoryRecord:I

    .line 32
    return-void
.end method

.method public setOffsetZip64EndOfCentralDirectoryRecord(J)V
    .locals 0
    .param p1, "offsetZip64EndOfCentralDirectoryRecord"    # J

    .line 39
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->offsetZip64EndOfCentralDirectoryRecord:J

    .line 40
    return-void
.end method

.method public setTotalNumberOfDiscs(I)V
    .locals 0
    .param p1, "totNumberOfDiscs"    # I

    .line 47
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->totalNumberOfDiscs:I

    .line 48
    return-void
.end method
