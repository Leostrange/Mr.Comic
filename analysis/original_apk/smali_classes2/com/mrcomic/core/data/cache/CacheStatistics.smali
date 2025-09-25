.class public final Lcom/mrcomic/core/data/cache/CacheStatistics;
.super Ljava/lang/Object;
.source "CacheStatistics.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u001d\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001BW\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\u0003H\u00c6\u0003JY\u0010\"\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010#\u001a\u00020$2\u0008\u0010%\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010&\u001a\u00020\'H\u00d6\u0001J\t\u0010(\u001a\u00020)H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000fR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000fR\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000fR\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000fR\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u000fR\u0011\u0010\u0018\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u000f\u00a8\u0006*"
    }
    d2 = {
        "Lcom/mrcomic/core/data/cache/CacheStatistics;",
        "",
        "totalMemoryUsed",
        "",
        "totalDiskUsed",
        "hitRate",
        "",
        "averageLoadTime",
        "totalHits",
        "totalMisses",
        "memoryEvictions",
        "diskEvictions",
        "<init>",
        "(JJFJJJJJ)V",
        "getTotalMemoryUsed",
        "()J",
        "getTotalDiskUsed",
        "getHitRate",
        "()F",
        "getAverageLoadTime",
        "getTotalHits",
        "getTotalMisses",
        "getMemoryEvictions",
        "getDiskEvictions",
        "totalRequests",
        "getTotalRequests",
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
        "",
        "other",
        "hashCode",
        "",
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
.field private final averageLoadTime:J

.field private final diskEvictions:J

.field private final hitRate:F

.field private final memoryEvictions:J

.field private final totalDiskUsed:J

.field private final totalHits:J

.field private final totalMemoryUsed:J

.field private final totalMisses:J


# direct methods
.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0xff

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/mrcomic/core/data/cache/CacheStatistics;-><init>(JJFJJJJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJFJJJJJ)V
    .locals 0
    .param p1, "totalMemoryUsed"    # J
    .param p3, "totalDiskUsed"    # J
    .param p5, "hitRate"    # F
    .param p6, "averageLoadTime"    # J
    .param p8, "totalHits"    # J
    .param p10, "totalMisses"    # J
    .param p12, "memoryEvictions"    # J
    .param p14, "diskEvictions"    # J

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalMemoryUsed:J

    .line 15
    iput-wide p3, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalDiskUsed:J

    .line 20
    iput p5, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->hitRate:F

    .line 25
    iput-wide p6, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->averageLoadTime:J

    .line 30
    iput-wide p8, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalHits:J

    .line 35
    iput-wide p10, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalMisses:J

    .line 40
    iput-wide p12, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->memoryEvictions:J

    .line 45
    iput-wide p14, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->diskEvictions:J

    .line 6
    return-void
.end method

.method public synthetic constructor <init>(JJFJJJJJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    .line 6
    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 10
    move-wide v4, v2

    goto :goto_0

    .line 6
    :cond_0
    move-wide/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 15
    move-wide v6, v2

    goto :goto_1

    .line 6
    :cond_1
    move-wide/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    .line 20
    const/4 v1, 0x0

    goto :goto_2

    .line 6
    :cond_2
    move/from16 v1, p5

    :goto_2
    and-int/lit8 v8, v0, 0x8

    if-eqz v8, :cond_3

    .line 25
    move-wide v8, v2

    goto :goto_3

    .line 6
    :cond_3
    move-wide/from16 v8, p6

    :goto_3
    and-int/lit8 v10, v0, 0x10

    if-eqz v10, :cond_4

    .line 30
    move-wide v10, v2

    goto :goto_4

    .line 6
    :cond_4
    move-wide/from16 v10, p8

    :goto_4
    and-int/lit8 v12, v0, 0x20

    if-eqz v12, :cond_5

    .line 35
    move-wide v12, v2

    goto :goto_5

    .line 6
    :cond_5
    move-wide/from16 v12, p10

    :goto_5
    and-int/lit8 v14, v0, 0x40

    if-eqz v14, :cond_6

    .line 40
    move-wide v14, v2

    goto :goto_6

    .line 6
    :cond_6
    move-wide/from16 v14, p12

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 45
    goto :goto_7

    .line 6
    :cond_7
    move-wide/from16 v2, p14

    :goto_7
    move-object/from16 p1, p0

    move-wide/from16 p2, v4

    move-wide/from16 p4, v6

    move/from16 p6, v1

    move-wide/from16 p7, v8

    move-wide/from16 p9, v10

    move-wide/from16 p11, v12

    move-wide/from16 p13, v14

    move-wide/from16 p15, v2

    invoke-direct/range {p1 .. p16}, Lcom/mrcomic/core/data/cache/CacheStatistics;-><init>(JJFJJJJJ)V

    .line 46
    return-void
.end method

.method public static synthetic copy$default(Lcom/mrcomic/core/data/cache/CacheStatistics;JJFJJJJJILjava/lang/Object;)Lcom/mrcomic/core/data/cache/CacheStatistics;
    .locals 15

    move-object v0, p0

    move/from16 v1, p16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalMemoryUsed:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-wide v4, v0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalDiskUsed:J

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    iget v6, v0, Lcom/mrcomic/core/data/cache/CacheStatistics;->hitRate:F

    goto :goto_2

    :cond_2
    move/from16 v6, p5

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_3

    iget-wide v7, v0, Lcom/mrcomic/core/data/cache/CacheStatistics;->averageLoadTime:J

    goto :goto_3

    :cond_3
    move-wide/from16 v7, p6

    :goto_3
    and-int/lit8 v9, v1, 0x10

    if-eqz v9, :cond_4

    iget-wide v9, v0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalHits:J

    goto :goto_4

    :cond_4
    move-wide/from16 v9, p8

    :goto_4
    and-int/lit8 v11, v1, 0x20

    if-eqz v11, :cond_5

    iget-wide v11, v0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalMisses:J

    goto :goto_5

    :cond_5
    move-wide/from16 v11, p10

    :goto_5
    and-int/lit8 v13, v1, 0x40

    if-eqz v13, :cond_6

    iget-wide v13, v0, Lcom/mrcomic/core/data/cache/CacheStatistics;->memoryEvictions:J

    goto :goto_6

    :cond_6
    move-wide/from16 v13, p12

    :goto_6
    and-int/lit16 v1, v1, 0x80

    move-wide/from16 p12, v13

    if-eqz v1, :cond_7

    iget-wide v13, v0, Lcom/mrcomic/core/data/cache/CacheStatistics;->diskEvictions:J

    goto :goto_7

    :cond_7
    move-wide/from16 v13, p14

    :goto_7
    move-wide/from16 p1, v2

    move-wide/from16 p3, v4

    move/from16 p5, v6

    move-wide/from16 p6, v7

    move-wide/from16 p8, v9

    move-wide/from16 p10, v11

    move-wide/from16 p14, v13

    invoke-virtual/range {p0 .. p15}, Lcom/mrcomic/core/data/cache/CacheStatistics;->copy(JJFJJJJJ)Lcom/mrcomic/core/data/cache/CacheStatistics;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalMemoryUsed:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalDiskUsed:J

    return-wide v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->hitRate:F

    return v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->averageLoadTime:J

    return-wide v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalHits:J

    return-wide v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalMisses:J

    return-wide v0
.end method

.method public final component7()J
    .locals 2

    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->memoryEvictions:J

    return-wide v0
.end method

.method public final component8()J
    .locals 2

    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->diskEvictions:J

    return-wide v0
.end method

.method public final copy(JJFJJJJJ)Lcom/mrcomic/core/data/cache/CacheStatistics;
    .locals 17

    new-instance v16, Lcom/mrcomic/core/data/cache/CacheStatistics;

    move-object/from16 v0, v16

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    invoke-direct/range {v0 .. v15}, Lcom/mrcomic/core/data/cache/CacheStatistics;-><init>(JJFJJJJJ)V

    return-object v16
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/mrcomic/core/data/cache/CacheStatistics;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/mrcomic/core/data/cache/CacheStatistics;

    iget-wide v3, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalMemoryUsed:J

    iget-wide v5, v1, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalMemoryUsed:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalDiskUsed:J

    iget-wide v5, v1, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalDiskUsed:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->hitRate:F

    iget v4, v1, Lcom/mrcomic/core/data/cache/CacheStatistics;->hitRate:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->averageLoadTime:J

    iget-wide v5, v1, Lcom/mrcomic/core/data/cache/CacheStatistics;->averageLoadTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalHits:J

    iget-wide v5, v1, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalHits:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalMisses:J

    iget-wide v5, v1, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalMisses:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->memoryEvictions:J

    iget-wide v5, v1, Lcom/mrcomic/core/data/cache/CacheStatistics;->memoryEvictions:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->diskEvictions:J

    iget-wide v5, v1, Lcom/mrcomic/core/data/cache/CacheStatistics;->diskEvictions:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getAverageLoadTime()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->averageLoadTime:J

    return-wide v0
.end method

.method public final getDiskEvictions()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->diskEvictions:J

    return-wide v0
.end method

.method public final getHitRate()F
    .locals 1

    .line 20
    iget v0, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->hitRate:F

    return v0
.end method

.method public final getMemoryEvictions()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->memoryEvictions:J

    return-wide v0
.end method

.method public final getTotalDiskUsed()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalDiskUsed:J

    return-wide v0
.end method

.method public final getTotalHits()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalHits:J

    return-wide v0
.end method

.method public final getTotalMemoryUsed()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalMemoryUsed:J

    return-wide v0
.end method

.method public final getTotalMisses()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalMisses:J

    return-wide v0
.end method

.method public final getTotalRequests()J
    .locals 4

    .line 50
    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalHits:J

    iget-wide v2, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalMisses:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalMemoryUsed:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalDiskUsed:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->hitRate:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->averageLoadTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalHits:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalMisses:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->memoryEvictions:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/mrcomic/core/data/cache/CacheStatistics;->diskEvictions:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalMemoryUsed:J

    iget-wide v3, v0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalDiskUsed:J

    iget v5, v0, Lcom/mrcomic/core/data/cache/CacheStatistics;->hitRate:F

    iget-wide v6, v0, Lcom/mrcomic/core/data/cache/CacheStatistics;->averageLoadTime:J

    iget-wide v8, v0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalHits:J

    iget-wide v10, v0, Lcom/mrcomic/core/data/cache/CacheStatistics;->totalMisses:J

    iget-wide v12, v0, Lcom/mrcomic/core/data/cache/CacheStatistics;->memoryEvictions:J

    iget-wide v14, v0, Lcom/mrcomic/core/data/cache/CacheStatistics;->diskEvictions:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v16, v14

    const-string v14, "CacheStatistics(totalMemoryUsed="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalDiskUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hitRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", averageLoadTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalHits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalMisses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", memoryEvictions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", diskEvictions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
