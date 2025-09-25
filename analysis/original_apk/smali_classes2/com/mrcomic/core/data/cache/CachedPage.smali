.class public final Lcom/mrcomic/core/data/cache/CachedPage;
.super Ljava/lang/Object;
.source "CachedPage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0018\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0008\u0086\u0008\u0018\u00002\u00020\u0001Ba\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0006\u0010\u001e\u001a\u00020\u0007J\u0006\u0010\u001f\u001a\u00020 J\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00c6\u0003J\t\u0010#\u001a\u00020\u0007H\u00c6\u0003J\t\u0010$\u001a\u00020\u0005H\u00c6\u0003J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0005H\u00c6\u0003J\t\u0010(\u001a\u00020\u0005H\u00c6\u0003J\t\u0010)\u001a\u00020\u0005H\u00c6\u0003J\t\u0010*\u001a\u00020\u0005H\u00c6\u0003Jm\u0010+\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00052\u0008\u0008\u0002\u0010\r\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010,\u001a\u00020 2\u0008\u0010-\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010.\u001a\u00020\u0005H\u00d6\u0001J\t\u0010/\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0012R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0012R\u0011\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0014R\u0011\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0014R\u0011\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0014R\u0011\u0010\u000e\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0014\u00a8\u00060"
    }
    d2 = {
        "Lcom/mrcomic/core/data/cache/CachedPage;",
        "",
        "comicId",
        "",
        "pageNumber",
        "",
        "filePath",
        "",
        "compressionLevel",
        "lastAccessed",
        "memorySize",
        "originalWidth",
        "originalHeight",
        "cachedWidth",
        "cachedHeight",
        "<init>",
        "(JILjava/lang/String;IJJIIII)V",
        "getComicId",
        "()J",
        "getPageNumber",
        "()I",
        "getFilePath",
        "()Ljava/lang/String;",
        "getCompressionLevel",
        "getLastAccessed",
        "getMemorySize",
        "getOriginalWidth",
        "getOriginalHeight",
        "getCachedWidth",
        "getCachedHeight",
        "getCacheKey",
        "isRecentlyAccessed",
        "",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
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
.field private final cachedHeight:I

.field private final cachedWidth:I

.field private final comicId:J

.field private final compressionLevel:I

.field private final filePath:Ljava/lang/String;

.field private final lastAccessed:J

.field private final memorySize:J

.field private final originalHeight:I

.field private final originalWidth:I

.field private final pageNumber:I


# direct methods
.method public constructor <init>(JILjava/lang/String;IJJIIII)V
    .locals 1
    .param p1, "comicId"    # J
    .param p3, "pageNumber"    # I
    .param p4, "filePath"    # Ljava/lang/String;
    .param p5, "compressionLevel"    # I
    .param p6, "lastAccessed"    # J
    .param p8, "memorySize"    # J
    .param p10, "originalWidth"    # I
    .param p11, "originalHeight"    # I
    .param p12, "cachedWidth"    # I
    .param p13, "cachedHeight"    # I

    const-string v0, "filePath"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/mrcomic/core/data/cache/CachedPage;->comicId:J

    .line 15
    iput p3, p0, Lcom/mrcomic/core/data/cache/CachedPage;->pageNumber:I

    .line 20
    iput-object p4, p0, Lcom/mrcomic/core/data/cache/CachedPage;->filePath:Ljava/lang/String;

    .line 25
    iput p5, p0, Lcom/mrcomic/core/data/cache/CachedPage;->compressionLevel:I

    .line 30
    iput-wide p6, p0, Lcom/mrcomic/core/data/cache/CachedPage;->lastAccessed:J

    .line 35
    iput-wide p8, p0, Lcom/mrcomic/core/data/cache/CachedPage;->memorySize:J

    .line 40
    iput p10, p0, Lcom/mrcomic/core/data/cache/CachedPage;->originalWidth:I

    .line 45
    iput p11, p0, Lcom/mrcomic/core/data/cache/CachedPage;->originalHeight:I

    .line 50
    iput p12, p0, Lcom/mrcomic/core/data/cache/CachedPage;->cachedWidth:I

    .line 55
    iput p13, p0, Lcom/mrcomic/core/data/cache/CachedPage;->cachedHeight:I

    .line 6
    return-void
.end method

.method public synthetic constructor <init>(JILjava/lang/String;IJJIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    .line 6
    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-wide v9, v1

    goto :goto_0

    .line 6
    :cond_0
    move-wide/from16 v9, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 40
    move v13, v2

    goto :goto_1

    .line 6
    :cond_1
    move/from16 v13, p10

    :goto_1
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    .line 45
    move v14, v2

    goto :goto_2

    .line 6
    :cond_2
    move/from16 v14, p11

    :goto_2
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_3

    .line 50
    move v15, v2

    goto :goto_3

    .line 6
    :cond_3
    move/from16 v15, p12

    :goto_3
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_4

    .line 55
    move/from16 v16, v2

    goto :goto_4

    .line 6
    :cond_4
    move/from16 v16, p13

    :goto_4
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v11, p8

    invoke-direct/range {v3 .. v16}, Lcom/mrcomic/core/data/cache/CachedPage;-><init>(JILjava/lang/String;IJJIIII)V

    .line 56
    return-void
.end method

.method public static synthetic copy$default(Lcom/mrcomic/core/data/cache/CachedPage;JILjava/lang/String;IJJIIIIILjava/lang/Object;)Lcom/mrcomic/core/data/cache/CachedPage;
    .locals 14

    move-object v0, p0

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/mrcomic/core/data/cache/CachedPage;->comicId:J

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget v4, v0, Lcom/mrcomic/core/data/cache/CachedPage;->pageNumber:I

    goto :goto_1

    :cond_1
    move/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/mrcomic/core/data/cache/CachedPage;->filePath:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget v6, v0, Lcom/mrcomic/core/data/cache/CachedPage;->compressionLevel:I

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-wide v7, v0, Lcom/mrcomic/core/data/cache/CachedPage;->lastAccessed:J

    goto :goto_4

    :cond_4
    move-wide/from16 v7, p6

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-wide v9, v0, Lcom/mrcomic/core/data/cache/CachedPage;->memorySize:J

    goto :goto_5

    :cond_5
    move-wide/from16 v9, p8

    :goto_5
    and-int/lit8 v11, v1, 0x40

    if-eqz v11, :cond_6

    iget v11, v0, Lcom/mrcomic/core/data/cache/CachedPage;->originalWidth:I

    goto :goto_6

    :cond_6
    move/from16 v11, p10

    :goto_6
    and-int/lit16 v12, v1, 0x80

    if-eqz v12, :cond_7

    iget v12, v0, Lcom/mrcomic/core/data/cache/CachedPage;->originalHeight:I

    goto :goto_7

    :cond_7
    move/from16 v12, p11

    :goto_7
    and-int/lit16 v13, v1, 0x100

    if-eqz v13, :cond_8

    iget v13, v0, Lcom/mrcomic/core/data/cache/CachedPage;->cachedWidth:I

    goto :goto_8

    :cond_8
    move/from16 v13, p12

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget v1, v0, Lcom/mrcomic/core/data/cache/CachedPage;->cachedHeight:I

    goto :goto_9

    :cond_9
    move/from16 v1, p13

    :goto_9
    move-wide p1, v2

    move/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move-wide/from16 p6, v7

    move-wide/from16 p8, v9

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v1

    invoke-virtual/range {p0 .. p13}, Lcom/mrcomic/core/data/cache/CachedPage;->copy(JILjava/lang/String;IJJIIII)Lcom/mrcomic/core/data/cache/CachedPage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CachedPage;->comicId:J

    return-wide v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lcom/mrcomic/core/data/cache/CachedPage;->cachedHeight:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/mrcomic/core/data/cache/CachedPage;->pageNumber:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mrcomic/core/data/cache/CachedPage;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/mrcomic/core/data/cache/CachedPage;->compressionLevel:I

    return v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CachedPage;->lastAccessed:J

    return-wide v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CachedPage;->memorySize:J

    return-wide v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/mrcomic/core/data/cache/CachedPage;->originalWidth:I

    return v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lcom/mrcomic/core/data/cache/CachedPage;->originalHeight:I

    return v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lcom/mrcomic/core/data/cache/CachedPage;->cachedWidth:I

    return v0
.end method

.method public final copy(JILjava/lang/String;IJJIIII)Lcom/mrcomic/core/data/cache/CachedPage;
    .locals 16

    const-string v0, "filePath"

    move-object/from16 v15, p4

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/mrcomic/core/data/cache/CachedPage;

    move-object v1, v0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lcom/mrcomic/core/data/cache/CachedPage;-><init>(JILjava/lang/String;IJJIIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/mrcomic/core/data/cache/CachedPage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/mrcomic/core/data/cache/CachedPage;

    iget-wide v3, p0, Lcom/mrcomic/core/data/cache/CachedPage;->comicId:J

    iget-wide v5, v1, Lcom/mrcomic/core/data/cache/CachedPage;->comicId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/mrcomic/core/data/cache/CachedPage;->pageNumber:I

    iget v4, v1, Lcom/mrcomic/core/data/cache/CachedPage;->pageNumber:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/mrcomic/core/data/cache/CachedPage;->filePath:Ljava/lang/String;

    iget-object v4, v1, Lcom/mrcomic/core/data/cache/CachedPage;->filePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lcom/mrcomic/core/data/cache/CachedPage;->compressionLevel:I

    iget v4, v1, Lcom/mrcomic/core/data/cache/CachedPage;->compressionLevel:I

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/mrcomic/core/data/cache/CachedPage;->lastAccessed:J

    iget-wide v5, v1, Lcom/mrcomic/core/data/cache/CachedPage;->lastAccessed:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/mrcomic/core/data/cache/CachedPage;->memorySize:J

    iget-wide v5, v1, Lcom/mrcomic/core/data/cache/CachedPage;->memorySize:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    return v2

    :cond_7
    iget v3, p0, Lcom/mrcomic/core/data/cache/CachedPage;->originalWidth:I

    iget v4, v1, Lcom/mrcomic/core/data/cache/CachedPage;->originalWidth:I

    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    iget v3, p0, Lcom/mrcomic/core/data/cache/CachedPage;->originalHeight:I

    iget v4, v1, Lcom/mrcomic/core/data/cache/CachedPage;->originalHeight:I

    if-eq v3, v4, :cond_9

    return v2

    :cond_9
    iget v3, p0, Lcom/mrcomic/core/data/cache/CachedPage;->cachedWidth:I

    iget v4, v1, Lcom/mrcomic/core/data/cache/CachedPage;->cachedWidth:I

    if-eq v3, v4, :cond_a

    return v2

    :cond_a
    iget v3, p0, Lcom/mrcomic/core/data/cache/CachedPage;->cachedHeight:I

    iget v1, v1, Lcom/mrcomic/core/data/cache/CachedPage;->cachedHeight:I

    if-eq v3, v1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getCacheKey()Ljava/lang/String;
    .locals 4

    .line 60
    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CachedPage;->comicId:J

    iget v2, p0, Lcom/mrcomic/core/data/cache/CachedPage;->pageNumber:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCachedHeight()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/mrcomic/core/data/cache/CachedPage;->cachedHeight:I

    return v0
.end method

.method public final getCachedWidth()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/mrcomic/core/data/cache/CachedPage;->cachedWidth:I

    return v0
.end method

.method public final getComicId()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CachedPage;->comicId:J

    return-wide v0
.end method

.method public final getCompressionLevel()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/mrcomic/core/data/cache/CachedPage;->compressionLevel:I

    return v0
.end method

.method public final getFilePath()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/CachedPage;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastAccessed()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CachedPage;->lastAccessed:J

    return-wide v0
.end method

.method public final getMemorySize()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CachedPage;->memorySize:J

    return-wide v0
.end method

.method public final getOriginalHeight()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/mrcomic/core/data/cache/CachedPage;->originalHeight:I

    return v0
.end method

.method public final getOriginalWidth()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/mrcomic/core/data/cache/CachedPage;->originalWidth:I

    return v0
.end method

.method public final getPageNumber()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/mrcomic/core/data/cache/CachedPage;->pageNumber:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CachedPage;->comicId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mrcomic/core/data/cache/CachedPage;->pageNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/mrcomic/core/data/cache/CachedPage;->filePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mrcomic/core/data/cache/CachedPage;->compressionLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/mrcomic/core/data/cache/CachedPage;->lastAccessed:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/mrcomic/core/data/cache/CachedPage;->memorySize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/mrcomic/core/data/cache/CachedPage;->originalWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mrcomic/core/data/cache/CachedPage;->originalHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/mrcomic/core/data/cache/CachedPage;->cachedWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mrcomic/core/data/cache/CachedPage;->cachedHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final isRecentlyAccessed()Z
    .locals 4

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const v2, 0x36ee80

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 67
    .local v0, "oneHourAgo":J
    iget-wide v2, p0, Lcom/mrcomic/core/data/cache/CachedPage;->lastAccessed:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    iget-wide v0, p0, Lcom/mrcomic/core/data/cache/CachedPage;->comicId:J

    iget v2, p0, Lcom/mrcomic/core/data/cache/CachedPage;->pageNumber:I

    iget-object v3, p0, Lcom/mrcomic/core/data/cache/CachedPage;->filePath:Ljava/lang/String;

    iget v4, p0, Lcom/mrcomic/core/data/cache/CachedPage;->compressionLevel:I

    iget-wide v5, p0, Lcom/mrcomic/core/data/cache/CachedPage;->lastAccessed:J

    iget-wide v7, p0, Lcom/mrcomic/core/data/cache/CachedPage;->memorySize:J

    iget v9, p0, Lcom/mrcomic/core/data/cache/CachedPage;->originalWidth:I

    iget v10, p0, Lcom/mrcomic/core/data/cache/CachedPage;->originalHeight:I

    iget v11, p0, Lcom/mrcomic/core/data/cache/CachedPage;->cachedWidth:I

    iget v12, p0, Lcom/mrcomic/core/data/cache/CachedPage;->cachedHeight:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CachedPage(comicId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pageNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", compressionLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastAccessed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", memorySize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cachedWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cachedHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
