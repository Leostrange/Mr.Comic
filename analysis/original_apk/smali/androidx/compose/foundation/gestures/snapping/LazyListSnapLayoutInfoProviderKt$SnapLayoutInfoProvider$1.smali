.class public final Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;
.super Ljava/lang/Object;
.source "LazyListSnapLayoutInfoProvider.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt;->SnapLayoutInfoProvider(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListSnapLayoutInfoProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListSnapLayoutInfoProvider.kt\nandroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,155:1\n33#2,6:156\n132#2,3:163\n33#2,4:166\n135#2,2:170\n38#2:172\n137#2:173\n1#3:162\n*S KotlinDebug\n*F\n+ 1 LazyListSnapLayoutInfoProvider.kt\nandroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1\n*L\n78#1:156,6\n110#1:163,3\n110#1:166,4\n110#1:170,2\n110#1:172\n110#1:173\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007H\u0016R\u0014\u0010\u0002\u001a\u00020\u00038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u000c"
    }
    d2 = {
        "androidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1",
        "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;",
        "layoutInfo",
        "Landroidx/compose/foundation/lazy/LazyListLayoutInfo;",
        "getLayoutInfo",
        "()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;",
        "averageItemSize",
        "",
        "calculateApproachOffset",
        "initialVelocity",
        "calculateSnappingOffset",
        "currentVelocity",
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
.field final synthetic $lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic $positionInLayout:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)V
    .locals 0
    .param p1, "$lazyListState"    # Landroidx/compose/foundation/lazy/LazyListState;
    .param p2, "$positionInLayout"    # Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;

    iput-object p1, p0, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$positionInLayout:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final averageItemSize()F
    .locals 14

    .line 108
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v0

    .local v0, "$this$averageItemSize_u24lambda_u243":Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
    const/4 v1, 0x0

    .line 109
    .local v1, "$i$a$-with-LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1$averageItemSize$1":I
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 110
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v2

    .local v2, "$this$fastSumBy$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 163
    .local v3, "$i$f$fastSumBy":I
    nop

    .line 164
    const/4 v4, 0x0

    .line 165
    .local v4, "sum$iv":I
    move-object v5, v2

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 166
    .local v6, "$i$f$fastForEach":I
    nop

    .line 167
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_0

    .line 168
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 169
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "element$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 170
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastSumBy$2$iv":I
    move-object v12, v10

    check-cast v12, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .local v12, "it":Landroidx/compose/foundation/lazy/LazyListItemInfo;
    const/4 v13, 0x0

    .line 110
    .local v13, "$i$a$-fastSumBy-LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1$averageItemSize$1$1":I
    invoke-interface {v12}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getSize()I

    move-result v12

    .line 170
    .end local v12    # "it":Landroidx/compose/foundation/lazy/LazyListItemInfo;
    .end local v13    # "$i$a$-fastSumBy-LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1$averageItemSize$1$1":I
    add-int/2addr v4, v12

    .line 171
    nop

    .line 169
    .end local v10    # "element$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastSumBy$2$iv":I
    nop

    .line 167
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 172
    .end local v7    # "index$iv$iv":I
    :cond_0
    nop

    .line 173
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    nop

    .end local v2    # "$this$fastSumBy$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastSumBy":I
    .end local v4    # "sum$iv":I
    int-to-float v2, v4

    .line 110
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_1

    .line 112
    :cond_1
    const/4 v2, 0x0

    .line 109
    :goto_1
    nop

    .line 108
    .end local v0    # "$this$averageItemSize_u24lambda_u243":Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
    .end local v1    # "$i$a$-with-LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1$averageItemSize$1":I
    nop

    .line 114
    return v2
.end method

