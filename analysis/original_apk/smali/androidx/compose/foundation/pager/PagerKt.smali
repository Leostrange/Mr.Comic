.class public final Landroidx/compose/foundation/pager/PagerKt;
.super Ljava/lang/Object;
.source "Pager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pager.kt\nandroidx/compose/foundation/pager/PagerKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 6 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n*L\n1#1,970:1\n154#2:971\n154#2:972\n154#2:980\n154#2:981\n36#3:973\n36#3:982\n25#3:993\n1116#4,6:974\n1116#4,6:983\n1116#4,3:994\n1119#4,3:1000\n487#5,4:989\n491#5,2:997\n495#5:1003\n487#6:999\n*S KotlinDebug\n*F\n+ 1 Pager.kt\nandroidx/compose/foundation/pager/PagerKt\n*L\n112#1:971\n115#1:972\n192#1:980\n195#1:981\n121#1:973\n201#1:982\n916#1:993\n121#1:974,6\n201#1:983,6\n916#1:994,3\n916#1:1000,3\n916#1:989,4\n916#1:997,2\n916#1:1003\n916#1:999\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u001a\u00d8\u0001\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00012%\u0008\u0002\u0010\u0018\u001a\u001f\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u00192\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f21\u0010 \u001a-\u0012\u0004\u0012\u00020\"\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(#\u0012\u0004\u0012\u00020\u00060!\u00a2\u0006\u0002\u0008$\u00a2\u0006\u0002\u0008%H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008&\u0010\'\u001a.\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00082\u0006\u0010+\u001a\u00020,2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020/0.2\u0006\u00100\u001a\u00020/H\u0002\u001a\u00d8\u0001\u00101\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u00102\u001a\u0002032\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00012%\u0008\u0002\u0010\u0018\u001a\u001f\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u00192\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f21\u0010 \u001a-\u0012\u0004\u0012\u00020\"\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(#\u0012\u0004\u0012\u00020\u00060!\u00a2\u0006\u0002\u0008$\u00a2\u0006\u0002\u0008%H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u00084\u00105\u001a\u0017\u00106\u001a\u00020\u00062\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020908H\u0082\u0008\u001a\u000c\u0010:\u001a\u00020/*\u00020\u0008H\u0002\u001a\u000c\u0010;\u001a\u00020\u0001*\u00020\u0008H\u0002\u001a!\u0010<\u001a\u00020\n*\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010=\u001a\u00020\u0001H\u0001\u00a2\u0006\u0002\u0010>\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006?"
    }
    d2 = {
        "DEBUG",
        "",
        "LowVelocityAnimationDefaultDuration",
        "",
        "PagerDebugEnable",
        "HorizontalPager",
        "",
        "state",
        "Landroidx/compose/foundation/pager/PagerState;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "contentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "pageSize",
        "Landroidx/compose/foundation/pager/PageSize;",
        "beyondBoundsPageCount",
        "pageSpacing",
        "Landroidx/compose/ui/unit/Dp;",
        "verticalAlignment",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "flingBehavior",
        "Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;",
        "userScrollEnabled",
        "reverseLayout",
        "key",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "index",
        "",
        "pageNestedScrollConnection",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "pageContent",
        "Lkotlin/Function2;",
        "Landroidx/compose/foundation/pager/PagerScope;",
        "page",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "HorizontalPager-xYaah8o",
        "(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V",
        "SnapLayoutInfoProvider",
        "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;",
        "pagerState",
        "pagerSnapDistance",
        "Landroidx/compose/foundation/pager/PagerSnapDistance;",
        "decayAnimationSpec",
        "Landroidx/compose/animation/core/DecayAnimationSpec;",
        "",
        "snapPositionalThreshold",
        "VerticalPager",
        "horizontalAlignment",
        "Landroidx/compose/ui/Alignment$Horizontal;",
        "VerticalPager-xYaah8o",
        "(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V",
        "debugLog",
        "generateMsg",
        "Lkotlin/Function0;",
        "",
        "dragGestureDelta",
        "isScrollingForward",
        "pagerSemantics",
        "isVertical",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;",
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

.field private static final LowVelocityAnimationDefaultDuration:I = 0x1f4

.field public static final PagerDebugEnable:Z = false


# direct methods
.method public static final HorizontalPager-xYaah8o(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V
    .locals 35
    .param p0, "state"    # Landroidx/compose/foundation/pager/PagerState;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p3, "pageSize"    # Landroidx/compose/foundation/pager/PageSize;
    .param p4, "beyondBoundsPageCount"    # I
    .param p5, "pageSpacing"    # F
    .param p6, "verticalAlignment"    # Landroidx/compose/ui/Alignment$Vertical;
    .param p7, "flingBehavior"    # Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .param p8, "userScrollEnabled"    # Z
    .param p9, "reverseLayout"    # Z
    .param p10, "key"    # Lkotlin/jvm/functions/Function1;
    .param p11, "pageNestedScrollConnection"    # Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .param p12, "pageContent"    # Lkotlin/jvm/functions/Function4;
    .param p13, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p14, "$changed"    # I
    .param p15, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/pager/PagerState;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/pager/PageSize;",
            "IF",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;",
            "ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
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

    .line 125
    move-object/from16 v15, p0

    move/from16 v14, p14

    move/from16 v13, p15

    move/from16 v11, p16

    const v10, 0x58e189a1

    move-object/from16 v0, p13

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p13    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v0, "C(HorizontalPager)P(10,4,1,7!1,8:c#ui.unit.Dp,12!1,11,9!1,6)116@6471L28,120@6673L103,125@6846L620:Pager.kt#g6yjnt"

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v0, p14

    .local v0, "$dirty":I
    move/from16 v1, p15

    .local v1, "$dirty1":I
    and-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v14, 0xe

    if-nez v2, :cond_2

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v0, v2

    :cond_2
    :goto_1
    and-int/lit8 v2, v11, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x30

    move-object/from16 v5, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v14, 0x70

    if-nez v5, :cond_5

    move-object/from16 v5, p1

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v0, v6

    goto :goto_3

    :cond_5
    move-object/from16 v5, p1

    :goto_3
    and-int/lit8 v6, v11, 0x4

    if-eqz v6, :cond_6

    or-int/lit16 v0, v0, 0x180

    move-object/from16 v9, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v9, v14, 0x380

    if-nez v9, :cond_8

    move-object/from16 v9, p2

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_4

    :cond_7
    const/16 v16, 0x80

    :goto_4
    or-int v0, v0, v16

    goto :goto_5

    :cond_8
    move-object/from16 v9, p2

    :goto_5
    and-int/lit8 v16, v11, 0x8

    if-eqz v16, :cond_9

    or-int/lit16 v0, v0, 0xc00

    move-object/from16 v4, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v4, v14, 0x1c00

    if-nez v4, :cond_b

    move-object/from16 v4, p3

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v18, 0x800

    goto :goto_6

    :cond_a
    const/16 v18, 0x400

    :goto_6
    or-int v0, v0, v18

    goto :goto_7

    :cond_b
    move-object/from16 v4, p3

    :goto_7
    and-int/lit8 v18, v11, 0x10

    const v19, 0xe000

    if-eqz v18, :cond_c

    or-int/lit16 v0, v0, 0x6000

    move/from16 v7, p4

    goto :goto_9

    :cond_c
    and-int v20, v14, v19

    if-nez v20, :cond_e

    move/from16 v7, p4

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v21

    if-eqz v21, :cond_d

    const/16 v21, 0x4000

    goto :goto_8

    :cond_d
    const/16 v21, 0x2000

    :goto_8
    or-int v0, v0, v21

    goto :goto_9

    :cond_e
    move/from16 v7, p4

    :goto_9
    and-int/lit8 v21, v11, 0x20

    const/high16 v22, 0x70000

    if-eqz v21, :cond_f

    const/high16 v23, 0x30000

    or-int v0, v0, v23

    move/from16 v8, p5

    goto :goto_b

    :cond_f
    and-int v23, v14, v22

    if-nez v23, :cond_11

    move/from16 v8, p5

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v24

    if-eqz v24, :cond_10

    const/high16 v24, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v24, 0x10000

    :goto_a
    or-int v0, v0, v24

    goto :goto_b

    :cond_11
    move/from16 v8, p5

    :goto_b
    and-int/lit8 v24, v11, 0x40

    const/high16 v25, 0x380000

    if-eqz v24, :cond_12

    const/high16 v26, 0x180000

    or-int v0, v0, v26

    move-object/from16 v10, p6

    goto :goto_d

    :cond_12
    and-int v26, v14, v25

    if-nez v26, :cond_14

    move-object/from16 v10, p6

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_13

    const/high16 v27, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v27, 0x80000

    :goto_c
    or-int v0, v0, v27

    goto :goto_d

    :cond_14
    move-object/from16 v10, p6

    :goto_d
    const/high16 v27, 0x1c00000

    and-int v27, v14, v27

    if-nez v27, :cond_17

    and-int/lit16 v3, v11, 0x80

    if-nez v3, :cond_15

    move-object/from16 v3, p7

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16

    const/high16 v28, 0x800000

    goto :goto_e

    :cond_15
    move-object/from16 v3, p7

    :cond_16
    const/high16 v28, 0x400000

    :goto_e
    or-int v0, v0, v28

    goto :goto_f

    :cond_17
    move-object/from16 v3, p7

    :goto_f
    and-int/lit16 v9, v11, 0x100

    if-eqz v9, :cond_18

    const/high16 v28, 0x6000000

    or-int v0, v0, v28

    move/from16 v28, v9

    move/from16 v9, p8

    goto :goto_11

    :cond_18
    const/high16 v28, 0xe000000

    and-int v28, v14, v28

    if-nez v28, :cond_1a

    move/from16 v28, v9

    move/from16 v9, p8

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v29

    if-eqz v29, :cond_19

    const/high16 v29, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v29, 0x2000000

    :goto_10
    or-int v0, v0, v29

    goto :goto_11

    :cond_1a
    move/from16 v28, v9

    move/from16 v9, p8

    :goto_11
    and-int/lit16 v9, v11, 0x200

    if-eqz v9, :cond_1b

    const/high16 v29, 0x30000000

    or-int v0, v0, v29

    move/from16 v30, v0

    move/from16 v29, v9

    move/from16 v9, p9

    goto :goto_14

    :cond_1b
    const/high16 v29, 0x70000000

    and-int v29, v14, v29

    if-nez v29, :cond_1d

    move/from16 v29, v9

    move/from16 v9, p9

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v30

    if-eqz v30, :cond_1c

    const/high16 v30, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v30, 0x10000000

    :goto_12
    or-int v0, v0, v30

    goto :goto_13

    :cond_1d
    move/from16 v29, v9

    move/from16 v9, p9

    :goto_13
    move/from16 v30, v0

    .end local v0    # "$dirty":I
    .local v30, "$dirty":I
    :goto_14
    and-int/lit16 v0, v11, 0x400

    if-eqz v0, :cond_1e

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v9, p10

    goto :goto_16

    :cond_1e
    and-int/lit8 v31, v13, 0xe

    if-nez v31, :cond_20

    move-object/from16 v9, p10

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1f

    const/16 v17, 0x4

    goto :goto_15

    :cond_1f
    const/16 v17, 0x2

    :goto_15
    or-int v1, v1, v17

    goto :goto_16

    :cond_20
    move-object/from16 v9, p10

    :goto_16
    and-int/lit16 v9, v11, 0x800

    if-eqz v9, :cond_21

    or-int/lit8 v1, v1, 0x10

    :cond_21
    move/from16 v17, v0

    and-int/lit16 v0, v11, 0x1000

    if-eqz v0, :cond_22

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v0, p12

    goto :goto_18

    :cond_22
    and-int/lit16 v0, v13, 0x380

    if-nez v0, :cond_24

    move-object/from16 v0, p12

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_23

    const/16 v20, 0x100

    goto :goto_17

    :cond_23
    const/16 v20, 0x80

    :goto_17
    or-int v1, v1, v20

    goto :goto_18

    :cond_24
    move-object/from16 v0, p12

    :goto_18
    const/16 v0, 0x800

    if-ne v9, v0, :cond_26

    const v0, 0x5b6db6db

    and-int v0, v30, v0

    const v3, 0x12492492

    if-ne v0, v3, :cond_26

    and-int/lit16 v0, v1, 0x2db

    const/16 v3, 0x92

    if-ne v0, v3, :cond_26

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_19

    .line 143
    :cond_25
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v23, p2

    move-object/from16 v29, p7

    move/from16 v31, p9

    move-object/from16 v32, p10

    move-object/from16 v33, p11

    move/from16 v22, v1

    move-object/from16 v21, v4

    move-object/from16 v20, v5

    move/from16 v24, v7

    move/from16 v27, v8

    move-object/from16 v28, v10

    move-object/from16 v26, v12

    move/from16 v19, v30

    move/from16 v30, p8

    goto/16 :goto_27

    .line 125
    :cond_26
    :goto_19
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v14, 0x1

    if-eqz v0, :cond_2a

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_1a

    .line 973
    :cond_27
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_28

    const v0, -0x1c00001

    and-int v30, v30, v0

    :cond_28
    if-eqz v9, :cond_29

    and-int/lit8 v0, v1, -0x71

    move-object/from16 v23, p2

    move-object/from16 v29, p7

    move/from16 v31, p9

    move-object/from16 v32, p10

    move-object/from16 v33, p11

    move-object/from16 v21, v4

    move-object/from16 v20, v5

    move/from16 v24, v7

    move/from16 v27, v8

    move-object/from16 v28, v10

    move/from16 v9, v30

    move/from16 v30, p8

    move v10, v0

    .end local v1    # "$dirty1":I
    .local v0, "$dirty1":I
    goto/16 :goto_26

    .end local v0    # "$dirty1":I
    .restart local v1    # "$dirty1":I
    :cond_29
    move-object/from16 v23, p2

    move-object/from16 v29, p7

    move/from16 v31, p9

    move-object/from16 v32, p10

    move-object/from16 v33, p11

    move-object/from16 v21, v4

    move-object/from16 v20, v5

    move/from16 v24, v7

    move/from16 v27, v8

    move-object/from16 v28, v10

    move/from16 v9, v30

    move/from16 v30, p8

    move v10, v1

    goto/16 :goto_26

    .line 125
    :cond_2a
    :goto_1a
    if-eqz v2, :cond_2b

    .line 111
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object/from16 v20, v0

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_1b

    .line 125
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_2b
    move-object/from16 v20, v5

    .line 111
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v20, "modifier":Landroidx/compose/ui/Modifier;
    :goto_1b
    if-eqz v6, :cond_2c

    .line 112
    const/4 v0, 0x0

    .local v0, "$this$dp$iv":I
    const/4 v2, 0x0

    .line 971
    .local v2, "$i$f$getDp":I
    int-to-float v3, v0

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 112
    .end local v0    # "$this$dp$iv":I
    .end local v2    # "$i$f$getDp":I
    invoke-static {v0}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    move-object/from16 v23, v0

    .end local p2    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v0, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    goto :goto_1c

    .line 111
    .end local v0    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local p2    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :cond_2c
    move-object/from16 v23, p2

    .line 112
    .end local p2    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v23, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :goto_1c
    if-eqz v16, :cond_2d

    .line 113
    sget-object v0, Landroidx/compose/foundation/pager/PageSize$Fill;->INSTANCE:Landroidx/compose/foundation/pager/PageSize$Fill;

    check-cast v0, Landroidx/compose/foundation/pager/PageSize;

    move-object/from16 v16, v0

    .end local p3    # "pageSize":Landroidx/compose/foundation/pager/PageSize;
    .local v0, "pageSize":Landroidx/compose/foundation/pager/PageSize;
    goto :goto_1d

    .line 112
    .end local v0    # "pageSize":Landroidx/compose/foundation/pager/PageSize;
    .restart local p3    # "pageSize":Landroidx/compose/foundation/pager/PageSize;
    :cond_2d
    move-object/from16 v16, v4

    .line 113
    .end local p3    # "pageSize":Landroidx/compose/foundation/pager/PageSize;
    .local v16, "pageSize":Landroidx/compose/foundation/pager/PageSize;
    :goto_1d
    if-eqz v18, :cond_2e

    .line 114
    const/4 v0, 0x0

    move/from16 v18, v0

    .end local p4    # "beyondBoundsPageCount":I
    .local v0, "beyondBoundsPageCount":I
    goto :goto_1e

    .line 113
    .end local v0    # "beyondBoundsPageCount":I
    .restart local p4    # "beyondBoundsPageCount":I
    :cond_2e
    move/from16 v18, v7

    .line 114
    .end local p4    # "beyondBoundsPageCount":I
    .local v18, "beyondBoundsPageCount":I
    :goto_1e
    if-eqz v21, :cond_2f

    .line 115
    const/4 v0, 0x0

    .local v0, "$this$dp$iv":I
    const/4 v2, 0x0

    .line 972
    .restart local v2    # "$i$f$getDp":I
    int-to-float v3, v0

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    move/from16 v21, v0

    .end local v2    # "$i$f$getDp":I
    .end local p5    # "pageSpacing":F
    .local v0, "pageSpacing":F
    goto :goto_1f

    .line 114
    .end local v0    # "pageSpacing":F
    .restart local p5    # "pageSpacing":F
    :cond_2f
    move/from16 v21, v8

    .line 972
    .end local p5    # "pageSpacing":F
    .local v21, "pageSpacing":F
    :goto_1f
    if-eqz v24, :cond_30

    .line 116
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v0

    move-object v10, v0

    .end local p6    # "verticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    .local v10, "verticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    :cond_30
    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_31

    .line 117
    sget-object v0, Landroidx/compose/foundation/pager/PagerDefaults;->INSTANCE:Landroidx/compose/foundation/pager/PagerDefaults;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    and-int/lit8 v7, v30, 0xe

    const/high16 v8, 0x200000

    or-int/2addr v8, v7

    const/16 v24, 0x3e

    move/from16 v27, v1

    .end local v1    # "$dirty1":I
    .local v27, "$dirty1":I
    move-object/from16 v1, p0

    move-object v7, v12

    move/from16 v31, v9

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroidx/compose/foundation/pager/PagerDefaults;->flingBehavior(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerSnapDistance;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;FLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    move-result-object v0

    .end local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .local v0, "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    const v1, -0x1c00001

    and-int v30, v30, v1

    goto :goto_20

    .line 116
    .end local v0    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .end local v27    # "$dirty1":I
    .restart local v1    # "$dirty1":I
    .restart local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    :cond_31
    move/from16 v27, v1

    move/from16 v31, v9

    .end local v1    # "$dirty1":I
    .restart local v27    # "$dirty1":I
    move-object/from16 v0, p7

    .line 117
    .end local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .restart local v0    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    :goto_20
    if-eqz v28, :cond_32

    .line 118
    const/4 v1, 0x1

    .end local p8    # "userScrollEnabled":Z
    .local v1, "userScrollEnabled":Z
    goto :goto_21

    .line 117
    .end local v1    # "userScrollEnabled":Z
    .restart local p8    # "userScrollEnabled":Z
    :cond_32
    move/from16 v1, p8

    .line 118
    .end local p8    # "userScrollEnabled":Z
    .restart local v1    # "userScrollEnabled":Z
    :goto_21
    if-eqz v29, :cond_33

    .line 119
    const/4 v2, 0x0

    .end local p9    # "reverseLayout":Z
    .local v2, "reverseLayout":Z
    goto :goto_22

    .line 118
    .end local v2    # "reverseLayout":Z
    .restart local p9    # "reverseLayout":Z
    :cond_33
    move/from16 v2, p9

    .line 119
    .end local p9    # "reverseLayout":Z
    .restart local v2    # "reverseLayout":Z
    :goto_22
    if-eqz v17, :cond_34

    .line 120
    const/4 v3, 0x0

    .end local p10    # "key":Lkotlin/jvm/functions/Function1;
    .local v3, "key":Lkotlin/jvm/functions/Function1;
    goto :goto_23

    .line 119
    .end local v3    # "key":Lkotlin/jvm/functions/Function1;
    .restart local p10    # "key":Lkotlin/jvm/functions/Function1;
    :cond_34
    move-object/from16 v3, p10

    .line 120
    .end local p10    # "key":Lkotlin/jvm/functions/Function1;
    .restart local v3    # "key":Lkotlin/jvm/functions/Function1;
    :goto_23
    if-eqz v31, :cond_37

    .line 121
    and-int/lit8 v4, v30, 0xe

    .local v4, "$changed$iv":I
    const/4 v5, 0x0

    .local v5, "$i$f$remember":I
    const v6, 0x44faf204

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v12, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 973
    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    .local v6, "invalid$iv$iv":Z
    move-object v7, v12

    .local v7, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 974
    .local v8, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 975
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v6, :cond_36

    sget-object v24, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p1, v0

    .end local v0    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .local p1, "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v9, v0, :cond_35

    goto :goto_24

    .line 979
    :cond_35
    move/from16 p3, v1

    move-object v0, v9

    goto :goto_25

    .line 975
    .end local p1    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .restart local v0    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    :cond_36
    move-object/from16 p1, v0

    .line 976
    .end local v0    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .restart local p1    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    :goto_24
    const/4 v0, 0x0

    .line 122
    .local v0, "$i$a$-remember-PagerKt$HorizontalPager$1":I
    move/from16 p2, v0

    .end local v0    # "$i$a$-remember-PagerKt$HorizontalPager$1":I
    .local p2, "$i$a$-remember-PagerKt$HorizontalPager$1":I
    sget-object v0, Landroidx/compose/foundation/pager/PagerDefaults;->INSTANCE:Landroidx/compose/foundation/pager/PagerDefaults;

    move/from16 p3, v1

    .end local v1    # "userScrollEnabled":Z
    .local p3, "userScrollEnabled":Z
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {v0, v15, v1}, Landroidx/compose/foundation/pager/PagerDefaults;->pageNestedScrollConnection(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v0

    .line 976
    .end local p2    # "$i$a$-remember-PagerKt$HorizontalPager$1":I
    nop

    .line 977
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 978
    nop

    .line 975
    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    :goto_25
    nop

    .line 974
    .end local v9    # "it$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 973
    .end local v6    # "invalid$iv$iv":Z
    .end local v7    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v4    # "$changed$iv":I
    .end local v5    # "$i$f$remember":I
    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .end local p11    # "pageNestedScrollConnection":Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .local v0, "pageNestedScrollConnection":Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    and-int/lit8 v1, v27, -0x71

    move-object/from16 v29, p1

    move-object/from16 v33, v0

    move/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v28, v10

    move/from16 v24, v18

    move/from16 v27, v21

    move/from16 v9, v30

    move/from16 v30, p3

    move v10, v1

    move-object/from16 v21, v16

    .end local v27    # "$dirty1":I
    .local v1, "$dirty1":I
    goto :goto_26

    .line 120
    .end local p1    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .end local p3    # "userScrollEnabled":Z
    .local v0, "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .local v1, "userScrollEnabled":Z
    .restart local v27    # "$dirty1":I
    .restart local p11    # "pageNestedScrollConnection":Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    :cond_37
    move-object/from16 p1, v0

    move/from16 p3, v1

    .end local v0    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .end local v1    # "userScrollEnabled":Z
    .restart local p1    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .restart local p3    # "userScrollEnabled":Z
    move-object/from16 v29, p1

    move-object/from16 v33, p11

    move/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v28, v10

    move/from16 v24, v18

    move/from16 v10, v27

    move/from16 v9, v30

    move/from16 v30, p3

    move/from16 v27, v21

    move-object/from16 v21, v16

    .line 973
    .end local v2    # "reverseLayout":Z
    .end local v3    # "key":Lkotlin/jvm/functions/Function1;
    .end local v16    # "pageSize":Landroidx/compose/foundation/pager/PageSize;
    .end local v18    # "beyondBoundsPageCount":I
    .end local p1    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .end local p3    # "userScrollEnabled":Z
    .end local p11    # "pageNestedScrollConnection":Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .local v9, "$dirty":I
    .local v10, "$dirty1":I
    .local v21, "pageSize":Landroidx/compose/foundation/pager/PageSize;
    .local v24, "beyondBoundsPageCount":I
    .local v27, "pageSpacing":F
    .local v28, "verticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    .local v29, "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .local v30, "userScrollEnabled":Z
    .local v31, "reverseLayout":Z
    .local v32, "key":Lkotlin/jvm/functions/Function1;
    .local v33, "pageNestedScrollConnection":Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    :goto_26
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 125
    const-string/jumbo v0, "androidx.compose.foundation.pager.HorizontalPager (Pager.kt:124)"

    const v1, 0x58e189a1

    invoke-static {v1, v9, v10, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 133
    :cond_38
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 135
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v0

    move-object/from16 v26, v12

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v26, "$composer":Landroidx/compose/runtime/Composer;
    move-object v12, v0

    .line 128
    nop

    .line 127
    nop

    .line 129
    nop

    .line 138
    nop

    .line 133
    nop

    .line 136
    nop

    .line 137
    nop

    .line 131
    nop

    .line 132
    nop

    .line 130
    nop

    .line 140
    nop

    .line 139
    nop

    .line 135
    nop

    .line 134
    nop

    .line 141
    shr-int/lit8 v0, v9, 0x3

    and-int/lit8 v0, v0, 0xe

    or-int/lit16 v0, v0, 0x6000

    shl-int/lit8 v1, v9, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    and-int/lit16 v1, v9, 0x380

    or-int/2addr v0, v1

    shr-int/lit8 v1, v9, 0x12

    and-int/lit16 v1, v1, 0x1c00

    or-int/2addr v0, v1

    shr-int/lit8 v1, v9, 0x6

    and-int v1, v1, v22

    or-int/2addr v0, v1

    shr-int/lit8 v1, v9, 0x6

    and-int v1, v1, v25

    or-int/2addr v0, v1

    shl-int/lit8 v1, v9, 0x9

    const/high16 v2, 0x1c00000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 v1, v9, 0x9

    const/high16 v2, 0xe000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 v1, v9, 0x12

    const/high16 v2, 0x70000000

    and-int/2addr v1, v2

    or-int v16, v0, v1

    shl-int/lit8 v0, v10, 0x3

    and-int/lit8 v0, v0, 0x70

    or-int/lit16 v0, v0, 0x188

    shr-int/lit8 v1, v9, 0x9

    and-int/lit16 v1, v1, 0x1c00

    or-int/2addr v0, v1

    shl-int/lit8 v1, v10, 0x6

    and-int v1, v1, v19

    or-int v17, v0, v1

    const/16 v18, 0x0

    .line 126
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move/from16 v3, v31

    move-object/from16 v5, v29

    move/from16 v6, v30

    move/from16 v7, v24

    move/from16 v8, v27

    move/from16 v19, v9

    .end local v9    # "$dirty":I
    .local v19, "$dirty":I
    move-object/from16 v9, v21

    move/from16 v22, v10

    .end local v10    # "$dirty1":I
    .local v22, "$dirty1":I
    move-object/from16 v10, v33

    move-object/from16 v11, v32

    move-object/from16 v13, v28

    move-object/from16 v14, p12

    move-object/from16 v15, v26

    invoke-static/range {v0 .. v18}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->Pager-fs30GE4(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZIFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 143
    :cond_39
    :goto_27
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_3a

    new-instance v17, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    move-object/from16 v4, v21

    move/from16 v5, v24

    move/from16 v6, v27

    move-object/from16 v7, v28

    move-object/from16 v8, v29

    move/from16 v9, v30

    move/from16 v10, v31

    move-object/from16 v11, v32

    move-object/from16 v12, v33

    move-object/from16 v13, p12

    move/from16 v14, p14

    move-object/from16 v34, v15

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$2;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function4;III)V

    move-object/from16 v0, v17

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v34

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_3a
    return-void
.end method

.method private static final SnapLayoutInfoProvider(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerSnapDistance;Landroidx/compose/animation/core/DecayAnimationSpec;F)Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;
    .locals 1
    .param p0, "pagerState"    # Landroidx/compose/foundation/pager/PagerState;
    .param p1, "pagerSnapDistance"    # Landroidx/compose/foundation/pager/PagerSnapDistance;
    .param p2, "decayAnimationSpec"    # Landroidx/compose/animation/core/DecayAnimationSpec;
    .param p3, "snapPositionalThreshold"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/pager/PagerState;",
            "Landroidx/compose/foundation/pager/PagerSnapDistance;",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;F)",
            "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;"
        }
    .end annotation

    .line 589
    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;

    invoke-direct {v0, p0, p3, p2, p1}, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;-><init>(Landroidx/compose/foundation/pager/PagerState;FLandroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/foundation/pager/PagerSnapDistance;)V

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    return-object v0
.end method

.method public static final VerticalPager-xYaah8o(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V
    .locals 36
    .param p0, "state"    # Landroidx/compose/foundation/pager/PagerState;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p3, "pageSize"    # Landroidx/compose/foundation/pager/PageSize;
    .param p4, "beyondBoundsPageCount"    # I
    .param p5, "pageSpacing"    # F
    .param p6, "horizontalAlignment"    # Landroidx/compose/ui/Alignment$Horizontal;
    .param p7, "flingBehavior"    # Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .param p8, "userScrollEnabled"    # Z
    .param p9, "reverseLayout"    # Z
    .param p10, "key"    # Lkotlin/jvm/functions/Function1;
    .param p11, "pageNestedScrollConnection"    # Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .param p12, "pageContent"    # Lkotlin/jvm/functions/Function4;
    .param p13, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p14, "$changed"    # I
    .param p15, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/pager/PagerState;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/pager/PageSize;",
            "IF",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;",
            "ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
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

    .line 205
    move-object/from16 v15, p0

    move/from16 v14, p14

    move/from16 v12, p15

    move/from16 v11, p16

    const v10, -0x56d91adf

    move-object/from16 v0, p13

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p13    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v0, "C(VerticalPager)P(11,5,1,8!1,9:c#ui.unit.Dp,3!1,12,10!1,7)196@10975L28,200@11177L101,205@11348L618:Pager.kt#g6yjnt"

    invoke-static {v13, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v0, p14

    .local v0, "$dirty":I
    move/from16 v1, p15

    .local v1, "$dirty1":I
    and-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v14, 0xe

    if-nez v2, :cond_2

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v0, v2

    :cond_2
    :goto_1
    and-int/lit8 v2, v11, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x30

    move-object/from16 v5, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v14, 0x70

    if-nez v5, :cond_5

    move-object/from16 v5, p1

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v0, v6

    goto :goto_3

    :cond_5
    move-object/from16 v5, p1

    :goto_3
    and-int/lit8 v6, v11, 0x4

    if-eqz v6, :cond_6

    or-int/lit16 v0, v0, 0x180

    move-object/from16 v9, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v9, v14, 0x380

    if-nez v9, :cond_8

    move-object/from16 v9, p2

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_4

    :cond_7
    const/16 v16, 0x80

    :goto_4
    or-int v0, v0, v16

    goto :goto_5

    :cond_8
    move-object/from16 v9, p2

    :goto_5
    and-int/lit8 v16, v11, 0x8

    if-eqz v16, :cond_9

    or-int/lit16 v0, v0, 0xc00

    move-object/from16 v4, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v4, v14, 0x1c00

    if-nez v4, :cond_b

    move-object/from16 v4, p3

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v18, 0x800

    goto :goto_6

    :cond_a
    const/16 v18, 0x400

    :goto_6
    or-int v0, v0, v18

    goto :goto_7

    :cond_b
    move-object/from16 v4, p3

    :goto_7
    and-int/lit8 v18, v11, 0x10

    const v19, 0xe000

    if-eqz v18, :cond_c

    or-int/lit16 v0, v0, 0x6000

    move/from16 v7, p4

    goto :goto_9

    :cond_c
    and-int v20, v14, v19

    if-nez v20, :cond_e

    move/from16 v7, p4

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v21

    if-eqz v21, :cond_d

    const/16 v21, 0x4000

    goto :goto_8

    :cond_d
    const/16 v21, 0x2000

    :goto_8
    or-int v0, v0, v21

    goto :goto_9

    :cond_e
    move/from16 v7, p4

    :goto_9
    and-int/lit8 v21, v11, 0x20

    const/high16 v22, 0x70000

    if-eqz v21, :cond_f

    const/high16 v23, 0x30000

    or-int v0, v0, v23

    move/from16 v8, p5

    goto :goto_b

    :cond_f
    and-int v23, v14, v22

    if-nez v23, :cond_11

    move/from16 v8, p5

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v24

    if-eqz v24, :cond_10

    const/high16 v24, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v24, 0x10000

    :goto_a
    or-int v0, v0, v24

    goto :goto_b

    :cond_11
    move/from16 v8, p5

    :goto_b
    and-int/lit8 v24, v11, 0x40

    const/high16 v25, 0x380000

    if-eqz v24, :cond_12

    const/high16 v26, 0x180000

    or-int v0, v0, v26

    move-object/from16 v10, p6

    goto :goto_d

    :cond_12
    and-int v26, v14, v25

    if-nez v26, :cond_14

    move-object/from16 v10, p6

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_13

    const/high16 v27, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v27, 0x80000

    :goto_c
    or-int v0, v0, v27

    goto :goto_d

    :cond_14
    move-object/from16 v10, p6

    :goto_d
    const/high16 v27, 0x1c00000

    and-int v28, v14, v27

    if-nez v28, :cond_17

    and-int/lit16 v3, v11, 0x80

    if-nez v3, :cond_15

    move-object/from16 v3, p7

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_16

    const/high16 v29, 0x800000

    goto :goto_e

    :cond_15
    move-object/from16 v3, p7

    :cond_16
    const/high16 v29, 0x400000

    :goto_e
    or-int v0, v0, v29

    goto :goto_f

    :cond_17
    move-object/from16 v3, p7

    :goto_f
    and-int/lit16 v9, v11, 0x100

    if-eqz v9, :cond_18

    const/high16 v29, 0x6000000

    or-int v0, v0, v29

    move/from16 v29, v9

    move/from16 v9, p8

    goto :goto_11

    :cond_18
    const/high16 v29, 0xe000000

    and-int v29, v14, v29

    if-nez v29, :cond_1a

    move/from16 v29, v9

    move/from16 v9, p8

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v30

    if-eqz v30, :cond_19

    const/high16 v30, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v30, 0x2000000

    :goto_10
    or-int v0, v0, v30

    goto :goto_11

    :cond_1a
    move/from16 v29, v9

    move/from16 v9, p8

    :goto_11
    and-int/lit16 v9, v11, 0x200

    if-eqz v9, :cond_1b

    const/high16 v30, 0x30000000

    or-int v0, v0, v30

    move/from16 v31, v0

    move/from16 v30, v9

    move/from16 v9, p9

    goto :goto_14

    :cond_1b
    const/high16 v30, 0x70000000

    and-int v30, v14, v30

    if-nez v30, :cond_1d

    move/from16 v30, v9

    move/from16 v9, p9

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v31

    if-eqz v31, :cond_1c

    const/high16 v31, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v31, 0x10000000

    :goto_12
    or-int v0, v0, v31

    goto :goto_13

    :cond_1d
    move/from16 v30, v9

    move/from16 v9, p9

    :goto_13
    move/from16 v31, v0

    .end local v0    # "$dirty":I
    .local v31, "$dirty":I
    :goto_14
    and-int/lit16 v0, v11, 0x400

    if-eqz v0, :cond_1e

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v9, p10

    goto :goto_16

    :cond_1e
    and-int/lit8 v32, v12, 0xe

    if-nez v32, :cond_20

    move-object/from16 v9, p10

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1f

    const/16 v17, 0x4

    goto :goto_15

    :cond_1f
    const/16 v17, 0x2

    :goto_15
    or-int v1, v1, v17

    goto :goto_16

    :cond_20
    move-object/from16 v9, p10

    :goto_16
    and-int/lit16 v9, v11, 0x800

    if-eqz v9, :cond_21

    or-int/lit8 v1, v1, 0x10

    :cond_21
    move/from16 v17, v0

    and-int/lit16 v0, v11, 0x1000

    if-eqz v0, :cond_22

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v0, p12

    goto :goto_18

    :cond_22
    and-int/lit16 v0, v12, 0x380

    if-nez v0, :cond_24

    move-object/from16 v0, p12

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_23

    const/16 v20, 0x100

    goto :goto_17

    :cond_23
    const/16 v20, 0x80

    :goto_17
    or-int v1, v1, v20

    goto :goto_18

    :cond_24
    move-object/from16 v0, p12

    :goto_18
    const/16 v0, 0x800

    if-ne v9, v0, :cond_26

    const v0, 0x5b6db6db

    and-int v0, v31, v0

    const v3, 0x12492492

    if-ne v0, v3, :cond_26

    and-int/lit16 v0, v1, 0x2db

    const/16 v3, 0x92

    if-ne v0, v3, :cond_26

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_19

    .line 223
    :cond_25
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v23, p2

    move-object/from16 v30, p7

    move/from16 v32, p9

    move-object/from16 v33, p10

    move-object/from16 v34, p11

    move/from16 v22, v1

    move-object/from16 v21, v4

    move-object/from16 v20, v5

    move/from16 v24, v7

    move/from16 v28, v8

    move-object/from16 v29, v10

    move-object/from16 v26, v13

    move/from16 v19, v31

    move/from16 v31, p8

    goto/16 :goto_27

    .line 205
    :cond_26
    :goto_19
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v14, 0x1

    if-eqz v0, :cond_2a

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_1a

    .line 982
    :cond_27
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_28

    const v0, -0x1c00001

    and-int v31, v31, v0

    :cond_28
    if-eqz v9, :cond_29

    and-int/lit8 v0, v1, -0x71

    move-object/from16 v23, p2

    move-object/from16 v30, p7

    move/from16 v32, p9

    move-object/from16 v33, p10

    move-object/from16 v34, p11

    move-object/from16 v21, v4

    move-object/from16 v20, v5

    move/from16 v24, v7

    move/from16 v28, v8

    move-object/from16 v29, v10

    move/from16 v9, v31

    move/from16 v31, p8

    move v10, v0

    .end local v1    # "$dirty1":I
    .local v0, "$dirty1":I
    goto/16 :goto_26

    .end local v0    # "$dirty1":I
    .restart local v1    # "$dirty1":I
    :cond_29
    move-object/from16 v23, p2

    move-object/from16 v30, p7

    move/from16 v32, p9

    move-object/from16 v33, p10

    move-object/from16 v34, p11

    move-object/from16 v21, v4

    move-object/from16 v20, v5

    move/from16 v24, v7

    move/from16 v28, v8

    move-object/from16 v29, v10

    move/from16 v9, v31

    move/from16 v31, p8

    move v10, v1

    goto/16 :goto_26

    .line 205
    :cond_2a
    :goto_1a
    if-eqz v2, :cond_2b

    .line 191
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object/from16 v20, v0

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_1b

    .line 205
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_2b
    move-object/from16 v20, v5

    .line 191
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v20, "modifier":Landroidx/compose/ui/Modifier;
    :goto_1b
    if-eqz v6, :cond_2c

    .line 192
    const/4 v0, 0x0

    .local v0, "$this$dp$iv":I
    const/4 v2, 0x0

    .line 980
    .local v2, "$i$f$getDp":I
    int-to-float v3, v0

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 192
    .end local v0    # "$this$dp$iv":I
    .end local v2    # "$i$f$getDp":I
    invoke-static {v0}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    move-object/from16 v23, v0

    .end local p2    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v0, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    goto :goto_1c

    .line 191
    .end local v0    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local p2    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :cond_2c
    move-object/from16 v23, p2

    .line 192
    .end local p2    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v23, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :goto_1c
    if-eqz v16, :cond_2d

    .line 193
    sget-object v0, Landroidx/compose/foundation/pager/PageSize$Fill;->INSTANCE:Landroidx/compose/foundation/pager/PageSize$Fill;

    check-cast v0, Landroidx/compose/foundation/pager/PageSize;

    move-object/from16 v16, v0

    .end local p3    # "pageSize":Landroidx/compose/foundation/pager/PageSize;
    .local v0, "pageSize":Landroidx/compose/foundation/pager/PageSize;
    goto :goto_1d

    .line 192
    .end local v0    # "pageSize":Landroidx/compose/foundation/pager/PageSize;
    .restart local p3    # "pageSize":Landroidx/compose/foundation/pager/PageSize;
    :cond_2d
    move-object/from16 v16, v4

    .line 193
    .end local p3    # "pageSize":Landroidx/compose/foundation/pager/PageSize;
    .local v16, "pageSize":Landroidx/compose/foundation/pager/PageSize;
    :goto_1d
    if-eqz v18, :cond_2e

    .line 194
    const/4 v0, 0x0

    move/from16 v18, v0

    .end local p4    # "beyondBoundsPageCount":I
    .local v0, "beyondBoundsPageCount":I
    goto :goto_1e

    .line 193
    .end local v0    # "beyondBoundsPageCount":I
    .restart local p4    # "beyondBoundsPageCount":I
    :cond_2e
    move/from16 v18, v7

    .line 194
    .end local p4    # "beyondBoundsPageCount":I
    .local v18, "beyondBoundsPageCount":I
    :goto_1e
    if-eqz v21, :cond_2f

    .line 195
    const/4 v0, 0x0

    .local v0, "$this$dp$iv":I
    const/4 v2, 0x0

    .line 981
    .restart local v2    # "$i$f$getDp":I
    int-to-float v3, v0

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    move/from16 v21, v0

    .end local v2    # "$i$f$getDp":I
    .end local p5    # "pageSpacing":F
    .local v0, "pageSpacing":F
    goto :goto_1f

    .line 194
    .end local v0    # "pageSpacing":F
    .restart local p5    # "pageSpacing":F
    :cond_2f
    move/from16 v21, v8

    .line 981
    .end local p5    # "pageSpacing":F
    .local v21, "pageSpacing":F
    :goto_1f
    if-eqz v24, :cond_30

    .line 196
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v0

    move-object v10, v0

    .end local p6    # "horizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    .local v10, "horizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    :cond_30
    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_31

    .line 197
    sget-object v0, Landroidx/compose/foundation/pager/PagerDefaults;->INSTANCE:Landroidx/compose/foundation/pager/PagerDefaults;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    and-int/lit8 v7, v31, 0xe

    const/high16 v8, 0x200000

    or-int/2addr v8, v7

    const/16 v24, 0x3e

    move/from16 v28, v1

    .end local v1    # "$dirty1":I
    .local v28, "$dirty1":I
    move-object/from16 v1, p0

    move-object v7, v13

    move/from16 v32, v9

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroidx/compose/foundation/pager/PagerDefaults;->flingBehavior(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerSnapDistance;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;FLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    move-result-object v0

    .end local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .local v0, "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    const v1, -0x1c00001

    and-int v31, v31, v1

    goto :goto_20

    .line 196
    .end local v0    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .end local v28    # "$dirty1":I
    .restart local v1    # "$dirty1":I
    .restart local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    :cond_31
    move/from16 v28, v1

    move/from16 v32, v9

    .end local v1    # "$dirty1":I
    .restart local v28    # "$dirty1":I
    move-object/from16 v0, p7

    .line 197
    .end local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .restart local v0    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    :goto_20
    if-eqz v29, :cond_32

    .line 198
    const/4 v1, 0x1

    .end local p8    # "userScrollEnabled":Z
    .local v1, "userScrollEnabled":Z
    goto :goto_21

    .line 197
    .end local v1    # "userScrollEnabled":Z
    .restart local p8    # "userScrollEnabled":Z
    :cond_32
    move/from16 v1, p8

    .line 198
    .end local p8    # "userScrollEnabled":Z
    .restart local v1    # "userScrollEnabled":Z
    :goto_21
    if-eqz v30, :cond_33

    .line 199
    const/4 v2, 0x0

    .end local p9    # "reverseLayout":Z
    .local v2, "reverseLayout":Z
    goto :goto_22

    .line 198
    .end local v2    # "reverseLayout":Z
    .restart local p9    # "reverseLayout":Z
    :cond_33
    move/from16 v2, p9

    .line 199
    .end local p9    # "reverseLayout":Z
    .restart local v2    # "reverseLayout":Z
    :goto_22
    if-eqz v17, :cond_34

    .line 200
    const/4 v3, 0x0

    .end local p10    # "key":Lkotlin/jvm/functions/Function1;
    .local v3, "key":Lkotlin/jvm/functions/Function1;
    goto :goto_23

    .line 199
    .end local v3    # "key":Lkotlin/jvm/functions/Function1;
    .restart local p10    # "key":Lkotlin/jvm/functions/Function1;
    :cond_34
    move-object/from16 v3, p10

    .line 200
    .end local p10    # "key":Lkotlin/jvm/functions/Function1;
    .restart local v3    # "key":Lkotlin/jvm/functions/Function1;
    :goto_23
    if-eqz v32, :cond_37

    .line 201
    and-int/lit8 v4, v31, 0xe

    .local v4, "$changed$iv":I
    const/4 v5, 0x0

    .local v5, "$i$f$remember":I
    const v6, 0x44faf204

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v13, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 982
    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    .local v6, "invalid$iv$iv":Z
    move-object v7, v13

    .local v7, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 983
    .local v8, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 984
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v6, :cond_36

    sget-object v24, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p1, v0

    .end local v0    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .local p1, "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v9, v0, :cond_35

    goto :goto_24

    .line 988
    :cond_35
    move/from16 p3, v1

    move-object v0, v9

    goto :goto_25

    .line 984
    .end local p1    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .restart local v0    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    :cond_36
    move-object/from16 p1, v0

    .line 985
    .end local v0    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .restart local p1    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    :goto_24
    const/4 v0, 0x0

    .line 202
    .local v0, "$i$a$-remember-PagerKt$VerticalPager$1":I
    move/from16 p2, v0

    .end local v0    # "$i$a$-remember-PagerKt$VerticalPager$1":I
    .local p2, "$i$a$-remember-PagerKt$VerticalPager$1":I
    sget-object v0, Landroidx/compose/foundation/pager/PagerDefaults;->INSTANCE:Landroidx/compose/foundation/pager/PagerDefaults;

    move/from16 p3, v1

    .end local v1    # "userScrollEnabled":Z
    .local p3, "userScrollEnabled":Z
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {v0, v15, v1}, Landroidx/compose/foundation/pager/PagerDefaults;->pageNestedScrollConnection(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v0

    .line 985
    .end local p2    # "$i$a$-remember-PagerKt$VerticalPager$1":I
    nop

    .line 986
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 987
    nop

    .line 984
    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    :goto_25
    nop

    .line 983
    .end local v9    # "it$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 982
    .end local v6    # "invalid$iv$iv":Z
    .end local v7    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v4    # "$changed$iv":I
    .end local v5    # "$i$f$remember":I
    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .end local p11    # "pageNestedScrollConnection":Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .local v0, "pageNestedScrollConnection":Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    and-int/lit8 v1, v28, -0x71

    move-object/from16 v30, p1

    move-object/from16 v34, v0

    move/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v29, v10

    move/from16 v24, v18

    move/from16 v28, v21

    move/from16 v9, v31

    move/from16 v31, p3

    move v10, v1

    move-object/from16 v21, v16

    .end local v28    # "$dirty1":I
    .local v1, "$dirty1":I
    goto :goto_26

    .line 200
    .end local p1    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .end local p3    # "userScrollEnabled":Z
    .local v0, "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .local v1, "userScrollEnabled":Z
    .restart local v28    # "$dirty1":I
    .restart local p11    # "pageNestedScrollConnection":Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    :cond_37
    move-object/from16 p1, v0

    move/from16 p3, v1

    .end local v0    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .end local v1    # "userScrollEnabled":Z
    .restart local p1    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .restart local p3    # "userScrollEnabled":Z
    move-object/from16 v30, p1

    move-object/from16 v34, p11

    move/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v29, v10

    move/from16 v24, v18

    move/from16 v10, v28

    move/from16 v9, v31

    move/from16 v31, p3

    move/from16 v28, v21

    move-object/from16 v21, v16

    .line 982
    .end local v2    # "reverseLayout":Z
    .end local v3    # "key":Lkotlin/jvm/functions/Function1;
    .end local v16    # "pageSize":Landroidx/compose/foundation/pager/PageSize;
    .end local v18    # "beyondBoundsPageCount":I
    .end local p1    # "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .end local p3    # "userScrollEnabled":Z
    .end local p11    # "pageNestedScrollConnection":Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .local v9, "$dirty":I
    .local v10, "$dirty1":I
    .local v21, "pageSize":Landroidx/compose/foundation/pager/PageSize;
    .local v24, "beyondBoundsPageCount":I
    .local v28, "pageSpacing":F
    .local v29, "horizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    .local v30, "flingBehavior":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .local v31, "userScrollEnabled":Z
    .local v32, "reverseLayout":Z
    .local v33, "key":Lkotlin/jvm/functions/Function1;
    .local v34, "pageNestedScrollConnection":Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    :goto_26
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 205
    const-string/jumbo v0, "androidx.compose.foundation.pager.VerticalPager (Pager.kt:204)"

    const v1, -0x56d91adf

    invoke-static {v1, v9, v10, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 213
    :cond_38
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 214
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v0

    move-object/from16 v26, v13

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .local v26, "$composer":Landroidx/compose/runtime/Composer;
    move-object v13, v0

    .line 208
    nop

    .line 207
    nop

    .line 209
    nop

    .line 218
    nop

    .line 213
    nop

    .line 216
    nop

    .line 217
    nop

    .line 211
    nop

    .line 212
    nop

    .line 210
    nop

    .line 220
    nop

    .line 219
    nop

    .line 215
    nop

    .line 214
    nop

    .line 221
    shr-int/lit8 v0, v9, 0x3

    and-int/lit8 v0, v0, 0xe

    or-int/lit16 v0, v0, 0x6000

    shl-int/lit8 v1, v9, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    and-int/lit16 v1, v9, 0x380

    or-int/2addr v0, v1

    shr-int/lit8 v1, v9, 0x12

    and-int/lit16 v1, v1, 0x1c00

    or-int/2addr v0, v1

    shr-int/lit8 v1, v9, 0x6

    and-int v1, v1, v22

    or-int/2addr v0, v1

    shr-int/lit8 v1, v9, 0x6

    and-int v1, v1, v25

    or-int/2addr v0, v1

    shl-int/lit8 v1, v9, 0x9

    and-int v1, v1, v27

    or-int/2addr v0, v1

    shl-int/lit8 v1, v9, 0x9

    const/high16 v2, 0xe000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 v1, v9, 0x12

    const/high16 v2, 0x70000000

    and-int/2addr v1, v2

    or-int v16, v0, v1

    shl-int/lit8 v0, v10, 0x3

    and-int/lit8 v0, v0, 0x70

    or-int/lit16 v0, v0, 0xc08

    shr-int/lit8 v1, v9, 0xc

    and-int/lit16 v1, v1, 0x380

    or-int/2addr v0, v1

    shl-int/lit8 v1, v10, 0x6

    and-int v1, v1, v19

    or-int v17, v0, v1

    const/16 v18, 0x0

    .line 206
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move/from16 v3, v32

    move-object/from16 v5, v30

    move/from16 v6, v31

    move/from16 v7, v24

    move/from16 v8, v28

    move/from16 v19, v9

    .end local v9    # "$dirty":I
    .local v19, "$dirty":I
    move-object/from16 v9, v21

    move/from16 v22, v10

    .end local v10    # "$dirty1":I
    .local v22, "$dirty1":I
    move-object/from16 v10, v34

    move-object/from16 v11, v33

    move-object/from16 v12, v29

    move-object/from16 v14, p12

    move-object/from16 v15, v26

    invoke-static/range {v0 .. v18}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->Pager-fs30GE4(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZIFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 223
    :cond_39
    :goto_27
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_3a

    new-instance v17, Landroidx/compose/foundation/pager/PagerKt$VerticalPager$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    move-object/from16 v4, v21

    move/from16 v5, v24

    move/from16 v6, v28

    move-object/from16 v7, v29

    move-object/from16 v8, v30

    move/from16 v9, v31

    move/from16 v10, v32

    move-object/from16 v11, v33

    move-object/from16 v12, v34

    move-object/from16 v13, p12

    move/from16 v14, p14

    move-object/from16 v35, v15

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/foundation/pager/PagerKt$VerticalPager$2;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function4;III)V

    move-object/from16 v0, v17

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v35

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_3a
    return-void
.end method

.method public static final synthetic access$SnapLayoutInfoProvider(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerSnapDistance;Landroidx/compose/animation/core/DecayAnimationSpec;F)Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;
    .locals 1
    .param p0, "pagerState"    # Landroidx/compose/foundation/pager/PagerState;
    .param p1, "pagerSnapDistance"    # Landroidx/compose/foundation/pager/PagerSnapDistance;
    .param p2, "decayAnimationSpec"    # Landroidx/compose/animation/core/DecayAnimationSpec;
    .param p3, "snapPositionalThreshold"    # F

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/pager/PagerKt;->SnapLayoutInfoProvider(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerSnapDistance;Landroidx/compose/animation/core/DecayAnimationSpec;F)Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$dragGestureDelta(Landroidx/compose/foundation/pager/PagerState;)F
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/foundation/pager/PagerState;

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/pager/PagerKt;->dragGestureDelta(Landroidx/compose/foundation/pager/PagerState;)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$isScrollingForward(Landroidx/compose/foundation/pager/PagerState;)Z
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/foundation/pager/PagerState;

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/pager/PagerKt;->isScrollingForward(Landroidx/compose/foundation/pager/PagerState;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$pagerSemantics$performBackwardPaging(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)Z
    .locals 1
    .param p0, "$state"    # Landroidx/compose/foundation/pager/PagerState;
    .param p1, "scope"    # Lkotlinx/coroutines/CoroutineScope;

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/pager/PagerKt;->pagerSemantics$performBackwardPaging(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$pagerSemantics$performForwardPaging(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)Z
    .locals 1
    .param p0, "$state"    # Landroidx/compose/foundation/pager/PagerState;
    .param p1, "scope"    # Lkotlinx/coroutines/CoroutineScope;

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/pager/PagerKt;->pagerSemantics$performForwardPaging(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v0

    return v0
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

    .line 956
    .local v0, "$i$f$debugLog":I
    nop

    .line 959
    return-void
.end method

.method private static final dragGestureDelta(Landroidx/compose/foundation/pager/PagerState;)F
    .locals 2
    .param p0, "$this$dragGestureDelta"    # Landroidx/compose/foundation/pager/PagerState;

    .line 965
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v1, :cond_0

    .line 966
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getUpDownDifference-F1C5BW0$foundation_release()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    goto :goto_0

    .line 968
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getUpDownDifference-F1C5BW0$foundation_release()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    .line 969
    :goto_0
    return v0
.end method

.method private static final isScrollingForward(Landroidx/compose/foundation/pager/PagerState;)Z
    .locals 2
    .param p0, "$this$isScrollingForward"    # Landroidx/compose/foundation/pager/PagerState;

    .line 962
    invoke-static {p0}, Landroidx/compose/foundation/pager/PagerKt;->dragGestureDelta(Landroidx/compose/foundation/pager/PagerState;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final pagerSemantics(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 16
    .param p0, "$this$pagerSemantics"    # Landroidx/compose/ui/Modifier;
    .param p1, "state"    # Landroidx/compose/foundation/pager/PagerState;
    .param p2, "isVertical"    # Z
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    move-object/from16 v0, p3

    const v1, 0x59fe4150

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(pagerSemantics)P(1)915@43355L24:Pager.kt#g6yjnt"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 915
    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.foundation.pager.pagerSemantics (Pager.kt:914)"

    move/from16 v4, p4

    invoke-static {v1, v4, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_0

    .line 0
    :cond_0
    move/from16 v4, p4

    .line 915
    :goto_0
    nop

    .line 916
    const/4 v1, 0x0

    move v2, v1

    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .local v3, "$i$f$rememberCoroutineScope":I
    const v5, 0x2e20b340

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp"

    invoke-static {v0, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 989
    nop

    .line 991
    move-object/from16 v5, p3

    .line 992
    .local v5, "composer$iv":Landroidx/compose/runtime/Composer;
    move v6, v1

    .local v6, "$changed$iv$iv":I
    const/4 v7, 0x0

    .local v7, "$i$f$remember":I
    const v8, -0x1d58f75c

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v8, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v0, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 993
    const/4 v8, 0x0

    .local v8, "invalid$iv$iv$iv":Z
    move-object/from16 v9, p3

    .local v9, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 994
    .local v10, "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 995
    .local v12, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v11, v13, :cond_1

    .line 996
    const/4 v13, 0x0

    .line 997
    .local v13, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 998
    const/4 v14, 0x0

    .line 999
    .local v14, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    sget-object v14, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 998
    .end local v14    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    check-cast v14, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v14, v5}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v14

    .line 997
    new-instance v15, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v15, v14}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 996
    .end local v13    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    move-object v13, v15

    .line 1000
    .local v13, "value$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1001
    nop

    .end local v13    # "value$iv$iv$iv":Ljava/lang/Object;
    goto :goto_1

    .line 1002
    :cond_1
    move-object v13, v11

    .line 995
    :goto_1
    nop

    .line 994
    .end local v11    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    nop

    .line 993
    .end local v8    # "invalid$iv$iv$iv":Z
    .end local v9    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$cache":I
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 992
    .end local v6    # "$changed$iv$iv":I
    .end local v7    # "$i$f$remember":I
    move-object v6, v13

    check-cast v6, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 1003
    .local v6, "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    invoke-virtual {v6}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 916
    .end local v2    # "$changed$iv":I
    .end local v3    # "$i$f$rememberCoroutineScope":I
    .end local v5    # "composer$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    move-object v2, v7

    .line 939
    .local v2, "scope":Lkotlinx/coroutines/CoroutineScope;
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    new-instance v5, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-direct {v5, v7, v6, v2}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;-><init>(ZLandroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v3, v1, v5, v8, v9}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 v3, p0

    invoke-interface {v3, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method

.method private static final pagerSemantics$performBackwardPaging(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)Z
    .locals 7
    .param p0, "$state"    # Landroidx/compose/foundation/pager/PagerState;
    .param p1, "scope"    # Lkotlinx/coroutines/CoroutineScope;

    .line 929
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCanScrollBackward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$performBackwardPaging$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$performBackwardPaging$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 933
    const/4 v0, 0x1

    goto :goto_0

    .line 935
    :cond_0
    const/4 v0, 0x0

    .line 929
    :goto_0
    return v0
.end method

.method private static final pagerSemantics$performForwardPaging(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)Z
    .locals 7
    .param p0, "$state"    # Landroidx/compose/foundation/pager/PagerState;
    .param p1, "scope"    # Lkotlinx/coroutines/CoroutineScope;

    .line 918
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCanScrollForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$performForwardPaging$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$performForwardPaging$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 922
    const/4 v0, 0x1

    goto :goto_0

    .line 924
    :cond_0
    const/4 v0, 0x0

    .line 918
    :goto_0
    return v0
.end method
