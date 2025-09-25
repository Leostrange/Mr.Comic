.class public final Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;
.super Ljava/lang/Object;
.source "LazyGridSnapLayoutInfoProvider.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->SnapLayoutInfoProvider(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridSnapLayoutInfoProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridSnapLayoutInfoProvider.kt\nandroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,154:1\n235#2,3:155\n33#2,4:158\n238#2,2:162\n38#2:164\n240#2:165\n33#2,6:166\n132#2,3:173\n33#2,4:176\n135#2,2:180\n38#2:182\n137#2:183\n132#2,3:184\n33#2,4:187\n135#2,2:191\n38#2:193\n137#2:194\n1#3:172\n*S KotlinDebug\n*F\n+ 1 LazyGridSnapLayoutInfoProvider.kt\nandroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1\n*L\n72#1:155,3\n72#1:158,4\n72#1:162,2\n72#1:164\n72#1:165\n87#1:166,6\n121#1:173,3\n121#1:176,4\n121#1:180,2\n121#1:182\n121#1:183\n123#1:184,3\n123#1:187,4\n123#1:191,2\n123#1:193\n123#1:194\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007H\u0016J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0002R\u0014\u0010\u0002\u001a\u00020\u00038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u000f"
    }
    d2 = {
        "androidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1",
        "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;",
        "layoutInfo",
        "Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;",
        "getLayoutInfo",
        "()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;",
        "averageItemSize",
        "",
        "calculateApproachOffset",
        "initialVelocity",
        "calculateSnappingOffset",
        "currentVelocity",
        "singleAxisItems",
        "",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;",
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
.field final synthetic $lazyGridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field final synthetic $positionInLayout:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)V
    .locals 0
    .param p1, "$lazyGridState"    # Landroidx/compose/foundation/lazy/grid/LazyGridState;
    .param p2, "$positionInLayout"    # Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;

    iput-object p1, p0, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$lazyGridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$positionInLayout:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;
    .locals 1

    .line 50
    iget-object v0, p0, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$lazyGridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v0

    return-object v0
.end method

.method private final singleAxisItems()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;",
            ">;"
        }
    .end annotation

    .line 72
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$lazyGridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v1

    .local v1, "$this$fastFilter$iv":Ljava/util/List;
    iget-object v2, v0, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$lazyGridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    const/4 v3, 0x0

    .line 155
    .local v3, "$i$f$fastFilter":I
    nop

    .line 156
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    .local v4, "target$iv":Ljava/util/ArrayList;
    move-object v5, v1

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 158
    .local v6, "$i$f$fastForEach":I
    nop

    .line 159
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_3

    .line 160
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 161
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 162
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastFilter$2$iv":I
    move-object v12, v10

    check-cast v12, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .local v12, "it":Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
    const/4 v13, 0x0

    .line 73
    .local v13, "$i$a$-fastFilter-LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1$singleAxisItems$1":I
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v14

    invoke-interface {v14}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v14

    sget-object v15, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-ne v14, v15, :cond_0

    .line 74
    invoke-interface {v12}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getRow()I

    move-result v14

    if-nez v14, :cond_1

    move/from16 v16, v17

    goto :goto_1

    .line 76
    :cond_0
    invoke-interface {v12}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getColumn()I

    move-result v14

    if-nez v14, :cond_1

    move/from16 v16, v17

    .line 73
    :cond_1
    :goto_1
    nop

    .line 162
    .end local v12    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
    .end local v13    # "$i$a$-fastFilter-LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1$singleAxisItems$1":I
    if-eqz v16, :cond_2

    move-object v12, v4

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_2
    nop

    .line 161
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastFilter$2$iv":I
    nop

    .line 159
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 164
    .end local v7    # "index$iv$iv":I
    :cond_3
    nop

    .line 165
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    move-object v1, v4

    check-cast v1, Ljava/util/List;

    .line 72
    .end local v1    # "$this$fastFilter$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastFilter":I
    .end local v4    # "target$iv":Ljava/util/ArrayList;
    return-object v1
.end method