.method public calculateApproachOffset(F)F
    .locals 6
    .param p1, "initialVelocity"    # F

    .line 57
    iget-object v0, p0, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getDensity$foundation_release()Landroidx/compose/ui/unit/Density;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/animation/SplineBasedDecayKt;->splineBasedDecay(Landroidx/compose/ui/unit/Density;)Landroidx/compose/animation/core/DecayAnimationSpec;

    move-result-object v0

    .line 59
    .local v0, "decayAnimationSpec":Landroidx/compose/animation/core/DecayAnimationSpec;
    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroidx/compose/animation/core/DecayAnimationSpecKt;->calculateTargetValue(Landroidx/compose/animation/core/DecayAnimationSpec;FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 58
    nop

    .line 61
    .local v2, "offset":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->averageItemSize()F

    move-result v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 65
    .local v3, "estimatedNumberOfItemsInDecay":F
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->averageItemSize()F

    move-result v4

    mul-float/2addr v4, v3

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->averageItemSize()F

    move-result v5

    sub-float/2addr v4, v5

    .line 66
    .local v4, "approachOffset":F
    invoke-static {v4, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v5

    .line 67
    .local v5, "finalDecayOffset":F
    cmpg-float v1, v5, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 68
    move v1, v5

    goto :goto_1

    .line 70
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v1, v5

    .line 67
    :goto_1
    return v1
.end method

.method public calculateSnappingOffset(F)F
    .locals 18
    .param p1, "currentVelocity"    # F

    .line 75
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "lowerBoundOffset":F
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 76
    const/4 v2, 0x0

    .local v2, "upperBoundOffset":F
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 78
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v3

    .local v3, "$this$fastForEach$iv":Ljava/util/List;
    iget-object v11, v0, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$positionInLayout:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;

    const/4 v12, 0x0

    .line 156
    .local v12, "$i$f$fastForEach":I
    nop

    .line 157
    const/4 v4, 0x0

    .local v4, "index$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    move v14, v4

    .end local v4    # "index$iv":I
    .local v14, "index$iv":I
    :goto_0
    if-ge v14, v13, :cond_2

    .line 158
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 159
    .local v15, "item$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    check-cast v16, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .local v16, "item":Landroidx/compose/foundation/lazy/LazyListItemInfo;
    const/16 v17, 0x0

    .line 81
    .local v17, "$i$a$-fastForEach-LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1$calculateSnappingOffset$1":I
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt;->getSingleAxisViewportSize(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)I

    move-result v4

    .line 82
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getBeforeContentPadding()I

    move-result v5

    .line 83
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getAfterContentPadding()I

    move-result v6

    .line 84
    invoke-interface/range {v16 .. v16}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getSize()I

    move-result v7

    .line 85
    invoke-interface/range {v16 .. v16}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getOffset()I

    move-result v8

    .line 86
    invoke-interface/range {v16 .. v16}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v9

    .line 87
    nop

    .line 80
    move-object v10, v11

    invoke-static/range {v4 .. v10}, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayoutKt;->calculateDistanceToDesiredSnapPosition(IIIIIILandroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)F

    move-result v4

    .line 79
    nop

    .line 91
    .local v4, "offset":F
    const/4 v5, 0x0

    cmpg-float v6, v4, v5

    if-gtz v6, :cond_0

    cmpl-float v6, v4, v1

    if-lez v6, :cond_0

    .line 92
    move v1, v4

    .line 96
    :cond_0
    cmpl-float v5, v4, v5

    if-ltz v5, :cond_1

    cmpg-float v5, v4, v2

    if-gez v5, :cond_1

    .line 97
    move v2, v4

    .line 99
    :cond_1
    nop

    .line 159
    .end local v4    # "offset":F
    .end local v16    # "item":Landroidx/compose/foundation/lazy/LazyListItemInfo;
    .end local v17    # "$i$a$-fastForEach-LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1$calculateSnappingOffset$1":I
    nop

    .line 157
    .end local v15    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 161
    .end local v14    # "index$iv":I
    :cond_2
    nop

    .line 102
    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v12    # "$i$f$fastForEach":I
    iget-object v3, v0, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->getDensity$foundation_release()Landroidx/compose/ui/unit/Density;

    move-result-object v3

    .line 162
    .local v3, "$this$calculateSnappingOffset_u24lambda_u241":Landroidx/compose/ui/unit/Density;
    const/4 v4, 0x0

    .line 102
    .local v4, "$i$a$-with-LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1$calculateSnappingOffset$2":I
    move/from16 v5, p1

    invoke-static {v3, v5}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt;->calculateFinalSnappingItem(Landroidx/compose/ui/unit/Density;F)I

    move-result v3

    .line 103
    .end local v3    # "$this$calculateSnappingOffset_u24lambda_u241":Landroidx/compose/ui/unit/Density;
    .end local v4    # "$i$a$-with-LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1$calculateSnappingOffset$2":I
    nop

    .line 104
    nop

    .line 101
    invoke-static {v3, v1, v2}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->calculateFinalOffset-Fhqu1e0(IFF)F

    move-result v3

    return v3
.end method
