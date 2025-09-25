.class public Lnet/lingala/zip4j/model/ZipModel;
.super Ljava/lang/Object;
.source "ZipModel.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private archiveExtraDataRecord:Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;

.field private centralDirectory:Lnet/lingala/zip4j/model/CentralDirectory;

.field private dataDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/DataDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private end:J

.field private endOfCentralDirectoryRecord:Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

.field private isNestedZipFile:Z

.field private isZip64Format:Z

.field private localFileHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/LocalFileHeader;",
            ">;"
        }
    .end annotation
.end field

.field private splitArchive:Z

.field private splitLength:J

.field private start:J

.field private zip64EndOfCentralDirectoryLocator:Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

.field private zip64EndOfCentralDirectoryRecord:Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

.field private zipFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->localFileHeaders:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->dataDescriptors:Ljava/util/List;

    .line 27
    new-instance v0, Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->archiveExtraDataRecord:Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;

    .line 28
    new-instance v0, Lnet/lingala/zip4j/model/CentralDirectory;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/CentralDirectory;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->centralDirectory:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 29
    new-instance v0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->endOfCentralDirectoryRecord:Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    .line 30
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndOfCentralDirectoryLocator:Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    .line 31
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndOfCentralDirectoryRecord:Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format:Z

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipModel;->splitLength:J

    .line 43
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 161
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getArchiveExtraDataRecord()Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;
    .locals 1

    .line 78
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->archiveExtraDataRecord:Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;

    return-object v0
.end method

.method public getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;
    .locals 1

    .line 62
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->centralDirectory:Lnet/lingala/zip4j/model/CentralDirectory;

    return-object v0
.end method

.method public getDataDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/DataDescriptor;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->dataDescriptors:Ljava/util/List;

    return-object v0
.end method

.method public getEnd()J
    .locals 2

    .line 145
    iget-wide v0, p0, Lnet/lingala/zip4j/model/ZipModel;->end:J

    return-wide v0
.end method

.method public getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;
    .locals 1

    .line 70
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->endOfCentralDirectoryRecord:Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    return-object v0
.end method

.method public getLocalFileHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/LocalFileHeader;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->localFileHeaders:Ljava/util/List;

    return-object v0
.end method

.method public getSplitLength()J
    .locals 2

    .line 153
    iget-wide v0, p0, Lnet/lingala/zip4j/model/ZipModel;->splitLength:J

    return-wide v0
.end method

.method public getStart()J
    .locals 2

    .line 137
    iget-wide v0, p0, Lnet/lingala/zip4j/model/ZipModel;->start:J

    return-wide v0
.end method

.method public getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;
    .locals 1

    .line 103
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndOfCentralDirectoryLocator:Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    return-object v0
.end method

.method public getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;
    .locals 1

    .line 112
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndOfCentralDirectoryRecord:Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    return-object v0
.end method

.method public getZipFile()Ljava/io/File;
    .locals 1

    .line 95
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->zipFile:Ljava/io/File;

    return-object v0
.end method

.method public isNestedZipFile()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipModel;->isNestedZipFile:Z

    return v0
.end method

.method public isSplitArchive()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipModel;->splitArchive:Z

    return v0
.end method

.method public isZip64Format()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format:Z

    return v0
.end method

.method public setArchiveExtraDataRecord(Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;)V
    .locals 0
    .param p1, "archiveExtraDataRecord"    # Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;

    .line 83
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->archiveExtraDataRecord:Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;

    .line 84
    return-void
.end method

.method public setCentralDirectory(Lnet/lingala/zip4j/model/CentralDirectory;)V
    .locals 0
    .param p1, "centralDirectory"    # Lnet/lingala/zip4j/model/CentralDirectory;

    .line 66
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->centralDirectory:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 67
    return-void
.end method

.method public setDataDescriptors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/DataDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "dataDescriptors":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/DataDescriptor;>;"
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->dataDescriptors:Ljava/util/List;

    .line 59
    return-void
.end method

.method public setEnd(J)V
    .locals 0
    .param p1, "end"    # J

    .line 149
    iput-wide p1, p0, Lnet/lingala/zip4j/model/ZipModel;->end:J

    .line 150
    return-void
.end method

.method public setEndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;)V
    .locals 0
    .param p1, "endOfCentralDirectoryRecord"    # Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    .line 74
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->endOfCentralDirectoryRecord:Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    .line 75
    return-void
.end method

.method public setLocalFileHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/LocalFileHeader;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p1, "localFileHeaderList":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/LocalFileHeader;>;"
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->localFileHeaders:Ljava/util/List;

    .line 51
    return-void
.end method

.method public setNestedZipFile(Z)V
    .locals 0
    .param p1, "isNestedZipFile"    # Z

    .line 133
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipModel;->isNestedZipFile:Z

    .line 134
    return-void
.end method

.method public setSplitArchive(Z)V
    .locals 0
    .param p1, "splitArchive"    # Z

    .line 91
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipModel;->splitArchive:Z

    .line 92
    return-void
.end method

.method public setSplitLength(J)V
    .locals 0
    .param p1, "splitLength"    # J

    .line 157
    iput-wide p1, p0, Lnet/lingala/zip4j/model/ZipModel;->splitLength:J

    .line 158
    return-void
.end method

.method public setStart(J)V
    .locals 0
    .param p1, "start"    # J

    .line 141
    iput-wide p1, p0, Lnet/lingala/zip4j/model/ZipModel;->start:J

    .line 142
    return-void
.end method

.method public setZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;)V
    .locals 0
    .param p1, "zip64EndOfCentralDirectoryLocator"    # Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    .line 108
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndOfCentralDirectoryLocator:Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    .line 109
    return-void
.end method

.method public setZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;)V
    .locals 0
    .param p1, "zip64EndOfCentralDirectoryRecord"    # Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    .line 117
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndOfCentralDirectoryRecord:Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    .line 118
    return-void
.end method

.method public setZip64Format(Z)V
    .locals 0
    .param p1, "isZip64Format"    # Z

    .line 125
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format:Z

    .line 126
    return-void
.end method

.method public setZipFile(Ljava/io/File;)V
    .locals 0
    .param p1, "zipFile"    # Ljava/io/File;

    .line 99
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->zipFile:Ljava/io/File;

    .line 100
    return-void
.end method
