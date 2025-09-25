.class public final Lcom/mrcomic/core/data/cache/CacheSettings;
.super Ljava/lang/Object;
.source "CacheSettings.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mrcomic/core/data/cache/CacheSettings$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u001c\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 (2\u00020\u0001:\u0001(BW\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\nH\u00c6\u0003J\t\u0010 \u001a\u00020\nH\u00c6\u0003J\t\u0010!\u001a\u00020\u0008H\u00c6\u0003JY\u0010\"\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010#\u001a\u00020\u00082\u0008\u0010$\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010%\u001a\u00020\u0003H\u00d6\u0001J\t\u0010&\u001a\u00020\'H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0017R\u0011\u0010\u000c\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015\u00a8\u0006)"
    }
    d2 = {
        "Lcom/mrcomic/core/data/cache/CacheSettings;",
        "",
        "memoryPages",
        "",
        "preloadAhead",
        "preloadBehind",
        "compressionQuality",
        "enableMemoryOptimization",
        "",
        "maxMemoryCacheSize",
        "",
        "maxDiskCacheSize",
        "useRgb565Format",
        "<init>",
        "(IIIIZJJZ)V",
        "getMemoryPages",
        "()I",
        "getPreloadAhead",
        "getPreloadBehind",
        "getCompressionQuality",
        "getEnableMemoryOptimization",
        "()Z",
        "getMaxMemoryCacheSize",
        "()J",
        "getMaxDiskCacheSize",
        "getUseRgb565Format",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/mrcomic/core/data/cache/CacheSettings$Companion;

.field private static final LARGE:Lcom/mrcomic/core/data/cache/CacheSettings;

.field private static final MEDIUM:Lcom/mrcomic/core/data/cache/CacheSettings;

.field private static final SMALL:Lcom/mrcomic/core/data/cache/CacheSettings;


# instance fields
.field private final compressionQuality:I

.field private final enableMemoryOptimization:Z

.field private final maxDiskCacheSize:J

.field private final maxMemoryCacheSize:J

.field private final memoryPages:I

.field private final preloadAhead:I

.field private final preloadBehind:I

.field private final useRgb565Format:Z


# direct methods
.method static constructor <clinit>()V
    .locals 28

    new-instance v0, Lcom/mrcomic/core/data/cache/CacheSettings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mrcomic/core/data/cache/CacheSettings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mrcomic/core/data/cache/CacheSettings;->Companion:Lcom/mrcomic/core/data/cache/CacheSettings$Companion;

    .line 48
    new-instance v0, Lcom/mrcomic/core/data/cache/CacheSettings;

    .line 49
    const/16 v3, 0xa

    .line 48
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 50
    const-wide/32 v8, 0x1900000

    .line 51
    const-wide/32 v10, 0x6400000

    .line 48
    const/4 v12, 0x0

    const/16 v13, 0x9e

    const/4 v14, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/mrcomic/core/data/cache/CacheSettings;-><init>(IIIIZJJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mrcomic/core/data/cache/CacheSettings;->SMALL:Lcom/mrcomic/core/data/cache/CacheSettings;

    .line 54
    new-instance v0, Lcom/mrcomic/core/data/cache/CacheSettings;

    .line 55
    const/16 v16, 0x14

    .line 54
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 56
    const-wide/32 v21, 0x3200000

    .line 57
    const-wide/32 v23, 0xc800000

    .line 54
    const/16 v25, 0x0

    const/16 v26, 0x9e

    const/16 v27, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/mrcomic/core/data/cache/CacheSettings;-><init>(IIIIZJJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mrcomic/core/data/cache/CacheSettings;->MEDIUM:Lcom/mrcomic/core/data/cache/CacheSettings;

    .line 60
    new-instance v0, Lcom/mrcomic/core/data/cache/CacheSettings;

    .line 61
    const/16 v2, 0x32

    .line 60
    const/4 v3, 0x0

    .line 62
    const-wide/32 v7, 0x6400000

    .line 63
    const-wide/32 v9, 0x1f400000

    .line 60
    const/4 v11, 0x0

    const/16 v12, 0x9e

    const/4 v13, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/mrcomic/core/data/cache/CacheSettings;-><init>(IIIIZJJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mrcomic/core/data/cache/CacheSettings;->LARGE:Lcom/mrcomic/core/data/cache/CacheSettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xff

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/mrcomic/core/data/cache/CacheSettings;-><init>(IIIIZJJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIIZJJZ)V
    .locals 0
    .param p1, "memoryPages"    # I
    .param p2, "preloadAhead"    # I
    .param p3, "preloadBehind"    # I
    .param p4, "compressionQuality"    # I
    .param p5, "enableMemoryOptimization"    # Z
    .param p6, "maxMemoryCacheSize"    # J
    .param p8, "maxDiskCacheSize"    # J
    .param p10, "useRgb565Format"    # Z

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->memoryPages:I

    .line 15
    iput p2, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->preloadAhead:I

    .line 20
    iput p3, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->preloadBehind:I

    .line 25
    iput p4, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->compressionQuality:I

    .line 30
    iput-boolean p5, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->enableMemoryOptimization:Z

    .line 35
    iput-wide p6, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->maxMemoryCacheSize:J

    .line 40
    iput-wide p8, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->maxDiskCacheSize:J

    .line 45
    iput-boolean p10, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->useRgb565Format:Z

    .line 6
    return-void
.end method

.method public synthetic constructor <init>(IIIIZJJZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    .line 6
    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 10
    const/16 v1, 0x14

    goto :goto_0

    .line 6
    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 15
    const/4 v2, 0x5

    goto :goto_1

    .line 6
    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    .line 20
    const/4 v3, 0x3

    goto :goto_2

    .line 6
    :cond_2
    move v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    .line 25
    const/16 v4, 0x55

    goto :goto_3

    .line 6
    :cond_3
    move v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    .line 30
    move v5, v6

    goto :goto_4

    .line 6
    :cond_4
    move/from16 v5, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    .line 35
    const-wide/32 v7, 0x3200000

    goto :goto_5

    .line 6
    :cond_5
    move-wide/from16 v7, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    .line 40
    const-wide/32 v9, 0xc800000

    goto :goto_6

    .line 6
    :cond_6
    move-wide/from16 v9, p8

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 45
    goto :goto_7

    .line 6
    :cond_7
    move/from16 v6, p10

    :goto_7
    move-object p1, p0

    move p2, v1

    move p3, v2

    move p4, v3

    move/from16 p5, v4

    move/from16 p6, v5

    move-wide/from16 p7, v7

    move-wide/from16 p9, v9

    move/from16 p11, v6

    invoke-direct/range {p1 .. p11}, Lcom/mrcomic/core/data/cache/CacheSettings;-><init>(IIIIZJJZ)V

    .line 46
    return-void
.end method

.method public static final synthetic access$getLARGE$cp()Lcom/mrcomic/core/data/cache/CacheSettings;
    .locals 1

    .line 6
    sget-object v0, Lcom/mrcomic/core/data/cache/CacheSettings;->LARGE:Lcom/mrcomic/core/data/cache/CacheSettings;

    return-object v0
.end method

.method public static final synthetic access$getMEDIUM$cp()Lcom/mrcomic/core/data/cache/CacheSettings;
    .locals 1

    .line 6
    sget-object v0, Lcom/mrcomic/core/data/cache/CacheSettings;->MEDIUM:Lcom/mrcomic/core/data/cache/CacheSettings;

    return-object v0
.end method

.method public static final synthetic access$getSMALL$cp()Lcom/mrcomic/core/data/cache/CacheSettings;
    .locals 1

    .line 6
    sget-object v0, Lcom/mrcomic/core/data/cache/CacheSettings;->SMALL:Lcom/mrcomic/core/data/cache/CacheSettings;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/mrcomic/core/data/cache/CacheSettings;IIIIZJJZILjava/lang/Object;)Lcom/mrcomic/core/data/cache/CacheSettings;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/mrcomic/core/data/cache/CacheSettings;->memoryPages:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/mrcomic/core/data/cache/CacheSettings;->preloadAhead:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/mrcomic/core/data/cache/CacheSettings;->preloadBehind:I

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/mrcomic/core/data/cache/CacheSettings;->compressionQuality:I

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/mrcomic/core/data/cache/CacheSettings;->enableMemoryOptimization:Z

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-wide v7, v0, Lcom/mrcomic/core/data/cache/CacheSettings;->maxMemoryCacheSize:J

    goto :goto_5

    :cond_5
    move-wide/from16 v7, p6

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-wide v9, v0, Lcom/mrcomic/core/data/cache/CacheSettings;->maxDiskCacheSize:J

    goto :goto_6

    :cond_6
    move-wide/from16 v9, p8

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lcom/mrcomic/core/data/cache/CacheSettings;->useRgb565Format:Z

    goto :goto_7

    :cond_7
    move/from16 v1, p10

    :goto_7
    move p1, v2

    move p2, v3

    move p3, v4

    move p4, v5

    move/from16 p5, v6

    move-wide/from16 p6, v7

    move-wide/from16 p8, v9

    move/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/mrcomic/core/data/cache/CacheSettings;->copy(IIIIZJJZ)Lcom/mrcomic/core/data/cache/CacheSettings;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->memoryPages:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->preloadAhead:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->preloadBehind:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->compressionQuality:I

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->enableMemoryOptimization:Z

    return v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->maxMemoryCacheSize:J

    return-wide v0
.end method

.method public final component7()J
    .locals 2

    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->maxDiskCacheSize:J

    return-wide v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->useRgb565Format:Z

    return v0
.end method

.method public final copy(IIIIZJJZ)Lcom/mrcomic/core/data/cache/CacheSettings;
    .locals 12

    new-instance v11, Lcom/mrcomic/core/data/cache/CacheSettings;

    move-object v0, v11

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/mrcomic/core/data/cache/CacheSettings;-><init>(IIIIZJJZ)V

    return-object v11
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/mrcomic/core/data/cache/CacheSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/mrcomic/core/data/cache/CacheSettings;

    iget v3, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->memoryPages:I

    iget v4, v1, Lcom/mrcomic/core/data/cache/CacheSettings;->memoryPages:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->preloadAhead:I

    iget v4, v1, Lcom/mrcomic/core/data/cache/CacheSettings;->preloadAhead:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->preloadBehind:I

    iget v4, v1, Lcom/mrcomic/core/data/cache/CacheSettings;->preloadBehind:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->compressionQuality:I

    iget v4, v1, Lcom/mrcomic/core/data/cache/CacheSettings;->compressionQuality:I

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-boolean v3, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->enableMemoryOptimization:Z

    iget-boolean v4, v1, Lcom/mrcomic/core/data/cache/CacheSettings;->enableMemoryOptimization:Z

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->maxMemoryCacheSize:J

    iget-wide v5, v1, Lcom/mrcomic/core/data/cache/CacheSettings;->maxMemoryCacheSize:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->maxDiskCacheSize:J

    iget-wide v5, v1, Lcom/mrcomic/core/data/cache/CacheSettings;->maxDiskCacheSize:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    return v2

    :cond_8
    iget-boolean v3, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->useRgb565Format:Z

    iget-boolean v1, v1, Lcom/mrcomic/core/data/cache/CacheSettings;->useRgb565Format:Z

    if-eq v3, v1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getCompressionQuality()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->compressionQuality:I

    return v0
.end method

.method public final getEnableMemoryOptimization()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->enableMemoryOptimization:Z

    return v0
.end method

.method public final getMaxDiskCacheSize()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->maxDiskCacheSize:J

    return-wide v0
.end method

.method public final getMaxMemoryCacheSize()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->maxMemoryCacheSize:J

    return-wide v0
.end method

.method public final getMemoryPages()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->memoryPages:I

    return v0
.end method

.method public final getPreloadAhead()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->preloadAhead:I

    return v0
.end method

.method public final getPreloadBehind()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->preloadBehind:I

    return v0
.end method

.method public final getUseRgb565Format()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->useRgb565Format:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->memoryPages:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->preloadAhead:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->preloadBehind:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->compressionQuality:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->enableMemoryOptimization:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->maxMemoryCacheSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->maxDiskCacheSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->useRgb565Format:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget v0, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->memoryPages:I

    iget v1, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->preloadAhead:I

    iget v2, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->preloadBehind:I

    iget v3, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->compressionQuality:I

    iget-boolean v4, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->enableMemoryOptimization:Z

    iget-wide v5, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->maxMemoryCacheSize:J

    iget-wide v7, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->maxDiskCacheSize:J

    iget-boolean v9, p0, Lcom/mrcomic/core/data/cache/CacheSettings;->useRgb565Format:Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CacheSettings(memoryPages="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ", preloadAhead="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preloadBehind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", compressionQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableMemoryOptimization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxMemoryCacheSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxDiskCacheSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useRgb565Format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
