.class public Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;
.super Lnet/lingala/zip4j/model/ZipHeader;
.source "EndOfCentralDirectoryRecord.java"


# instance fields
.field private comment:Ljava/lang/String;

.field private numberOfThisDisk:I

.field private numberOfThisDiskStartOfCentralDir:I

.field private offsetOfEndOfCentralDirectory:J

.field private offsetOfStartOfCentralDirectory:J

.field private sizeOfCentralDirectory:I

.field private totalNumberOfEntriesInCentralDirectory:I

.field private totalNumberOfEntriesInCentralDirectoryOnThisDisk:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lnet/lingala/zip4j/model/ZipHeader;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->comment:Ljava/lang/String;

    .line 33
    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfThisDisk()I
    .locals 1

    .line 37
    iget v0, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->numberOfThisDisk:I

    return v0
.end method

.method public getNumberOfThisDiskStartOfCentralDir()I
    .locals 1

    .line 45
    iget v0, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->numberOfThisDiskStartOfCentralDir:I

    return v0
.end method

.method public getOffsetOfEndOfCentralDirectory()J
    .locals 2

    .line 86
    iget-wide v0, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->offsetOfEndOfCentralDirectory:J

    return-wide v0
.end method

.method public getOffsetOfStartOfCentralDirectory()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->offsetOfStartOfCentralDirectory:J

    return-wide v0
.end method

.method public getSizeOfCentralDirectory()I
    .locals 1

    .line 70
    iget v0, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->sizeOfCentralDirectory:I

    return v0
.end method

.method public getTotalNumberOfEntriesInCentralDirectory()I
    .locals 1

    .line 62
    iget v0, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->totalNumberOfEntriesInCentralDirectory:I

    return v0
.end method

.method public getTotalNumberOfEntriesInCentralDirectoryOnThisDisk()I
    .locals 1

    .line 53
    iget v0, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->totalNumberOfEntriesInCentralDirectoryOnThisDisk:I

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .line 98
    if-eqz p1, :cond_0

    .line 99
    iput-object p1, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->comment:Ljava/lang/String;

    .line 101
    :cond_0
    return-void
.end method

.method public setNumberOfThisDisk(I)V
    .locals 0
    .param p1, "numberOfThisDisk"    # I

    .line 41
    iput p1, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->numberOfThisDisk:I

    .line 42
    return-void
.end method

.method public setNumberOfThisDiskStartOfCentralDir(I)V
    .locals 0
    .param p1, "numberOfThisDiskStartOfCentralDir"    # I

    .line 49
    iput p1, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->numberOfThisDiskStartOfCentralDir:I

    .line 50
    return-void
.end method

.method public setOffsetOfEndOfCentralDirectory(J)V
    .locals 0
    .param p1, "offsetOfEndOfCentralDirectory"    # J

    .line 90
    iput-wide p1, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->offsetOfEndOfCentralDirectory:J

    .line 91
    return-void
.end method

.method public setOffsetOfStartOfCentralDirectory(J)V
    .locals 0
    .param p1, "offSetOfStartOfCentralDir"    # J

    .line 82
    iput-wide p1, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->offsetOfStartOfCentralDirectory:J

    .line 83
    return-void
.end method

.method public setSizeOfCentralDirectory(I)V
    .locals 0
    .param p1, "sizeOfCentralDirectory"    # I

    .line 74
    iput p1, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->sizeOfCentralDirectory:I

    .line 75
    return-void
.end method

.method public setTotalNumberOfEntriesInCentralDirectory(I)V
    .locals 0
    .param p1, "totNoOfEntrisInCentralDir"    # I

    .line 66
    iput p1, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->totalNumberOfEntriesInCentralDirectory:I

    .line 67
    return-void
.end method

.method public setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(I)V
    .locals 0
    .param p1, "totalNumberOfEntriesInCentralDirectoryOnThisDisk"    # I

    .line 58
    iput p1, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->totalNumberOfEntriesInCentralDirectoryOnThisDisk:I

    .line 59
    return-void
.end method
