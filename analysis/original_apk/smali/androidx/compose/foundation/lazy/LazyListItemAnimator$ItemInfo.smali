.class final Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
.super Ljava/lang/Object;
.source "LazyListItemAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/lazy/LazyListItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ItemInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR0\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00042\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;",
        "",
        "()V",
        "<set-?>",
        "",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;",
        "animations",
        "getAnimations",
        "()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;",
        "[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;",
        "updateAnimation",
        "",
        "positionedItem",
        "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    invoke-static {}, Landroidx/compose/foundation/lazy/LazyListItemAnimatorKt;->access$getEmptyArray$p()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    .line 296
    return-void
.end method


# virtual methods
.method public final getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .locals 1

    .line 301
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    return-object v0
.end method

.method public final updateAnimation(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 9
    .param p1, "positionedItem"    # Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .param p2, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;

    .line 305
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getPlaceablesCount()I

    move-result v0

    .local v0, "i":I
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 306
    iget-object v2, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->stopAnimations()V

    .line 305
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    array-length v0, v0

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getPlaceablesCount()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 309
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getPlaceablesCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    .line 311
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getPlaceablesCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    move v2, v1

    .local v2, "index":I
    const/4 v3, 0x0

    .line 312
    .local v3, "$i$a$-repeat-LazyListItemAnimator$ItemInfo$updateAnimation$1":I
    invoke-virtual {p1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/foundation/lazy/LazyListItemAnimatorKt;->access$getSpecs(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;

    move-result-object v4

    .line 313
    .local v4, "specs":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;
    if-nez v4, :cond_4

    .line 314
    iget-object v5, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    aget-object v5, v5, v2

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->stopAnimations()V

    .line 315
    :cond_3
    iget-object v5, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    const/4 v6, 0x0

    aput-object v6, v5, v2

    goto :goto_2

    .line 317
    :cond_4
    iget-object v5, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    aget-object v5, v5, v2

    if-nez v5, :cond_5

    new-instance v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    invoke-direct {v5, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    move-object v6, v5

    .local v6, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    const/4 v7, 0x0

    .line 318
    .local v7, "$i$a$-also-LazyListItemAnimator$ItemInfo$updateAnimation$1$animation$1":I
    iget-object v8, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    aput-object v6, v8, v2

    .line 319
    nop

    .line 317
    .end local v6    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .end local v7    # "$i$a$-also-LazyListItemAnimator$ItemInfo$updateAnimation$1$animation$1":I
    nop

    .line 320
    .local v5, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    :cond_5
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;->getAppearanceSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setAppearanceSpec(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 321
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;->getPlacementSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setPlacementSpec(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 323
    .end local v5    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    :goto_2
    nop

    .line 311
    .end local v2    # "index":I
    .end local v3    # "$i$a$-repeat-LazyListItemAnimator$ItemInfo$updateAnimation$1":I
    .end local v4    # "specs":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 324
    :cond_6
    return-void
.end method
