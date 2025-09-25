.class public Lcom/github/junrar/unpack/ppm/AnalyzeHeapDump;
.super Ljava/lang/Object;
.source "AnalyzeHeapDump.java"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/github/junrar/rarfile/MainHeader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/junrar/unpack/ppm/AnalyzeHeapDump;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 22
    .param p0, "argv"    # [Ljava/lang/String;

    .line 26
    const-string v1, ""

    new-instance v0, Ljava/io/File;

    const-string v2, "P:\\test\\heapdumpc"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 27
    .local v2, "cfile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v3, "P:\\test\\heapdumpj"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 28
    .local v3, "jfile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v4, "File not found: {}"

    if-nez v0, :cond_0

    .line 29
    sget-object v0, Lcom/github/junrar/unpack/ppm/AnalyzeHeapDump;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    return-void

    .line 32
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    sget-object v0, Lcom/github/junrar/unpack/ppm/AnalyzeHeapDump;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    return-void

    .line 36
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 37
    .local v4, "clen":J
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 38
    .local v6, "jlen":J
    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 39
    sget-object v0, Lcom/github/junrar/unpack/ppm/AnalyzeHeapDump;->logger:Lorg/slf4j/Logger;

    const-string v8, "File size mismatch"

    invoke-interface {v0, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/github/junrar/unpack/ppm/AnalyzeHeapDump;->logger:Lorg/slf4j/Logger;

    const-string v8, "clen = {}"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    sget-object v0, Lcom/github/junrar/unpack/ppm/AnalyzeHeapDump;->logger:Lorg/slf4j/Logger;

    const-string v8, "jlen = {}"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    :cond_2
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 45
    .local v8, "len":J
    const/4 v10, 0x0

    .line 46
    .local v10, "cin":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 47
    .local v11, "jin":Ljava/io/InputStream;
    const/high16 v12, 0x40000

    .line 49
    .local v12, "bufferLen":I
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v13, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v10, v0

    .line 51
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v13, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v0

    .line 53
    const/4 v0, 0x1

    .line 54
    .local v0, "matching":Z
    const/4 v13, 0x0

    .line 55
    .local v13, "mismatchFound":Z
    const-wide/16 v14, 0x0

    .line 56
    .local v14, "startOff":J
    const-wide/16 v16, 0x0

    move-wide/from16 v20, v16

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-wide/from16 v2, v20

    .line 57
    .end local v3    # "jfile":Ljava/io/File;
    .local v2, "off":J
    .local v16, "cfile":Ljava/io/File;
    .local v17, "jfile":Ljava/io/File;
    :goto_0
    cmp-long v18, v2, v8

    if-gez v18, :cond_5

    .line 58
    move-wide/from16 v18, v4

    .end local v4    # "clen":J
    .local v18, "clen":J
    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->read()I

    move-result v4

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 59
    if-eqz v0, :cond_4

    .line 60
    move-wide v4, v2

    .line 61
    .end local v14    # "startOff":J
    .local v4, "startOff":J
    const/4 v0, 0x0

    .line 62
    const/4 v13, 0x1

    move-wide v14, v4

    goto :goto_1

    .line 65
    .end local v4    # "startOff":J
    .restart local v14    # "startOff":J
    :cond_3
    if-nez v0, :cond_4

    .line 66
    invoke-static {v14, v15, v2, v3}, Lcom/github/junrar/unpack/ppm/AnalyzeHeapDump;->printMismatch(JJ)V

    .line 67
    const/4 v0, 0x1

    .line 70
    :cond_4
    :goto_1
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-wide/from16 v4, v18

    goto :goto_0

    .line 79
    .end local v0    # "matching":Z
    .end local v2    # "off":J
    .end local v13    # "mismatchFound":Z
    .end local v14    # "startOff":J
    :catch_0
    move-exception v0

    goto :goto_3

    .line 72
    .end local v18    # "clen":J
    .restart local v0    # "matching":Z
    .restart local v2    # "off":J
    .local v4, "clen":J
    .restart local v13    # "mismatchFound":Z
    .restart local v14    # "startOff":J
    :cond_5
    move-wide/from16 v18, v4

    .end local v4    # "clen":J
    .restart local v18    # "clen":J
    if-nez v0, :cond_6

    .line 73
    invoke-static {v14, v15, v2, v3}, Lcom/github/junrar/unpack/ppm/AnalyzeHeapDump;->printMismatch(JJ)V

    .line 75
    :cond_6
    if-nez v13, :cond_7

    .line 76
    sget-object v4, Lcom/github/junrar/unpack/ppm/AnalyzeHeapDump;->logger:Lorg/slf4j/Logger;

    const-string v5, "Files are identical"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 78
    :cond_7
    sget-object v4, Lcom/github/junrar/unpack/ppm/AnalyzeHeapDump;->logger:Lorg/slf4j/Logger;

    const-string v5, "Done"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    .end local v0    # "matching":Z
    .end local v2    # "off":J
    .end local v13    # "mismatchFound":Z
    .end local v14    # "startOff":J
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 84
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 87
    :goto_2
    goto :goto_4

    .line 85
    :catch_1
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/github/junrar/unpack/ppm/AnalyzeHeapDump;->logger:Lorg/slf4j/Logger;

    invoke-interface {v2, v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 82
    .end local v16    # "cfile":Ljava/io/File;
    .end local v17    # "jfile":Ljava/io/File;
    .end local v18    # "clen":J
    .local v2, "cfile":Ljava/io/File;
    .restart local v3    # "jfile":Ljava/io/File;
    .restart local v4    # "clen":J
    :catchall_0
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move-object v2, v0

    .end local v2    # "cfile":Ljava/io/File;
    .end local v3    # "jfile":Ljava/io/File;
    .end local v4    # "clen":J
    .restart local v16    # "cfile":Ljava/io/File;
    .restart local v17    # "jfile":Ljava/io/File;
    .restart local v18    # "clen":J
    goto :goto_5

    .line 79
    .end local v16    # "cfile":Ljava/io/File;
    .end local v17    # "jfile":Ljava/io/File;
    .end local v18    # "clen":J
    .restart local v2    # "cfile":Ljava/io/File;
    .restart local v3    # "jfile":Ljava/io/File;
    .restart local v4    # "clen":J
    :catch_2
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    .line 80
    .end local v2    # "cfile":Ljava/io/File;
    .end local v3    # "jfile":Ljava/io/File;
    .end local v4    # "clen":J
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v16    # "cfile":Ljava/io/File;
    .restart local v17    # "jfile":Ljava/io/File;
    .restart local v18    # "clen":J
    :goto_3
    :try_start_3
    sget-object v2, Lcom/github/junrar/unpack/ppm/AnalyzeHeapDump;->logger:Lorg/slf4j/Logger;

    invoke-interface {v2, v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    .end local v0    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 84
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 89
    :goto_4
    return-void

    .line 82
    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 83
    :goto_5
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 84
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 87
    goto :goto_6

    .line 85
    :catch_3
    move-exception v0

    .line 86
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/github/junrar/unpack/ppm/AnalyzeHeapDump;->logger:Lorg/slf4j/Logger;

    invoke-interface {v3, v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .end local v0    # "e":Ljava/io/IOException;
    :goto_6
    throw v2
.end method

.method private static printMismatch(JJ)V
    .locals 5
    .param p0, "startOff"    # J
    .param p2, "bytesRead"    # J

    .line 92
    sget-object v0, Lcom/github/junrar/unpack/ppm/AnalyzeHeapDump;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/github/junrar/unpack/ppm/AnalyzeHeapDump;->logger:Lorg/slf4j/Logger;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    sub-long v3, p2, p0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Mismatch: off={}(0x{}), len={}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :cond_0
    return-void
.end method
