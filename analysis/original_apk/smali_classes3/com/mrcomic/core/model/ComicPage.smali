.class public final Lcom/mrcomic/core/model/ComicPage;
.super Ljava/lang/Object;
.source "ComicPage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u000bH\u00c6\u0003JO\u0010\u001f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u00c6\u0001J\u0013\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010#\u001a\u00020\u0006H\u00d6\u0001J\t\u0010$\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000fR\u0011\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006%"
    }
    d2 = {
        "Lcom/mrcomic/core/model/ComicPage;",
        "",
        "id",
        "",
        "comicId",
        "pageNumber",
        "",
        "imageUrl",
        "width",
        "height",
        "fileSize",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJ)V",
        "getId",
        "()Ljava/lang/String;",
        "getComicId",
        "getPageNumber",
        "()I",
        "getImageUrl",
        "getWidth",
        "getHeight",
        "getFileSize",
        "()J",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "core-model_debug"
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
.field private final comicId:Ljava/lang/String;

.field private final fileSize:J

.field private final height:I

.field private final id:Ljava/lang/String;

.field private final imageUrl:Ljava/lang/String;

.field private final pageNumber:I

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJ)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "comicId"    # Ljava/lang/String;
    .param p3, "pageNumber"    # I
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "fileSize"    # J

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comicId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/mrcomic/core/model/ComicPage;->id:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/mrcomic/core/model/ComicPage;->comicId:Ljava/lang/String;

    .line 6
    iput p3, p0, Lcom/mrcomic/core/model/ComicPage;->pageNumber:I

    .line 7
    iput-object p4, p0, Lcom/mrcomic/core/model/ComicPage;->imageUrl:Ljava/lang/String;

    .line 8
    iput p5, p0, Lcom/mrcomic/core/model/ComicPage;->width:I

    .line 9
    iput p6, p0, Lcom/mrcomic/core/model/ComicPage;->height:I

    .line 10
    iput-wide p7, p0, Lcom/mrcomic/core/model/ComicPage;->fileSize:J

    .line 3
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    .line 3
    and-int/lit8 v0, p9, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8
    move v7, v1

    goto :goto_0

    .line 3
    :cond_0
    move/from16 v7, p5

    :goto_0
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_1

    .line 9
    move v8, v1

    goto :goto_1

    .line 3
    :cond_1
    move/from16 v8, p6

    :goto_1
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_2

    .line 10
    const-wide/16 v0, 0x0

    move-wide v9, v0

    goto :goto_2

    .line 3
    :cond_2
    move-wide/from16 v9, p7

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v10}, Lcom/mrcomic/core/model/ComicPage;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJ)V

    .line 11
    return-void
.end method

.method public static synthetic copy$default(Lcom/mrcomic/core/model/ComicPage;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJILjava/lang/Object;)Lcom/mrcomic/core/model/ComicPage;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/mrcomic/core/model/ComicPage;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/mrcomic/core/model/ComicPage;->comicId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_2

    iget v3, v0, Lcom/mrcomic/core/model/ComicPage;->pageNumber:I

    goto :goto_2

    :cond_2
    move v3, p3

    :goto_2
    and-int/lit8 v4, p9, 0x8

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/mrcomic/core/model/ComicPage;->imageUrl:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v4, p4

    :goto_3
    and-int/lit8 v5, p9, 0x10

    if-eqz v5, :cond_4

    iget v5, v0, Lcom/mrcomic/core/model/ComicPage;->width:I

    goto :goto_4

    :cond_4
    move v5, p5

    :goto_4
    and-int/lit8 v6, p9, 0x20

    if-eqz v6, :cond_5

    iget v6, v0, Lcom/mrcomic/core/model/ComicPage;->height:I

    goto :goto_5

    :cond_5
    move v6, p6

    :goto_5
    and-int/lit8 v7, p9, 0x40

    if-eqz v7, :cond_6

    iget-wide v7, v0, Lcom/mrcomic/core/model/ComicPage;->fileSize:J

    goto :goto_6

    :cond_6
    move-wide/from16 v7, p7

    :goto_6
    move-object p1, v1

    move-object p2, v2

    move p3, v3

    move-object p4, v4

    move p5, v5

    move p6, v6

    move-wide/from16 p7, v7

    invoke-virtual/range {p0 .. p8}, Lcom/mrcomic/core/model/ComicPage;->copy(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJ)Lcom/mrcomic/core/model/ComicPage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mrcomic/core/model/ComicPage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mrcomic/core/model/ComicPage;->comicId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/mrcomic/core/model/ComicPage;->pageNumber:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mrcomic/core/model/ComicPage;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/mrcomic/core/model/ComicPage;->width:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/mrcomic/core/model/ComicPage;->height:I

    return v0
