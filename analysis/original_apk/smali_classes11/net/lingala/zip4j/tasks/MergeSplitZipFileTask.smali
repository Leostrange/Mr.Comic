.class public Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;
.super Lnet/lingala/zip4j/tasks/AsyncZipTask;
.source "MergeSplitZipFileTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask$MergeSplitZipFileTaskParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/tasks/AsyncZipTask<",
        "Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask$MergeSplitZipFileTaskParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private final rawIO:Lnet/lingala/zip4j/util/RawIO;

.field private final zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V
    .locals 1
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "asyncTaskParameters"    # Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    .line 34
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/tasks/AsyncZipTask;-><init>(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    .line 31
    new-instance v0, Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {v0}, Lnet/lingala/zip4j/util/RawIO;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    .line 35
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 36
    return-void
.end method

.method private createSplitZipFileStream(Lnet/lingala/zip4j/model/ZipModel;I)Ljava/io/RandomAccessFile;
    .locals 3
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "partNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->getNextSplitZipFile(Lnet/lingala/zip4j/model/ZipModel;I)Ljava/io/File;

    move-result-object v0

    .line 127
    .local v0, "splitFile":Ljava/io/File;
    new-instance v1, Ljava/io/RandomAccessFile;

    sget-object v2, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getNextSplitZipFile(Lnet/lingala/zip4j/model/ZipModel;I)Ljava/io/File;
    .locals 6
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "partNumber"    # I

    .line 111
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 112
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    const-string v0, ".z0"

    .line 116
    .local v0, "splitZipExtension":Ljava/lang/String;
    const/16 v1, 0x9

    if-lt p2, v1, :cond_1

    .line 117
    const-string v0, ".z"

    .line 119
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "rootZipFile":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "nextSplitZipFileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method private updateFileHeaderOffsetsForIndex(Ljava/util/List;JII)V
    .locals 6
    .param p2, "offsetToAdd"    # J
    .param p4, "index"    # I
    .param p5, "splitSignatureOverhead"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/FileHeader;",
            ">;JII)V"
        }
    .end annotation

    .line 102
    .local p1, "fileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lingala/zip4j/model/FileHeader;

    .line 103
    .local v1, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v2

    if-ne v2, p4, :cond_0

    .line 104
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v2

    add-long/2addr v2, p2

    int-to-long v4, p5

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    .line 105
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    .line 107
    .end local v1    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    :cond_0
    goto :goto_0

    .line 108
    :cond_1
    return-void
.end method

