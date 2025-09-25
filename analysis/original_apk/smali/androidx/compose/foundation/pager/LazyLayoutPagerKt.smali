.class public final Landroidx/compose/foundation/pager/LazyLayoutPagerKt;
.super Ljava/lang/Object;
.source "LazyLayoutPager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyLayoutPager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyLayoutPager.kt\nandroidx/compose/foundation/pager/LazyLayoutPagerKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,328:1\n154#2:329\n1116#3,6:330\n1116#3,6:336\n1116#3,6:344\n1116#3,6:351\n1116#3,6:362\n50#4:342\n49#4:343\n36#4:350\n83#4,3:359\n74#5:357\n74#5:358\n*S KotlinDebug\n*F\n+ 1 LazyLayoutPager.kt\nandroidx/compose/foundation/pager/LazyLayoutPagerKt\n*L\n83#1:329\n108#1:330,6\n122#1:336,6\n125#1:344,6\n135#1:351,6\n251#1:362,6\n125#1:342\n125#1:343\n135#1:350\n251#1:359,3\n156#1:357\n164#1:358\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u00d6\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162#\u0010\u0017\u001a\u001f\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001b\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u00182\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 21\u0010!\u001a-\u0012\u0004\u0012\u00020#\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008($\u0012\u0004\u0012\u00020\u00010\"\u00a2\u0006\u0002\u0008%\u00a2\u0006\u0002\u0008&H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010(\u001a\u0081\u0001\u0010)\u001a\u0008\u0012\u0004\u0012\u00020+0*2\u0006\u0010\u0004\u001a\u00020\u000521\u0010!\u001a-\u0012\u0004\u0012\u00020#\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008($\u0012\u0004\u0012\u00020\u00010\"\u00a2\u0006\u0002\u0008%\u00a2\u0006\u0002\u0008&2#\u0010\u0017\u001a\u001f\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001b\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u00182\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00100*H\u0003\u00a2\u0006\u0002\u0010-\u001a\u0014\u0010.\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006/"
    }
    d2 = {
        "Pager",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "state",
        "Landroidx/compose/foundation/pager/PagerState;",
        "contentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "reverseLayout",
        "",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "flingBehavior",
        "Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;",
        "userScrollEnabled",
        "beyondBoundsPageCount",
        "",
        "pageSpacing",
        "Landroidx/compose/ui/unit/Dp;",
        "pageSize",
        "Landroidx/compose/foundation/pager/PageSize;",
        "pageNestedScrollConnection",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "key",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "index",
        "",
        "horizontalAlignment",
        "Landroidx/compose/ui/Alignment$Horizontal;",
        "verticalAlignment",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "pageContent",
        "Lkotlin/Function2;",
        "Landroidx/compose/foundation/pager/PagerScope;",
        "page",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "Pager-fs30GE4",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZIFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V",
        "rememberPagerItemProviderLambda",
        "Lkotlin/Function0;",
        "Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;",
        "pageCount",
        "(Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;",
        "dragDirectionDetector",
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


# direct methods
.method public static final Pager-fs30GE4(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZIFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V
    .locals 33
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "state"    # Landroidx/compose/foundation/pager/PagerState;
    .param p2, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p3, "reverseLayout"    # Z
    .param p4, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p5, "flingBehavior"    # Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .param p6, "userScrollEnabled"    # Z
    .param p7, "beyondBoundsPageCount"    # I
    .param p8, "pageSpacing"    # F
    .param p9, "pageSize"    # Landroidx/compose/foundation/pager/PageSize;
    .param p10, "pageNestedScrollConnection"    # Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .param p11, "key"    # Lkotlin/jvm/functions/Function1;
    .param p12, "horizontalAlignment"    # Landroidx/compose/ui/Alignment$Horizontal;
    .param p13, "verticalAlignment"    # Landroidx/compose/ui/Alignment$Vertical;
    .param p14, "pageContent"    # Lkotlin/jvm/functions/Function4;
    .param p15, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p16, "$changed"    # I
    .param p17, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/pager/PagerState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;",
            "ZIF",
            "Landroidx/compose/foundation/pager/PageSize;",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/foundation/pager/PagerScope;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 96
    move-object/from16 v15, p1

    move/from16 v14, p3

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    move/from16 v11, p18

    const v0, -0x11fabc8f

    move-object/from16 v1, p15

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p15    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Pager)P(5,12,1,11,6,2,13!1,10:c#ui.unit.Dp,9,8,4!1,14)101@4846L18,103@4894L134,109@5054L534,124@5619L94,128@5739L115,134@5889L49,140@6089L276,149@6485L150,155@6798L7,148@6429L478,163@7131L7,136@5944L1832:LazyLayoutPager.kt#g6yjnt"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v9, p16

    .local v9, "$dirty":I
    move/from16 v8, p17

    .local v8, "$dirty1":I
    and-int/lit16 v1, v11, 0x80

    if-eqz v1, :cond_0

    .line 81
    const/4 v1, 0x0

    move v7, v1

    .end local p7    # "beyondBoundsPageCount":I
    .local v1, "beyondBoundsPageCount":I
    goto :goto_0

    .line 96
    .end local v1    # "beyondBoundsPageCount":I
    .restart local p7    # "beyondBoundsPageCount":I
    :cond_0
    move/from16 v7, p7

    .line 81
    .end local p7    # "beyondBoundsPageCount":I
    .local v7, "beyondBoundsPageCount":I
    :goto_0
    and-int/lit16 v1, v11, 0x100

    if-eqz v1, :cond_1

    .line 83
    const/4 v1, 0x0

    .local v1, "$this$dp$iv":I
    const/4 v2, 0x0

    .line 329
    .local v2, "$i$f$getDp":I
    int-to-float v3, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    move/from16 v19, v1

    .end local v2    # "$i$f$getDp":I
    .end local p8    # "pageSpacing":F
    .local v1, "pageSpacing":F
    goto :goto_1

    .line 81
    .end local v1    # "pageSpacing":F
    .restart local p8    # "pageSpacing":F
    :cond_1
    move/from16 v19, p8

    .line 329
    .end local p8    # "pageSpacing":F
    .local v19, "pageSpacing":F
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    const-string/jumbo v1, "androidx.compose.foundation.pager.Pager (LazyLayoutPager.kt:95)"

    invoke-static {v0, v9, v8, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 97
    :cond_2
    const/16 v16, 0x1

    const/16 v17, 0x0

    if-ltz v7, :cond_3

    move/from16 v0, v16

    goto :goto_2

    :cond_3
    move/from16 v0, v17

    :goto_2
    if-eqz v0, :cond_f

    .line 102
    sget-object v0, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    const/4 v6, 0x6

    invoke-virtual {v0, v10, v6}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->overscrollEffect(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/OverscrollEffect;

    move-result-object v5

    .line 105
    .local v5, "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    nop

    .line 106
    nop

    .line 107
    const v0, -0x2bd0a5d8

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 108
    nop

    .local v0, "invalid$iv":Z
    move-object v1, v10

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 330
    .local v2, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 331
    .local v4, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_5

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v3, v6, :cond_4

    goto :goto_3

    .line 335
    :cond_4
    move/from16 p8, v0

    move-object v0, v3

    goto :goto_4

    .line 332
    :cond_5
    :goto_3
    const/4 v6, 0x0

    .line 108
    .local v6, "$i$a$-cache-LazyLayoutPagerKt$Pager$pagerItemProvider$1":I
    move/from16 p8, v0

    .end local v0    # "invalid$iv":Z
    .local p8, "invalid$iv":Z
    new-instance v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$pagerItemProvider$1$1;

    invoke-direct {v0, v15}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$pagerItemProvider$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 332
    .end local v6    # "$i$a$-cache-LazyLayoutPagerKt$Pager$pagerItemProvider$1":I
    nop

    .line 333
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 334
    nop

    .line 331
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_4
    nop

    .line 330
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 108
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v2    # "$i$f$cache":I
    .end local p8    # "invalid$iv":Z
    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    shr-int/lit8 v0, v9, 0x3

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v1, v8, 0x9

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    shl-int/lit8 v1, v8, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int v6, v0, v1

    .line 104
    move-object/from16 v0, p1

    move-object/from16 v1, p14

    move-object/from16 v2, p11

    move-object v4, v10

    move-object/from16 v20, v5

    .end local v5    # "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    .local v20, "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    move v5, v6

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->rememberPagerItemProviderLambda(Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;

    move-result-object v21

    .line 121
    .local v21, "pagerItemProvider":Lkotlin/jvm/functions/Function0;
    invoke-static {}, Landroidx/compose/foundation/pager/PagerStateKt;->getSnapAlignmentStartToStart()Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;

    move-result-object v18

    .line 120
    nop

    .line 111
    nop

    .line 112
    nop

    .line 113
    nop

    .line 114
    nop

    .line 115
    nop

    .line 116
    nop

    .line 117
    nop

    .line 118
    nop

    .line 119
    nop

    .line 121
    const v0, -0x2bd0a3ae

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 122
    nop

    .local v0, "invalid$iv":Z
    move-object v1, v10

    .restart local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 336
    .restart local v2    # "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 337
    .restart local v4    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_7

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_6

    goto :goto_5

    .line 341
    :cond_6
    move-object v5, v3

    goto :goto_6

    .line 338
    :cond_7
    :goto_5
    const/4 v5, 0x0

    .line 122
    .local v5, "$i$a$-cache-LazyLayoutPagerKt$Pager$measurePolicy$1":I
    new-instance v6, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$measurePolicy$1$1;

    invoke-direct {v6, v15}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$measurePolicy$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 338
    .end local v5    # "$i$a$-cache-LazyLayoutPagerKt$Pager$measurePolicy$1":I
    move-object v5, v6

    .line 339
    .local v5, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 340
    nop

    .line 337
    .end local v5    # "value$iv":Ljava/lang/Object;
    :goto_6
    nop

    .line 336
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 122
    .end local v0    # "invalid$iv":Z
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v2    # "$i$f$cache":I
    move-object/from16 v22, v5

    check-cast v22, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    and-int/lit8 v0, v9, 0x70

    and-int/lit16 v1, v9, 0x380

    or-int/2addr v0, v1

    and-int/lit16 v1, v9, 0x1c00

    or-int/2addr v0, v1

    const v23, 0xe000

    and-int v1, v9, v23

    or-int/2addr v0, v1

    shr-int/lit8 v1, v9, 0x6

    const/high16 v24, 0x70000

    and-int v1, v1, v24

    or-int/2addr v0, v1

    shr-int/lit8 v1, v9, 0x6

    const/high16 v25, 0x380000

    and-int v1, v1, v25

    or-int/2addr v0, v1

    shr-int/lit8 v1, v9, 0x6

    const/high16 v2, 0x1c00000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 v1, v8, 0x12

    const/high16 v2, 0xe000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 v1, v8, 0x12

    const/high16 v2, 0x70000000

    and-int/2addr v1, v2

    or-int v26, v0, v1

    const/16 v27, 0x0

    .line 110
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move v5, v7

    const/16 v28, 0x6

    move/from16 v6, v19

    move/from16 v29, v7

    .end local v7    # "beyondBoundsPageCount":I
    .local v29, "beyondBoundsPageCount":I
    move-object/from16 v7, p9

    move/from16 v30, v8

    .end local v8    # "$dirty1":I
    .local v30, "$dirty1":I
    move-object/from16 v8, p12

    move/from16 v31, v9

    .end local v9    # "$dirty":I
    .local v31, "$dirty":I
    move-object/from16 v9, p13

    move-object/from16 p7, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local p7, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v10, v18

    move-object/from16 v11, v22

    move-object/from16 v12, p7

    move/from16 v13, v26

    move/from16 v14, v27

    invoke-static/range {v0 .. v14}, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt;->rememberPagerMeasurePolicy-121YqSk(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;IFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Lkotlin/jvm/functions/Function2;

    move-result-object v22

    .local v22, "measurePolicy":Lkotlin/jvm/functions/Function2;
    move/from16 v14, v31

    .end local v31    # "$dirty":I
    .local v14, "$dirty":I
    shr-int/lit8 v0, v14, 0xf

    and-int/lit8 v0, v0, 0xe

    and-int/lit8 v1, v14, 0x70

    or-int/2addr v0, v1

    .line 125
    nop

    .local v0, "$changed$iv":I
    const/4 v1, 0x0

    .local v1, "$i$f$remember":I
    const v2, 0x1e7b2b64

    move-object/from16 v13, p7

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v13, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 342
    move-object/from16 v12, p5

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 343
    nop

    .local v2, "invalid$iv$iv":Z
    move-object v3, v13

    .local v3, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 344
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 345
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v2, :cond_9

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_8

    goto :goto_7

    .line 349
    :cond_8
    move-object v7, v5

    goto :goto_8

    .line 346
    :cond_9
    :goto_7
    const/4 v7, 0x0

    .line 126
    .local v7, "$i$a$-remember-LazyLayoutPagerKt$Pager$pagerFlingBehavior$1":I
    new-instance v8, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    invoke-direct {v8, v12, v15}, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/pager/PagerState;)V

    .line 346
    .end local v7    # "$i$a$-remember-LazyLayoutPagerKt$Pager$pagerFlingBehavior$1":I
    move-object v7, v8

    .line 347
    .local v7, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 348
    nop

    .line 345
    .end local v7    # "value$iv$iv":Ljava/lang/Object;
    :goto_8
    nop

    .line 344
    .end local v5    # "it$iv$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 343
    .end local v2    # "invalid$iv$iv":Z
    .end local v3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 125
    .end local v0    # "$changed$iv":I
    .end local v1    # "$i$f$remember":I
    move-object/from16 v26, v7

    check-cast v26, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    .line 130
    .local v26, "pagerFlingBehavior":Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;
    nop

    .line 131
    nop

    .line 132
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    move-object/from16 v11, p4

    if-ne v11, v0, :cond_a

    move/from16 v0, v16

    goto :goto_9

    :cond_a
    move/from16 v0, v17

    :goto_9
    shr-int/lit8 v1, v14, 0x3

    and-int/lit8 v1, v1, 0xe

    shr-int/lit8 v2, v14, 0x6

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    .line 129
    move/from16 v10, p3

    invoke-static {v15, v10, v0, v13, v1}, Landroidx/compose/foundation/pager/PagerSemanticsKt;->rememberPagerSemanticState(Landroidx/compose/foundation/pager/PagerState;ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    move-result-object v27

    .local v27, "semanticState":Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;
    shr-int/lit8 v0, v14, 0x3

    and-int/lit8 v0, v0, 0xe

    .line 135
    nop

    .restart local v0    # "$changed$iv":I
    const/4 v1, 0x0

    .restart local v1    # "$i$f$remember":I
    const v2, 0x44faf204

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v13, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 350
    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    .restart local v2    # "invalid$iv$iv":Z
    move-object v3, v13

    .restart local v3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 351
    .restart local v4    # "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "it$iv$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 352
    .restart local v6    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v2, :cond_c

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_b

    goto :goto_a

    .line 356
    :cond_b
    move-object v7, v5

    goto :goto_b

    .line 353
    :cond_c
    :goto_a
    const/4 v7, 0x0

    .line 135
    .local v7, "$i$a$-remember-LazyLayoutPagerKt$Pager$pagerBringIntoViewSpec$1":I
    new-instance v8, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;

    invoke-direct {v8, v15}, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;-><init>(Landroidx/compose/foundation/pager/PagerState;)V

    .line 353
    .end local v7    # "$i$a$-remember-LazyLayoutPagerKt$Pager$pagerBringIntoViewSpec$1":I
    move-object v7, v8

    .line 354
    .local v7, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 355
    nop

    .line 352
    .end local v7    # "value$iv$iv":Ljava/lang/Object;
    :goto_b
    nop

    .line 351
    .end local v5    # "it$iv$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 350
    .end local v2    # "invalid$iv$iv":Z
    .end local v3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 135
    .end local v0    # "$changed$iv":I
    .end local v1    # "$i$f$remember":I
    move-object/from16 v31, v7

    check-cast v31, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;

    .line 138
    .local v31, "pagerBringIntoViewSpec":Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;
    nop

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/pager/PagerState;->getRemeasurementModifier$foundation_release()Landroidx/compose/ui/layout/RemeasurementModifier;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object/from16 v9, p0

    invoke-interface {v9, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/pager/PagerState;->getAwaitLayoutModifier$foundation_release()Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/Modifier;

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 142
    nop

    .line 143
    nop

    .line 144
    nop

    .line 145
    nop

    .line 146
    shr-int/lit8 v1, v14, 0x3

    and-int/lit16 v1, v1, 0x1c00

    shr-int/lit8 v2, v14, 0x6

    and-int v2, v2, v23

    or-int/2addr v1, v2

    shl-int/lit8 v2, v14, 0x6

    and-int v2, v2, v24

    or-int v7, v1, v2

    .line 141
    move-object/from16 v1, v21

    move-object/from16 v2, v27

    move-object/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p3

    move-object v6, v13

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt;->lazyLayoutSemantics(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 148
    invoke-static {v0, v11}, Landroidx/compose/foundation/ClipScrollableContainerKt;->clipScrollableContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 151
    nop

    .line 152
    shr-int/lit8 v1, v14, 0x3

    and-int/lit8 v1, v1, 0xe

    shr-int/lit8 v2, v14, 0x12

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    .line 150
    move/from16 v8, v29

    .end local v29    # "beyondBoundsPageCount":I
    .local v8, "beyondBoundsPageCount":I
    invoke-static {v15, v8, v13, v1}, Landroidx/compose/foundation/pager/PagerBeyondBoundsModifierKt;->rememberPagerBeyondBoundsState(Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    move-result-object v1

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/pager/PagerState;->getBeyondBoundsInfo$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    move-result-object v2

    .line 155
    nop

    .line 156
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    .local v3, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v4, 0x0

    .local v4, "$changed$iv":I
    const/4 v5, 0x0

    .line 357
    .local v5, "$i$f$getCurrent":I
    const v7, 0x789c5f52

    const-string v6, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v13, v7, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v16

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v3    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v4    # "$changed$iv":I
    .end local v5    # "$i$f$getCurrent":I
    move-object/from16 v4, v16

    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 157
    nop

    .line 158
    sget v3, Landroidx/compose/runtime/collection/MutableVector;->$stable:I

    shl-int/lit8 v3, v3, 0x6

    and-int/lit16 v5, v14, 0x1c00

    or-int/2addr v3, v5

    shl-int/lit8 v5, v14, 0x3

    and-int v5, v5, v24

    or-int/2addr v3, v5

    and-int v5, v14, v25

    or-int v16, v3, v5

    .line 149
    move/from16 v3, p3

    move-object/from16 v5, p4

    move-object v9, v6

    move/from16 v6, p6

    move v12, v7

    move-object v7, v13

    .end local v8    # "beyondBoundsPageCount":I
    .restart local v29    # "beyondBoundsPageCount":I
    move/from16 v8, v16

    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocalKt;->lazyLayoutBeyondBoundsModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;ZLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 160
    move-object/from16 v8, v20

    .end local v20    # "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    .local v8, "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    invoke-static {v0, v8}, Landroidx/compose/foundation/OverscrollKt;->overscroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/OverscrollEffect;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 163
    sget-object v1, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    .line 164
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    .local v2, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v3, 0x0

    .local v3, "$changed$iv":I
    const/4 v4, 0x0

    .line 358
    .local v4, "$i$f$getCurrent":I
    invoke-static {v13, v12, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v2    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v3    # "$changed$iv":I
    .end local v4    # "$i$f$getCurrent":I
    check-cast v5, Landroidx/compose/ui/unit/LayoutDirection;

    .line 165
    nop

    .line 166
    nop

    .line 163
    invoke-virtual {v1, v5, v11, v10}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->reverseDirection(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/Orientation;Z)Z

    move-result v5

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/pager/PagerState;->getInternalInteractionSource$foundation_release()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v7

    .line 160
    nop

    .line 170
    move-object v1, v15

    check-cast v1, Landroidx/compose/foundation/gestures/ScrollableState;

    .line 162
    nop

    .line 171
    nop

    .line 172
    nop

    .line 163
    nop

    .line 169
    move-object/from16 v6, v26

    check-cast v6, Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 168
    nop

    .line 173
    move-object/from16 v9, v31

    check-cast v9, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 161
    move-object/from16 v2, p4

    move-object v3, v8

    move/from16 v4, p6

    .end local v8    # "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    .restart local v20    # "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    move-object v8, v9

    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/gestures/ScrollableKt;->scrollable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 175
    invoke-static {v0, v15}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->dragDirectionDetector(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 176
    const/4 v1, 0x2

    const/4 v2, 0x0

    move-object/from16 v12, p10

    invoke-static {v0, v12, v2, v1, v2}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->nestedScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 178
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/pager/PagerState;->getPrefetchState$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    move-result-object v3

    .line 179
    nop

    .line 176
    nop

    .line 178
    nop

    .line 177
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 137
    move-object/from16 v1, v21

    move-object/from16 v4, v22

    move-object v5, v13

    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazyLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_d
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_e

    new-instance v23, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, v29

    move-object/from16 v32, v9

    move/from16 v9, v19

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v24, v13

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .local v24, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v13, p12

    move/from16 v25, v14

    .end local v14    # "$dirty":I
    .local v25, "$dirty":I
    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZIFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function4;III)V

    move-object/from16 v0, v23

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v32

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_c

    .end local v24    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v25    # "$dirty":I
    .restart local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v14    # "$dirty":I
    :cond_e
    move-object/from16 v24, v13

    move/from16 v25, v14

    .line 181
    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v14    # "$dirty":I
    .restart local v24    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v25    # "$dirty":I
    :goto_c
    return-void

    .line 97
    .end local v20    # "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    .end local v21    # "pagerItemProvider":Lkotlin/jvm/functions/Function0;
    .end local v22    # "measurePolicy":Lkotlin/jvm/functions/Function2;
    .end local v24    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v25    # "$dirty":I
    .end local v26    # "pagerFlingBehavior":Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;
    .end local v27    # "semanticState":Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;
    .end local v29    # "beyondBoundsPageCount":I
    .end local v30    # "$dirty1":I
    .end local v31    # "pagerBringIntoViewSpec":Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;
    .local v7, "beyondBoundsPageCount":I
    .local v8, "$dirty1":I
    .restart local v9    # "$dirty":I
    .restart local v10    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_f
    move/from16 v29, v7

    .end local v7    # "beyondBoundsPageCount":I
    .restart local v29    # "beyondBoundsPageCount":I
    const/4 v0, 0x0

    .line 98
    .local v0, "$i$a$-require-LazyLayoutPagerKt$Pager$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "beyondBoundsPageCount should be greater than or equal to 0, you selected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 99
    nop

    .line 98
    move/from16 v2, v29

    .end local v29    # "beyondBoundsPageCount":I
    .local v2, "beyondBoundsPageCount":I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .end local v0    # "$i$a$-require-LazyLayoutPagerKt$Pager$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final dragDirectionDetector(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;)Landroidx/compose/ui/Modifier;
    .locals 3
    .param p0, "$this$dragDirectionDetector"    # Landroidx/compose/ui/Modifier;
    .param p1, "state"    # Landroidx/compose/foundation/pager/PagerState;

    .line 273
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    new-instance v1, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$dragDirectionDetector$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$dragDirectionDetector$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p1, v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 291
    return-object v0
.end method

.method private static final rememberPagerItemProviderLambda(Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;
    .locals 17
    .param p0, "state"    # Landroidx/compose/foundation/pager/PagerState;
    .param p1, "pageContent"    # Lkotlin/jvm/functions/Function4;
    .param p2, "key"    # Lkotlin/jvm/functions/Function1;
    .param p3, "pageCount"    # Lkotlin/jvm/functions/Function0;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/pager/PagerState;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/foundation/pager/PagerScope;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    const v4, -0x51cec4ba

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "C(rememberPagerItemProviderLambda)P(3,1)248@10137L33,249@10191L25,250@10228L677:LazyLayoutPager.kt#g6yjnt"

    invoke-static {v2, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 248
    const/4 v5, -0x1

    const-string/jumbo v6, "androidx.compose.foundation.pager.rememberPagerItemProviderLambda (LazyLayoutPager.kt:247)"

    invoke-static {v4, v3, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 249
    :cond_0
    shr-int/lit8 v4, v3, 0x3

    and-int/lit8 v4, v4, 0xe

    move-object/from16 v5, p1

    invoke-static {v5, v2, v4}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    .line 250
    .local v4, "latestContent":Landroidx/compose/runtime/State;
    shr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0xe

    move-object/from16 v7, p2

    invoke-static {v7, v2, v6}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v6

    .line 251
    .local v6, "latestKey":Landroidx/compose/runtime/State;
    filled-new-array {v0, v4, v6, v1}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x8

    .local v8, "keys$iv":[Ljava/lang/Object;
    .local v9, "$changed$iv":I
    const/4 v10, 0x0

    .local v10, "$i$f$remember":I
    const v11, -0x21de6e89

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v2, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 359
    const/4 v11, 0x0

    .line 360
    .local v11, "invalid$iv":Z
    array-length v12, v8

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v12, :cond_1

    aget-object v14, v8, v13

    .local v14, "key$iv":Ljava/lang/Object;
    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v11, v15

    .end local v14    # "key$iv":Ljava/lang/Object;
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 361
    :cond_1
    move-object/from16 v12, p4

    .local v12, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 362
    .local v13, "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 363
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v11, :cond_3

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v14, v2, :cond_2

    goto :goto_1

    .line 367
    :cond_2
    move-object v1, v14

    goto :goto_2

    .line 364
    :cond_3
    :goto_1
    const/4 v2, 0x0

    .line 252
    .local v2, "$i$a$-remember-LazyLayoutPagerKt$rememberPagerItemProviderLambda$1":I
    move/from16 v16, v2

    .end local v2    # "$i$a$-remember-LazyLayoutPagerKt$rememberPagerItemProviderLambda$1":I
    .local v16, "$i$a$-remember-LazyLayoutPagerKt$rememberPagerItemProviderLambda$1":I
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->referentialEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v2

    new-instance v3, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$rememberPagerItemProviderLambda$1$intervalContentState$1;

    invoke-direct {v3, v4, v6, v1}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$rememberPagerItemProviderLambda$1$intervalContentState$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v2

    .line 255
    .local v2, "intervalContentState":Landroidx/compose/runtime/State;
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->referentialEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v3

    new-instance v1, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$rememberPagerItemProviderLambda$1$itemProviderState$1;

    invoke-direct {v1, v2, v0}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$rememberPagerItemProviderLambda$1$itemProviderState$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/foundation/pager/PagerState;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v1}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v1

    .line 264
    .local v1, "itemProviderState":Landroidx/compose/runtime/State;
    new-instance v3, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$rememberPagerItemProviderLambda$1$1;

    invoke-direct {v3, v1}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$rememberPagerItemProviderLambda$1$1;-><init>(Ljava/lang/Object;)V

    check-cast v3, Lkotlin/reflect/KProperty0;

    .line 364
    .end local v1    # "itemProviderState":Landroidx/compose/runtime/State;
    .end local v2    # "intervalContentState":Landroidx/compose/runtime/State;
    .end local v16    # "$i$a$-remember-LazyLayoutPagerKt$rememberPagerItemProviderLambda$1":I
    move-object v1, v3

    .line 365
    .local v1, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 366
    nop

    .line 363
    .end local v1    # "value$iv$iv":Ljava/lang/Object;
    :goto_2
    nop

    .line 362
    .end local v14    # "it$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 361
    .end local v12    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 251
    .end local v8    # "keys$iv":[Ljava/lang/Object;
    .end local v9    # "$changed$iv":I
    .end local v10    # "$i$f$remember":I
    .end local v11    # "invalid$iv":Z
    check-cast v1, Lkotlin/reflect/KProperty0;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    return-object v1
.end method
