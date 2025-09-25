.class public final Landroidx/compose/material/BackdropScaffoldKt;
.super Ljava/lang/Object;
.source "BackdropScaffold.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackdropScaffold.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackdropScaffold.kt\nandroidx/compose/material/BackdropScaffoldKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n+ 7 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 8 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 9 Composer.kt\nandroidx/compose/runtime/Updater\n+ 10 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 11 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,524:1\n25#2:525\n456#2,8:573\n464#2,3:587\n456#2,8:608\n464#2,3:622\n467#2,3:626\n456#2,8:648\n464#2,3:662\n467#2,3:666\n467#2,3:671\n1116#3,6:526\n1116#3,6:535\n1116#3,6:542\n1116#3,6:548\n1116#3,6:676\n74#4:532\n74#4:534\n74#4:554\n1#5:533\n646#6:541\n67#7,7:555\n74#7:590\n68#7,6:591\n74#7:625\n78#7:630\n68#7,6:631\n74#7:665\n78#7:670\n78#7:675\n79#8,11:562\n79#8,11:597\n92#8:629\n79#8,11:637\n92#8:669\n92#8:674\n3737#9,6:581\n3737#9,6:616\n3737#9,6:656\n81#10:682\n81#10:683\n154#11:684\n*S KotlinDebug\n*F\n+ 1 BackdropScaffold.kt\nandroidx/compose/material/BackdropScaffoldKt\n*L\n174#1:525\n432#1:573,8\n432#1:587,3\n433#1:608,8\n433#1:622,3\n433#1:626,3\n441#1:648,8\n441#1:662,3\n441#1:666,3\n432#1:671,3\n174#1:526,6\n291#1:535,6\n396#1:542,6\n404#1:548,6\n460#1:676,6\n278#1:532\n279#1:534\n427#1:554\n390#1:541\n432#1:555,7\n432#1:590\n433#1:591,6\n433#1:625\n433#1:630\n441#1:631,6\n441#1:665\n441#1:670\n432#1:675\n432#1:562,11\n433#1:597,11\n433#1:629\n441#1:637,11\n441#1:669\n432#1:674\n432#1:581,6\n433#1:616,6\n441#1:656,6\n391#1:682\n424#1:683\n523#1:684\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a;\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0011\u0010\u0007\u001a\r\u0012\u0004\u0012\u00020\u00040\u0008\u00a2\u0006\u0002\u0008\t2\u0011\u0010\n\u001a\r\u0012\u0004\u0012\u00020\u00040\u0008\u00a2\u0006\u0002\u0008\tH\u0003\u00a2\u0006\u0002\u0010\u000b\u001a\u00f2\u0001\u0010\u000c\u001a\u00020\u00042\u0011\u0010\u0007\u001a\r\u0012\u0004\u0012\u00020\u00040\u0008\u00a2\u0006\u0002\u0008\t2\u0011\u0010\r\u001a\r\u0012\u0004\u0012\u00020\u00040\u0008\u00a2\u0006\u0002\u0008\t2\u0011\u0010\u000e\u001a\r\u0012\u0004\u0012\u00020\u00040\u0008\u00a2\u0006\u0002\u0008\t2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u001a2\u0008\u0008\u0002\u0010 \u001a\u00020\u001a2\u0008\u0008\u0002\u0010!\u001a\u00020\u001a2\u0019\u0008\u0002\u0010\"\u001a\u0013\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u00040#\u00a2\u0006\u0002\u0008\tH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008%\u0010&\u001ae\u0010\'\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0016\u0010(\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0008\u00a2\u0006\u0002\u0008\t\u00a2\u0006\u0002\u0008)2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020+0#2\"\u0010,\u001a\u001e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u00040-\u00a2\u0006\u0002\u0008\t\u00a2\u0006\u0002\u0008)H\u0003\u00a2\u0006\u0002\u0010/\u001a0\u00100\u001a\u00020\u00042\u0006\u00101\u001a\u00020\u001a2\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00082\u0006\u00103\u001a\u00020\u0014H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u00084\u00105\u001aE\u00106\u001a\u00020\u00122\u0006\u00107\u001a\u00020\u00062\u000e\u0008\u0002\u00108\u001a\u0008\u0012\u0004\u0012\u00020.092\u0014\u0008\u0002\u0010:\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00140#2\u0008\u0008\u0002\u0010;\u001a\u00020$H\u0007\u00a2\u0006\u0002\u0010<\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006=\u00b2\u0006\n\u0010>\u001a\u00020.X\u008a\u0084\u0002\u00b2\u0006\n\u0010?\u001a\u00020.X\u008a\u0084\u0002"
    }
    d2 = {
        "AnimationSlideOffset",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "BackLayerTransition",
        "",
        "target",
        "Landroidx/compose/material/BackdropValue;",
        "appBar",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "content",
        "(Landroidx/compose/material/BackdropValue;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "BackdropScaffold",
        "backLayerContent",
        "frontLayerContent",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "scaffoldState",
        "Landroidx/compose/material/BackdropScaffoldState;",
        "gesturesEnabled",
        "",
        "peekHeight",
        "headerHeight",
        "persistentAppBar",
        "stickyFrontLayer",
        "backLayerBackgroundColor",
        "Landroidx/compose/ui/graphics/Color;",
        "backLayerContentColor",
        "frontLayerShape",
        "Landroidx/compose/ui/graphics/Shape;",
        "frontLayerElevation",
        "frontLayerBackgroundColor",
        "frontLayerContentColor",
        "frontLayerScrimColor",
        "snackbarHost",
        "Lkotlin/Function1;",
        "Landroidx/compose/material/SnackbarHostState;",
        "BackdropScaffold-BZszfkY",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BackdropScaffoldState;ZFFZZJJLandroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "BackdropStack",
        "backLayer",
        "Landroidx/compose/ui/UiComposable;",
        "calculateBackLayerConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "frontLayer",
        "Lkotlin/Function2;",
        "",
        "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)V",
        "Scrim",
        "color",
        "onDismiss",
        "visible",
        "Scrim-3J-VO9M",
        "(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V",
        "rememberBackdropScaffoldState",
        "initialValue",
        "animationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "confirmStateChange",
        "snackbarHostState",
        "(Landroidx/compose/material/BackdropValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BackdropScaffoldState;",
        "material_release",
        "alpha",
        "animationProgress"
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
.field private static final AnimationSlideOffset:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 523
    const/16 v0, 0x14

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 684
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 523
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/BackdropScaffoldKt;->AnimationSlideOffset:F

    return-void
.end method

.method private static final BackLayerTransition(Landroidx/compose/material/BackdropValue;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 61
    .param p0, "target"    # Landroidx/compose/material/BackdropValue;
    .param p1, "appBar"    # Lkotlin/jvm/functions/Function2;
    .param p2, "content"    # Lkotlin/jvm/functions/Function2;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/BackdropValue;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 421
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const v4, -0x38aeaa60    # -53589.625f

    move-object/from16 v5, p3

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v5, "C(BackLayerTransition)P(2)423@17886L112,*426@18048L7,431@18222L486:BackdropScaffold.kt#jmzs0o"

    invoke-static {v13, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v5, p4

    .local v5, "$dirty":I
    and-int/lit8 v6, v3, 0xe

    if-nez v6, :cond_1

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v5, v6

    :cond_1
    and-int/lit8 v6, v3, 0x70

    if-nez v6, :cond_3

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_1

    :cond_2
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v5, v6

    :cond_3
    and-int/lit16 v6, v3, 0x380

    if-nez v6, :cond_5

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x100

    goto :goto_2

    :cond_4
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v5, v6

    :cond_5
    move v14, v5

    .end local v5    # "$dirty":I
    .local v14, "$dirty":I
    and-int/lit16 v5, v14, 0x2db

    const/16 v6, 0x92

    if-ne v5, v6, :cond_7

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_3

    .line 450
    :cond_6
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v60, v13

    goto/16 :goto_e

    .line 421
    :cond_7
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, -0x1

    const-string/jumbo v6, "androidx.compose.material.BackLayerTransition (BackdropScaffold.kt:420)"

    invoke-static {v4, v14, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 425
    :cond_8
    sget-object v4, Landroidx/compose/material/BackdropValue;->Revealed:Landroidx/compose/material/BackdropValue;

    const/4 v15, 0x0

    if-ne v0, v4, :cond_9

    move v5, v15

    goto :goto_4

    :cond_9
    const/high16 v4, 0x40000000    # 2.0f

    move v5, v4

    :goto_4
    new-instance v4, Landroidx/compose/animation/core/TweenSpec;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x7

    const/4 v11, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v6, v4

    check-cast v6, Landroidx/compose/animation/core/AnimationSpec;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v11, 0x30

    const/16 v12, 0x1c

    .line 424
    move-object v10, v13

    invoke-static/range {v5 .. v12}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v4

    .line 427
    .local v4, "animationProgress$delegate":Landroidx/compose/runtime/State;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    .local v5, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v6, 0x0

    .local v6, "$changed$iv":I
    const/4 v7, 0x0

    .line 554
    .local v7, "$i$f$getCurrent":I
    const v8, 0x789c5f52

    const-string v9, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v13, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 427
    .end local v5    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v6    # "$changed$iv":I
    .end local v7    # "$i$f$getCurrent":I
    move-object v5, v8

    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 533
    .local v5, "$this$BackLayerTransition_u24lambda_u248":Landroidx/compose/ui/unit/Density;
    const/4 v6, 0x0

    .line 427
    .local v6, "$i$a$-with-BackdropScaffoldKt$BackLayerTransition$animationSlideOffset$1":I
    sget v7, Landroidx/compose/material/BackdropScaffoldKt;->AnimationSlideOffset:F

    invoke-interface {v5, v7}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v5

    .line 429
    .end local v6    # "$i$a$-with-BackdropScaffoldKt$BackLayerTransition$animationSlideOffset$1":I
    .local v5, "animationSlideOffset":F
    invoke-static {v4}, Landroidx/compose/material/BackdropScaffoldKt;->BackLayerTransition$lambda$7(Landroidx/compose/runtime/State;)F

    move-result v6

    const/4 v7, 0x1

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v6, v15, v8}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v6

    .line 430
    .local v6, "appBarFloat":F
    invoke-static {v4}, Landroidx/compose/material/BackdropScaffoldKt;->BackLayerTransition$lambda$7(Landroidx/compose/runtime/State;)F

    move-result v9

    sub-float v9, v7, v9

    invoke-static {v9, v15, v8}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v8

    .line 432
    .local v8, "contentFloat":F
    const/4 v9, 0x0

    move v10, v9

    .local v10, "$changed$iv":I
    const/4 v11, 0x0

    .local v11, "$i$f$Box":I
    const v12, 0x2bb5b5d7

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v15, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    invoke-static {v13, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 555
    sget-object v16, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v39, v16

    check-cast v39, Landroidx/compose/ui/Modifier;

    .line 556
    .local v39, "modifier$iv":Landroidx/compose/ui/Modifier;
    sget-object v16, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v12

    .line 557
    .local v12, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v9, 0x0

    .line 560
    .local v9, "propagateMinConstraints$iv":Z
    shr-int/lit8 v16, v10, 0x3

    and-int/lit8 v16, v16, 0xe

    shr-int/lit8 v17, v10, 0x3

    and-int/lit8 v17, v17, 0x70

    move-object/from16 v40, v4

    .end local v4    # "animationProgress$delegate":Landroidx/compose/runtime/State;
    .local v40, "animationProgress$delegate":Landroidx/compose/runtime/State;
    or-int v4, v16, v17

    invoke-static {v12, v9, v13, v4}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    .local v4, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v16, v10, 0x3

    and-int/lit8 v16, v16, 0x70

    .line 561
    move/from16 v41, v16

    .local v41, "$changed$iv$iv":I
    const/16 v42, 0x0

    move/from16 v43, v9

    .end local v9    # "propagateMinConstraints$iv":Z
    .local v42, "$i$f$Layout":I
    .local v43, "propagateMinConstraints$iv":Z
    const v9, -0x4ee9b9da

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v13, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 562
    move/from16 v44, v11

    const/4 v11, 0x0

    .end local v11    # "$i$f$Box":I
    .local v44, "$i$f$Box":I
    invoke-static {v13, v11}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v45

    .line 563
    .local v45, "compositeKeyHash$iv$iv":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v11

    .line 565
    .local v11, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    .line 572
    invoke-static/range {v39 .. v39}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v17

    move-object/from16 v46, v12

    .end local v12    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v46, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    shl-int/lit8 v12, v41, 0x9

    and-int/lit16 v12, v12, 0x1c00

    or-int/lit8 v12, v12, 0x6

    .line 564
    nop

    .local v12, "$changed$iv$iv$iv":I
    move-object/from16 v47, v17

    .local v47, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v48, v16

    .local v48, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v49, 0x0

    .line 573
    .local v49, "$i$f$ReusableComposeNode":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/runtime/Applier;

    if-nez v0, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 574
    :cond_a
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 575
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 576
    move-object/from16 v0, v48

    .end local v48    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v0, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    .line 578
    .end local v0    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v48    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_b
    move-object/from16 v0, v48

    .end local v48    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v0    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 580
    :goto_5
    move-object/from16 v48, v0

    .end local v0    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v48    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v13}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    .local v0, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 567
    .local v16, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v0, v4, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 568
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v0, v11, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 570
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .local v3, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v17, 0x0

    .line 581
    .local v17, "$i$f$set-impl":I
    move-object/from16 v18, v0

    .local v18, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 582
    .local v19, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v20

    if-nez v20, :cond_d

    move-object/from16 v50, v4

    .end local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v50, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v51, v11

    .end local v11    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v51, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_6

    :cond_c
    move-object/from16 v11, v18

    goto :goto_7

    .end local v50    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v51    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v11    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_d
    move-object/from16 v50, v4

    move-object/from16 v51, v11

    .line 583
    .end local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v11    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v50    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v51    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_6
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v11, v18

    .end local v18    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v11, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 584
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 586
    :goto_7
    nop

    .line 581
    .end local v11    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 586
    nop

    .line 571
    .end local v3    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v17    # "$i$f$set-impl":I
    nop

    .line 580
    .end local v0    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 587
    invoke-static {v13}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v3, v12, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v47

    .end local v47    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v4, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v4, v0, v13, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const v0, 0x7ab4aae9

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 589
    shr-int/lit8 v3, v12, 0x9

    and-int/lit8 v3, v3, 0xe

    .local v3, "$changed$iv":I
    move-object v11, v13

    .local v11, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v47, 0x0

    .line 590
    .local v47, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const v0, -0x4ab8dd4f

    move/from16 v52, v3

    .end local v3    # "$changed$iv":I
    .local v52, "$changed$iv":I
    const-string v3, "C73@3426L9:Box.kt#2w3rfo"

    invoke-static {v11, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v16, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v17, v10, 0x6

    and-int/lit8 v17, v17, 0x70

    or-int/lit8 v53, v17, 0x6

    .local v53, "$changed":I
    check-cast v16, Landroidx/compose/foundation/layout/BoxScope;

    .local v16, "$this$BackLayerTransition_u24lambda_u2411":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v54, v16

    .end local v16    # "$this$BackLayerTransition_u24lambda_u2411":Landroidx/compose/foundation/layout/BoxScope;
    .local v54, "$this$BackLayerTransition_u24lambda_u2411":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v55, v11

    .local v55, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v56, 0x0

    .line 433
    .local v56, "$i$a$-Box-BackdropScaffoldKt$BackLayerTransition$1":I
    const v0, -0x5bb59dfc

    move-object/from16 v57, v4

    .end local v4    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v57, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const-string v4, "C432@18236L226,440@18471L231:BackdropScaffold.kt#jmzs0o"

    move/from16 v58, v10

    move-object/from16 v10, v55

    .end local v55    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    .local v58, "$changed$iv":I
    invoke-static {v10, v0, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 434
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    invoke-static {v0, v6}, Landroidx/compose/ui/ZIndexModifierKt;->zIndex(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 435
    nop

    .line 434
    const/16 v20, 0x0

    .line 436
    sub-float v0, v7, v6

    mul-float v21, v0, v5

    .line 434
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    const v37, 0x1ffeb

    const/16 v38, 0x0

    move/from16 v19, v6

    invoke-static/range {v16 .. v38}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJIILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 433
    const/4 v4, 0x0

    .local v0, "modifier$iv":Landroidx/compose/ui/Modifier;
    move/from16 v16, v4

    .local v16, "$changed$iv":I
    const/4 v4, 0x0

    move/from16 v17, v4

    const v4, 0x2bb5b5d7

    .local v17, "$i$f$Box":I
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 591
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v4

    .line 592
    .local v4, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    move/from16 v55, v6

    .end local v6    # "appBarFloat":F
    .local v55, "appBarFloat":F
    const/4 v6, 0x0

    .line 595
    .local v6, "propagateMinConstraints$iv":Z
    shr-int/lit8 v18, v16, 0x3

    and-int/lit8 v18, v18, 0xe

    shr-int/lit8 v19, v16, 0x3

    and-int/lit8 v19, v19, 0x70

    move/from16 v59, v12

    .end local v12    # "$changed$iv$iv$iv":I
    .local v59, "$changed$iv$iv$iv":I
    or-int v12, v18, v19

    invoke-static {v4, v6, v10, v12}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    .local v12, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v18, v16, 0x3

    and-int/lit8 v18, v18, 0x70

    .line 596
    nop

    .local v18, "$changed$iv$iv":I
    const/16 v19, 0x0

    move-object/from16 v20, v4

    const v4, -0x4ee9b9da

    .end local v4    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v19, "$i$f$Layout":I
    .local v20, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 597
    const/4 v4, 0x0

    invoke-static {v10, v4}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v21

    .line 598
    .local v21, "compositeKeyHash$iv$iv":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v4

    .line 600
    .local v4, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v22, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v22

    .line 607
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v23

    move-object/from16 v24, v0

    .end local v0    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v24, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v0, v18, 0x9

    and-int/lit16 v0, v0, 0x1c00

    or-int/lit8 v0, v0, 0x6

    .line 599
    nop

    .local v0, "$changed$iv$iv$iv":I
    move-object/from16 v25, v22

    .local v25, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v22, v23

    .local v22, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v23, 0x0

    .line 608
    .local v23, "$i$f$ReusableComposeNode":I
    move/from16 v26, v6

    .end local v6    # "propagateMinConstraints$iv":Z
    .local v26, "propagateMinConstraints$iv":Z
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v6

    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    if-nez v6, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 609
    :cond_e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 610
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 611
    move-object/from16 v6, v25

    .end local v25    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v6, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    .line 613
    .end local v6    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v25    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_f
    move-object/from16 v6, v25

    .end local v25    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v6    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 615
    :goto_8
    move-object/from16 v25, v6

    .end local v6    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v25    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .local v6, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v27, 0x0

    .line 602
    .local v27, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v28, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v60, v13

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .local v60, "$composer":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v6, v12, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 603
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v6, v4, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 605
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    .local v13, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v28, 0x0

    .line 616
    .local v28, "$i$f$set-impl":I
    move-object/from16 v29, v6

    .local v29, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v30, 0x0

    .line 617
    .local v30, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v31

    if-nez v31, :cond_11

    move-object/from16 v31, v4

    .end local v4    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v31, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v32, v12

    .end local v12    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v32, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_9

    :cond_10
    move-object/from16 v12, v29

    goto :goto_a

    .end local v31    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v32    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v4    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v12    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_11
    move-object/from16 v31, v4

    move-object/from16 v32, v12

    .line 618
    .end local v4    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v12    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v31    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v32    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_9
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v12, v29

    .end local v29    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v12, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 619
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4, v13}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 621
    :goto_a
    nop

    .line 616
    .end local v12    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v30    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 621
    nop

    .line 606
    .end local v13    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v28    # "$i$f$set-impl":I
    nop

    .line 615
    .end local v6    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v27    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 622
    invoke-static {v10}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v4

    shr-int/lit8 v6, v0, 0x3

    and-int/lit8 v6, v6, 0x70

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v12, v22

    .end local v22    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v12, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v12, v4, v10, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const v4, 0x7ab4aae9

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 624
    shr-int/lit8 v4, v0, 0x9

    and-int/lit8 v4, v4, 0xe

    .local v4, "$changed$iv":I
    move-object v6, v10

    .local v6, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 625
    .local v13, "$i$a$-Layout-BoxKt$Box$1$iv":I
    move/from16 v22, v0

    const v0, -0x4ab8dd4f

    .end local v0    # "$changed$iv$iv$iv":I
    .local v22, "$changed$iv$iv$iv":I
    invoke-static {v6, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v27, v16, 0x6

    and-int/lit8 v27, v27, 0x70

    or-int/lit8 v27, v27, 0x6

    .local v27, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .local v0, "$this$BackLayerTransition_u24lambda_u2411_u24lambda_u249":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v28, v6

    .local v28, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v29, 0x0

    .line 439
    .local v29, "$i$a$-Box-BackdropScaffoldKt$BackLayerTransition$1$1":I
    move-object/from16 v30, v0

    .end local v0    # "$this$BackLayerTransition_u24lambda_u2411_u24lambda_u249":Landroidx/compose/foundation/layout/BoxScope;
    .local v30, "$this$BackLayerTransition_u24lambda_u2411_u24lambda_u249":Landroidx/compose/foundation/layout/BoxScope;
    const v0, -0x1cb8870b

    move/from16 v33, v4

    .end local v4    # "$changed$iv":I
    .local v33, "$changed$iv":I
    const-string v4, "C438@18444L8:BackdropScaffold.kt#jmzs0o"

    move-object/from16 v34, v12

    move-object/from16 v12, v28

    .end local v28    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    .local v34, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-static {v12, v0, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    shr-int/lit8 v0, v14, 0x3

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v12, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 440
    nop

    .line 625
    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v27    # "$changed":I
    .end local v29    # "$i$a$-Box-BackdropScaffoldKt$BackLayerTransition$1$1":I
    .end local v30    # "$this$BackLayerTransition_u24lambda_u2411_u24lambda_u249":Landroidx/compose/foundation/layout/BoxScope;
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 624
    .end local v6    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v33    # "$changed$iv":I
    nop

    .line 626
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 627
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 628
    nop

    .end local v22    # "$changed$iv$iv$iv":I
    .end local v23    # "$i$f$ReusableComposeNode":I
    .end local v25    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v34    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 629
    nop

    .end local v18    # "$changed$iv$iv":I
    .end local v19    # "$i$f$Layout":I
    .end local v21    # "compositeKeyHash$iv$iv":I
    .end local v31    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 630
    nop

    .line 442
    .end local v16    # "$changed$iv":I
    .end local v17    # "$i$f$Box":I
    .end local v20    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v24    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v26    # "propagateMinConstraints$iv":Z
    .end local v32    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    invoke-static {v0, v8}, Landroidx/compose/ui/ZIndexModifierKt;->zIndex(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 443
    nop

    .line 442
    const/16 v20, 0x0

    .line 444
    sub-float/2addr v7, v8

    neg-float v0, v5

    mul-float v21, v7, v0

    .line 442
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    const v37, 0x1ffeb

    const/16 v38, 0x0

    move/from16 v19, v8

    invoke-static/range {v16 .. v38}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJIILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 441
    const/4 v4, 0x0

    .local v0, "modifier$iv":Landroidx/compose/ui/Modifier;
    move v6, v4

    .local v6, "$changed$iv":I
    const/4 v4, 0x0

    const v7, 0x2bb5b5d7

    .local v4, "$i$f$Box":I
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 631
    sget-object v7, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v7

    .line 632
    .local v7, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v12, 0x0

    .line 635
    .local v12, "propagateMinConstraints$iv":Z
    shr-int/lit8 v13, v6, 0x3

    and-int/lit8 v13, v13, 0xe

    shr-int/lit8 v15, v6, 0x3

    and-int/lit8 v15, v15, 0x70

    or-int/2addr v13, v15

    invoke-static {v7, v12, v10, v13}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v13

    .local v13, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v15, v6, 0x3

    and-int/lit8 v15, v15, 0x70

    .line 636
    nop

    .local v15, "$changed$iv$iv":I
    const/16 v16, 0x0

    move/from16 p3, v4

    const v4, -0x4ee9b9da

    .end local v4    # "$i$f$Box":I
    .local v16, "$i$f$Layout":I
    .local p3, "$i$f$Box":I
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 637
    const/4 v4, 0x0

    invoke-static {v10, v4}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v4

    .line 638
    .local v4, "compositeKeyHash$iv$iv":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v9

    .line 640
    .local v9, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v17

    .line 647
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v18

    move-object/from16 v19, v0

    .end local v0    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v19, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v0, v15, 0x9

    and-int/lit16 v0, v0, 0x1c00

    or-int/lit8 v0, v0, 0x6

    .line 639
    nop

    .local v0, "$changed$iv$iv$iv":I
    move-object/from16 v20, v17

    .local v20, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v17, v18

    .local v17, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v18, 0x0

    .line 648
    .local v18, "$i$f$ReusableComposeNode":I
    move/from16 v21, v5

    .end local v5    # "animationSlideOffset":F
    .local v21, "animationSlideOffset":F
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v5

    instance-of v5, v5, Landroidx/compose/runtime/Applier;

    if-nez v5, :cond_12

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 649
    :cond_12
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 650
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 651
    move-object/from16 v5, v20

    .end local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v5, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    .line 653
    .end local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_13
    move-object/from16 v5, v20

    .end local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 655
    :goto_b
    move-object/from16 v20, v5

    .end local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .local v5, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 642
    .local v22, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v24, v7

    .end local v7    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v24, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v5, v13, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 643
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v5, v9, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 645
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    .local v7, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v23, 0x0

    .line 656
    .local v23, "$i$f$set-impl":I
    move-object/from16 v25, v5

    .local v25, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v26, 0x0

    .line 657
    .local v26, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v27

    if-nez v27, :cond_15

    move/from16 v27, v8

    .end local v8    # "contentFloat":F
    .local v27, "contentFloat":F
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v28, v9

    .end local v9    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v28, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    goto :goto_c

    :cond_14
    move-object/from16 v9, v25

    goto :goto_d

    .end local v27    # "contentFloat":F
    .end local v28    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v8    # "contentFloat":F
    .restart local v9    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_15
    move/from16 v27, v8

    move-object/from16 v28, v9

    .line 658
    .end local v8    # "contentFloat":F
    .end local v9    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v27    # "contentFloat":F
    .restart local v28    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v9, v25

    .end local v25    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v9, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 659
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8, v7}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 661
    :goto_d
    nop

    .line 656
    .end local v9    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v26    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 661
    nop

    .line 646
    .end local v7    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v23    # "$i$f$set-impl":I
    nop

    .line 655
    .end local v5    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 662
    invoke-static {v10}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v5

    shr-int/lit8 v7, v0, 0x3

    and-int/lit8 v7, v7, 0x70

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v8, v17

    .end local v17    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v8, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v8, v5, v10, v7}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const v5, 0x7ab4aae9

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 664
    shr-int/lit8 v5, v0, 0x9

    and-int/lit8 v5, v5, 0xe

    .local v5, "$changed$iv":I
    move-object v7, v10

    .local v7, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 665
    .local v9, "$i$a$-Layout-BoxKt$Box$1$iv":I
    move/from16 v17, v0

    const v0, -0x4ab8dd4f

    .end local v0    # "$changed$iv$iv$iv":I
    .local v17, "$changed$iv$iv$iv":I
    invoke-static {v7, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v3, v6, 0x6

    and-int/lit8 v3, v3, 0x70

    or-int/lit8 v3, v3, 0x6

    .local v3, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .local v0, "$this$BackLayerTransition_u24lambda_u2411_u24lambda_u2410":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v22, v7

    .local v22, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 447
    .local v23, "$i$a$-Box-BackdropScaffoldKt$BackLayerTransition$1$2":I
    move-object/from16 v25, v0

    .end local v0    # "$this$BackLayerTransition_u24lambda_u2411_u24lambda_u2410":Landroidx/compose/foundation/layout/BoxScope;
    .local v25, "$this$BackLayerTransition_u24lambda_u2411_u24lambda_u2410":Landroidx/compose/foundation/layout/BoxScope;
    const v0, -0x1cb8861c

    move/from16 v26, v3

    .end local v3    # "$changed":I
    .local v26, "$changed":I
    const-string v3, "C446@18683L9:BackdropScaffold.kt#jmzs0o"

    move/from16 v29, v4

    move-object/from16 v4, v22

    .end local v22    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    .local v29, "compositeKeyHash$iv$iv":I
    invoke-static {v4, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    shr-int/lit8 v0, v14, 0x6

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 448
    nop

    .line 665
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v23    # "$i$a$-Box-BackdropScaffoldKt$BackLayerTransition$1$2":I
    .end local v25    # "$this$BackLayerTransition_u24lambda_u2411_u24lambda_u2410":Landroidx/compose/foundation/layout/BoxScope;
    .end local v26    # "$changed":I
    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 664
    .end local v5    # "$changed$iv":I
    .end local v7    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    nop

    .line 666
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 667
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 668
    nop

    .end local v8    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v17    # "$changed$iv$iv$iv":I
    .end local v18    # "$i$f$ReusableComposeNode":I
    .end local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 669
    nop

    .end local v15    # "$changed$iv$iv":I
    .end local v16    # "$i$f$Layout":I
    .end local v28    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v29    # "compositeKeyHash$iv$iv":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 670
    nop

    .line 433
    .end local v6    # "$changed$iv":I
    .end local v12    # "propagateMinConstraints$iv":Z
    .end local v13    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v19    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v24    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local p3    # "$i$f$Box":I
    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 449
    nop

    .line 590
    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v53    # "$changed":I
    .end local v54    # "$this$BackLayerTransition_u24lambda_u2411":Landroidx/compose/foundation/layout/BoxScope;
    .end local v56    # "$i$a$-Box-BackdropScaffoldKt$BackLayerTransition$1":I
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 589
    .end local v11    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v47    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v52    # "$changed$iv":I
    nop

    .line 671
    invoke-interface/range {v60 .. v60}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 672
    invoke-interface/range {v60 .. v60}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 673
    nop

    .end local v48    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v49    # "$i$f$ReusableComposeNode":I
    .end local v57    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v59    # "$changed$iv$iv$iv":I
    invoke-interface/range {v60 .. v60}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 674
    nop

    .end local v41    # "$changed$iv$iv":I
    .end local v42    # "$i$f$Layout":I
    .end local v45    # "compositeKeyHash$iv$iv":I
    .end local v51    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v60 .. v60}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 675
    nop

    .end local v39    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v43    # "propagateMinConstraints$iv":Z
    .end local v44    # "$i$f$Box":I
    .end local v46    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v50    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v58    # "$changed$iv":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 450
    .end local v21    # "animationSlideOffset":F
    .end local v27    # "contentFloat":F
    .end local v40    # "animationProgress$delegate":Landroidx/compose/runtime/State;
    .end local v55    # "appBarFloat":F
    :cond_16
    :goto_e
    invoke-interface/range {v60 .. v60}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_17

    new-instance v3, Landroidx/compose/material/BackdropScaffoldKt$BackLayerTransition$2;

    move-object/from16 v4, p0

    move/from16 v5, p4

    invoke-direct {v3, v4, v1, v2, v5}, Landroidx/compose/material/BackdropScaffoldKt$BackLayerTransition$2;-><init>(Landroidx/compose/material/BackdropValue;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v3}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_f

    :cond_17
    move-object/from16 v4, p0

    move/from16 v5, p4

    :goto_f
    return-void
.end method

.method private static final BackLayerTransition$lambda$7(Landroidx/compose/runtime/State;)F
    .locals 4
    .param p0, "$animationProgress$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 424
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 683
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 424
    return v0
.end method

.method public static final BackdropScaffold-BZszfkY(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BackdropScaffoldState;ZFFZZJJLandroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 52
    .param p0, "appBar"    # Lkotlin/jvm/functions/Function2;
    .param p1, "backLayerContent"    # Lkotlin/jvm/functions/Function2;
    .param p2, "frontLayerContent"    # Lkotlin/jvm/functions/Function2;
    .param p3, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p4, "scaffoldState"    # Landroidx/compose/material/BackdropScaffoldState;
    .param p5, "gesturesEnabled"    # Z
    .param p6, "peekHeight"    # F
    .param p7, "headerHeight"    # F
    .param p8, "persistentAppBar"    # Z
    .param p9, "stickyFrontLayer"    # Z
    .param p10, "backLayerBackgroundColor"    # J
    .param p12, "backLayerContentColor"    # J
    .param p14, "frontLayerShape"    # Landroidx/compose/ui/graphics/Shape;
    .param p15, "frontLayerElevation"    # F
    .param p16, "frontLayerBackgroundColor"    # J
    .param p18, "frontLayerContentColor"    # J
    .param p20, "frontLayerScrimColor"    # J
    .param p22, "snackbarHost"    # Lkotlin/jvm/functions/Function3;
    .param p23, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p24, "$changed"    # I
    .param p25, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material/BackdropScaffoldState;",
            "ZFFZZJJ",
            "Landroidx/compose/ui/graphics/Shape;",
            "FJJJ",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material/SnackbarHostState;",
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

    .line 277
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move/from16 v14, p24

    move/from16 v11, p25

    move/from16 v12, p26

    const v0, 0x534af03d

    move-object/from16 v1, p23

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p23    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(BackdropScaffold)P(!1,2,5,12,15,10,13:c#ui.unit.Dp,11:c#ui.unit.Dp,14,17,1:c#ui.graphics.Color,3:c#ui.graphics.Color,9,7:c#ui.unit.Dp,4:c#ui.graphics.Color,6:c#ui.graphics.Color,8:c#ui.graphics.Color)262@11812L40,268@12139L6,269@12190L41,270@12287L15,272@12433L6,273@12485L42,274@12588L20,*277@12736L7,278@12810L7,295@13317L3282:BackdropScaffold.kt#jmzs0o"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p24

    .local v1, "$dirty":I
    move/from16 v2, p25

    .local v2, "$dirty1":I
    and-int/lit8 v3, v12, 0x1

    const/4 v5, 0x2

    if-eqz v3, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v14, 0xe

    if-nez v3, :cond_2

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    or-int/2addr v1, v3

    :cond_2
    :goto_1
    and-int/lit8 v3, v12, 0x2

    const/16 v6, 0x20

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v14, 0x70

    if-nez v3, :cond_5

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v6

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v12, 0x4

    if-eqz v3, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v3, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v14, 0x380

    if-nez v3, :cond_8

    move-object/from16 v3, p2

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_4

    :cond_7
    const/16 v16, 0x80

    :goto_4
    or-int v1, v1, v16

    goto :goto_5

    :cond_8
    move-object/from16 v3, p2

    :goto_5
    and-int/lit8 v16, v12, 0x8

    const/16 v17, 0x800

    const/16 v18, 0x400

    if-eqz v16, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v4, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v4, v14, 0x1c00

    if-nez v4, :cond_b

    move-object/from16 v4, p3

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    move/from16 v19, v17

    goto :goto_6

    :cond_a
    move/from16 v19, v18

    :goto_6
    or-int v1, v1, v19

    goto :goto_7

    :cond_b
    move-object/from16 v4, p3

    :goto_7
    const v19, 0xe000

    and-int v19, v14, v19

    const/16 v20, 0x2000

    const/16 v21, 0x4000

    if-nez v19, :cond_e

    and-int/lit8 v19, v12, 0x10

    if-nez v19, :cond_c

    move-object/from16 v8, p4

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    move/from16 v22, v21

    goto :goto_8

    :cond_c
    move-object/from16 v8, p4

    :cond_d
    move/from16 v22, v20

    :goto_8
    or-int v1, v1, v22

    goto :goto_9

    :cond_e
    move-object/from16 v8, p4

    :goto_9
    and-int/lit8 v22, v12, 0x20

    const/high16 v23, 0x20000

    const/high16 v24, 0x10000

    if-eqz v22, :cond_f

    const/high16 v25, 0x30000

    or-int v1, v1, v25

    move/from16 v9, p5

    goto :goto_b

    :cond_f
    const/high16 v25, 0x70000

    and-int v25, v14, v25

    if-nez v25, :cond_11

    move/from16 v9, p5

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v26

    if-eqz v26, :cond_10

    move/from16 v26, v23

    goto :goto_a

    :cond_10
    move/from16 v26, v24

    :goto_a
    or-int v1, v1, v26

    goto :goto_b

    :cond_11
    move/from16 v9, p5

    :goto_b
    and-int/lit8 v26, v12, 0x40

    if-eqz v26, :cond_12

    const/high16 v27, 0x180000

    or-int v1, v1, v27

    move/from16 v0, p6

    goto :goto_d

    :cond_12
    const/high16 v27, 0x380000

    and-int v27, v14, v27

    if-nez v27, :cond_14

    move/from16 v0, p6

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v28

    if-eqz v28, :cond_13

    const/high16 v28, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v28, 0x80000

    :goto_c
    or-int v1, v1, v28

    goto :goto_d

    :cond_14
    move/from16 v0, p6

    :goto_d
    and-int/lit16 v7, v12, 0x80

    if-eqz v7, :cond_15

    const/high16 v29, 0xc00000

    or-int v1, v1, v29

    move/from16 v29, v7

    move/from16 v7, p7

    goto :goto_f

    :cond_15
    const/high16 v29, 0x1c00000

    and-int v29, v14, v29

    if-nez v29, :cond_17

    move/from16 v29, v7

    move/from16 v7, p7

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v30

    if-eqz v30, :cond_16

    const/high16 v30, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v30, 0x400000

    :goto_e
    or-int v1, v1, v30

    goto :goto_f

    :cond_17
    move/from16 v29, v7

    move/from16 v7, p7

    :goto_f
    and-int/lit16 v7, v12, 0x100

    if-eqz v7, :cond_18

    const/high16 v30, 0x6000000

    or-int v1, v1, v30

    move/from16 v30, v7

    move/from16 v7, p8

    goto :goto_11

    :cond_18
    const/high16 v30, 0xe000000

    and-int v30, v14, v30

    if-nez v30, :cond_1a

    move/from16 v30, v7

    move/from16 v7, p8

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v31

    if-eqz v31, :cond_19

    const/high16 v31, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v31, 0x2000000

    :goto_10
    or-int v1, v1, v31

    goto :goto_11

    :cond_1a
    move/from16 v30, v7

    move/from16 v7, p8

    :goto_11
    and-int/lit16 v7, v12, 0x200

    if-eqz v7, :cond_1b

    const/high16 v31, 0x30000000

    or-int v1, v1, v31

    move/from16 v32, v1

    move/from16 v31, v7

    move/from16 v7, p9

    goto :goto_14

    :cond_1b
    const/high16 v31, 0x70000000

    and-int v31, v14, v31

    if-nez v31, :cond_1d

    move/from16 v31, v7

    move/from16 v7, p9

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v32

    if-eqz v32, :cond_1c

    const/high16 v32, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v32, 0x10000000

    :goto_12
    or-int v1, v1, v32

    goto :goto_13

    :cond_1d
    move/from16 v31, v7

    move/from16 v7, p9

    :goto_13
    move/from16 v32, v1

    .end local v1    # "$dirty":I
    .local v32, "$dirty":I
    :goto_14
    and-int/lit8 v1, v11, 0xe

    if-nez v1, :cond_20

    and-int/lit16 v1, v12, 0x400

    if-nez v1, :cond_1e

    move-wide/from16 v7, p10

    invoke-interface {v10, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v5, 0x4

    goto :goto_15

    :cond_1e
    move-wide/from16 v7, p10

    :cond_1f
    :goto_15
    or-int/2addr v2, v5

    goto :goto_16

    :cond_20
    move-wide/from16 v7, p10

    :goto_16
    and-int/lit8 v1, v11, 0x70

    if-nez v1, :cond_23

    and-int/lit16 v1, v12, 0x800

    if-nez v1, :cond_21

    move-wide/from16 v7, p12

    invoke-interface {v10, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_17

    :cond_21
    move-wide/from16 v7, p12

    :cond_22
    const/16 v6, 0x10

    :goto_17
    or-int/2addr v2, v6

    goto :goto_18

    :cond_23
    move-wide/from16 v7, p12

    :goto_18
    and-int/lit16 v1, v11, 0x380

    if-nez v1, :cond_26

    and-int/lit16 v1, v12, 0x1000

    if-nez v1, :cond_24

    move-object/from16 v6, p14

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v25, 0x100

    goto :goto_19

    :cond_24
    move-object/from16 v6, p14

    :cond_25
    const/16 v25, 0x80

    :goto_19
    or-int v2, v2, v25

    goto :goto_1a

    :cond_26
    move-object/from16 v6, p14

    :goto_1a
    and-int/lit16 v5, v12, 0x2000

    if-eqz v5, :cond_27

    or-int/lit16 v2, v2, 0xc00

    move/from16 v1, p15

    goto :goto_1c

    :cond_27
    and-int/lit16 v1, v11, 0x1c00

    if-nez v1, :cond_29

    move/from16 v1, p15

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v19

    if-eqz v19, :cond_28

    goto :goto_1b

    :cond_28
    move/from16 v17, v18

    :goto_1b
    or-int v2, v2, v17

    goto :goto_1c

    :cond_29
    move/from16 v1, p15

    :goto_1c
    const v17, 0xe000

    and-int v17, v11, v17

    if-nez v17, :cond_2c

    and-int/lit16 v0, v12, 0x4000

    if-nez v0, :cond_2a

    move-wide/from16 v7, p16

    invoke-interface {v10, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_2b

    move/from16 v20, v21

    goto :goto_1d

    :cond_2a
    move-wide/from16 v7, p16

    :cond_2b
    :goto_1d
    or-int v2, v2, v20

    goto :goto_1e

    :cond_2c
    move-wide/from16 v7, p16

    :goto_1e
    const/high16 v0, 0x70000

    and-int/2addr v0, v11

    const v17, 0x8000

    if-nez v0, :cond_2f

    and-int v0, v12, v17

    if-nez v0, :cond_2d

    move-wide/from16 v7, p18

    invoke-interface {v10, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_2e

    move/from16 v0, v23

    goto :goto_1f

    :cond_2d
    move-wide/from16 v7, p18

    :cond_2e
    move/from16 v0, v24

    :goto_1f
    or-int/2addr v2, v0

    goto :goto_20

    :cond_2f
    move-wide/from16 v7, p18

    :goto_20
    const/high16 v0, 0x380000

    and-int/2addr v0, v11

    if-nez v0, :cond_32

    and-int v0, v12, v24

    if-nez v0, :cond_30

    move-wide/from16 v7, p20

    invoke-interface {v10, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_31

    const/high16 v0, 0x100000

    goto :goto_21

    :cond_30
    move-wide/from16 v7, p20

    :cond_31
    const/high16 v0, 0x80000

    :goto_21
    or-int/2addr v2, v0

    goto :goto_22

    :cond_32
    move-wide/from16 v7, p20

    :goto_22
    and-int v0, v12, v23

    if-eqz v0, :cond_33

    const/high16 v18, 0xc00000

    or-int v2, v2, v18

    move-object/from16 v7, p22

    goto :goto_24

    :cond_33
    const/high16 v18, 0x1c00000

    and-int v18, v11, v18

    if-nez v18, :cond_35

    move-object/from16 v7, p22

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34

    const/high16 v8, 0x800000

    goto :goto_23

    :cond_34
    const/high16 v8, 0x400000

    :goto_23
    or-int/2addr v2, v8

    goto :goto_24

    :cond_35
    move-object/from16 v7, p22

    :goto_24
    move v8, v2

    .end local v2    # "$dirty1":I
    .local v8, "$dirty1":I
    const v2, 0x5b6db6db

    and-int v2, v32, v2

    const v1, 0x12492492

    if-ne v2, v1, :cond_37

    const v1, 0x16db6db

    and-int/2addr v1, v8

    const v2, 0x492492

    if-ne v1, v2, :cond_37

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_36

    goto :goto_25

    .line 382
    :cond_36
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v28, p4

    move/from16 v30, p6

    move/from16 v31, p7

    move/from16 v33, p9

    move-wide/from16 v34, p10

    move-wide/from16 v36, p12

    move/from16 v39, p15

    move-wide/from16 v40, p16

    move-wide/from16 v42, p18

    move-wide/from16 v44, p20

    move-object/from16 v27, v4

    move-object/from16 v38, v6

    move-object/from16 v46, v7

    move/from16 v47, v8

    move/from16 v29, v9

    move/from16 v48, v32

    move/from16 v32, p8

    goto/16 :goto_38

    .line 277
    :cond_37
    :goto_25
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, v14, 0x1

    const v18, -0xe001

    if-eqz v1, :cond_40

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_38

    goto/16 :goto_26

    .line 275
    :cond_38
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x10

    if-eqz v0, :cond_39

    and-int v32, v32, v18

    :cond_39
    and-int/lit16 v0, v12, 0x400

    if-eqz v0, :cond_3a

    and-int/lit8 v8, v8, -0xf

    :cond_3a
    and-int/lit16 v0, v12, 0x800

    if-eqz v0, :cond_3b

    and-int/lit8 v8, v8, -0x71

    :cond_3b
    and-int/lit16 v0, v12, 0x1000

    if-eqz v0, :cond_3c

    and-int/lit16 v8, v8, -0x381

    :cond_3c
    and-int/lit16 v0, v12, 0x4000

    if-eqz v0, :cond_3d

    and-int v8, v8, v18

    :cond_3d
    and-int v0, v12, v17

    if-eqz v0, :cond_3e

    const v0, -0x70001

    and-int/2addr v8, v0

    :cond_3e
    and-int v0, v12, v24

    if-eqz v0, :cond_3f

    const v0, -0x380001

    and-int/2addr v0, v8

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v5, p9

    move-wide/from16 v20, p12

    move/from16 v3, p15

    move-wide/from16 v22, p16

    move-wide/from16 v17, p18

    move-wide/from16 v24, p20

    move v11, v0

    move-object/from16 v16, v4

    move-object/from16 v19, v7

    move/from16 v12, v32

    move-object/from16 v0, p4

    move/from16 v4, p8

    move-wide/from16 v7, p10

    .end local v8    # "$dirty1":I
    .local v0, "$dirty1":I
    goto/16 :goto_34

    .end local v0    # "$dirty1":I
    .restart local v8    # "$dirty1":I
    :cond_3f
    move-object/from16 v0, p4

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v5, p9

    move-wide/from16 v20, p12

    move/from16 v3, p15

    move-wide/from16 v22, p16

    move-wide/from16 v17, p18

    move-wide/from16 v24, p20

    move-object/from16 v16, v4

    move-object/from16 v19, v7

    move v11, v8

    move/from16 v12, v32

    move/from16 v4, p8

    move-wide/from16 v7, p10

    goto/16 :goto_34

    .line 277
    :cond_40
    :goto_26
    if-eqz v16, :cond_41

    .line 262
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object/from16 v16, v1

    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_27

    .line 277
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p3    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_41
    move-object/from16 v16, v4

    .line 262
    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    :goto_27
    and-int/lit8 v1, v12, 0x10

    if-eqz v1, :cond_42

    .line 263
    sget-object v1, Landroidx/compose/material/BackdropValue;->Concealed:Landroidx/compose/material/BackdropValue;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0xe

    move-object v3, v4

    move-object/from16 v4, v19

    move/from16 v19, v5

    move-object v5, v10

    move/from16 v6, v20

    move/from16 v20, v29

    move/from16 v23, v30

    move/from16 v25, v31

    move/from16 v7, v21

    invoke-static/range {v1 .. v7}, Landroidx/compose/material/BackdropScaffoldKt;->rememberBackdropScaffoldState(Landroidx/compose/material/BackdropValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BackdropScaffoldState;

    move-result-object v1

    .end local p4    # "scaffoldState":Landroidx/compose/material/BackdropScaffoldState;
    .local v1, "scaffoldState":Landroidx/compose/material/BackdropScaffoldState;
    and-int v32, v32, v18

    goto :goto_28

    .line 262
    .end local v1    # "scaffoldState":Landroidx/compose/material/BackdropScaffoldState;
    .restart local p4    # "scaffoldState":Landroidx/compose/material/BackdropScaffoldState;
    :cond_42
    move/from16 v19, v5

    move/from16 v20, v29

    move/from16 v23, v30

    move/from16 v25, v31

    move-object/from16 v1, p4

    .line 263
    .end local p4    # "scaffoldState":Landroidx/compose/material/BackdropScaffoldState;
    .restart local v1    # "scaffoldState":Landroidx/compose/material/BackdropScaffoldState;
    :goto_28
    if-eqz v22, :cond_43

    .line 264
    const/4 v2, 0x1

    move v9, v2

    .end local p5    # "gesturesEnabled":Z
    .local v9, "gesturesEnabled":Z
    :cond_43
    if-eqz v26, :cond_44

    .line 265
    sget-object v2, Landroidx/compose/material/BackdropScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BackdropScaffoldDefaults;

    invoke-virtual {v2}, Landroidx/compose/material/BackdropScaffoldDefaults;->getPeekHeight-D9Ej5fM()F

    move-result v2

    .end local p6    # "peekHeight":F
    .local v2, "peekHeight":F
    goto :goto_29

    .line 264
    .end local v2    # "peekHeight":F
    .restart local p6    # "peekHeight":F
    :cond_44
    move/from16 v2, p6

    .line 265
    .end local p6    # "peekHeight":F
    .restart local v2    # "peekHeight":F
    :goto_29
    if-eqz v20, :cond_45

    .line 266
    sget-object v3, Landroidx/compose/material/BackdropScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BackdropScaffoldDefaults;

    invoke-virtual {v3}, Landroidx/compose/material/BackdropScaffoldDefaults;->getHeaderHeight-D9Ej5fM()F

    move-result v3

    .end local p7    # "headerHeight":F
    .local v3, "headerHeight":F
    goto :goto_2a

    .line 265
    .end local v3    # "headerHeight":F
    .restart local p7    # "headerHeight":F
    :cond_45
    move/from16 v3, p7

    .line 266
    .end local p7    # "headerHeight":F
    .restart local v3    # "headerHeight":F
    :goto_2a
    if-eqz v23, :cond_46

    .line 267
    const/4 v4, 0x1

    .end local p8    # "persistentAppBar":Z
    .local v4, "persistentAppBar":Z
    goto :goto_2b

    .line 266
    .end local v4    # "persistentAppBar":Z
    .restart local p8    # "persistentAppBar":Z
    :cond_46
    move/from16 v4, p8

    .line 267
    .end local p8    # "persistentAppBar":Z
    .restart local v4    # "persistentAppBar":Z
    :goto_2b
    if-eqz v25, :cond_47

    .line 268
    const/4 v5, 0x1

    .end local p9    # "stickyFrontLayer":Z
    .local v5, "stickyFrontLayer":Z
    goto :goto_2c

    .line 267
    .end local v5    # "stickyFrontLayer":Z
    .restart local p9    # "stickyFrontLayer":Z
    :cond_47
    move/from16 v5, p9

    .line 268
    .end local p9    # "stickyFrontLayer":Z
    .restart local v5    # "stickyFrontLayer":Z
    :goto_2c
    and-int/lit16 v6, v12, 0x400

    const/4 v7, 0x6

    if-eqz v6, :cond_48

    .line 269
    sget-object v6, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v6, v10, v7}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    move-result-wide v20

    .end local p10    # "backLayerBackgroundColor":J
    .local v20, "backLayerBackgroundColor":J
    and-int/lit8 v8, v8, -0xf

    move v6, v8

    move-wide/from16 v7, v20

    goto :goto_2d

    .line 268
    .end local v20    # "backLayerBackgroundColor":J
    .restart local p10    # "backLayerBackgroundColor":J
    :cond_48
    move v6, v8

    move-wide/from16 v7, p10

    .line 269
    .end local v8    # "$dirty1":I
    .end local p10    # "backLayerBackgroundColor":J
    .local v6, "$dirty1":I
    .local v7, "backLayerBackgroundColor":J
    :goto_2d
    move-object/from16 p4, v1

    .end local v1    # "scaffoldState":Landroidx/compose/material/BackdropScaffoldState;
    .restart local p4    # "scaffoldState":Landroidx/compose/material/BackdropScaffoldState;
    and-int/lit16 v1, v12, 0x800

    if-eqz v1, :cond_49

    .line 270
    and-int/lit8 v1, v6, 0xe

    invoke-static {v7, v8, v10, v1}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v20

    .end local p12    # "backLayerContentColor":J
    .local v20, "backLayerContentColor":J
    and-int/lit8 v6, v6, -0x71

    goto :goto_2e

    .line 269
    .end local v20    # "backLayerContentColor":J
    .restart local p12    # "backLayerContentColor":J
    :cond_49
    move-wide/from16 v20, p12

    .line 270
    .end local p12    # "backLayerContentColor":J
    .restart local v20    # "backLayerContentColor":J
    :goto_2e
    and-int/lit16 v1, v12, 0x1000

    if-eqz v1, :cond_4a

    .line 271
    sget-object v1, Landroidx/compose/material/BackdropScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BackdropScaffoldDefaults;

    move/from16 p5, v2

    const/4 v2, 0x6

    .end local v2    # "peekHeight":F
    .local p5, "peekHeight":F
    invoke-virtual {v1, v10, v2}, Landroidx/compose/material/BackdropScaffoldDefaults;->getFrontLayerShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    .end local p14    # "frontLayerShape":Landroidx/compose/ui/graphics/Shape;
    .local v1, "frontLayerShape":Landroidx/compose/ui/graphics/Shape;
    and-int/lit16 v6, v6, -0x381

    goto :goto_2f

    .line 270
    .end local v1    # "frontLayerShape":Landroidx/compose/ui/graphics/Shape;
    .end local p5    # "peekHeight":F
    .restart local v2    # "peekHeight":F
    .restart local p14    # "frontLayerShape":Landroidx/compose/ui/graphics/Shape;
    :cond_4a
    move/from16 p5, v2

    .end local v2    # "peekHeight":F
    .restart local p5    # "peekHeight":F
    move-object/from16 v1, p14

    .line 271
    .end local p14    # "frontLayerShape":Landroidx/compose/ui/graphics/Shape;
    .restart local v1    # "frontLayerShape":Landroidx/compose/ui/graphics/Shape;
    :goto_2f
    if-eqz v19, :cond_4b

    .line 272
    sget-object v2, Landroidx/compose/material/BackdropScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BackdropScaffoldDefaults;

    invoke-virtual {v2}, Landroidx/compose/material/BackdropScaffoldDefaults;->getFrontLayerElevation-D9Ej5fM()F

    move-result v2

    .end local p15    # "frontLayerElevation":F
    .local v2, "frontLayerElevation":F
    goto :goto_30

    .line 271
    .end local v2    # "frontLayerElevation":F
    .restart local p15    # "frontLayerElevation":F
    :cond_4b
    move/from16 v2, p15

    .line 272
    .end local p15    # "frontLayerElevation":F
    .restart local v2    # "frontLayerElevation":F
    :goto_30
    move-object/from16 p6, v1

    .end local v1    # "frontLayerShape":Landroidx/compose/ui/graphics/Shape;
    .local p6, "frontLayerShape":Landroidx/compose/ui/graphics/Shape;
    and-int/lit16 v1, v12, 0x4000

    if-eqz v1, :cond_4c

    .line 273
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    move/from16 p7, v2

    const/4 v2, 0x6

    .end local v2    # "frontLayerElevation":F
    .local p7, "frontLayerElevation":F
    invoke-virtual {v1, v10, v2}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v1

    .end local p16    # "frontLayerBackgroundColor":J
    .local v1, "frontLayerBackgroundColor":J
    and-int v6, v6, v18

    goto :goto_31

    .line 272
    .end local v1    # "frontLayerBackgroundColor":J
    .end local p7    # "frontLayerElevation":F
    .restart local v2    # "frontLayerElevation":F
    .restart local p16    # "frontLayerBackgroundColor":J
    :cond_4c
    move/from16 p7, v2

    .end local v2    # "frontLayerElevation":F
    .restart local p7    # "frontLayerElevation":F
    move-wide/from16 v1, p16

    .line 273
    .end local p16    # "frontLayerBackgroundColor":J
    .restart local v1    # "frontLayerBackgroundColor":J
    :goto_31
    and-int v17, v12, v17

    if-eqz v17, :cond_4d

    .line 274
    shr-int/lit8 v17, v6, 0xc

    move/from16 p23, v3

    .end local v3    # "headerHeight":F
    .local p23, "headerHeight":F
    and-int/lit8 v3, v17, 0xe

    invoke-static {v1, v2, v10, v3}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v17

    .end local p18    # "frontLayerContentColor":J
    .local v17, "frontLayerContentColor":J
    const v3, -0x70001

    and-int/2addr v6, v3

    goto :goto_32

    .line 273
    .end local v17    # "frontLayerContentColor":J
    .end local p23    # "headerHeight":F
    .restart local v3    # "headerHeight":F
    .restart local p18    # "frontLayerContentColor":J
    :cond_4d
    move/from16 p23, v3

    .end local v3    # "headerHeight":F
    .restart local p23    # "headerHeight":F
    move-wide/from16 v17, p18

    .line 274
    .end local p18    # "frontLayerContentColor":J
    .restart local v17    # "frontLayerContentColor":J
    :goto_32
    and-int v3, v12, v24

    if-eqz v3, :cond_4e

    .line 275
    sget-object v3, Landroidx/compose/material/BackdropScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BackdropScaffoldDefaults;

    move-wide/from16 v22, v1

    const/4 v1, 0x6

    .end local v1    # "frontLayerBackgroundColor":J
    .local v22, "frontLayerBackgroundColor":J
    invoke-virtual {v3, v10, v1}, Landroidx/compose/material/BackdropScaffoldDefaults;->getFrontLayerScrimColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v1

    .end local p20    # "frontLayerScrimColor":J
    .local v1, "frontLayerScrimColor":J
    const v3, -0x380001

    and-int/2addr v6, v3

    goto :goto_33

    .line 274
    .end local v22    # "frontLayerBackgroundColor":J
    .local v1, "frontLayerBackgroundColor":J
    .restart local p20    # "frontLayerScrimColor":J
    :cond_4e
    move-wide/from16 v22, v1

    .end local v1    # "frontLayerBackgroundColor":J
    .restart local v22    # "frontLayerBackgroundColor":J
    move-wide/from16 v1, p20

    .line 275
    .end local p20    # "frontLayerScrimColor":J
    .local v1, "frontLayerScrimColor":J
    :goto_33
    if-eqz v0, :cond_4f

    sget-object v0, Landroidx/compose/material/ComposableSingletons$BackdropScaffoldKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$BackdropScaffoldKt;

    invoke-virtual {v0}, Landroidx/compose/material/ComposableSingletons$BackdropScaffoldKt;->getLambda-1$material_release()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    move/from16 v3, p7

    move-object/from16 v19, v0

    move-wide/from16 v24, v1

    move v11, v6

    move/from16 v12, v32

    move-object/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v6, p6

    move/from16 v2, p23

    .end local p22    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .local v0, "snackbarHost":Lkotlin/jvm/functions/Function3;
    goto :goto_34

    .end local v0    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .restart local p22    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    :cond_4f
    move-object/from16 v0, p4

    move/from16 v3, p7

    move-object/from16 v19, p22

    move-wide/from16 v24, v1

    move v11, v6

    move/from16 v12, v32

    move/from16 v1, p5

    move-object/from16 v6, p6

    move/from16 v2, p23

    .end local v32    # "$dirty":I
    .end local p4    # "scaffoldState":Landroidx/compose/material/BackdropScaffoldState;
    .end local p5    # "peekHeight":F
    .end local p6    # "frontLayerShape":Landroidx/compose/ui/graphics/Shape;
    .end local p7    # "frontLayerElevation":F
    .end local p22    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .end local p23    # "headerHeight":F
    .local v0, "scaffoldState":Landroidx/compose/material/BackdropScaffoldState;
    .local v1, "peekHeight":F
    .local v2, "headerHeight":F
    .local v3, "frontLayerElevation":F
    .local v6, "frontLayerShape":Landroidx/compose/ui/graphics/Shape;
    .local v11, "$dirty1":I
    .local v12, "$dirty":I
    .local v19, "snackbarHost":Lkotlin/jvm/functions/Function3;
    .local v24, "frontLayerScrimColor":J
    :goto_34
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v26

    if-eqz v26, :cond_50

    .line 277
    const-string/jumbo v14, "androidx.compose.material.BackdropScaffold (BackdropScaffold.kt:276)"

    move-wide/from16 v28, v7

    const v7, 0x534af03d

    .end local v7    # "backLayerBackgroundColor":J
    .local v28, "backLayerBackgroundColor":J
    invoke-static {v7, v12, v11, v14}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_35

    .line 275
    .end local v28    # "backLayerBackgroundColor":J
    .restart local v7    # "backLayerBackgroundColor":J
    :cond_50
    move-wide/from16 v28, v7

    .line 278
    .end local v7    # "backLayerBackgroundColor":J
    .restart local v28    # "backLayerBackgroundColor":J
    :goto_35
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v7

    check-cast v7, Landroidx/compose/runtime/CompositionLocal;

    .local v7, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v8, 0x0

    .local v8, "$changed$iv":I
    const/4 v14, 0x0

    .line 532
    .local v14, "$i$f$getCurrent":I
    move/from16 p3, v8

    .end local v8    # "$changed$iv":I
    .local p3, "$changed$iv":I
    const v8, 0x789c5f52

    move/from16 v26, v12

    .end local v12    # "$dirty":I
    .local v26, "$dirty":I
    const-string v12, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v10, v8, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 278
    .end local v7    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v14    # "$i$f$getCurrent":I
    .end local p3    # "$changed$iv":I
    move-object v7, v8

    check-cast v7, Landroidx/compose/ui/unit/Density;

    .line 533
    .local v7, "$this$BackdropScaffold_BZszfkY_u24lambda_u241":Landroidx/compose/ui/unit/Density;
    const/4 v8, 0x0

    .line 278
    .local v8, "$i$a$-with-BackdropScaffoldKt$BackdropScaffold$peekHeightPx$1":I
    invoke-interface {v7, v1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v7

    .line 279
    .end local v8    # "$i$a$-with-BackdropScaffoldKt$BackdropScaffold$peekHeightPx$1":I
    .local v7, "peekHeightPx":F
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v8

    check-cast v8, Landroidx/compose/runtime/CompositionLocal;

    .local v8, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v12, 0x0

    .local v12, "$changed$iv":I
    const/4 v14, 0x0

    .line 534
    .restart local v14    # "$i$f$getCurrent":I
    move/from16 p3, v12

    .end local v12    # "$changed$iv":I
    .restart local p3    # "$changed$iv":I
    const v12, 0x789c5f52

    move/from16 p4, v14

    .end local v14    # "$i$f$getCurrent":I
    .local p4, "$i$f$getCurrent":I
    const-string v14, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v10, v12, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 279
    .end local v8    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local p3    # "$changed$iv":I
    .end local p4    # "$i$f$getCurrent":I
    move-object v8, v12

    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 533
    .local v8, "$this$BackdropScaffold_BZszfkY_u24lambda_u242":Landroidx/compose/ui/unit/Density;
    const/4 v12, 0x0

    .line 279
    .local v12, "$i$a$-with-BackdropScaffoldKt$BackdropScaffold$headerHeightPx$1":I
    invoke-interface {v8, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v8

    .line 281
    .end local v12    # "$i$a$-with-BackdropScaffoldKt$BackdropScaffold$headerHeightPx$1":I
    .local v8, "headerHeightPx":F
    new-instance v12, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$backLayer$1;

    invoke-direct {v12, v4, v0, v15, v13}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$backLayer$1;-><init>(ZLandroidx/compose/material/BackdropScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    const v14, 0x67ff344b

    move/from16 v27, v4

    .end local v4    # "persistentAppBar":Z
    .local v27, "persistentAppBar":Z
    const/4 v4, 0x1

    invoke-static {v10, v14, v4, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v12

    check-cast v12, Lkotlin/jvm/functions/Function2;

    .local v12, "backLayer":Lkotlin/jvm/functions/Function2;
    const v14, -0x34231bd1    # -2.895267E7f

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v14

    .line 291
    nop

    .local v14, "invalid$iv":Z
    move-object/from16 p3, v10

    .local p3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v30, 0x0

    .line 535
    .local v30, "$i$f$cache":I
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/16 v32, 0x0

    .line 536
    .local v32, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v14, :cond_52

    sget-object v33, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v33 .. v33}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v4, v13, :cond_51

    goto :goto_36

    .line 540
    :cond_51
    move-object/from16 v13, p3

    move-object/from16 p4, v4

    goto :goto_37

    .line 537
    :cond_52
    :goto_36
    const/4 v13, 0x0

    .line 291
    .local v13, "$i$a$-cache-BackdropScaffoldKt$BackdropScaffold$calculateBackLayerConstraints$1":I
    move-object/from16 p4, v4

    .end local v4    # "it$iv":Ljava/lang/Object;
    .local p4, "it$iv":Ljava/lang/Object;
    new-instance v4, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$calculateBackLayerConstraints$1$1;

    invoke-direct {v4, v8}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$calculateBackLayerConstraints$1$1;-><init>(F)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 537
    .end local v13    # "$i$a$-cache-BackdropScaffoldKt$BackdropScaffold$calculateBackLayerConstraints$1":I
    nop

    .line 538
    .local v4, "value$iv":Ljava/lang/Object;
    move-object/from16 v13, p3

    .end local p3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v13, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 539
    nop

    .line 536
    .end local v4    # "value$iv":Ljava/lang/Object;
    :goto_37
    nop

    .line 535
    .end local v32    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p4    # "it$iv":Ljava/lang/Object;
    nop

    .line 291
    .end local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "invalid$iv":Z
    .end local v30    # "$i$f$cache":I
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "calculateBackLayerConstraints":Lkotlin/jvm/functions/Function1;
    move-object/from16 p6, v4

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 297
    nop

    .line 298
    const/16 v30, 0x0

    const/16 v32, 0x0

    .line 299
    new-instance v14, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1;

    move-object/from16 p3, v14

    move-object/from16 p4, v16

    move-object/from16 p5, v12

    move/from16 p7, v8

    move/from16 p8, v5

    move/from16 p9, v9

    move-object/from16 p10, v0

    move/from16 p11, v7

    move-object/from16 p12, v6

    move-wide/from16 p13, v22

    move-wide/from16 p15, v17

    move/from16 p17, v3

    move/from16 p18, v2

    move/from16 p19, v1

    move-object/from16 p20, p2

    move-wide/from16 p21, v24

    move-object/from16 p23, v19

    invoke-direct/range {p3 .. p23}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;FZZLandroidx/compose/material/BackdropScaffoldState;FLandroidx/compose/ui/graphics/Shape;JJFFFLkotlin/jvm/functions/Function2;JLkotlin/jvm/functions/Function3;)V

    const v13, -0x3e94597f

    move-object/from16 p15, v0

    const/4 v0, 0x1

    .end local v0    # "scaffoldState":Landroidx/compose/material/BackdropScaffoldState;
    .local p15, "scaffoldState":Landroidx/compose/material/BackdropScaffoldState;
    invoke-static {v10, v13, v0, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    shl-int/lit8 v13, v11, 0x6

    and-int/lit16 v13, v13, 0x380

    const/high16 v14, 0x180000

    or-int/2addr v13, v14

    shl-int/lit8 v14, v11, 0x6

    and-int/lit16 v14, v14, 0x1c00

    or-int/2addr v13, v14

    const/16 v14, 0x33

    .line 296
    const/16 v31, 0x0

    move-object/from16 p3, v31

    const/16 v31, 0x0

    move-object/from16 p4, v31

    move-wide/from16 p5, v28

    move-wide/from16 p7, v20

    move-object/from16 p9, v30

    move/from16 p10, v32

    move-object/from16 p11, v0

    move-object/from16 p12, v10

    move/from16 p13, v13

    move/from16 p14, v14

    invoke-static/range {p3 .. p14}, Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 382
    .end local v4    # "calculateBackLayerConstraints":Lkotlin/jvm/functions/Function1;
    .end local v7    # "peekHeightPx":F
    .end local v8    # "headerHeightPx":F
    .end local v12    # "backLayer":Lkotlin/jvm/functions/Function2;
    :cond_53
    move/from16 v30, v1

    move/from16 v31, v2

    move/from16 v39, v3

    move/from16 v33, v5

    move-object/from16 v38, v6

    move/from16 v47, v11

    move-wide/from16 v42, v17

    move-object/from16 v46, v19

    move-wide/from16 v36, v20

    move-wide/from16 v40, v22

    move-wide/from16 v44, v24

    move/from16 v48, v26

    move/from16 v32, v27

    move-wide/from16 v34, v28

    move-object/from16 v28, p15

    move/from16 v29, v9

    move-object/from16 v27, v16

    .end local v1    # "peekHeight":F
    .end local v2    # "headerHeight":F
    .end local v3    # "frontLayerElevation":F
    .end local v5    # "stickyFrontLayer":Z
    .end local v6    # "frontLayerShape":Landroidx/compose/ui/graphics/Shape;
    .end local v9    # "gesturesEnabled":Z
    .end local v11    # "$dirty1":I
    .end local v16    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v17    # "frontLayerContentColor":J
    .end local v19    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .end local v20    # "backLayerContentColor":J
    .end local v22    # "frontLayerBackgroundColor":J
    .end local v24    # "frontLayerScrimColor":J
    .end local v26    # "$dirty":I
    .end local p15    # "scaffoldState":Landroidx/compose/material/BackdropScaffoldState;
    .local v27, "modifier":Landroidx/compose/ui/Modifier;
    .local v28, "scaffoldState":Landroidx/compose/material/BackdropScaffoldState;
    .local v29, "gesturesEnabled":Z
    .local v30, "peekHeight":F
    .local v31, "headerHeight":F
    .local v32, "persistentAppBar":Z
    .local v33, "stickyFrontLayer":Z
    .local v34, "backLayerBackgroundColor":J
    .local v36, "backLayerContentColor":J
    .local v38, "frontLayerShape":Landroidx/compose/ui/graphics/Shape;
    .local v39, "frontLayerElevation":F
    .local v40, "frontLayerBackgroundColor":J
    .local v42, "frontLayerContentColor":J
    .local v44, "frontLayerScrimColor":J
    .local v46, "snackbarHost":Lkotlin/jvm/functions/Function3;
    .local v47, "$dirty1":I
    .local v48, "$dirty":I
    :goto_38
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_54

    new-instance v49, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v27

    move-object/from16 v5, v28

    move/from16 v6, v29

    move/from16 v7, v30

    move/from16 v8, v31

    move/from16 v9, v32

    move-object/from16 v50, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v50, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v10, v33

    move-wide/from16 v11, v34

    move-object/from16 v51, v13

    move-wide/from16 v13, v36

    move-object/from16 v15, v38

    move/from16 v16, v39

    move-wide/from16 v17, v40

    move-wide/from16 v19, v42

    move-wide/from16 v21, v44

    move-object/from16 v23, v46

    move/from16 v24, p24

    move/from16 v25, p25

    move/from16 v26, p26

    invoke-direct/range {v0 .. v26}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BackdropScaffoldState;ZFFZZJJLandroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v49

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v51

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_39

    .end local v50    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v10    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_54
    move-object/from16 v50, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v50    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_39
    return-void
.end method

.method private static final BackdropStack(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)V
    .locals 9
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "backLayer"    # Lkotlin/jvm/functions/Function2;
    .param p2, "calculateBackLayerConstraints"    # Lkotlin/jvm/functions/Function1;
    .param p3, "frontLayer"    # Lkotlin/jvm/functions/Function4;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 459
    const v0, -0x4a72277a

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p4

    const-string v1, "C(BackdropStack)P(3)459@18986L917:BackdropScaffold.kt#jmzs0o"

    invoke-static {p4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move v1, p5

    .local v1, "$dirty":I
    and-int/lit8 v2, p5, 0xe

    if-nez v2, :cond_1

    invoke-interface {p4, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, p5, 0x70

    if-nez v2, :cond_3

    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, p5, 0x380

    if-nez v2, :cond_5

    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_2

    :cond_4
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, p5, 0x1c00

    if-nez v2, :cond_7

    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x800

    goto :goto_3

    :cond_6
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v1, v2

    :cond_7
    and-int/lit16 v2, v1, 0x16db

    const/16 v3, 0x492

    if-ne v2, v3, :cond_9

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_4

    .line 484
    :cond_8
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_7

    .line 459
    :cond_9
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.material.BackdropStack (BackdropScaffold.kt:458)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 460
    :cond_a
    const v0, -0x34230515    # -2.896431E7f

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .local v0, "invalid$iv":Z
    move-object v2, p4

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 676
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 677
    .local v5, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_c

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_b

    goto :goto_5

    .line 681
    :cond_b
    move-object v6, v4

    goto :goto_6

    .line 678
    :cond_c
    :goto_5
    const/4 v6, 0x0

    .line 460
    .local v6, "$i$a$-cache-BackdropScaffoldKt$BackdropStack$1":I
    new-instance v7, Landroidx/compose/material/BackdropScaffoldKt$BackdropStack$1$1;

    invoke-direct {v7, p1, p2, p3}, Landroidx/compose/material/BackdropScaffoldKt$BackdropStack$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 678
    .end local v6    # "$i$a$-cache-BackdropScaffoldKt$BackdropStack$1":I
    move-object v6, v7

    .line 679
    .local v6, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 680
    nop

    .line 677
    .end local v6    # "value$iv":Ljava/lang/Object;
    :goto_6
    nop

    .line 676
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 460
    .end local v0    # "invalid$iv":Z
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    and-int/lit8 v0, v1, 0xe

    const/4 v2, 0x0

    invoke-static {p0, v6, p4, v0, v2}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->SubcomposeLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 484
    :cond_d
    :goto_7
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v8, Landroidx/compose/material/BackdropScaffoldKt$BackdropStack$2;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p5

    invoke-direct/range {v2 .. v7}, Landroidx/compose/material/BackdropScaffoldKt$BackdropStack$2;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;I)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_e
    return-void
.end method

.method private static final Scrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V
    .locals 22
    .param p0, "color"    # J
    .param p2, "onDismiss"    # Lkotlin/jvm/functions/Function0;
    .param p3, "visible"    # Z
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 389
    move-wide/from16 v6, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p5

    const v0, -0x57df7c1

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Scrim)P(0:c#ui.graphics.Color)390@16754L121,399@17055L171:BackdropScaffold.kt#jmzs0o"

    invoke-static {v5, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p5

    .local v1, "$dirty":I
    and-int/lit8 v2, v10, 0xe

    if-nez v2, :cond_1

    invoke-interface {v5, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v10, 0x70

    if-nez v2, :cond_3

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v10, 0x380

    if-nez v2, :cond_5

    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_2

    :cond_4
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    move v4, v1

    .end local v1    # "$dirty":I
    .local v4, "$dirty":I
    and-int/lit16 v1, v4, 0x2db

    const/16 v2, 0x92

    if-ne v1, v2, :cond_7

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 408
    :cond_6
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_b

    .line 389
    :cond_7
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material.Scrim (BackdropScaffold.kt:388)"

    invoke-static {v0, v4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 390
    :cond_8
    move-wide/from16 v0, p0

    .local v0, "$this$isSpecified$iv":J
    const/4 v2, 0x0

    .line 541
    .local v2, "$i$f$isSpecified-8_81llA":I
    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v11

    cmp-long v3, v0, v11

    const/4 v15, 0x1

    const/4 v14, 0x0

    if-eqz v3, :cond_9

    move v0, v15

    goto :goto_4

    :cond_9
    move v0, v14

    .line 390
    .end local v0    # "$this$isSpecified$iv":J
    .end local v2    # "$i$f$isSpecified-8_81llA":I
    :goto_4
    if-eqz v0, :cond_10

    .line 392
    if-eqz v9, :cond_a

    const/high16 v1, 0x3f800000    # 1.0f

    move v11, v1

    goto :goto_5

    :cond_a
    const/4 v11, 0x0

    .line 393
    :goto_5
    new-instance v1, Landroidx/compose/animation/core/TweenSpec;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x7

    const/16 v21, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v12, v1

    check-cast v12, Landroidx/compose/animation/core/AnimationSpec;

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v17, 0x30

    const/16 v18, 0x1c

    .line 391
    move v3, v14

    move-object v14, v1

    move v1, v15

    move-object v15, v2

    move-object/from16 v16, v5

    invoke-static/range {v11 .. v18}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v2

    .line 395
    .local v2, "alpha$delegate":Landroidx/compose/runtime/State;
    const/4 v11, 0x0

    if-eqz v9, :cond_d

    .line 396
    sget-object v12, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v12, Landroidx/compose/ui/Modifier;

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const v14, -0x34230d19    # -2.8960206E7f

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    .local v14, "invalid$iv":Z
    move-object v15, v5

    .local v15, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 542
    .local v16, "$i$f$cache":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 543
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v14, :cond_c

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v3, v0, :cond_b

    goto :goto_6

    .line 547
    :cond_b
    move-object v0, v3

    goto :goto_7

    .line 544
    :cond_c
    :goto_6
    const/4 v0, 0x0

    .line 396
    .local v0, "$i$a$-cache-BackdropScaffoldKt$Scrim$dismissModifier$1":I
    new-instance v1, Landroidx/compose/material/BackdropScaffoldKt$Scrim$dismissModifier$1$1;

    invoke-direct {v1, v8, v11}, Landroidx/compose/material/BackdropScaffoldKt$Scrim$dismissModifier$1$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 544
    .end local v0    # "$i$a$-cache-BackdropScaffoldKt$Scrim$dismissModifier$1":I
    move-object v0, v1

    .line 545
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 546
    nop

    .line 543
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_7
    nop

    .line 542
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 396
    .end local v14    # "invalid$iv":Z
    .end local v15    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v12, v13, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_8

    .line 398
    :cond_d
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 395
    :goto_8
    nop

    .line 401
    .local v0, "dismissModifier":Landroidx/compose/ui/Modifier;
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 402
    const/4 v3, 0x0

    const/4 v12, 0x1

    invoke-static {v1, v3, v12, v11}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 403
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v3, -0x34230c4e    # -2.8960612E7f

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v5, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v3

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v3, v11

    .line 404
    nop

    .local v3, "invalid$iv":Z
    move-object v11, v5

    .local v11, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 548
    .local v12, "$i$f$cache":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 549
    .local v14, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_f

    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v13, v15, :cond_e

    goto :goto_9

    .line 553
    :cond_e
    move-object/from16 p4, v0

    move-object v0, v13

    goto :goto_a

    .line 550
    :cond_f
    :goto_9
    const/4 v15, 0x0

    .line 404
    .local v15, "$i$a$-cache-BackdropScaffoldKt$Scrim$1":I
    move-object/from16 p4, v0

    .end local v0    # "dismissModifier":Landroidx/compose/ui/Modifier;
    .local p4, "dismissModifier":Landroidx/compose/ui/Modifier;
    new-instance v0, Landroidx/compose/material/BackdropScaffoldKt$Scrim$1$1;

    invoke-direct {v0, v6, v7, v2}, Landroidx/compose/material/BackdropScaffoldKt$Scrim$1$1;-><init>(JLandroidx/compose/runtime/State;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 550
    .end local v15    # "$i$a$-cache-BackdropScaffoldKt$Scrim$1":I
    nop

    .line 551
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 552
    nop

    .line 549
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_a
    nop

    .line 548
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 404
    .end local v3    # "invalid$iv":Z
    .end local v11    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$f$cache":I
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 400
    const/4 v3, 0x0

    invoke-static {v1, v0, v5, v3}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .end local v2    # "alpha$delegate":Landroidx/compose/runtime/State;
    .end local p4    # "dismissModifier":Landroidx/compose/ui/Modifier;
    :cond_10
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 408
    :cond_11
    :goto_b
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_12

    new-instance v12, Landroidx/compose/material/BackdropScaffoldKt$Scrim$2;

    move-object v0, v12

    move-wide/from16 v1, p0

    move-object/from16 v3, p2

    move v13, v4

    .end local v4    # "$dirty":I
    .local v13, "$dirty":I
    move/from16 v4, p3

    move-object v14, v5

    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/BackdropScaffoldKt$Scrim$2;-><init>(JLkotlin/jvm/functions/Function0;ZI)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_c

    .end local v13    # "$dirty":I
    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v4    # "$dirty":I
    .restart local v5    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_12
    move v13, v4

    move-object v14, v5

    .end local v4    # "$dirty":I
    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v13    # "$dirty":I
    .restart local v14    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_c
    return-void
.end method

.method private static final Scrim_3J_VO9M$lambda$4(Landroidx/compose/runtime/State;)F
    .locals 4
    .param p0, "$alpha$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 391
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 682
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 391
    return v0
.end method

.method public static final synthetic access$BackLayerTransition(Landroidx/compose/material/BackdropValue;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "target"    # Landroidx/compose/material/BackdropValue;
    .param p1, "appBar"    # Lkotlin/jvm/functions/Function2;
    .param p2, "content"    # Lkotlin/jvm/functions/Function2;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/BackdropScaffoldKt;->BackLayerTransition(Landroidx/compose/material/BackdropValue;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$BackdropStack(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "backLayer"    # Lkotlin/jvm/functions/Function2;
    .param p2, "calculateBackLayerConstraints"    # Lkotlin/jvm/functions/Function1;
    .param p3, "frontLayer"    # Lkotlin/jvm/functions/Function4;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/BackdropScaffoldKt;->BackdropStack(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$Scrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "color"    # J
    .param p2, "onDismiss"    # Lkotlin/jvm/functions/Function0;
    .param p3, "visible"    # Z
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/BackdropScaffoldKt;->Scrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$Scrim_3J_VO9M$lambda$4(Landroidx/compose/runtime/State;)F
    .locals 1
    .param p0, "$alpha$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/compose/material/BackdropScaffoldKt;->Scrim_3J_VO9M$lambda$4(Landroidx/compose/runtime/State;)F

    move-result v0

    return v0
.end method

.method public static final rememberBackdropScaffoldState(Landroidx/compose/material/BackdropValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BackdropScaffoldState;
    .locals 9
    .param p0, "initialValue"    # Landroidx/compose/material/BackdropValue;
    .param p1, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p2, "confirmStateChange"    # Lkotlin/jvm/functions/Function1;
    .param p3, "snackbarHostState"    # Landroidx/compose/material/SnackbarHostState;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/BackdropValue;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material/BackdropValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/material/SnackbarHostState;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material/BackdropScaffoldState;"
        }
    .end annotation

    const v0, -0x3363ce60    # -8.189056E7f

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberBackdropScaffoldState)P(2)173@6493L32,175@6564L538:BackdropScaffold.kt#jmzs0o"

    invoke-static {p4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_0

    .line 172
    sget-object v1, Landroidx/compose/material/SwipeableDefaults;->INSTANCE:Landroidx/compose/material/SwipeableDefaults;

    invoke-virtual {v1}, Landroidx/compose/material/SwipeableDefaults;->getAnimationSpec()Landroidx/compose/animation/core/SpringSpec;

    move-result-object v1

    move-object p1, v1

    check-cast p1, Landroidx/compose/animation/core/AnimationSpec;

    :cond_0
    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_1

    .line 173
    sget-object v1, Landroidx/compose/material/BackdropScaffoldKt$rememberBackdropScaffoldState$1;->INSTANCE:Landroidx/compose/material/BackdropScaffoldKt$rememberBackdropScaffoldState$1;

    move-object p2, v1

    check-cast p2, Lkotlin/jvm/functions/Function1;

    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    .line 174
    const/4 p6, 0x0

    .local p6, "$changed$iv":I
    const/4 v1, 0x0

    .local v1, "$i$f$remember":I
    const v2, -0x1d58f75c

    invoke-interface {p4, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember):Composables.kt#9igjgp"

    invoke-static {p4, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 525
    const/4 v2, 0x0

    .local v2, "invalid$iv$iv":Z
    move-object v3, p4

    .local v3, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 526
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 527
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_2

    .line 528
    const/4 v7, 0x0

    .line 174
    .local v7, "$i$a$-remember-BackdropScaffoldKt$rememberBackdropScaffoldState$2":I
    new-instance v8, Landroidx/compose/material/SnackbarHostState;

    invoke-direct {v8}, Landroidx/compose/material/SnackbarHostState;-><init>()V

    .line 528
    .end local v7    # "$i$a$-remember-BackdropScaffoldKt$rememberBackdropScaffoldState$2":I
    move-object v7, v8

    .line 529
    .local v7, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 530
    nop

    .end local v7    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 531
    :cond_2
    move-object v7, v5

    .line 527
    :goto_0
    nop

    .line 526
    .end local v5    # "it$iv$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 525
    .end local v2    # "invalid$iv$iv":Z
    .end local v3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v1    # "$i$f$remember":I
    .end local p6    # "$changed$iv":I
    move-object p3, v7

    check-cast p3, Landroidx/compose/material/SnackbarHostState;

    :cond_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p6

    if-eqz p6, :cond_4

    .line 175
    const/4 p6, -0x1

    const-string/jumbo v1, "androidx.compose.material.rememberBackdropScaffoldState (BackdropScaffold.kt:174)"

    invoke-static {v0, p5, p6, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 177
    :cond_4
    nop

    .line 178
    nop

    .line 177
    nop

    .line 179
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object v2

    .line 177
    nop

    .line 180
    sget-object p6, Landroidx/compose/material/BackdropScaffoldState;->Companion:Landroidx/compose/material/BackdropScaffoldState$Companion;

    .line 181
    nop

    .line 182
    nop

    .line 183
    nop

    .line 180
    invoke-virtual {p6, p1, p2, p3}, Landroidx/compose/material/BackdropScaffoldState$Companion;->Saver(Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/material/SnackbarHostState;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v3

    const/4 v4, 0x0

    .line 176
    new-instance p6, Landroidx/compose/material/BackdropScaffoldKt$rememberBackdropScaffoldState$3;

    invoke-direct {p6, p0, p1, p2, p3}, Landroidx/compose/material/BackdropScaffoldKt$rememberBackdropScaffoldState$3;-><init>(Landroidx/compose/material/BackdropValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/material/SnackbarHostState;)V

    move-object v5, p6

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/16 v7, 0x48

    const/4 v8, 0x4

    move-object v6, p4

    invoke-static/range {v2 .. v8}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroidx/compose/material/BackdropScaffoldState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p6
.end method
