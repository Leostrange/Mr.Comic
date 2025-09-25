.class public Lcom/github/junrar/Junrar;
.super Ljava/lang/Object;
.source "Junrar.java"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/github/junrar/Junrar;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/junrar/Junrar;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createArchiveOrThrowException(Lcom/github/junrar/volume/VolumeManager;Ljava/lang/String;)Lcom/github/junrar/Archive;
    .locals 3
    .param p0, "volumeManager"    # Lcom/github/junrar/volume/VolumeManager;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    :try_start_0
    new-instance v0, Lcom/github/junrar/Archive;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/github/junrar/Archive;-><init>(Lcom/github/junrar/volume/VolumeManager;Lcom/github/junrar/UnrarCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/github/junrar/exception/RarException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    sget-object v1, Lcom/github/junrar/Junrar;->logger:Lorg/slf4j/Logger;

    const-string v2, "Error while creating archive"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    throw v0
.end method

.method private static createArchiveOrThrowException(Ljava/io/File;Ljava/lang/String;)Lcom/github/junrar/Archive;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    :try_start_0
    new-instance v0, Lcom/github/junrar/Archive;

    invoke-direct {v0, p0, p1}, Lcom/github/junrar/Archive;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/github/junrar/exception/RarException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    sget-object v1, Lcom/github/junrar/Junrar;->logger:Lorg/slf4j/Logger;

    const-string v2, "Error while creating archive"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    throw v0
.end method

.method private static createArchiveOrThrowException(Ljava/io/InputStream;Ljava/lang/String;)Lcom/github/junrar/Archive;
    .locals 3
    .param p0, "rarAsStream"    # Ljava/io/InputStream;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    :try_start_0
    new-instance v0, Lcom/github/junrar/Archive;

    invoke-direct {v0, p0, p1}, Lcom/github/junrar/Archive;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/github/junrar/exception/RarException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    sget-object v1, Lcom/github/junrar/Junrar;->logger:Lorg/slf4j/Logger;

    const-string v2, "Error while creating archive"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    throw v0
.end method

.method public static extract(Lcom/github/junrar/volume/VolumeManager;Ljava/io/File;)Ljava/util/List;
    .locals 3
    .param p0, "volumeManager"    # Lcom/github/junrar/volume/VolumeManager;
    .param p1, "destinationFolder"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/junrar/volume/VolumeManager;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 58
    invoke-static {p1}, Lcom/github/junrar/Junrar;->validateDestinationPath(Ljava/io/File;)V

    .line 60
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/github/junrar/Junrar;->createArchiveOrThrowException(Lcom/github/junrar/volume/VolumeManager;Ljava/lang/String;)Lcom/github/junrar/Archive;

    move-result-object v0

    .line 61
    .local v0, "arch":Lcom/github/junrar/Archive;
    new-instance v1, Lcom/github/junrar/LocalFolderExtractor;

    invoke-direct {v1, p1}, Lcom/github/junrar/LocalFolderExtractor;-><init>(Ljava/io/File;)V

    .line 62
    .local v1, "lfe":Lcom/github/junrar/LocalFolderExtractor;
    invoke-static {v0, v1}, Lcom/github/junrar/Junrar;->extractArchiveTo(Lcom/github/junrar/Archive;Lcom/github/junrar/LocalFolderExtractor;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static extract(Lcom/github/junrar/volume/VolumeManager;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "volumeManager"    # Lcom/github/junrar/volume/VolumeManager;
    .param p1, "destinationFolder"    # Ljava/io/File;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/junrar/volume/VolumeManager;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 66
    invoke-static {p1}, Lcom/github/junrar/Junrar;->validateDestinationPath(Ljava/io/File;)V

    .line 68
    invoke-static {p0, p2}, Lcom/github/junrar/Junrar;->createArchiveOrThrowException(Lcom/github/junrar/volume/VolumeManager;Ljava/lang/String;)Lcom/github/junrar/Archive;

    move-result-object v0

    .line 69
    .local v0, "arch":Lcom/github/junrar/Archive;
    new-instance v1, Lcom/github/junrar/LocalFolderExtractor;

    invoke-direct {v1, p1}, Lcom/github/junrar/LocalFolderExtractor;-><init>(Ljava/io/File;)V

    .line 70
    .local v1, "lfe":Lcom/github/junrar/LocalFolderExtractor;
    invoke-static {v0, v1}, Lcom/github/junrar/Junrar;->extractArchiveTo(Lcom/github/junrar/Archive;Lcom/github/junrar/LocalFolderExtractor;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static extract(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .locals 1
    .param p0, "rar"    # Ljava/io/File;
    .param p1, "destinationFolder"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/github/junrar/Junrar;->extract(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static extract(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "rar"    # Ljava/io/File;
    .param p1, "destinationFolder"    # Ljava/io/File;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-static {p0}, Lcom/github/junrar/Junrar;->validateRarPath(Ljava/io/File;)V

    .line 38
    invoke-static {p1}, Lcom/github/junrar/Junrar;->validateDestinationPath(Ljava/io/File;)V

    .line 40
    invoke-static {p0, p2}, Lcom/github/junrar/Junrar;->createArchiveOrThrowException(Ljava/io/File;Ljava/lang/String;)Lcom/github/junrar/Archive;

    move-result-object v0

    .line 41
    .local v0, "archive":Lcom/github/junrar/Archive;
    new-instance v1, Lcom/github/junrar/LocalFolderExtractor;

    invoke-direct {v1, p1}, Lcom/github/junrar/LocalFolderExtractor;-><init>(Ljava/io/File;)V

    .line 42
    .local v1, "lfe":Lcom/github/junrar/LocalFolderExtractor;
    invoke-static {v0, v1}, Lcom/github/junrar/Junrar;->extractArchiveTo(Lcom/github/junrar/Archive;Lcom/github/junrar/LocalFolderExtractor;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static extract(Ljava/io/InputStream;Ljava/io/File;)Ljava/util/List;
    .locals 1
    .param p0, "resourceAsStream"    # Ljava/io/InputStream;
    .param p1, "destinationFolder"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/github/junrar/Junrar;->extract(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static extract(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "resourceAsStream"    # Ljava/io/InputStream;
    .param p1, "destinationFolder"    # Ljava/io/File;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-static {p1}, Lcom/github/junrar/Junrar;->validateDestinationPath(Ljava/io/File;)V

    .line 52
    invoke-static {p0, p2}, Lcom/github/junrar/Junrar;->createArchiveOrThrowException(Ljava/io/InputStream;Ljava/lang/String;)Lcom/github/junrar/Archive;

    move-result-object v0

    .line 53
    .local v0, "arch":Lcom/github/junrar/Archive;
    new-instance v1, Lcom/github/junrar/LocalFolderExtractor;

    invoke-direct {v1, p1}, Lcom/github/junrar/LocalFolderExtractor;-><init>(Ljava/io/File;)V

    .line 54
    .local v1, "lfe":Lcom/github/junrar/LocalFolderExtractor;
    invoke-static {v0, v1}, Lcom/github/junrar/Junrar;->extractArchiveTo(Lcom/github/junrar/Archive;Lcom/github/junrar/LocalFolderExtractor;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static extract(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "rarPath"    # Ljava/lang/String;
    .param p1, "destinationPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/github/junrar/Junrar;->extract(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static extract(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "rarPath"    # Ljava/lang/String;
    .param p1, "destinationPath"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 25
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 28
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, p2}, Lcom/github/junrar/Junrar;->extract(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "archive and destination must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static extractArchiveTo(Lcom/github/junrar/Archive;Lcom/github/junrar/LocalFolderExtractor;)Ljava/util/List;
    .locals 5
    .param p0, "arch"    # Lcom/github/junrar/Archive;
    .param p1, "destination"    # Lcom/github/junrar/LocalFolderExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/junrar/Archive;",
            "Lcom/github/junrar/LocalFolderExtractor;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v0, "extractedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/github/junrar/Archive;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/junrar/rarfile/FileHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .local v2, "fh":Lcom/github/junrar/rarfile/FileHeader;
    :try_start_1
    invoke-static {p1, p0, v2}, Lcom/github/junrar/Junrar;->tryToExtract(Lcom/github/junrar/LocalFolderExtractor;Lcom/github/junrar/Archive;Lcom/github/junrar/rarfile/FileHeader;)Ljava/io/File;

    move-result-object v3

    .line 155
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 156
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/github/junrar/exception/RarException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    .end local v3    # "file":Ljava/io/File;
    :cond_0
    nop

    .line 162
    .end local v2    # "fh":Lcom/github/junrar/rarfile/FileHeader;
    goto :goto_0

    .line 158
    .restart local v2    # "fh":Lcom/github/junrar/rarfile/FileHeader;
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    sget-object v3, Lcom/github/junrar/Junrar;->logger:Lorg/slf4j/Logger;

    const-string v4, "error extracting the file"

    invoke-interface {v3, v4, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    nop

    .end local v0    # "extractedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local p0    # "arch":Lcom/github/junrar/Archive;
    .end local p1    # "destination":Lcom/github/junrar/LocalFolderExtractor;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fh":Lcom/github/junrar/rarfile/FileHeader;
    .restart local v0    # "extractedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local p0    # "arch":Lcom/github/junrar/Archive;
    .restart local p1    # "destination":Lcom/github/junrar/LocalFolderExtractor;
    :cond_1
    invoke-virtual {p0}, Lcom/github/junrar/Archive;->close()V

    .line 165
    nop

    .line 166
    return-object v0

    .line 164
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/github/junrar/Archive;->close()V

    .line 165
    throw v1
.end method

.method public static getContentsDescription(Ljava/io/File;)Ljava/util/List;
    .locals 2
    .param p0, "rar"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/junrar/ContentDescription;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-static {p0}, Lcom/github/junrar/Junrar;->validateRarPath(Ljava/io/File;)V

    .line 76
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/github/junrar/Junrar;->createArchiveOrThrowException(Ljava/io/File;Ljava/lang/String;)Lcom/github/junrar/Archive;

    move-result-object v0

    .line 77
    .local v0, "arch":Lcom/github/junrar/Archive;
    invoke-static {v0}, Lcom/github/junrar/Junrar;->getContentsDescriptionFromArchive(Lcom/github/junrar/Archive;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getContentsDescription(Ljava/io/InputStream;)Ljava/util/List;
    .locals 2
    .param p0, "resourceAsStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/junrar/ContentDescription;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/github/junrar/Junrar;->createArchiveOrThrowException(Ljava/io/InputStream;Ljava/lang/String;)Lcom/github/junrar/Archive;

    move-result-object v0

    .line 82
    .local v0, "arch":Lcom/github/junrar/Archive;
    invoke-static {v0}, Lcom/github/junrar/Junrar;->getContentsDescriptionFromArchive(Lcom/github/junrar/Archive;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static getContentsDescriptionFromArchive(Lcom/github/junrar/Archive;)Ljava/util/List;
    .locals 7
    .param p0, "arch"    # Lcom/github/junrar/Archive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/junrar/Archive;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/junrar/ContentDescription;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v0, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/github/junrar/ContentDescription;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/github/junrar/Archive;->isEncrypted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    sget-object v1, Lcom/github/junrar/Junrar;->logger:Lorg/slf4j/Logger;

    const-string v2, "archive is encrypted cannot extract"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-virtual {p0}, Lcom/github/junrar/Archive;->close()V

    .line 90
    return-object v1

    .line 92
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/github/junrar/Archive;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/junrar/rarfile/FileHeader;

    .line 93
    .local v2, "fileHeader":Lcom/github/junrar/rarfile/FileHeader;
    new-instance v3, Lcom/github/junrar/ContentDescription;

    invoke-virtual {v2}, Lcom/github/junrar/rarfile/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/github/junrar/rarfile/FileHeader;->getUnpSize()J

    move-result-wide v5

    invoke-direct {v3, v4, v5, v6}, Lcom/github/junrar/ContentDescription;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    nop

    .end local v2    # "fileHeader":Lcom/github/junrar/rarfile/FileHeader;
    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/github/junrar/Archive;->close()V

    .line 97
    nop

    .line 98
    return-object v0

    .line 96
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/github/junrar/Archive;->close()V

    .line 97
    throw v1
.end method

.method private static tryToExtract(Lcom/github/junrar/LocalFolderExtractor;Lcom/github/junrar/Archive;Lcom/github/junrar/rarfile/FileHeader;)Ljava/io/File;
    .locals 3
    .param p0, "destination"    # Lcom/github/junrar/LocalFolderExtractor;
    .param p1, "arch"    # Lcom/github/junrar/Archive;
    .param p2, "fileHeader"    # Lcom/github/junrar/rarfile/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 174
    invoke-virtual {p2}, Lcom/github/junrar/rarfile/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "fileNameString":Ljava/lang/String;
    sget-object v1, Lcom/github/junrar/Junrar;->logger:Lorg/slf4j/Logger;

    const-string v2, "extracting: {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p2}, Lcom/github/junrar/rarfile/FileHeader;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {p0, p2}, Lcom/github/junrar/LocalFolderExtractor;->createDirectory(Lcom/github/junrar/rarfile/FileHeader;)Ljava/io/File;

    move-result-object v1

    return-object v1

    .line 180
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/junrar/LocalFolderExtractor;->extract(Lcom/github/junrar/Archive;Lcom/github/junrar/rarfile/FileHeader;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private static validateDestinationPath(Ljava/io/File;)V
    .locals 3
    .param p0, "destinationFolder"    # Ljava/io/File;

    .line 129
    if-eqz p0, :cond_1

    .line 132
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the destination must exist and point to a directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "archive and destination must me set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateRarPath(Ljava/io/File;)V
    .locals 3
    .param p0, "rar"    # Ljava/io/File;

    .line 138
    if-eqz p0, :cond_2

    .line 141
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    return-void

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First argument should be a file but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the archive does not exit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "archive and destination must me set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
