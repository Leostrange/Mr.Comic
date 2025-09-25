.class public Lnet/lingala/zip4j/tasks/RenameFilesTask;
.super Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;
.source "RenameFilesTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/tasks/AbstractModifyFileTask<",
        "Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private final headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

.field private final rawIO:Lnet/lingala/zip4j/util/RawIO;

.field private final zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/headers/HeaderWriter;Lnet/lingala/zip4j/util/RawIO;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V
    .locals 0
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "headerWriter"    # Lnet/lingala/zip4j/headers/HeaderWriter;
    .param p3, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .param p4, "asyncTaskParameters"    # Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    .line 32
    invoke-direct {p0, p4}, Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;-><init>(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    .line 33
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 34
    iput-object p2, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    .line 35
    iput-object p3, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    .line 36
    return-void
.end method

.method private copyEntryAndChangeFileName([BLnet/lingala/zip4j/model/FileHeader;JJLjava/io/RandomAccessFile;Ljava/io/OutputStream;Lnet/lingala/zip4j/progress/ProgressMonitor;I)J
    .locals 16
    .param p1, "newFileNameBytes"    # [B
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "start"    # J
    .param p5, "totalLengthOfEntry"    # J
    .param p7, "inputStream"    # Ljava/io/RandomAccessFile;
    .param p8, "outputStream"    # Ljava/io/OutputStream;
    .param p9, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p10, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    move-object/from16 v0, p1

    move-object/from16 v10, p8

    move-wide/from16 v11, p3

    .line 106
    .local v11, "currentFileCopyPointer":J
    const-wide/16 v6, 0x1a

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide v4, v11

    move-object/from16 v8, p9

    move/from16 v9, p10

    invoke-virtual/range {v1 .. v9}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)J

    move-result-wide v1

    add-long/2addr v11, v1

    .line 108
    move-object/from16 v13, p0

    iget-object v1, v13, Lnet/lingala/zip4j/tasks/RenameFilesTask;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    array-length v2, v0

    invoke-virtual {v1, v10, v2}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 110
    const-wide/16 v1, 0x2

    add-long/2addr v11, v1

    .line 111
    const-wide/16 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-wide v4, v11

    invoke-virtual/range {v1 .. v9}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)J

    move-result-wide v1

    add-long/2addr v11, v1

    .line 113
    invoke-virtual {v10, v0}, Ljava/io/OutputStream;->write([B)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileNameLength()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v11, v1

    .line 116
    sub-long v1, v11, p3

    sub-long v14, p5, v1

    .line 118
    .local v14, "remainingLengthToCopy":J
    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-wide v4, v11

    move-wide v6, v14

    invoke-virtual/range {v1 .. v9}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)J

    move-result-wide v1

    add-long/2addr v11, v1

    .line 121
    return-wide v11
.end method

