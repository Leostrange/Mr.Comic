.class public Lcom/github/junrar/volume/InputStreamVolumeManager;
.super Ljava/lang/Object;
.source "InputStreamVolumeManager.java"

# interfaces
.implements Lcom/github/junrar/volume/VolumeManager;


# instance fields
.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/volume/InputStreamVolumeManager;->streams:Ljava/util/Map;

    .line 15
    iget-object v0, p0, Lcom/github/junrar/volume/InputStreamVolumeManager;->streams:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 18
    .local p1, "streams":Ljava/util/List;, "Ljava/util/List<Ljava/io/InputStream;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/volume/InputStreamVolumeManager;->streams:Ljava/util/Map;

    .line 19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 20
    iget-object v1, p0, Lcom/github/junrar/volume/InputStreamVolumeManager;->streams:Ljava/util/Map;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public nextVolume(Lcom/github/junrar/Archive;Lcom/github/junrar/volume/Volume;)Lcom/github/junrar/volume/Volume;
    .locals 4
    .param p1, "archive"    # Lcom/github/junrar/Archive;
    .param p2, "lastVolume"    # Lcom/github/junrar/volume/Volume;

    .line 26
    const/4 v0, 0x1

    if-nez p2, :cond_0

    new-instance v1, Lcom/github/junrar/volume/InputStreamVolume;

    iget-object v2, p0, Lcom/github/junrar/volume/InputStreamVolumeManager;->streams:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    invoke-direct {v1, p1, v2, v0}, Lcom/github/junrar/volume/InputStreamVolume;-><init>(Lcom/github/junrar/Archive;Ljava/io/InputStream;I)V

    return-object v1

    .line 28
    :cond_0
    move-object v1, p2

    check-cast v1, Lcom/github/junrar/volume/InputStreamVolume;

    .line 29
    .local v1, "lastStreamVolume":Lcom/github/junrar/volume/InputStreamVolume;
    invoke-virtual {v1}, Lcom/github/junrar/volume/InputStreamVolume;->getPosition()I

    move-result v2

    add-int/2addr v2, v0

    .line 30
    .local v2, "nextPosition":I
    iget-object v0, p0, Lcom/github/junrar/volume/InputStreamVolumeManager;->streams:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 31
    .local v0, "next":Ljava/io/InputStream;
    if-eqz v0, :cond_1

    new-instance v3, Lcom/github/junrar/volume/InputStreamVolume;

    invoke-direct {v3, p1, v0, v2}, Lcom/github/junrar/volume/InputStreamVolume;-><init>(Lcom/github/junrar/Archive;Ljava/io/InputStream;I)V

    return-object v3

    .line 32
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method
