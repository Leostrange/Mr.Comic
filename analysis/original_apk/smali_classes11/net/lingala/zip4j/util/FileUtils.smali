.class public Lnet/lingala/zip4j/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final DEFAULT_POSIX_FILE_ATTRIBUTES:[B

.field public static final DEFAULT_POSIX_FOLDER_ATTRIBUTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lnet/lingala/zip4j/util/FileUtils;->DEFAULT_POSIX_FILE_ATTRIBUTES:[B

    .line 48
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lnet/lingala/zip4j/util/FileUtils;->DEFAULT_POSIX_FOLDER_ATTRIBUTES:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        -0x5ct
        -0x7ft
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        -0x13t
        0x41t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V
    .locals 1
    .param p0, "b"    # B
    .param p1, "pos"    # I
    .param p3, "posixFilePermissionToAdd"    # Ljava/nio/file/attribute/PosixFilePermission;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BI",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ")V"
        }
    .end annotation

    .line 598
    .local p2, "posixFilePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    invoke-static {p0, p1}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 601
    :cond_0
    return-void
.end method

.method private static applyPosixFileAttributes(Ljava/nio/file/Path;[B)V
    .locals 7
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "fileAttributes"    # [B

    .line 491
    const/4 v0, 0x2

    aget-byte v1, p1, v0

    const/4 v2, 0x3

    if-nez v1, :cond_0

    aget-byte v1, p1, v2

    if-nez v1, :cond_0

    .line 493
    return-void

    .line 497
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 498
    .local v1, "posixFilePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    aget-byte v3, p1, v2

    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v5, 0x0

    invoke-static {v3, v5, v1, v4}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 499
    aget-byte v3, p1, v0

    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v6, 0x7

    invoke-static {v3, v6, v1, v4}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 500
    aget-byte v3, p1, v0

    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v6, 0x6

    invoke-static {v3, v6, v1, v4}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 501
    aget-byte v3, p1, v0

    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v6, 0x5

    invoke-static {v3, v6, v1, v4}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 502
    aget-byte v3, p1, v0

    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v6, 0x4

    invoke-static {v3, v6, v1, v4}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 503
    aget-byte v3, p1, v0

    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v3, v2, v1, v4}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 504
    aget-byte v2, p1, v0

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v2, v0, v1, v3}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 505
    aget-byte v2, p1, v0

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v4, 0x1

    invoke-static {v2, v4, v1, v3}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 506
    aget-byte v0, p1, v0

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v0, v5, v1, v2}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 507
    invoke-static {p0, v1}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    nop

    .end local v1    # "posixFilePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    .line 511
    :goto_0
    return-void
.end method