.method private filterNonExistingEntriesAndAddSeparatorIfNeeded(Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 167
    .local p1, "inputFileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local v0, "fileNamesMapToBeChanged":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 169
    .local v2, "allNamesToBeChanged":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 170
    goto :goto_0

    .line 173
    :cond_0
    iget-object v3, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lnet/lingala/zip4j/headers/HeaderUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v3

    .line 174
    .local v3, "fileHeaderToBeChanged":Lnet/lingala/zip4j/model/FileHeader;
    if-eqz v3, :cond_2

    .line 175
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/FileHeader;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 176
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 178
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .end local v2    # "allNamesToBeChanged":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "fileHeaderToBeChanged":Lnet/lingala/zip4j/model/FileHeader;
    :cond_2
    :goto_1
    goto :goto_0

    .line 182
    :cond_3
    return-object v0
.end method

.method private getCorrespondingEntryFromMap(Lnet/lingala/zip4j/model/FileHeader;Ljava/util/Map;)Ljava/util/Map$Entry;
    .locals 4
    .param p1, "fileHeaderToBeChecked"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/lingala/zip4j/model/FileHeader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    .local p2, "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 128
    .local v1, "fileHeaderToBeRenamed":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    return-object v1

    .line 131
    .end local v1    # "fileHeaderToBeRenamed":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getNewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "newFileName"    # Ljava/lang/String;
    .param p2, "oldFileName"    # Ljava/lang/String;
    .param p3, "fileNameFromHeaderToBeChanged"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 186
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    return-object p1

    .line 188
    :cond_0
    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "fileNameWithoutOldName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 196
    .end local v0    # "fileNameWithoutOldName":Ljava/lang/String;
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "old file name was neither an exact match nor a partial match"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateHeadersInZipModel(Ljava/util/List;Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;[BI)V
    .locals 8
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "newFileName"    # Ljava/lang/String;
    .param p4, "newFileNameBytes"    # [B
    .param p5, "headersOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/FileHeader;",
            ">;",
            "Lnet/lingala/zip4j/model/FileHeader;",
            "Ljava/lang/String;",
            "[BI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 139
    .local p1, "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/lingala/zip4j/headers/HeaderUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v0

    .line 141
    .local v0, "fileHeaderToBeChanged":Lnet/lingala/zip4j/model/FileHeader;
    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0, p3}, Lnet/lingala/zip4j/model/FileHeader;->setFileName(Ljava/lang/String;)V

    .line 148
    array-length v1, p4

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->setFileNameLength(I)V

    .line 150
    iget-object v4, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->updateOffsetsForAllSubsequentFileHeaders(Ljava/util/List;Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;J)V

    .line 152
    iget-object v1, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v1

    iget-object v2, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 153
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getOffsetOfStartOfCentralDirectory()J

    move-result-wide v2

    int-to-long v4, p5

    add-long/2addr v2, v4

    .line 152
    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setOffsetOfStartOfCentralDirectory(J)V

    .line 155
    iget-object v1, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v1

    iget-object v2, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 157
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getOffsetStartCentralDirectoryWRTStartDiskNumber()J

    move-result-wide v2

    int-to-long v4, p5

    add-long/2addr v2, v4

    .line 156
    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setOffsetStartCentralDirectoryWRTStartDiskNumber(J)V

    .line 160
    iget-object v1, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v1

    iget-object v2, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 161
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->getOffsetZip64EndOfCentralDirectoryRecord()J

    move-result-wide v2

    int-to-long v4, p5

    add-long/2addr v2, v4

    .line 160
    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setOffsetZip64EndOfCentralDirectoryRecord(J)V

    .line 164
    :cond_0
    return-void

    .line 144
    :cond_1
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not find any header with name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected bridge synthetic calculateTotalWork(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 25
    check-cast p1, Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->calculateTotalWork(Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected calculateTotalWork(Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;)J
    .locals 2
    .param p1, "taskParameters"    # Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;

    .line 93
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method protected bridge synthetic executeTask(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    check-cast p1, Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;

    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->executeTask(Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method protected executeTask(Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 30
    .param p1, "taskParameters"    # Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;
    .param p2, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    invoke-static/range {p1 .. p1}, Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v14, v0}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->filterNonExistingEntriesAndAddSeparatorIfNeeded(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    .line 41
    .local v13, "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 42
    return-void

    .line 45
    :cond_0
    iget-object v0, v14, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->getTemporaryFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 46
    .local v12, "temporaryFile":Ljava/io/File;
    const/16 v16, 0x0

    .line 47
    .local v16, "successFlag":Z
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v0, v14, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->WRITE:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    .line 48
    .local v2, "inputStream":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    invoke-direct {v0, v12}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    move-object v11, v0

    .line 50
    .local v11, "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    const-wide/16 v0, 0x0

    .line 51
    .local v0, "currentFileCopyPointer":J
    :try_start_2
    iget-object v3, v15, Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    move-object v10, v3

    .line 58
    .local v10, "charset":Ljava/nio/charset/Charset;
    iget-object v3, v14, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v14, v3}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->cloneAndSortFileHeadersByOffset(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    move-object v9, v3

    .line 60
    .local v9, "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-wide/from16 v18, v0

    .end local v0    # "currentFileCopyPointer":J
    .local v18, "currentFileCopyPointer":J
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    if-eqz v0, :cond_2

    :try_start_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/FileHeader;

    .line 61
    .local v0, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    invoke-direct {v14, v0, v13}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->getCorrespondingEntryFromMap(Lnet/lingala/zip4j/model/FileHeader;Ljava/util/Map;)Ljava/util/Map$Entry;

    move-result-object v1

    move-object/from16 v20, v1

    .line 62
    .local v20, "fileNameMapForThisEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v8, p2

    invoke-virtual {v8, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 64
    iget-object v1, v14, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v14, v9, v0, v1}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->getOffsetOfNextEntry(Ljava/util/List;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/model/ZipModel;)J

    move-result-wide v3

    invoke-virtual {v11}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->getFilePointer()J

    move-result-wide v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    sub-long v21, v3, v5

    .line 65
    .local v21, "lengthToCopy":J
    if-nez v20, :cond_1

    .line 67
    :try_start_4
    iget-object v1, v15, Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    .line 68
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v23

    .line 67
    move-object/from16 v1, p0

    move-object v3, v11

    move-wide/from16 v4, v18

    move-wide/from16 v6, v21

    move-object/from16 v8, p2

    move-object/from16 v24, v9

    .end local v9    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    .local v24, "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    move/from16 v9, v23

    invoke-virtual/range {v1 .. v9}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)J

    move-result-wide v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-long v18, v18, v3

    move-object v15, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    goto/16 :goto_1

    .line 47
    .end local v0    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v10    # "charset":Ljava/nio/charset/Charset;
    .end local v18    # "currentFileCopyPointer":J
    .end local v20    # "fileNameMapForThisEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "lengthToCopy":J
    .end local v24    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v29, v13

    goto/16 :goto_2

    .line 70
    .restart local v0    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .restart local v9    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    .restart local v10    # "charset":Ljava/nio/charset/Charset;
    .restart local v18    # "currentFileCopyPointer":J
    .restart local v20    # "fileNameMapForThisEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "lengthToCopy":J
    :cond_1
    move-object/from16 v24, v9

    .end local v9    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    .restart local v24    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    :try_start_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v1, v3, v4}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->getNewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "newFileName":Ljava/lang/String;
    invoke-static {v1, v10}, Lnet/lingala/zip4j/headers/HeaderUtil;->getBytesFromString(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v3

    move-object v8, v3

    .line 72
    .local v8, "newFileNameBytes":[B
    array-length v3, v8

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getFileNameLength()I

    move-result v4

    sub-int v23, v3, v4

    .line 74
    .local v23, "headersOffset":I
    iget-object v3, v15, Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    .line 75
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v25
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 74
    move-object/from16 v3, p0

    move-object v4, v8

    move-object v5, v0

    move-wide/from16 v6, v18

    move-object/from16 v26, v8

    .end local v8    # "newFileNameBytes":[B
    .local v26, "newFileNameBytes":[B
    move-wide/from16 v8, v21

    move-object v15, v10

    .end local v10    # "charset":Ljava/nio/charset/Charset;
    .local v15, "charset":Ljava/nio/charset/Charset;
    move-object v10, v2

    move-object/from16 v27, v11

    .end local v11    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .local v27, "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    move-object/from16 v28, v12

    .end local v12    # "temporaryFile":Ljava/io/File;
    .local v28, "temporaryFile":Ljava/io/File;
    move-object/from16 v12, p2

    move-object/from16 v29, v13

    .end local v13    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v29, "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move/from16 v13, v25

    :try_start_6
    invoke-direct/range {v3 .. v13}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->copyEntryAndChangeFileName([BLnet/lingala/zip4j/model/FileHeader;JJLjava/io/RandomAccessFile;Ljava/io/OutputStream;Lnet/lingala/zip4j/progress/ProgressMonitor;I)J

    move-result-wide v3

    move-wide v9, v3

    .line 77
    .end local v18    # "currentFileCopyPointer":J
    .local v9, "currentFileCopyPointer":J
    move-object/from16 v3, p0

    move-object/from16 v4, v24

    move-object v5, v0

    move-object v6, v1

    move-object/from16 v7, v26

    move/from16 v8, v23

    invoke-direct/range {v3 .. v8}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->updateHeadersInZipModel(Ljava/util/List;Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;[BI)V

    move-wide/from16 v18, v9

    .line 80
    .end local v1    # "newFileName":Ljava/lang/String;
    .end local v9    # "currentFileCopyPointer":J
    .end local v23    # "headersOffset":I
    .end local v26    # "newFileNameBytes":[B
    .restart local v18    # "currentFileCopyPointer":J
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->verifyIfTaskIsCancelled()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 81
    .end local v0    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v20    # "fileNameMapForThisEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "lengthToCopy":J
    move-object v10, v15

    move-object/from16 v9, v24

    move-object/from16 v11, v27

    move-object/from16 v12, v28

    move-object/from16 v13, v29

    move-object/from16 v15, p1

    goto/16 :goto_0

    .line 47
    .end local v15    # "charset":Ljava/nio/charset/Charset;
    .end local v18    # "currentFileCopyPointer":J
    .end local v24    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    goto :goto_2

    .end local v27    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v28    # "temporaryFile":Ljava/io/File;
    .end local v29    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v12    # "temporaryFile":Ljava/io/File;
    .restart local v13    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object v1, v0

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    .end local v11    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v12    # "temporaryFile":Ljava/io/File;
    .end local v13    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v27    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v28    # "temporaryFile":Ljava/io/File;
    .restart local v29    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    .line 83
    .end local v27    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v28    # "temporaryFile":Ljava/io/File;
    .end local v29    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v9, "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    .restart local v10    # "charset":Ljava/nio/charset/Charset;
    .restart local v11    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v12    # "temporaryFile":Ljava/io/File;
    .restart local v13    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "currentFileCopyPointer":J
    :cond_2
    move-object/from16 v24, v9

    move-object v15, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    .end local v9    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    .end local v10    # "charset":Ljava/nio/charset/Charset;
    .end local v11    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v12    # "temporaryFile":Ljava/io/File;
    .end local v13    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "charset":Ljava/nio/charset/Charset;
    .restart local v24    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    .restart local v27    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v28    # "temporaryFile":Ljava/io/File;
    .restart local v29    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_7
    iget-object v0, v14, Lnet/lingala/zip4j/tasks/RenameFilesTask;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    iget-object v1, v14, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-object/from16 v3, v27

    .end local v27    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .local v3, "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    :try_start_8
    invoke-virtual {v0, v1, v3, v15}, Lnet/lingala/zip4j/headers/HeaderWriter;->finalizeZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 84
    const/4 v1, 0x1

    .line 85
    .end local v15    # "charset":Ljava/nio/charset/Charset;
    .end local v16    # "successFlag":Z
    .end local v18    # "currentFileCopyPointer":J
    .end local v24    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    .local v1, "successFlag":Z
    :try_start_9
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .end local v3    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    :try_start_a
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 86
    .end local v2    # "inputStream":Ljava/io/RandomAccessFile;
    iget-object v0, v14, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v0

    move-object/from16 v4, v28

    .end local v28    # "temporaryFile":Ljava/io/File;
    .local v4, "temporaryFile":Ljava/io/File;
    invoke-virtual {v14, v1, v0, v4}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->cleanupFile(ZLjava/io/File;Ljava/io/File;)V

    .line 87
    nop

    .line 89
    return-void

    .line 86
    .end local v4    # "temporaryFile":Ljava/io/File;
    .restart local v28    # "temporaryFile":Ljava/io/File;
    :catchall_3
    move-exception v0

    move-object/from16 v4, v28

    .end local v28    # "temporaryFile":Ljava/io/File;
    .restart local v4    # "temporaryFile":Ljava/io/File;
    goto :goto_6

    .line 47
    .end local v4    # "temporaryFile":Ljava/io/File;
    .restart local v2    # "inputStream":Ljava/io/RandomAccessFile;
    .restart local v28    # "temporaryFile":Ljava/io/File;
    :catchall_4
    move-exception v0

    move-object/from16 v4, v28

    move/from16 v16, v1

    move-object v1, v0

    .end local v28    # "temporaryFile":Ljava/io/File;
    .restart local v4    # "temporaryFile":Ljava/io/File;
    goto :goto_4

    .end local v1    # "successFlag":Z
    .end local v4    # "temporaryFile":Ljava/io/File;
    .restart local v3    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v16    # "successFlag":Z
    .restart local v28    # "temporaryFile":Ljava/io/File;
    :catchall_5
    move-exception v0

    move-object/from16 v4, v28

    move-object v1, v0

    .end local v28    # "temporaryFile":Ljava/io/File;
    .restart local v4    # "temporaryFile":Ljava/io/File;
    goto :goto_2

    .end local v3    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v4    # "temporaryFile":Ljava/io/File;
    .restart local v27    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v28    # "temporaryFile":Ljava/io/File;
    :catchall_6
    move-exception v0

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    move-object v1, v0

    .end local v27    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v28    # "temporaryFile":Ljava/io/File;
    .restart local v3    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v4    # "temporaryFile":Ljava/io/File;
    goto :goto_2

    .end local v3    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v4    # "temporaryFile":Ljava/io/File;
    .end local v29    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v12    # "temporaryFile":Ljava/io/File;
    .restart local v13    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_7
    move-exception v0

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v29, v13

    move-object v1, v0

    .end local v11    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v12    # "temporaryFile":Ljava/io/File;
    .end local v13    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v4    # "temporaryFile":Ljava/io/File;
    .restart local v29    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    :try_start_b
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    goto :goto_3

    :catchall_8
    move-exception v0

    move-object v5, v0

    :try_start_c
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "inputStream":Ljava/io/RandomAccessFile;
    .end local v4    # "temporaryFile":Ljava/io/File;
    .end local v16    # "successFlag":Z
    .end local v29    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p1    # "taskParameters":Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;
    .end local p2    # "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    :goto_3
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .end local v3    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v2    # "inputStream":Ljava/io/RandomAccessFile;
    .restart local v4    # "temporaryFile":Ljava/io/File;
    .restart local v16    # "successFlag":Z
    .restart local v29    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p1    # "taskParameters":Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;
    .restart local p2    # "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    :catchall_9
    move-exception v0

    move-object v1, v0

    goto :goto_4

    .end local v4    # "temporaryFile":Ljava/io/File;
    .end local v29    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "temporaryFile":Ljava/io/File;
    .restart local v13    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_a
    move-exception v0

    move-object v4, v12

    move-object/from16 v29, v13

    move-object v1, v0

    .end local v12    # "temporaryFile":Ljava/io/File;
    .end local v13    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "temporaryFile":Ljava/io/File;
    .restart local v29    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_4
    :try_start_d
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    goto :goto_5

    :catchall_b
    move-exception v0

    move-object v3, v0

    :try_start_e
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "temporaryFile":Ljava/io/File;
    .end local v16    # "successFlag":Z
    .end local v29    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p1    # "taskParameters":Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;
    .end local p2    # "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    :goto_5
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    .line 86
    .end local v2    # "inputStream":Ljava/io/RandomAccessFile;
    .restart local v4    # "temporaryFile":Ljava/io/File;
    .restart local v16    # "successFlag":Z
    .restart local v29    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p1    # "taskParameters":Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;
    .restart local p2    # "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    :catchall_c
    move-exception v0

    move/from16 v1, v16

    goto :goto_6

    .end local v4    # "temporaryFile":Ljava/io/File;
    .end local v29    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "temporaryFile":Ljava/io/File;
    .restart local v13    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_d
    move-exception v0

    move-object v4, v12

    move-object/from16 v29, v13

    move/from16 v1, v16

    .end local v12    # "temporaryFile":Ljava/io/File;
    .end local v13    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "successFlag":Z
    .restart local v1    # "successFlag":Z
    .restart local v4    # "temporaryFile":Ljava/io/File;
    .restart local v29    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_6
    iget-object v2, v14, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v14, v1, v2, v4}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->cleanupFile(ZLjava/io/File;Ljava/io/File;)V

    .line 87
    throw v0
.end method

.method protected getTask()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .locals 1

    .line 98
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->RENAME_FILE:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object v0
.end method
