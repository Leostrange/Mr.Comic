.class public Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;
.super Lnet/lingala/zip4j/io/inputstream/SplitFileInputStream;
.source "ZipStandardSplitFileInputStream.java"


# instance fields
.field private currentSplitFileCounter:I

.field private isSplitZipArchive:Z

.field private lastSplitZipFileNumber:I

.field protected randomAccessFile:Ljava/io/RandomAccessFile;

.field private singleByteArray:[B

.field protected zipFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;ZI)V
    .locals 2
    .param p1, "zipFile"    # Ljava/io/File;
    .param p2, "isSplitZipArchive"    # Z
    .param p3, "lastSplitZipFileNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/SplitFileInputStream;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->currentSplitFileCounter:I

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->singleByteArray:[B

    .line 24
    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v1, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 25
    iput-object p1, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->zipFile:Ljava/io/File;

    .line 26
    iput-boolean p2, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->isSplitZipArchive:Z

    .line 27
    iput p3, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->lastSplitZipFileNumber:I

    .line 29
    if-eqz p2, :cond_0

    .line 30
    iput p3, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->currentSplitFileCounter:I

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 81
    :cond_0
    return-void
.end method

.method protected getNextSplitFile(I)Ljava/io/File;
    .locals 6
    .param p1, "zipFileIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->lastSplitZipFileNumber:I

    if-ne p1, v0, :cond_0

    .line 94
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->zipFile:Ljava/io/File;

    return-object v0

    .line 97
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "currZipFileNameWithPath":Ljava/lang/String;
    const-string v1, ".z0"

    .line 99
    .local v1, "extensionSubString":Ljava/lang/String;
    const/16 v2, 0x9

    if-lt p1, v2, :cond_1

    .line 100
    const-string v1, ".z"

    .line 103
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 103
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method protected openRandomAccessFileForIndex(I)V
    .locals 4
    .param p1, "zipFileIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->getNextSplitFile(I)Ljava/io/File;

    move-result-object v0

    .line 85
    .local v0, "nextSplitFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 89
    new-instance v1, Ljava/io/RandomAccessFile;

    sget-object v2, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 90
    return-void

    .line 86
    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zip split file does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public prepareExtractionForFileHeader(Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 3
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->isSplitZipArchive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->currentSplitFileCounter:I

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 69
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->openRandomAccessFileForIndex(I)V

    .line 70
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v0

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->currentSplitFileCounter:I

    .line 73
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 74
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->singleByteArray:[B

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->read([B)I

    move-result v0

    .line 37
    .local v0, "readLen":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 38
    return v1

    .line 41
    :cond_0
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->singleByteArray:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 53
    .local v0, "readLen":I
    if-ne v0, p3, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->isSplitZipArchive:Z

    if-eqz v1, :cond_2

    .line 54
    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->currentSplitFileCounter:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->openRandomAccessFileForIndex(I)V

    .line 55
    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->currentSplitFileCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->currentSplitFileCounter:I

    .line 57
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 58
    :cond_1
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    sub-int v2, p3, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 59
    .local v1, "newlyRead":I
    if-lez v1, :cond_2

    add-int/2addr v0, v1

    .line 62
    .end local v1    # "newlyRead":I
    :cond_2
    return v0
.end method