.end method

.method public final component7()J
    .locals 2

    iget-wide v0, p0, Lcom/mrcomic/core/model/ComicPage;->fileSize:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJ)Lcom/mrcomic/core/model/ComicPage;
    .locals 13

    const-string v0, "id"

    move-object v10, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comicId"

    move-object v11, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUrl"

    move-object/from16 v12, p4

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/mrcomic/core/model/ComicPage;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/mrcomic/core/model/ComicPage;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/mrcomic/core/model/ComicPage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/mrcomic/core/model/ComicPage;

    iget-object v3, p0, Lcom/mrcomic/core/model/ComicPage;->id:Ljava/lang/String;

    iget-object v4, v1, Lcom/mrcomic/core/model/ComicPage;->id:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/mrcomic/core/model/ComicPage;->comicId:Ljava/lang/String;

    iget-object v4, v1, Lcom/mrcomic/core/model/ComicPage;->comicId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/mrcomic/core/model/ComicPage;->pageNumber:I

    iget v4, v1, Lcom/mrcomic/core/model/ComicPage;->pageNumber:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/mrcomic/core/model/ComicPage;->imageUrl:Ljava/lang/String;

    iget-object v4, v1, Lcom/mrcomic/core/model/ComicPage;->imageUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget v3, p0, Lcom/mrcomic/core/model/ComicPage;->width:I

    iget v4, v1, Lcom/mrcomic/core/model/ComicPage;->width:I

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    iget v3, p0, Lcom/mrcomic/core/model/ComicPage;->height:I

    iget v4, v1, Lcom/mrcomic/core/model/ComicPage;->height:I

    if-eq v3, v4, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/mrcomic/core/model/ComicPage;->fileSize:J

    iget-wide v5, v1, Lcom/mrcomic/core/model/ComicPage;->fileSize:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getComicId()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/mrcomic/core/model/ComicPage;->comicId:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileSize()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/mrcomic/core/model/ComicPage;->fileSize:J

    return-wide v0
.end method

.method public final getHeight()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/mrcomic/core/model/ComicPage;->height:I

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/mrcomic/core/model/ComicPage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/mrcomic/core/model/ComicPage;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getPageNumber()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/mrcomic/core/model/ComicPage;->pageNumber:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/mrcomic/core/model/ComicPage;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/mrcomic/core/model/ComicPage;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/mrcomic/core/model/ComicPage;->comicId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/mrcomic/core/model/ComicPage;->pageNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/mrcomic/core/model/ComicPage;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/mrcomic/core/model/ComicPage;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mrcomic/core/model/ComicPage;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/mrcomic/core/model/ComicPage;->fileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/mrcomic/core/model/ComicPage;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/mrcomic/core/model/ComicPage;->comicId:Ljava/lang/String;

    iget v2, p0, Lcom/mrcomic/core/model/ComicPage;->pageNumber:I

    iget-object v3, p0, Lcom/mrcomic/core/model/ComicPage;->imageUrl:Ljava/lang/String;

    iget v4, p0, Lcom/mrcomic/core/model/ComicPage;->width:I

    iget v5, p0, Lcom/mrcomic/core/model/ComicPage;->height:I

    iget-wide v6, p0, Lcom/mrcomic/core/model/ComicPage;->fileSize:J

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ComicPage(id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", comicId="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pageNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