.method private static applyWindowsFileAttributes(Ljava/nio/file/Path;[B)V
    .locals 5
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "fileAttributes"    # [B

    .line 465
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    .line 467
    return-void

    .line 470
    :cond_0
    const-class v1, Ljava/nio/file/attribute/DosFileAttributeView;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/nio/file/LinkOption;

    sget-object v4, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v4, v3, v0

    invoke-static {p0, v1, v3}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v1

    check-cast v1, Ljava/nio/file/attribute/DosFileAttributeView;

    .line 476
    .local v1, "fileAttributeView":Ljava/nio/file/attribute/DosFileAttributeView;
    if-nez v1, :cond_1

    .line 477
    return-void

    .line 481
    :cond_1
    :try_start_0
    aget-byte v3, p1, v0

    invoke-static {v3, v0}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v3

    invoke-interface {v1, v3}, Ljava/nio/file/attribute/DosFileAttributeView;->setReadOnly(Z)V

    .line 482
    aget-byte v3, p1, v0

    invoke-static {v3, v2}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v2

    invoke-interface {v1, v2}, Ljava/nio/file/attribute/DosFileAttributeView;->setHidden(Z)V

    .line 483
    aget-byte v2, p1, v0

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v2

    invoke-interface {v1, v2}, Ljava/nio/file/attribute/DosFileAttributeView;->setSystem(Z)V

    .line 484
    aget-byte v0, p1, v0

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v0

    invoke-interface {v1, v0}, Ljava/nio/file/attribute/DosFileAttributeView;->setArchive(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    goto :goto_0

    .line 485
    :catch_0
    move-exception v0

    .line 488
    :goto_0
    return-void
.end method

.method private static assertFileExists(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 542
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    return-void

    .line 543
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static assertFilesExist(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;)V
    .locals 3
    .param p1, "symLinkAction"    # Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 353
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 354
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lnet/lingala/zip4j/util/FileUtils;->isSymbolicLink(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    sget-object v2, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINK_AND_LINKED_FILE:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    invoke-virtual {p1, v2}, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINKED_FILE_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 358
    invoke-virtual {p1, v2}, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 359
    :cond_0
    invoke-static {v1}, Lnet/lingala/zip4j/util/FileUtils;->assertSymbolicLinkTargetExists(Ljava/io/File;)V

    goto :goto_1

    .line 362
    :cond_1
    invoke-static {v1}, Lnet/lingala/zip4j/util/FileUtils;->assertFileExists(Ljava/io/File;)V

    .line 364
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    :goto_1
    goto :goto_0

    .line 365
    :cond_3
    return-void
.end method

.method private static assertSymbolicLinkTargetExists(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 548
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    return-void

    .line 549
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Symlink target \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lnet/lingala/zip4j/util/FileUtils;->readSymbolicLink(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist for link \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)V
    .locals 15
    .param p0, "randomAccessFile"    # Ljava/io/RandomAccessFile;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p7, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 307
    move-object v1, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p6

    move/from16 v5, p7

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-ltz v0, :cond_6

    cmp-long v0, p4, v6

    if-ltz v0, :cond_6

    cmp-long v0, v2, p4

    if-gtz v0, :cond_6

    .line 311
    cmp-long v0, v2, p4

    if-nez v0, :cond_0

    .line 312
    return-void

    .line 316
    :cond_0
    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 320
    const-wide/16 v6, 0x0

    .line 321
    .local v6, "bytesRead":J
    sub-long v8, p4, v2

    .line 323
    .local v8, "bytesToRead":J
    sub-long v10, p4, v2

    int-to-long v12, v5

    cmp-long v0, v10, v12

    if-gez v0, :cond_1

    .line 324
    long-to-int v0, v8

    new-array v0, v0, [B

    .local v0, "buff":[B
    goto :goto_0

    .line 326
    .end local v0    # "buff":[B
    :cond_1
    new-array v0, v5, [B

    .line 329
    .restart local v0    # "buff":[B
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v11, v10

    .local v11, "readLen":I
    const/4 v12, -0x1

    if-eq v10, v12, :cond_5

    .line 330
    const/4 v10, 0x0

    move-object/from16 v12, p1

    :try_start_1
    invoke-virtual {v12, v0, v10, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 332
    int-to-long v13, v11

    invoke-virtual {v4, v13, v14}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V

    .line 333
    invoke-virtual/range {p6 .. p6}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 334
    sget-object v10, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->CANCELLED:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    invoke-virtual {v4, v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(Lnet/lingala/zip4j/progress/ProgressMonitor$Result;)V

    .line 335
    return-void

    .line 338
    :cond_3
    int-to-long v13, v11

    add-long/2addr v6, v13

    .line 340
    cmp-long v10, v6, v8

    if-nez v10, :cond_4

    .line 341
    goto :goto_1

    .line 342
    :cond_4
    array-length v10, v0

    int-to-long v13, v10

    add-long/2addr v13, v6

    cmp-long v10, v13, v8

    if-lez v10, :cond_2

    .line 343
    sub-long v13, v8, v6

    long-to-int v10, v13

    new-array v10, v10, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v10

    goto :goto_0

    .line 347
    .end local v0    # "buff":[B
    .end local v6    # "bytesRead":J
    .end local v8    # "bytesToRead":J
    .end local v11    # "readLen":I
    :catch_0
    move-exception v0

    goto :goto_2

    .line 329
    .restart local v0    # "buff":[B
    .restart local v6    # "bytesRead":J
    .restart local v8    # "bytesToRead":J
    .restart local v11    # "readLen":I
    :cond_5
    move-object/from16 v12, p1

    .line 349
    .end local v0    # "buff":[B
    .end local v6    # "bytesRead":J
    .end local v8    # "bytesToRead":J
    .end local v11    # "readLen":I
    :goto_1
    nop

    .line 350
    return-void

    .line 347
    :catch_1
    move-exception v0

    move-object/from16 v12, p1

    .line 348
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v6, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 307
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    move-object/from16 v12, p1

    .line 308
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v6, "invalid offsets"

    invoke-direct {v0, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAllSortedNumberedSplitFiles(Ljava/io/File;)[Ljava/io/File;
    .locals 3
    .param p0, "firstNumberedFile"    # Ljava/io/File;

    .line 388
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/util/FileUtils;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "zipFileNameWithoutExtension":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Lnet/lingala/zip4j/util/FileUtils$1;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/util/FileUtils$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 396
    .local v1, "allSplitFiles":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 397
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/io/File;

    return-object v2

    .line 400
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 402
    return-object v1
.end method

.method public static getDefaultFileAttributes(Z)[B
    .locals 4
    .param p0, "isDirectory"    # Z

    .line 426
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 427
    .local v1, "permissions":[B
    invoke-static {}, Lnet/lingala/zip4j/util/FileUtils;->isUnix()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-static {}, Lnet/lingala/zip4j/util/FileUtils;->isMac()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    invoke-static {}, Lnet/lingala/zip4j/util/FileUtils;->isWindows()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p0, :cond_3

    .line 434
    aget-byte v2, v1, v3

    invoke-static {v2, v0}, Lnet/lingala/zip4j/util/BitUtils;->setBit(BI)B

    move-result v0

    aput-byte v0, v1, v3

    goto :goto_1

    .line 428
    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 429
    sget-object v0, Lnet/lingala/zip4j/util/FileUtils;->DEFAULT_POSIX_FOLDER_ATTRIBUTES:[B

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 431
    :cond_2
    sget-object v0, Lnet/lingala/zip4j/util/FileUtils;->DEFAULT_POSIX_FILE_ATTRIBUTES:[B

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    :cond_3
    :goto_1
    return-object v1
.end method

.method private static getExtensionZerosPrefix(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .line 455
    const/16 v0, 0x9

    if-ge p0, v0, :cond_0

    .line 456
    const-string v0, "00"

    return-object v0

    .line 457
    :cond_0
    const/16 v0, 0x63

    if-ge p0, v0, :cond_1

    .line 458
    const-string v0, "0"

    return-object v0

    .line 460
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static getFileAttributes(Ljava/io/File;)[B
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 80
    const/4 v0, 0x4

    if-eqz p0, :cond_4

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 84
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 86
    .local v1, "path":Ljava/nio/file/Path;
    invoke-static {}, Lnet/lingala/zip4j/util/FileUtils;->isWindows()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    invoke-static {v1}, Lnet/lingala/zip4j/util/FileUtils;->getWindowsFileAttributes(Ljava/nio/file/Path;)[B

    move-result-object v0

    return-object v0

    .line 88
    :cond_1
    invoke-static {}, Lnet/lingala/zip4j/util/FileUtils;->isMac()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lnet/lingala/zip4j/util/FileUtils;->isUnix()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 91
    :cond_2
    new-array v0, v0, [B

    return-object v0

    .line 89
    :cond_3
    :goto_0
    invoke-static {v1}, Lnet/lingala/zip4j/util/FileUtils;->getPosixFileAttributes(Ljava/nio/file/Path;)[B

    move-result-object v0

    return-object v0

    .line 81
    .end local v1    # "path":Ljava/nio/file/Path;
    :cond_4
    :goto_1
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    new-array v0, v0, [B

    return-object v0
.end method

.method public static getFileExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 372
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 375
    const-string v1, ""

    return-object v1

    .line 378
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .line 137
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 138
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 139
    return-object p0

    .line 142
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFilesInDirectoryRecursive(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/util/List;
    .locals 8
    .param p0, "path"    # Ljava/io/File;
    .param p1, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lnet/lingala/zip4j/model/ZipParameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 101
    if-eqz p0, :cond_8

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 108
    .local v1, "filesAndDirs":[Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v1, :cond_0

    goto :goto_2

    .line 112
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    .line 113
    .local v4, "file":Ljava/io/File;
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getExcludeFileFilter()Lnet/lingala/zip4j/model/ExcludeFileFilter;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getExcludeFileFilter()Lnet/lingala/zip4j/model/ExcludeFileFilter;

    move-result-object v5

    invoke-interface {v5, v4}, Lnet/lingala/zip4j/model/ExcludeFileFilter;->isExcluded(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 114
    goto :goto_1

    .line 117
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isReadHiddenFiles()Z

    move-result v5

    if-nez v5, :cond_2

    .line 118
    goto :goto_1

    .line 121
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getSymbolicLinkAction()Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    move-result-object v5

    .line 124
    .local v5, "symbolicLinkAction":Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;
    invoke-static {v4}, Lnet/lingala/zip4j/util/FileUtils;->isSymbolicLink(Ljava/io/File;)Z

    move-result v6

    .line 127
    .local v6, "isSymLink":Z
    if-eqz v6, :cond_3

    sget-object v7, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINK_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    invoke-virtual {v7, v5}, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    if-nez v6, :cond_5

    .line 128
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 129
    :cond_4
    invoke-static {v4, p1}, Lnet/lingala/zip4j/util/FileUtils;->getFilesInDirectoryRecursive(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "symbolicLinkAction":Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;
    .end local v6    # "isSymLink":Z
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    :cond_6
    return-object v0

    .line 109
    :cond_7
    :goto_2
    return-object v0

    .line 102
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v1    # "filesAndDirs":[Ljava/io/File;
    :cond_8
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input path is null, cannot read files in the directory"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getNameOfFileInZip(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fileToAdd"    # Ljava/io/File;
    .param p1, "fileNameInZip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    return-object p1

    .line 293
    :cond_0
    invoke-static {p0}, Lnet/lingala/zip4j/util/FileUtils;->isSymbolicLink(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 297
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNextNumberedSplitFileCounterAsExtension(I)Ljava/lang/String;
    .locals 2
    .param p0, "index"    # I

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lnet/lingala/zip4j/util/FileUtils;->getExtensionZerosPrefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPosixFileAttributes(Ljava/nio/file/Path;)[B
    .locals 14
    .param p0, "file"    # Ljava/nio/file/Path;

    .line 554
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 557
    .local v1, "fileAttributes":[B
    :try_start_0
    const-class v2, Ljava/nio/file/attribute/PosixFileAttributeView;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/nio/file/LinkOption;

    sget-object v5, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p0, v2, v4}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v2

    check-cast v2, Ljava/nio/file/attribute/PosixFileAttributeView;

    .line 559
    .local v2, "posixFileAttributeView":Ljava/nio/file/attribute/PosixFileAttributeView;
    invoke-interface {v2}, Ljava/nio/file/attribute/PosixFileAttributeView;->readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    move-result-object v4

    .line 561
    .local v4, "posixFilePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v5

    .line 562
    .local v5, "isSymlink":Z
    const/4 v7, 0x6

    const/4 v8, 0x7

    const/4 v9, 0x3

    if-eqz v5, :cond_0

    .line 564
    aget-byte v10, v1, v9

    invoke-static {v10, v8}, Lnet/lingala/zip4j/util/BitUtils;->setBit(BI)B

    move-result v10

    aput-byte v10, v1, v9

    .line 565
    aget-byte v10, v1, v9

    invoke-static {v10, v7}, Lnet/lingala/zip4j/util/BitUtils;->unsetBit(BI)B

    move-result v10

    aput-byte v10, v1, v9

    goto :goto_0

    .line 567
    :cond_0
    new-array v10, v6, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v10}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v10

    aget-byte v11, v1, v9

    invoke-static {v10, v11, v8}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v10

    aput-byte v10, v1, v9

    .line 568
    new-array v10, v6, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v10}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v10

    aget-byte v11, v1, v9

    invoke-static {v10, v11, v7}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v10

    aput-byte v10, v1, v9

    .line 571
    :goto_0
    aget-byte v10, v1, v9

    const/4 v11, 0x5

    invoke-static {v5, v10, v11}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v10

    aput-byte v10, v1, v9

    .line 572
    sget-object v10, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    aget-byte v12, v1, v9

    invoke-static {v10, v12, v6}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v10

    aput-byte v10, v1, v9

    .line 573
    sget-object v10, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    const/4 v12, 0x2

    aget-byte v13, v1, v12

    invoke-static {v10, v13, v8}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v8

    aput-byte v8, v1, v12

    .line 574
    sget-object v8, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    aget-byte v10, v1, v12

    invoke-static {v8, v10, v7}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v7

    aput-byte v7, v1, v12

    .line 575
    sget-object v7, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    aget-byte v8, v1, v12

    invoke-static {v7, v8, v11}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v7

    aput-byte v7, v1, v12

    .line 576
    sget-object v7, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    aget-byte v8, v1, v12

    invoke-static {v7, v8, v0}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v0

    aput-byte v0, v1, v12

    .line 577
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    aget-byte v7, v1, v12

    invoke-static {v0, v7, v9}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v0

    aput-byte v0, v1, v12

    .line 578
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    aget-byte v7, v1, v12

    invoke-static {v0, v7, v12}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v0

    aput-byte v0, v1, v12

    .line 579
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    aget-byte v7, v1, v12

    invoke-static {v0, v7, v3}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v0

    aput-byte v0, v1, v12

    .line 580
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    aget-byte v3, v1, v12

    invoke-static {v0, v3, v6}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v0

    aput-byte v0, v1, v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    .end local v2    # "posixFileAttributeView":Ljava/nio/file/attribute/PosixFileAttributeView;
    .end local v4    # "posixFilePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    .end local v5    # "isSymlink":Z
    goto :goto_1

    .line 581
    :catch_0
    move-exception v0

    .line 585
    :goto_1
    return-object v1
.end method

.method public static getRelativeFileName(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/lang/String;
    .locals 10
    .param p0, "fileToAdd"    # Ljava/io/File;
    .param p1, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 210
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "fileCanonicalPath":Ljava/lang/String;
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getDefaultFolderPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "\\\\"

    const-string v3, "/"

    if-eqz v1, :cond_5

    .line 212
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getDefaultFolderPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v1, "rootFolderFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "rootFolderFileRef":Ljava/lang/String;
    sget-object v5, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 221
    :cond_0
    invoke-static {p0}, Lnet/lingala/zip4j/util/FileUtils;->isSymbolicLink(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 222
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "rootPath":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 224
    .local v5, "tmpFileName":Ljava/lang/String;
    goto :goto_0

    .line 225
    .end local v5    # "tmpFileName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "tmpFileName":Ljava/lang/String;
    goto :goto_0

    .line 228
    .end local v5    # "tmpFileName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 232
    .restart local v5    # "tmpFileName":Ljava/lang/String;
    :goto_0
    const-string v6, "file.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 233
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 236
    :cond_3
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v6, "tmpFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 239
    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    goto :goto_1

    .line 242
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, "bkFileName":Ljava/lang/String;
    invoke-virtual {v7, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 244
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lnet/lingala/zip4j/util/FileUtils;->getNameOfFileInZip(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 247
    .end local v7    # "bkFileName":Ljava/lang/String;
    :goto_1
    move-object v1, v5

    .line 248
    .end local v4    # "rootFolderFileRef":Ljava/lang/String;
    .end local v5    # "tmpFileName":Ljava/lang/String;
    .end local v6    # "tmpFile":Ljava/io/File;
    .local v1, "fileName":Ljava/lang/String;
    goto :goto_2

    .line 249
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local v1, "relFile":Ljava/io/File;
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lnet/lingala/zip4j/util/FileUtils;->getNameOfFileInZip(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, "fileName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 252
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v5

    move-object v1, v4

    goto :goto_2

    .line 251
    :cond_6
    move-object v1, v4

    .line 257
    .end local v0    # "fileCanonicalPath":Ljava/lang/String;
    .end local v4    # "fileName":Ljava/lang/String;
    .local v1, "fileName":Ljava/lang/String;
    :goto_2
    nop

    .line 259
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getRootFolderNameInZip()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "rootFolderNameInZip":Ljava/lang/String;
    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 261
    const-string v4, "\\"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    :cond_7
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    :cond_8
    invoke-static {v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileName to add to zip is empty or null. fileName: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' DefaultFolderPath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 271
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getDefaultFolderPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' FileNameInZip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 272
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "errorMessage":Ljava/lang/String;
    invoke-static {p0}, Lnet/lingala/zip4j/util/FileUtils;->isSymbolicLink(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "isSymlink: true "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 278
    :cond_9
    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rootFolderNameInZip: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 282
    :cond_a
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v3, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 285
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_b
    return-object v1

    .line 255
    .end local v0    # "rootFolderNameInZip":Ljava/lang/String;
    .end local v1    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getSplitZipFiles(Lnet/lingala/zip4j/model/ZipModel;)Ljava/util/List;
    .locals 8
    .param p0, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/lingala/zip4j/model/ZipModel;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 161
    if-eqz p0, :cond_8

    .line 165
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_0
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "splitZipFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v1

    .line 177
    .local v1, "currZipFile":Ljava/io/File;
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 178
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    return-object v0

    .line 182
    :cond_1
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result v2

    .line 184
    .local v2, "numberOfThisDisk":I
    if-nez v2, :cond_2

    .line 185
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    return-object v0

    .line 188
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-gt v3, v2, :cond_6

    .line 189
    if-ne v3, v2, :cond_3

    .line 190
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 192
    :cond_3
    const-string v4, ".z0"

    .line 193
    .local v4, "fileExt":Ljava/lang/String;
    const/16 v5, 0x9

    if-lt v3, v5, :cond_4

    .line 194
    const-string v4, ".z"

    .line 196
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 197
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 198
    .local v5, "partFile":Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 199
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v4    # "fileExt":Ljava/lang/String;
    .end local v5    # "partFile":Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    .end local v3    # "i":I
    :cond_6
    return-object v0

    .line 170
    .end local v0    # "splitZipFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v1    # "currZipFile":Ljava/io/File;
    .end local v2    # "numberOfThisDisk":I
    :cond_7
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "zip file does not exist"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_8
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "cannot get split zip files: zipmodel is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getWindowsFileAttributes(Ljava/nio/file/Path;)[B
    .locals 8
    .param p0, "file"    # Ljava/nio/file/Path;

    .line 514
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 517
    .local v1, "fileAttributes":[B
    :try_start_0
    const-class v2, Ljava/nio/file/attribute/DosFileAttributeView;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/nio/file/LinkOption;

    sget-object v5, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p0, v2, v4}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v2

    check-cast v2, Ljava/nio/file/attribute/DosFileAttributeView;

    .line 520
    .local v2, "dosFileAttributeView":Ljava/nio/file/attribute/DosFileAttributeView;
    if-nez v2, :cond_0

    .line 521
    return-object v1

    .line 524
    :cond_0
    invoke-interface {v2}, Ljava/nio/file/attribute/DosFileAttributeView;->readAttributes()Ljava/nio/file/attribute/DosFileAttributes;

    move-result-object v4

    .line 526
    .local v4, "dosFileAttributes":Ljava/nio/file/attribute/DosFileAttributes;
    const/4 v5, 0x0

    .line 528
    .local v5, "windowsAttribute":B
    invoke-interface {v4}, Ljava/nio/file/attribute/DosFileAttributes;->isReadOnly()Z

    move-result v7

    invoke-static {v7, v5, v6}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v7

    move v5, v7

    .line 529
    invoke-interface {v4}, Ljava/nio/file/attribute/DosFileAttributes;->isHidden()Z

    move-result v7

    invoke-static {v7, v5, v3}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v3

    .line 530
    .end local v5    # "windowsAttribute":B
    .local v3, "windowsAttribute":B
    invoke-interface {v4}, Ljava/nio/file/attribute/DosFileAttributes;->isSystem()Z

    move-result v5

    const/4 v7, 0x2

    invoke-static {v5, v3, v7}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v5

    move v3, v5

    .line 531
    invoke-interface {v4}, Ljava/nio/file/attribute/DosFileAttributes;->isDirectory()Z

    move-result v5

    invoke-static {v5, v3, v0}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v0

    .line 532
    .end local v3    # "windowsAttribute":B
    .local v0, "windowsAttribute":B
    invoke-interface {v4}, Ljava/nio/file/attribute/DosFileAttributes;->isArchive()Z

    move-result v3

    const/4 v5, 0x5

    invoke-static {v3, v0, v5}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v3

    move v0, v3

    .line 533
    aput-byte v0, v1, v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    .end local v0    # "windowsAttribute":B
    .end local v2    # "dosFileAttributeView":Ljava/nio/file/attribute/DosFileAttributeView;
    .end local v4    # "dosFileAttributes":Ljava/nio/file/attribute/DosFileAttributes;
    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    .line 538
    :goto_0
    return-object v1
.end method

.method public static getZipFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "zipFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 146
    invoke-static {p0}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    move-object v0, p0

    .line 150
    .local v0, "tmpFileName":Ljava/lang/String;
    const-string v1, "file.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_0
    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_1
    return-object v0

    .line 147
    .end local v0    # "tmpFileName":Ljava/lang/String;
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "zip file name is empty or null, cannot determine zip file name"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isMac()Z
    .locals 2

    .line 445
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "os":Ljava/lang/String;
    const-string v1, "mac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isNumberedSplitFile(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 368
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip.001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSymbolicLink(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 411
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 412
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isUnix()Z
    .locals 2

    .line 450
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "os":Ljava/lang/String;
    const-string v1, "nux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isWindows()Z
    .locals 2

    .line 440
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "os":Ljava/lang/String;
    const-string v1, "win"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isZipEntryDirectory(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fileNameInZip"    # Ljava/lang/String;

    .line 301
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\\"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static readSymbolicLink(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 419
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 420
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    const-string v1, ""

    return-object v1
.end method

.method private static setBitIfApplicable(ZBI)B
    .locals 0
    .param p0, "applicable"    # Z
    .param p1, "b"    # B
    .param p2, "pos"    # I

    .line 589
    if-eqz p0, :cond_0

    .line 590
    invoke-static {p1, p2}, Lnet/lingala/zip4j/util/BitUtils;->setBit(BI)B

    move-result p1

    .line 593
    :cond_0
    return p1
.end method

.method public static setFileAttributes(Ljava/nio/file/Path;[B)V
    .locals 1
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "fileAttributes"    # [B

    .line 51
    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    invoke-static {}, Lnet/lingala/zip4j/util/FileUtils;->isWindows()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-static {p0, p1}, Lnet/lingala/zip4j/util/FileUtils;->applyWindowsFileAttributes(Ljava/nio/file/Path;[B)V

    goto :goto_0

    .line 57
    :cond_1
    invoke-static {}, Lnet/lingala/zip4j/util/FileUtils;->isMac()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lnet/lingala/zip4j/util/FileUtils;->isUnix()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    :cond_2
    invoke-static {p0, p1}, Lnet/lingala/zip4j/util/FileUtils;->applyPosixFileAttributes(Ljava/nio/file/Path;[B)V

    .line 60
    :cond_3
    :goto_0
    return-void

    .line 52
    :cond_4
    :goto_1
    return-void
.end method

.method public static setFileLastModifiedTime(Ljava/nio/file/Path;J)V
    .locals 2
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "lastModifiedTime"    # J

    .line 63
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->dosToExtendedEpochTme(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/nio/file/Files;->setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 72
    :goto_0
    return-void

    .line 64
    :cond_1
    :goto_1
    return-void
.end method

.method public static setFileLastModifiedTimeWithoutNio(Ljava/io/File;J)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "lastModifiedTime"    # J

    .line 75
    invoke-static {p1, p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->dosToExtendedEpochTme(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 76
    return-void
.end method