# virtual methods
.method public final averageItemSize()F
    .locals 15

    .line 118
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->singleAxisItems()Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, "items":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 120
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v1, v2, :cond_1

    .line 121
    move-object v1, v0

    .local v1, "$this$fastSumBy$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 173
    .local v2, "$i$f$fastSumBy":I
    nop

    .line 174
    const/4 v3, 0x0

    .line 175
    .local v3, "sum$iv":I
    move-object v4, v1

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 176
    .local v5, "$i$f$fastForEach":I
    nop

    .line 177
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_0

    .line 178
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 179
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "element$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 180
    .local v10, "$i$a$-fastForEach-ListUtilsKt$fastSumBy$2$iv":I
    move-object v11, v9

    check-cast v11, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .local v11, "it":Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
    const/4 v12, 0x0

    .line 121
    .local v12, "$i$a$-fastSumBy-LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1$averageItemSize$size$1":I
    invoke-interface {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getSize-YbymL2g()J

    move-result-wide v13

    invoke-static {v13, v14}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v11

    .line 180
    .end local v11    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
    .end local v12    # "$i$a$-fastSumBy-LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1$averageItemSize$size$1":I
    add-int/2addr v3, v11

    .line 181
    nop

    .line 179
    .end local v9    # "element$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-fastForEach-ListUtilsKt$fastSumBy$2$iv":I
    nop

    .line 177
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 182
    .end local v6    # "index$iv$iv":I
    :cond_0
    nop

    .line 183
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    nop

    .end local v1    # "$this$fastSumBy$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastSumBy":I
    .end local v3    # "sum$iv":I
    goto :goto_2

    .line 123
    :cond_1
    move-object v1, v0

    .restart local v1    # "$this$fastSumBy$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 184
    .restart local v2    # "$i$f$fastSumBy":I
    nop

    .line 185
    const/4 v3, 0x0

    .line 186
    .restart local v3    # "sum$iv":I
    move-object v4, v1

    .restart local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 187
    .restart local v5    # "$i$f$fastForEach":I
    nop

    .line 188
    const/4 v6, 0x0

    .restart local v6    # "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_1
    if-ge v6, v7, :cond_2

    .line 189
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 190
    .restart local v8    # "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .restart local v9    # "element$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 191
    .restart local v10    # "$i$a$-fastForEach-ListUtilsKt$fastSumBy$2$iv":I
    move-object v11, v9

    check-cast v11, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .restart local v11    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
    const/4 v12, 0x0

    .line 123
    .local v12, "$i$a$-fastSumBy-LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1$averageItemSize$size$2":I
    invoke-interface {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getSize-YbymL2g()J

    move-result-wide v13

    invoke-static {v13, v14}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v11

    .line 191
    .end local v11    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
    .end local v12    # "$i$a$-fastSumBy-LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1$averageItemSize$size$2":I
    add-int/2addr v3, v11

    .line 192
    nop

    .line 190
    .end local v9    # "element$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-fastForEach-ListUtilsKt$fastSumBy$2$iv":I
    nop

    .line 188
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 193
    .end local v6    # "index$iv$iv":I
    :cond_2
    nop

    .line 194
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    nop

    .line 120
    .end local v1    # "$this$fastSumBy$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastSumBy":I
    .end local v3    # "sum$iv":I
    :goto_2
    move v1, v3

    .line 125
    .local v1, "size":I
    int-to-float v2, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .end local v1    # "size":I
    goto :goto_3

    .line 127
    :cond_3
    const/4 v2, 0x0

    .line 119
    :goto_3
    return v2
.end method

.method public calculateApproachOffset(F)F
    .locals 6
    .param p1, "initialVelocity"    # F

    .line 53
    iget-object v0, p0, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$lazyGridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getDensity$foundation_release()Landroidx/compose/ui/unit/Density;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/animation/SplineBasedDecayKt;->splineBasedDecay(Landroidx/compose/ui/unit/Density;)Landroidx/compose/animation/core/DecayAnimationSpec;

    move-result-object v0

    .line 55
    .local v0, "decayAnimationSpec":Landroidx/compose/animation/core/DecayAnimationSpec;
    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroidx/compose/animation/core/DecayAnimationSpecKt;->calculateTargetValue(Landroidx/compose/animation/core/DecayAnimationSpec;FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 54
    nop

    .line 57
    .local v2, "offset":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->averageItemSize()F

    move-result v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 61
    .local v3, "estimatedNumberOfItemsInDecay":F
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->averageItemSize()F

    move-result v4

    mul-float/2addr v4, v3

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->averageItemSize()F

    move-result v5

    sub-float/2addr v4, v5

    .line 62
    .local v4, "approachOffset":F
    invoke-static {v4, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v5

    .line 64
    .local v5, "finalDecayOffset":F
    cmpg-float v1, v5, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 65
    move v1, v5

    goto :goto_1

    .line 67
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v1, v5

    .line 64
    :goto_1
    return v1
.end method

.method public calculateSnappingOffset(F)F
    .locals 18
    .param p1, "currentVelocity"    # F

    .line 84
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "distanceFromItemBeforeTarget":F
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 85
    const/4 v2, 0x0

    .local v2, "distanceFromItemAfterTarget":F
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 87
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v3

    .local v3, "$this$fastForEach$iv":Ljava/util/List;
    iget-object v11, v0, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$positionInLayout:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;

    const/4 v12, 0x0

    .line 166
    .local v12, "$i$f$fastForEach":I
    nop

    .line 167
    const/4 v4, 0x0

    .local v4, "index$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    move v14, v4

    .end local v4    # "index$iv":I
    .local v14, "index$iv":I
    :goto_0
    if-ge v14, v13, :cond_2

    .line 168
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 169
    .local v15, "item$iv":Ljava/lang/Object;
    move-object v10, v15

    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .local v10, "item":Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
    const/16 v16, 0x0

    .line 90
    .local v16, "$i$a$-fastForEach-LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1$calculateSnappingOffset$1":I
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->getSingleAxisViewportSize(Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;)I

    move-result v4

    .line 91
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getBeforeContentPadding()I

    move-result v5

    .line 92
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getAfterContentPadding()I

    move-result v6

    .line 93
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v7

    invoke-interface {v7}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v7

    invoke-static {v10, v7}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->sizeOnMainAxis(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result v7

    .line 94
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v8

    invoke-interface {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v8

    invoke-static {v10, v8}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->offsetOnMainAxis(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result v8

    .line 95
    invoke-interface {v10}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getIndex()I

    move-result v9

    .line 96
    nop

    .line 89
    move-object/from16 v17, v10

    .end local v10    # "item":Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
    .local v17, "item":Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
    move-object v10, v11

    invoke-static/range {v4 .. v10}, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayoutKt;->calculateDistanceToDesiredSnapPosition(IIIIIILandroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)F

    move-result v4

    .line 88
    nop

    .line 100
    .local v4, "distance":F
    const/4 v5, 0x0

    cmpg-float v6, v4, v5

    if-gtz v6, :cond_0

    cmpl-float v6, v4, v1

    if-lez v6, :cond_0

    .line 101
    move v1, v4

    .line 105
    :cond_0
    cmpl-float v5, v4, v5

    if-ltz v5, :cond_1

    cmpg-float v5, v4, v2

    if-gez v5, :cond_1

    .line 106
    move v2, v4

    .line 108
    :cond_1
    nop

    .line 169
    .end local v4    # "distance":F
    .end local v16    # "$i$a$-fastForEach-LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1$calculateSnappingOffset$1":I
    .end local v17    # "item":Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
    nop

    .line 167
    .end local v15    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 171
    .end local v14    # "index$iv":I
    :cond_2
    nop

    .line 111
    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v12    # "$i$f$fastForEach":I
    iget-object v3, v0, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$lazyGridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getDensity$foundation_release()Landroidx/compose/ui/unit/Density;

    move-result-object v3

    .line 172
    .local v3, "$this$calculateSnappingOffset_u24lambda_u242":Landroidx/compose/ui/unit/Density;
    const/4 v4, 0x0

    .line 111
    .local v4, "$i$a$-with-LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1$calculateSnappingOffset$2":I
    move/from16 v5, p1

    invoke-static {v3, v5}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt;->calculateFinalSnappingItem(Landroidx/compose/ui/unit/Density;F)I

    move-result v3

    .line 112
    .end local v3    # "$this$calculateSnappingOffset_u24lambda_u242":Landroidx/compose/ui/unit/Density;
    .end local v4    # "$i$a$-with-LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1$calculateSnappingOffset$2":I
    nop

    .line 113
    nop

    .line 110
    invoke-static {v3, v1, v2}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->calculateFinalOffset-Fhqu1e0(IFF)F

    move-result v3

    return v3
.end method
