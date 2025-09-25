.class public final Lcom/mrcomic/core/data/cache/PreloadSettings;
.super Ljava/lang/Object;
.source "PreloadManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00032\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/mrcomic/core/data/cache/PreloadSettings;",
        "",
        "enabled",
        "",
        "preloadAhead",
        "",
        "preloadBehind",
        "memoryAware",
        "<init>",
        "(ZIIZ)V",
        "getEnabled",
        "()Z",
        "getPreloadAhead",
        "()I",
        "getPreloadBehind",
        "getMemoryAware",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
        "core-data_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final enabled:Z

.field private final memoryAware:Z

.field private final preloadAhead:I

.field private final preloadBehind:I


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mrcomic/core/data/cache/PreloadSettings;-><init>(ZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZIIZ)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "preloadAhead"    # I
    .param p3, "preloadBehind"    # I
    .param p4, "memoryAware"    # Z

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-boolean p1, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->enabled:Z

    .line 355
    iput p2, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->preloadAhead:I

    .line 356
    iput p3, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->preloadBehind:I

    .line 357
    iput-boolean p4, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->memoryAware:Z

    .line 353
    return-void
.end method

.method public synthetic constructor <init>(ZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 353
    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    .line 354
    move p1, v0

    .line 353
    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 355
    const/4 p2, 0x5

    .line 353
    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 356
    const/4 p3, 0x3

    .line 353
    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 357
    move p4, v0

    .line 353
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mrcomic/core/data/cache/PreloadSettings;-><init>(ZIIZ)V

    .line 358
    return-void
.end method

.method public static synthetic copy$default(Lcom/mrcomic/core/data/cache/PreloadSettings;ZIIZILjava/lang/Object;)Lcom/mrcomic/core/data/cache/PreloadSettings;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->enabled:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->preloadAhead:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->preloadBehind:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->memoryAware:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mrcomic/core/data/cache/PreloadSettings;->copy(ZIIZ)Lcom/mrcomic/core/data/cache/PreloadSettings;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->enabled:Z

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->preloadAhead:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->preloadBehind:I

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->memoryAware:Z

    return v0
.end method

.method public final copy(ZIIZ)Lcom/mrcomic/core/data/cache/PreloadSettings;
    .locals 1

    new-instance v0, Lcom/mrcomic/core/data/cache/PreloadSettings;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/mrcomic/core/data/cache/PreloadSettings;-><init>(ZIIZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/mrcomic/core/data/cache/PreloadSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/mrcomic/core/data/cache/PreloadSettings;

    iget-boolean v3, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->enabled:Z

    iget-boolean v4, v1, Lcom/mrcomic/core/data/cache/PreloadSettings;->enabled:Z

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->preloadAhead:I

    iget v4, v1, Lcom/mrcomic/core/data/cache/PreloadSettings;->preloadAhead:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->preloadBehind:I

    iget v4, v1, Lcom/mrcomic/core/data/cache/PreloadSettings;->preloadBehind:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->memoryAware:Z

    iget-boolean v1, v1, Lcom/mrcomic/core/data/cache/PreloadSettings;->memoryAware:Z

    if-eq v3, v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getEnabled()Z
    .locals 1

    .line 354
    iget-boolean v0, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->enabled:Z

    return v0
.end method

.method public final getMemoryAware()Z
    .locals 1

    .line 357
    iget-boolean v0, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->memoryAware:Z

    return v0
.end method

.method public final getPreloadAhead()I
    .locals 1

    .line 355
    iget v0, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->preloadAhead:I

    return v0
.end method

.method public final getPreloadBehind()I
    .locals 1

    .line 356
    iget v0, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->preloadBehind:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->enabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->preloadAhead:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->preloadBehind:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->memoryAware:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-boolean v0, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->enabled:Z

    iget v1, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->preloadAhead:I

    iget v2, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->preloadBehind:I

    iget-boolean v3, p0, Lcom/mrcomic/core/data/cache/PreloadSettings;->memoryAware:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PreloadSettings(enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", preloadAhead="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preloadBehind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", memoryAware="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
