.class Lcom/github/junrar/LocalFolderExtractor;
.super Ljava/lang/Object;
.source "LocalFolderExtractor.java"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final folderDestination:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/github/junrar/LocalFolderExtractor;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/junrar/LocalFolderExtractor;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "destination"    # Ljava/io/File;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/github/junrar/LocalFolderExtractor;->folderDestination:Ljava/io/File;

    .line 20
    return-void
.end method

.method private createFile(Lcom/github/junrar/rarfile/FileHeader;Ljava/io/File;)Ljava/io/File;
    .locals 7
    .param p1, "fh"    # Lcom/github/junrar/rarfile/FileHeader;
    .param p2, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "dirCanonPath":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 67
    :try_start_0
    invoke-direct {p0, p2, v0}, Lcom/github/junrar/LocalFolderExtractor;->makeFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v3

    .line 69
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lcom/github/junrar/LocalFolderExtractor;->logger:Lorg/slf4j/Logger;

    const-string v5, "error creating the new file: {}"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-object v1

    .line 62
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rar contains file with invalid path: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "errorMessage":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private makeFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p1, "destination"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    const-string v0, "\\\\"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "dirs":[Ljava/lang/String;
    const-string v1, ""

    .line 78
    .local v1, "path":Ljava/lang/String;
    array-length v2, v0

    .line 79
    .local v2, "size":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 80
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v3

    .line 81
    :cond_0
    if-le v2, v3, :cond_2

    .line 82
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    sub-int/2addr v5, v3

    if-ge v4, v5, :cond_1

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    .local v5, "dir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 82
    .end local v5    # "dir":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    .end local v4    # "i":I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    sub-int/2addr v5, v3

    aget-object v3, v0, v5

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 90
    return-object v3

    .line 92
    .end local v3    # "f":Ljava/io/File;
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method createDirectory(Lcom/github/junrar/rarfile/FileHeader;)Ljava/io/File;
    .locals 5
    .param p1, "fh"    # Lcom/github/junrar/rarfile/FileHeader;

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 28
    :cond_0
    if-nez v0, :cond_1

    .line 29
    const/4 v1, 0x0

    return-object v1

    .line 32
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/github/junrar/LocalFolderExtractor;->folderDestination:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .local v1, "f":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "fileCanonPath":Ljava/lang/String;
    iget-object v3, p0, Lcom/github/junrar/LocalFolderExtractor;->folderDestination:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    .end local v2    # "fileCanonPath":Ljava/lang/String;
    nop

    .line 43
    return-object v1

    .line 36
    .restart local v2    # "fileCanonPath":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rar contains invalid path: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "errorMessage":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "f":Ljava/io/File;
    .end local p1    # "fh":Lcom/github/junrar/rarfile/FileHeader;
    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v2    # "fileCanonPath":Ljava/lang/String;
    .end local v3    # "errorMessage":Ljava/lang/String;
    .restart local v0    # "fileName":Ljava/lang/String;
    .restart local v1    # "f":Ljava/io/File;
    .restart local p1    # "fh":Lcom/github/junrar/rarfile/FileHeader;
    :catch_0
    move-exception v2

    .line 40
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method extract(Lcom/github/junrar/Archive;Lcom/github/junrar/rarfile/FileHeader;)Ljava/io/File;
    .locals 5
    .param p1, "arch"    # Lcom/github/junrar/Archive;
    .param p2, "fileHeader"    # Lcom/github/junrar/rarfile/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/github/junrar/LocalFolderExtractor;->folderDestination:Ljava/io/File;

    invoke-direct {p0, p2, v0}, Lcom/github/junrar/LocalFolderExtractor;->createFile(Lcom/github/junrar/rarfile/FileHeader;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 51
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 52
    .local v1, "stream":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p1, p2, v1}, Lcom/github/junrar/Archive;->extractFile(Lcom/github/junrar/rarfile/FileHeader;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 54
    .end local v1    # "stream":Ljava/io/OutputStream;
    return-object v0

    .line 51
    .restart local v1    # "stream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "stream":Ljava/io/OutputStream;
    .end local p1    # "arch":Lcom/github/junrar/Archive;
    .end local p2    # "fileHeader":Lcom/github/junrar/rarfile/FileHeader;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    .restart local v0    # "f":Ljava/io/File;
    .restart local v1    # "stream":Ljava/io/OutputStream;
    .restart local p1    # "arch":Lcom/github/junrar/Archive;
    .restart local p2    # "fileHeader":Lcom/github/junrar/rarfile/FileHeader;
    :catchall_1
    move-exception v3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
.end method
