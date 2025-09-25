.class public final Landroidx/compose/foundation/pager/PagerMeasurePolicyKt;
.super Ljava/lang/Object;
.source "PagerMeasurePolicy.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPagerMeasurePolicy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PagerMeasurePolicy.kt\nandroidx/compose/foundation/pager/PagerMeasurePolicyKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,221:1\n195#1,4:240\n83#2,3:222\n1116#3,6:225\n116#4,2:231\n33#4,6:233\n118#4:239\n*S KotlinDebug\n*F\n+ 1 PagerMeasurePolicy.kt\nandroidx/compose/foundation/pager/PagerMeasurePolicyKt\n*L\n213#1:240,4\n57#1:222,3\n57#1:225,6\n203#1:231,2\n203#1:233,6\n203#1:239\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\u0017\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0082\u0008\u001a\u0099\u0001\u0010\u0007\u001a\u0019\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\u0008\u00a2\u0006\u0002\u0008\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00052\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020!2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0005H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008#\u0010$\u001a\u0014\u0010%\u001a\u00020\u0017*\u00020\u00102\u0006\u0010&\u001a\u00020\u0017H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\'"
    }
    d2 = {
        "DEBUG",
        "",
        "debugLog",
        "",
        "generateMsg",
        "Lkotlin/Function0;",
        "",
        "rememberPagerMeasurePolicy",
        "Lkotlin/Function2;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Lkotlin/ExtensionFunctionType;",
        "itemProviderLambda",
        "Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;",
        "state",
        "Landroidx/compose/foundation/pager/PagerState;",
        "contentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "reverseLayout",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "beyondBoundsPageCount",
        "",
        "pageSpacing",
        "Landroidx/compose/ui/unit/Dp;",
        "pageSize",
        "Landroidx/compose/foundation/pager/PageSize;",
        "horizontalAlignment",
        "Landroidx/compose/ui/Alignment$Horizontal;",
        "verticalAlignment",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "snapPositionInLayout",
        "Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;",
        "pageCount",
        "rememberPagerMeasurePolicy-121YqSk",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;IFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Lkotlin/jvm/functions/Function2;",
        "calculateCurrentPageLayoutOffset",
        "pageSizeWithSpacing",
        "foundation_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DEBUG:Z = false


# direct methods
.method public static final calculateCurrentPageLayoutOffset(Landroidx/compose/foundation/pager/PagerState;I)I
    .locals 14
    .param p0, "$this$calculateCurrentPageLayoutOffset"    # Landroidx/compose/foundation/pager/PagerState;
    .param p1, "pageSizeWithSpacing"    # I

    .line 203
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getVisiblePagesInfo()Ljava/util/List;

    move-result-object v0

    .local v0, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 231
    .local v1, "$i$f$fastFirstOrNull":I
    nop

    .line 232
    move-object v2, v0

    .local v2, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 233
    .local v3, "$i$f$fastForEach":I
    nop

    .line 234
    const/4 v4, 0x0

    .local v4, "index$iv$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    const/4 v6, 0x0

    if-ge v4, v5, :cond_2

    .line 235
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 236
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 232
    .local v9, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v10, v8

    check-cast v10, Landroidx/compose/foundation/pager/PageInfo;

    .local v10, "it":Landroidx/compose/foundation/pager/PageInfo;
    const/4 v11, 0x0

    .line 203
    .local v11, "$i$a$-fastFirstOrNull-PagerMeasurePolicyKt$calculateCurrentPageLayoutOffset$previousPassOffset$1":I
    invoke-interface {v10}, Landroidx/compose/foundation/pager/PageInfo;->getIndex()I

    move-result v12

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v13

    if-ne v12, v13, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    move v12, v6

    .line 232
    .end local v10    # "it":Landroidx/compose/foundation/pager/PageInfo;
    .end local v11    # "$i$a$-fastFirstOrNull-PagerMeasurePolicyKt$calculateCurrentPageLayoutOffset$previousPassOffset$1":I
    :goto_1
    if-eqz v12, :cond_1

    goto :goto_2

    .line 236
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_1
    nop

    .line 234
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 238
    .end local v4    # "index$iv$iv":I
    :cond_2
    nop

    .line 239
    .end local v2    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    const/4 v8, 0x0

    .line 203
    .end local v0    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastFirstOrNull":I
    :goto_2
    check-cast v8, Landroidx/compose/foundation/pager/PageInfo;

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroidx/compose/foundation/pager/PageInfo;->getOffset()I

    move-result v6

    goto :goto_3

    .line 204
    :cond_3
    nop

    .line 203
    :goto_3
    nop

    .line 202
    move v0, v6

    .line 206
    .local v0, "previousPassOffset":I
    if-nez p1, :cond_4

    .line 207
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPageOffsetFraction()F

    move-result v1

    goto :goto_4

    .line 209
    :cond_4
    int-to-float v1, v0

    neg-float v1, v1

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 206
    :goto_4
    nop

    .line 212
    .local v1, "previousPassFraction":F
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPageOffsetFraction()F

    move-result v2

    sub-float/2addr v2, v1

    .line 213
    .local v2, "fractionDiff":F
    const/4 v3, 0x0

    .line 240
    .local v3, "$i$f$debugLog":I
    nop

    .line 243
    nop

    .line 219
    .end local v3    # "$i$f$debugLog":I
    int-to-float v3, p1

    mul-float/2addr v3, v2

    int-to-float v4, v0

    sub-float/2addr v3, v4

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    neg-int v3, v3

    return v3
.end method

.method private static final debugLog(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p0, "generateMsg"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 195
    .local v0, "$i$f$debugLog":I
    nop

    .line 198
    return-void
.end method

.method public static final rememberPagerMeasurePolicy-121YqSk(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;IFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Lkotlin/jvm/functions/Function2;
    .locals 26
    .param p0, "itemProviderLambda"    # Lkotlin/jvm/functions/Function0;
    .param p1, "state"    # Landroidx/compose/foundation/pager/PagerState;
    .param p2, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p3, "reverseLayout"    # Z
    .param p4, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p5, "beyondBoundsPageCount"    # I
    .param p6, "pageSpacing"    # F
    .param p7, "pageSize"    # Landroidx/compose/foundation/pager/PageSize;
    .param p8, "horizontalAlignment"    # Landroidx/compose/ui/Alignment$Horizontal;
    .param p9, "verticalAlignment"    # Landroidx/compose/ui/Alignment$Vertical;
    .param p10, "snapPositionInLayout"    # Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;
    .param p11, "pageCount"    # Lkotlin/jvm/functions/Function0;
    .param p12, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p13, "$changed"    # I
    .param p14, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;",
            ">;",
            "Landroidx/compose/foundation/pager/PagerState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "IF",
            "Landroidx/compose/foundation/pager/PageSize;",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p12

    const v1, -0x604e05ba

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(rememberPagerMeasurePolicy)P(3,10,1,8,4!1,7:c#ui.unit.Dp,6!1,11,9)56@2324L5682:PagerMeasurePolicy.kt#g6yjnt"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const-string/jumbo v2, "androidx.compose.foundation.pager.rememberPagerMeasurePolicy (PagerMeasurePolicy.kt:56)"

    move/from16 v3, p13

    move/from16 v4, p14

    invoke-static {v1, v3, v4, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_0

    .line 0
    :cond_0
    move/from16 v3, p13

    move/from16 v4, p14

    .line 58
    :goto_0
    nop

    .line 59
    nop

    .line 58
    nop

    .line 60
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 58
    nop

    .line 61
    nop

    .line 58
    nop

    .line 62
    nop

    .line 58
    nop

    .line 63
    nop

    .line 58
    nop

    .line 64
    invoke-static/range {p6 .. p6}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v11

    .line 58
    nop

    .line 65
    nop

    .line 58
    nop

    .line 66
    nop

    .line 58
    nop

    .line 67
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    filled-new-array/range {v5 .. v14}, [Ljava/lang/Object;

    move-result-object v1

    .line 58
    nop

    .line 57
    nop

    .local v1, "keys$iv":[Ljava/lang/Object;
    const/16 v2, 0x8

    .local v2, "$changed$iv":I
    const/4 v5, 0x0

    .local v5, "$i$f$remember":I
    const v6, -0x21de6e89

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v0, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 222
    const/4 v6, 0x0

    .line 223
    .local v6, "invalid$iv":Z
    array-length v7, v1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v1, v8

    .local v9, "key$iv":Ljava/lang/Object;
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v6, v10

    .end local v9    # "key$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 224
    :cond_1
    move-object/from16 v7, p12

    .local v7, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 225
    .local v8, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 226
    .local v10, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v6, :cond_3

    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v9, v11, :cond_2

    goto :goto_2

    .line 230
    :cond_2
    move-object v11, v9

    goto :goto_3

    .line 227
    :cond_3
    :goto_2
    const/4 v11, 0x0

    .line 69
    .local v11, "$i$a$-remember-PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1":I
    new-instance v25, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;

    move-object/from16 v12, v25

    move-object/from16 v13, p4

    move-object/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v16, p1

    move/from16 v17, p6

    move-object/from16 v18, p7

    move-object/from16 v19, p0

    move-object/from16 v20, p11

    move-object/from16 v21, p9

    move-object/from16 v22, p8

    move/from16 v23, p5

    move-object/from16 v24, p10

    invoke-direct/range {v12 .. v24}, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;-><init>(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/pager/PagerState;FLandroidx/compose/foundation/pager/PageSize;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Horizontal;ILandroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)V

    check-cast v25, Lkotlin/jvm/functions/Function2;

    .line 227
    .end local v11    # "$i$a$-remember-PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1":I
    move-object/from16 v11, v25

    .line 228
    .local v11, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 229
    nop

    .line 226
    .end local v11    # "value$iv$iv":Ljava/lang/Object;
    :goto_3
    nop

    .line 225
    .end local v9    # "it$iv$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 224
    .end local v7    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache":I
    invoke-interface/range {p12 .. p12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 57
    .end local v1    # "keys$iv":[Ljava/lang/Object;
    .end local v2    # "$changed$iv":I
    .end local v5    # "$i$f$remember":I
    .end local v6    # "invalid$iv":Z
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface/range {p12 .. p12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v11
.end method