.method private updateHeadersForMergeSplitFileAction(Lnet/lingala/zip4j/model/ZipModel;JLjava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "totalBytesWritten"    # J
    .param p4, "outputStream"    # Ljava/io/OutputStream;
    .param p5, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/ZipModel;

    .line 135
    .local v0, "newZipModel":Lnet/lingala/zip4j/model/ZipModel;
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setOffsetOfStartOfCentralDirectory(J)V

    .line 137
    invoke-direct {p0, v0, p2, p3}, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->updateSplitZipModel(Lnet/lingala/zip4j/model/ZipModel;J)V

    .line 139
    new-instance v1, Lnet/lingala/zip4j/headers/HeaderWriter;

    invoke-direct {v1}, Lnet/lingala/zip4j/headers/HeaderWriter;-><init>()V

    .line 140
    .local v1, "headerWriter":Lnet/lingala/zip4j/headers/HeaderWriter;
    invoke-virtual {v1, v0, p4, p5}, Lnet/lingala/zip4j/headers/HeaderWriter;->finalizeZipFileWithoutValidations(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 141
    return-void
.end method

.method private updateSplitEndCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)V
    .locals 3
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;

    .line 154
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 155
    .local v0, "numberOfFileHeaders":I
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v1

    .line 156
    .local v1, "endOfCentralDirectoryRecord":Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setNumberOfThisDisk(I)V

    .line 157
    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setNumberOfThisDiskStartOfCentralDir(I)V

    .line 158
    invoke-virtual {v1, v0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectory(I)V

    .line 159
    invoke-virtual {v1, v0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(I)V

    .line 160
    return-void
.end method

.method private updateSplitZip64EndCentralDirLocator(Lnet/lingala/zip4j/model/ZipModel;J)V
    .locals 3
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "totalFileSize"    # J

    .line 163
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    return-void

    .line 167
    :cond_0
    nop

    .line 168
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v0

    .line 169
    .local v0, "zip64EndOfCentralDirectoryLocator":Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setNumberOfDiskStartOfZip64EndOfCentralDirectoryRecord(I)V

    .line 170
    nop

    .line 171
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->getOffsetZip64EndOfCentralDirectoryRecord()J

    move-result-wide v1

    add-long/2addr v1, p2

    .line 170
    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setOffsetZip64EndOfCentralDirectoryRecord(J)V

    .line 172
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setTotalNumberOfDiscs(I)V

    .line 173
    return-void
.end method

.method private updateSplitZip64EndCentralDirRec(Lnet/lingala/zip4j/model/ZipModel;J)V
    .locals 3
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "totalFileSize"    # J

    .line 176
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    return-void

    .line 180
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v0

    .line 181
    .local v0, "zip64EndOfCentralDirectoryRecord":Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setNumberOfThisDisk(I)V

    .line 182
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setNumberOfThisDiskStartOfCentralDirectory(I)V

    .line 183
    nop

    .line 184
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectory()I

    move-result v1

    int-to-long v1, v1

    .line 183
    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(J)V

    .line 185
    nop

    .line 186
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getOffsetStartCentralDirectoryWRTStartDiskNumber()J

    move-result-wide v1

    add-long/2addr v1, p2

    .line 185
    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setOffsetStartCentralDirectoryWRTStartDiskNumber(J)V

    .line 187
    return-void
.end method

.method private updateSplitZipModel(Lnet/lingala/zip4j/model/ZipModel;J)V
    .locals 1
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "totalFileSize"    # J

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    .line 145
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->updateSplitEndCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)V

    .line 147
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->updateSplitZip64EndCentralDirLocator(Lnet/lingala/zip4j/model/ZipModel;J)V

    .line 149
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->updateSplitZip64EndCentralDirRec(Lnet/lingala/zip4j/model/ZipModel;J)V

    .line 151
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic calculateTotalWork(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 28
    check-cast p1, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask$MergeSplitZipFileTaskParameters;

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->calculateTotalWork(Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask$MergeSplitZipFileTaskParameters;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected calculateTotalWork(Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask$MergeSplitZipFileTaskParameters;)J
    .locals 5
    .param p1, "taskParameters"    # Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask$MergeSplitZipFileTaskParameters;

    .line 89
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const-wide/16 v0, 0x0

    return-wide v0

    .line 93
    :cond_0
    const-wide/16 v0, 0x0

    .line 94
    .local v0, "totalSize":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 95
    iget-object v3, p0, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p0, v3, v2}, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->getNextSplitZipFile(Lnet/lingala/zip4j/model/ZipModel;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    .end local v2    # "i":I
    :cond_1
    return-wide v0
.end method

.method protected bridge synthetic executeTask(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    check-cast p1, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask$MergeSplitZipFileTaskParameters;

    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->executeTask(Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask$MergeSplitZipFileTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method protected executeTask(Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask$MergeSplitZipFileTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 22
    .param p1, "taskParameters"    # Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask$MergeSplitZipFileTaskParameters;
    .param p2, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v7, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 46
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-static/range {p1 .. p1}, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask$MergeSplitZipFileTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask$MergeSplitZipFileTaskParameters;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .local v10, "outputStream":Ljava/io/OutputStream;
    const-wide/16 v0, 0x0

    .line 48
    .local v0, "totalBytesWritten":J
    :try_start_1
    iget-object v2, v7, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result v2

    move v6, v2

    .line 49
    .local v6, "totalNumberOfSplitFiles":I
    if-lez v6, :cond_7

    .line 53
    const/4 v2, 0x0

    .line 54
    .local v2, "splitSignatureOverhead":I
    const/4 v3, 0x0

    move-wide/from16 v17, v0

    move v9, v2

    move v5, v3

    .end local v0    # "totalBytesWritten":J
    .end local v2    # "splitSignatureOverhead":I
    .local v5, "i":I
    .local v9, "splitSignatureOverhead":I
    .local v17, "totalBytesWritten":J
    :goto_0
    if-gt v5, v6, :cond_6

    .line 55
    iget-object v0, v7, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v7, v0, v5}, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->createSplitZipFileStream(Lnet/lingala/zip4j/model/ZipModel;I)Ljava/io/RandomAccessFile;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object v3, v0

    .line 56
    .local v3, "randomAccessFile":Ljava/io/RandomAccessFile;
    const/4 v0, 0x0

    .line 57
    .local v0, "start":I
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 59
    .local v1, "end":J
    const-wide/16 v13, 0x0

    if-nez v5, :cond_1

    .line 60
    :try_start_3
    iget-object v4, v7, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, v3}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v4

    int-to-long v11, v4

    sget-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->SPLIT_ZIP:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v4}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v15

    cmp-long v4, v11, v15

    if-nez v4, :cond_0

    .line 61
    const/4 v4, 0x4

    .line 62
    .end local v9    # "splitSignatureOverhead":I
    .local v4, "splitSignatureOverhead":I
    const/4 v0, 0x4

    move/from16 v19, v4

    goto :goto_2

    .line 64
    .end local v4    # "splitSignatureOverhead":I
    .restart local v9    # "splitSignatureOverhead":I
    :cond_0
    invoke-virtual {v3, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 55
    .end local v0    # "start":I
    .end local v1    # "end":J
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v13, v3

    move v11, v5

    move v12, v6

    goto/16 :goto_5

    .line 68
    .restart local v0    # "start":I
    .restart local v1    # "end":J
    :cond_1
    :goto_1
    move/from16 v19, v9

    .end local v9    # "splitSignatureOverhead":I
    .local v19, "splitSignatureOverhead":I
    :goto_2
    if-ne v5, v6, :cond_2

    .line 69
    :try_start_4
    iget-object v4, v7, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getOffsetOfStartOfCentralDirectory()J

    move-result-wide v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-wide v1, v11

    move-wide/from16 v20, v1

    goto :goto_3

    .line 55
    .end local v0    # "start":I
    .end local v1    # "end":J
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v13, v3

    move v11, v5

    move v12, v6

    move/from16 v9, v19

    goto/16 :goto_5

    .line 68
    .restart local v0    # "start":I
    .restart local v1    # "end":J
    :cond_2
    move-wide/from16 v20, v1

    .line 72
    .end local v1    # "end":J
    .local v20, "end":J
    :goto_3
    int-to-long v11, v0

    :try_start_5
    iget-object v1, v8, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask$MergeSplitZipFileTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v16

    move-object v9, v3

    move-wide v1, v13

    move-wide/from16 v13, v20

    move-object/from16 v15, p2

    invoke-static/range {v9 .. v16}, Lnet/lingala/zip4j/util/FileUtils;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)V

    .line 73
    int-to-long v11, v0

    sub-long v11, v20, v11

    add-long v17, v17, v11

    .line 74
    iget-object v4, v7, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 75
    if-nez v5, :cond_3

    move-wide v11, v1

    goto :goto_4

    :cond_3
    move-wide/from16 v11, v17

    .line 74
    :goto_4
    move-object/from16 v1, p0

    move-object v2, v4

    move-object v13, v3

    .end local v3    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v13, "randomAccessFile":Ljava/io/RandomAccessFile;
    move-wide v3, v11

    move v11, v5

    .end local v5    # "i":I
    .local v11, "i":I
    move v12, v6

    .end local v6    # "totalNumberOfSplitFiles":I
    .local v12, "totalNumberOfSplitFiles":I
    move/from16 v6, v19

    :try_start_6
    invoke-direct/range {v1 .. v6}, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->updateFileHeaderOffsetsForIndex(Ljava/util/List;JII)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->verifyIfTaskIsCancelled()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 77
    .end local v0    # "start":I
    .end local v20    # "end":J
    if-eqz v13, :cond_4

    :try_start_7
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 54
    .end local v13    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :cond_4
    add-int/lit8 v5, v11, 0x1

    move v6, v12

    move/from16 v9, v19

    .end local v11    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_0

    .line 55
    .end local v5    # "i":I
    .restart local v11    # "i":I
    .restart local v13    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v0

    move-object v1, v0

    move/from16 v9, v19

    goto :goto_5

    .end local v11    # "i":I
    .end local v12    # "totalNumberOfSplitFiles":I
    .end local v13    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "i":I
    .restart local v6    # "totalNumberOfSplitFiles":I
    :catchall_3
    move-exception v0

    move-object v13, v3

    move v11, v5

    move v12, v6

    move-object v1, v0

    move/from16 v9, v19

    .end local v3    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v5    # "i":I
    .end local v6    # "totalNumberOfSplitFiles":I
    .restart local v11    # "i":I
    .restart local v12    # "totalNumberOfSplitFiles":I
    .restart local v13    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_5

    .end local v11    # "i":I
    .end local v12    # "totalNumberOfSplitFiles":I
    .end local v13    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v19    # "splitSignatureOverhead":I
    .restart local v3    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "i":I
    .restart local v6    # "totalNumberOfSplitFiles":I
    .restart local v9    # "splitSignatureOverhead":I
    :catchall_4
    move-exception v0

    move-object v13, v3

    move v11, v5

    move v12, v6

    move-object v1, v0

    .end local v3    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v5    # "i":I
    .end local v6    # "totalNumberOfSplitFiles":I
    .restart local v11    # "i":I
    .restart local v12    # "totalNumberOfSplitFiles":I
    .restart local v13    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :goto_5
    if-eqz v13, :cond_5

    :try_start_8
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v10    # "outputStream":Ljava/io/OutputStream;
    .end local p1    # "taskParameters":Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask$MergeSplitZipFileTaskParameters;
    .end local p2    # "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    :cond_5
    :goto_6
    throw v1

    .line 54
    .end local v11    # "i":I
    .end local v12    # "totalNumberOfSplitFiles":I
    .end local v13    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "i":I
    .restart local v6    # "totalNumberOfSplitFiles":I
    .restart local v10    # "outputStream":Ljava/io/OutputStream;
    .restart local p1    # "taskParameters":Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask$MergeSplitZipFileTaskParameters;
    .restart local p2    # "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    :cond_6
    move v11, v5

    move v12, v6

    .line 79
    .end local v5    # "i":I
    .end local v6    # "totalNumberOfSplitFiles":I
    .restart local v12    # "totalNumberOfSplitFiles":I
    iget-object v2, v7, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v0, v8, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask$MergeSplitZipFileTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    .line 80
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    .line 79
    move-object/from16 v1, p0

    move-wide/from16 v3, v17

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->updateHeadersForMergeSplitFileAction(Lnet/lingala/zip4j/model/ZipModel;JLjava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitor()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 82
    .end local v9    # "splitSignatureOverhead":I
    .end local v12    # "totalNumberOfSplitFiles":I
    .end local v17    # "totalBytesWritten":J
    :try_start_a
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_a .. :try_end_a} :catch_0

    .line 84
    .end local v10    # "outputStream":Ljava/io/OutputStream;
    nop

    .line 85
    return-void

    .line 50
    .local v0, "totalBytesWritten":J
    .restart local v6    # "totalNumberOfSplitFiles":I
    .restart local v10    # "outputStream":Ljava/io/OutputStream;
    :cond_7
    move v12, v6

    .end local v6    # "totalNumberOfSplitFiles":I
    .restart local v12    # "totalNumberOfSplitFiles":I
    :try_start_b
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "zip archive not a split zip file"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .end local v10    # "outputStream":Ljava/io/OutputStream;
    .end local p1    # "taskParameters":Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask$MergeSplitZipFileTaskParameters;
    .end local p2    # "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 46
    .end local v0    # "totalBytesWritten":J
    .end local v12    # "totalNumberOfSplitFiles":I
    .restart local v10    # "outputStream":Ljava/io/OutputStream;
    .restart local p1    # "taskParameters":Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask$MergeSplitZipFileTaskParameters;
    .restart local p2    # "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    :catchall_6
    move-exception v0

    move-object v1, v0

    :try_start_c
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception v0

    move-object v2, v0

    :try_start_d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "taskParameters":Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask$MergeSplitZipFileTaskParameters;
    .end local p2    # "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    :goto_7
    throw v1
    :try_end_d
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_d .. :try_end_d} :catch_0

    .line 82
    .end local v10    # "outputStream":Ljava/io/OutputStream;
    .restart local p1    # "taskParameters":Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask$MergeSplitZipFileTaskParameters;
    .restart local p2    # "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 41
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_8
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "archive not a split zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "e":Lnet/lingala/zip4j/exception/ZipException;
    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitor(Ljava/lang/Exception;)V

    .line 43
    throw v0
.end method

.method protected getTask()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .locals 1

    .line 191
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->MERGE_ZIP_FILES:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object v0
.end method
