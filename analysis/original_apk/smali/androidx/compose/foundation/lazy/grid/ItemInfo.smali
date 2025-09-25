.class final Landroidx/compose/foundation/lazy/grid/ItemInfo;
.super Ljava/lang/Object;
.source "LazyGridItemPlacementAnimator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018R0\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0010\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/grid/ItemInfo;",
        "",
        "crossAxisSize",
        "",
        "crossAxisOffset",
        "(II)V",
        "<set-?>",
        "",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;",
        "animations",
        "getAnimations",
        "()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;",
        "[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;",
        "getCrossAxisOffset",
        "()I",
        "setCrossAxisOffset",
        "(I)V",
        "getCrossAxisSize",
        "setCrossAxisSize",
        "updateAnimation",
        "",
        "positionedItem",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

.field private crossAxisOffset:I

.field private crossAxisSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "crossAxisSize"    # I
    .param p2, "crossAxisOffset"    # I

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->crossAxisSize:I

    .line 333
    iput p2, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->crossAxisOffset:I

    .line 339
    invoke-static {}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimatorKt;->access$getEmptyArray$p()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    .line 331
    return-void
.end method


# virtual methods
.method public final getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .locals 1

    .line 339
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    return-object v0
.end method

.method public final getCrossAxisOffset()I
    .locals 1

    .line 333
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->crossAxisOffset:I

    return v0
.end method

.method public final getCrossAxisSize()I
    .locals 1

    .line 332
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->crossAxisSize:I

    return v0
.end method

.method public final setCrossAxisOffset(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 333
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->crossAxisOffset:I

    return-void
.end method

.method public final setCrossAxisSize(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 332
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->crossAxisSize:I

    return-void
.end method

.method public final updateAnimation(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 9
    .param p1, "positionedItem"    # Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .param p2, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;

    .line 343
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getPlaceablesCount()I

    move-result v0

    .local v0, "i":I
    iget-object v1, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 344
    iget-object v2, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->stopAnimations()V

    .line 343
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    array-length v0, v0

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getPlaceablesCount()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 347
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getPlaceablesCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    .line 349
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getPlaceablesCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    move v2, v1

    .local v2, "index":I
    const/4 v3, 0x0

    .line 350
    .local v3, "$i$a$-repeat-ItemInfo$updateAnimation$1":I
    invoke-virtual {p1, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimatorKt;->access$getSpecs(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;

    move-result-object v4

    .line 351
    .local v4, "specs":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;
    if-nez v4, :cond_4

    .line 352
    iget-object v5, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    aget-object v5, v5, v2

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->stopAnimations()V

    .line 353
    :cond_3
    iget-object v5, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    const/4 v6, 0x0

    aput-object v6, v5, v2

    goto :goto_2

    .line 355
    :cond_4
    iget-object v5, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    aget-object v5, v5, v2

    if-nez v5, :cond_5

    new-instance v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    invoke-direct {v5, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    move-object v6, v5

    .local v6, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    const/4 v7, 0x0

    .line 356
    .local v7, "$i$a$-also-ItemInfo$updateAnimation$1$item$1":I
    iget-object v8, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    aput-object v6, v8, v2

    .line 357
    nop

    .line 355
    .end local v6    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .end local v7    # "$i$a$-also-ItemInfo$updateAnimation$1$item$1":I
    nop

    .line 358
    .local v5, "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    :cond_5
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;->getAppearanceSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setAppearanceSpec(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 359
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;->getPlacementSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setPlacementSpec(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 361
    .end local v5    # "item":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    :goto_2
    nop

    .line 349
    .end local v2    # "index":I
    .end local v3    # "$i$a$-repeat-ItemInfo$updateAnimation$1":I
    .end local v4    # "specs":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 362
    :cond_6
    return-void
.end method
