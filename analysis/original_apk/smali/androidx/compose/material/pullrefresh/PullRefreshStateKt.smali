.class public final Landroidx/compose/material/pullrefresh/PullRefreshStateKt;
.super Ljava/lang/Object;
.source "PullRefreshState.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPullRefreshState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PullRefreshState.kt\nandroidx/compose/material/pullrefresh/PullRefreshStateKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 7 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 8 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,234:1\n154#2:235\n1#3:236\n487#4,4:237\n491#4,2:245\n495#4:251\n25#5:241\n36#5:253\n1116#6,3:242\n1119#6,3:248\n1116#6,6:254\n487#7:247\n74#8:252\n*S KotlinDebug\n*F\n+ 1 PullRefreshState.kt\nandroidx/compose/material/pullrefresh/PullRefreshStateKt\n*L\n63#1:235\n65#1:237,4\n65#1:245,2\n65#1:251\n65#1:241\n75#1:253\n65#1:242,3\n65#1:248,3\n75#1:254,6\n65#1:247\n70#1:252\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a<\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\nH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\r\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u000e"
    }
    d2 = {
        "DragMultiplier",
        "",
        "rememberPullRefreshState",
        "Landroidx/compose/material/pullrefresh/PullRefreshState;",
        "refreshing",
        "",
        "onRefresh",
        "Lkotlin/Function0;",
        "",
        "refreshThreshold",
        "Landroidx/compose/ui/unit/Dp;",
        "refreshingOffset",
        "rememberPullRefreshState-UuyPYSY",
        "(ZLkotlin/jvm/functions/Function0;FFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/pullrefresh/PullRefreshState;",
        "material_release"
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
.field private static final DragMultiplier:F = 0.5f


# direct methods
.method public static final rememberPullRefreshState-UuyPYSY(ZLkotlin/jvm/functions/Function0;FFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/pullrefresh/PullRefreshState;
    .locals 18
    .param p0, "refreshing"    # Z
    .param p1, "onRefresh"    # Lkotlin/jvm/functions/Function0;
    .param p2, "refreshThreshold"    # F
    .param p3, "refreshingOffset"    # F
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;FF",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material/pullrefresh/PullRefreshState;"
        }
    .end annotation

    move-object/from16 v0, p4

    move/from16 v1, p5

    const v2, -0xa6df1e8

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C(rememberPullRefreshState)P(2!1,1:c#ui.unit.Dp,3:c#ui.unit.Dp)64@2591L24,65@2641L31,*69@2757L7,74@2890L104,78@3000L152:PullRefreshState.kt#t44y28"

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, p6, 0x4

    if-eqz v3, :cond_0

    .line 60
    sget-object v3, Landroidx/compose/material/pullrefresh/PullRefreshDefaults;->INSTANCE:Landroidx/compose/material/pullrefresh/PullRefreshDefaults;

    invoke-virtual {v3}, Landroidx/compose/material/pullrefresh/PullRefreshDefaults;->getRefreshThreshold-D9Ej5fM()F

    move-result v3

    .end local p2    # "refreshThreshold":F
    .local v3, "refreshThreshold":F
    goto :goto_0

    .line 0
    .end local v3    # "refreshThreshold":F
    .restart local p2    # "refreshThreshold":F
    :cond_0
    move/from16 v3, p2

    .line 60
    .end local p2    # "refreshThreshold":F
    .restart local v3    # "refreshThreshold":F
    :goto_0
    const/16 v4, 0x8

    and-int/lit8 v5, p6, 0x8

    if-eqz v5, :cond_1

    .line 61
    sget-object v5, Landroidx/compose/material/pullrefresh/PullRefreshDefaults;->INSTANCE:Landroidx/compose/material/pullrefresh/PullRefreshDefaults;

    invoke-virtual {v5}, Landroidx/compose/material/pullrefresh/PullRefreshDefaults;->getRefreshingOffset-D9Ej5fM()F

    move-result v5

    .end local p3    # "refreshingOffset":F
    .local v5, "refreshingOffset":F
    goto :goto_1

    .line 60
    .end local v5    # "refreshingOffset":F
    .restart local p3    # "refreshingOffset":F
    :cond_1
    move/from16 v5, p3

    .line 61
    .end local p3    # "refreshingOffset":F
    .restart local v5    # "refreshingOffset":F
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 62
    const/4 v6, -0x1

    const-string/jumbo v7, "androidx.compose.material.pullrefresh.rememberPullRefreshState (PullRefreshState.kt:61)"

    invoke-static {v2, v1, v6, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 63
    :cond_2
    const/4 v2, 0x0

    .local v2, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 235
    .local v6, "$i$f$getDp":I
    int-to-float v7, v2

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 63
    .end local v2    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v3, v2}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    move-result v2

    const/4 v6, 0x0

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    move v2, v6

    :goto_2
    if-eqz v2, :cond_8

    .line 65
    move v2, v6

    .local v2, "$changed$iv":I
    const/4 v7, 0x0

    .local v7, "$i$f$rememberCoroutineScope":I
    const v8, 0x2e20b340

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v8, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp"

    invoke-static {v0, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 237
    nop

    .line 239
    move-object/from16 v8, p4

    .line 240
    .local v8, "composer$iv":Landroidx/compose/runtime/Composer;
    move v9, v6

    .local v9, "$changed$iv$iv":I
    const/4 v10, 0x0

    .local v10, "$i$f$remember":I
    const v11, -0x1d58f75c

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v0, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 241
    const/4 v11, 0x0

    .local v11, "invalid$iv$iv$iv":Z
    move-object/from16 v12, p4

    .local v12, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 242
    .local v13, "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 243
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v14, v6, :cond_4

    .line 244
    const/4 v6, 0x0

    .line 245
    .local v6, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 246
    const/16 v16, 0x0

    .line 247
    .local v16, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    sget-object v16, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 246
    .end local v16    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    move-object/from16 v4, v16

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v4, v8}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 245
    move/from16 p3, v2

    .end local v2    # "$changed$iv":I
    .local p3, "$changed$iv":I
    new-instance v2, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v2, v4}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 244
    .end local v6    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 248
    .local v2, "value$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 249
    nop

    .end local v2    # "value$iv$iv$iv":Ljava/lang/Object;
    goto :goto_3

    .line 250
    .end local p3    # "$changed$iv":I
    .local v2, "$changed$iv":I
    :cond_4
    move/from16 p3, v2

    .end local v2    # "$changed$iv":I
    .restart local p3    # "$changed$iv":I
    move-object v2, v14

    .line 243
    :goto_3
    nop

    .line 242
    .end local v14    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    nop

    .line 241
    .end local v11    # "invalid$iv$iv$iv":Z
    .end local v12    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 240
    .end local v9    # "$changed$iv$iv":I
    .end local v10    # "$i$f$remember":I
    check-cast v2, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 251
    .local v2, "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 65
    .end local v2    # "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    .end local v7    # "$i$f$rememberCoroutineScope":I
    .end local v8    # "composer$iv":Landroidx/compose/runtime/Composer;
    .end local p3    # "$changed$iv":I
    move-object v2, v4

    .line 66
    .local v2, "scope":Lkotlinx/coroutines/CoroutineScope;
    shr-int/lit8 v4, v1, 0x3

    and-int/lit8 v4, v4, 0xe

    move-object/from16 v6, p1

    invoke-static {v6, v0, v4}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    .line 67
    .local v4, "onRefreshState":Landroidx/compose/runtime/State;
    new-instance v7, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 68
    .local v7, "thresholdPx":Lkotlin/jvm/internal/Ref$FloatRef;
    new-instance v8, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 70
    .local v8, "refreshingOffsetPx":Lkotlin/jvm/internal/Ref$FloatRef;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    check-cast v9, Landroidx/compose/runtime/CompositionLocal;

    .local v9, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v10, 0x0

    .local v10, "$changed$iv":I
    const/4 v11, 0x0

    .line 252
    .local v11, "$i$f$getCurrent":I
    const v12, 0x789c5f52

    const-string v13, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v0, v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    invoke-static/range {p4 .. p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 70
    .end local v9    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v10    # "$changed$iv":I
    .end local v11    # "$i$f$getCurrent":I
    move-object v9, v12

    check-cast v9, Landroidx/compose/ui/unit/Density;

    .local v9, "$this$rememberPullRefreshState_UuyPYSY_u24lambda_u241":Landroidx/compose/ui/unit/Density;
    const/4 v10, 0x0

    .line 71
    .local v10, "$i$a$-with-PullRefreshStateKt$rememberPullRefreshState$2":I
    invoke-interface {v9, v3}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v11

    iput v11, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 72
    invoke-interface {v9, v5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v11

    iput v11, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 73
    nop

    .line 70
    .end local v9    # "$this$rememberPullRefreshState_UuyPYSY_u24lambda_u241":Landroidx/compose/ui/unit/Density;
    .end local v10    # "$i$a$-with-PullRefreshStateKt$rememberPullRefreshState$2":I
    nop

    .line 75
    const/16 v9, 0x8

    .local v9, "$changed$iv":I
    const/4 v10, 0x0

    .local v10, "$i$f$remember":I
    const v11, 0x44faf204

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v0, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 253
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    .local v11, "invalid$iv$iv":Z
    move-object/from16 v12, p4

    .local v12, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 254
    .restart local v13    # "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 255
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v11, :cond_6

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v14, v1, :cond_5

    goto :goto_4

    .line 259
    :cond_5
    move/from16 v16, v3

    move/from16 v17, v5

    move-object v1, v14

    goto :goto_5

    .line 256
    :cond_6
    :goto_4
    const/4 v1, 0x0

    .line 76
    .local v1, "$i$a$-remember-PullRefreshStateKt$rememberPullRefreshState$state$1":I
    move/from16 p3, v1

    .end local v1    # "$i$a$-remember-PullRefreshStateKt$rememberPullRefreshState$state$1":I
    .local p3, "$i$a$-remember-PullRefreshStateKt$rememberPullRefreshState$state$1":I
    new-instance v1, Landroidx/compose/material/pullrefresh/PullRefreshState;

    move/from16 v16, v3

    .end local v3    # "refreshThreshold":F
    .local v16, "refreshThreshold":F
    iget v3, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    move/from16 v17, v5

    .end local v5    # "refreshingOffset":F
    .local v17, "refreshingOffset":F
    iget v5, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-direct {v1, v2, v4, v3, v5}, Landroidx/compose/material/pullrefresh/PullRefreshState;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/State;FF)V

    .line 256
    .end local p3    # "$i$a$-remember-PullRefreshStateKt$rememberPullRefreshState$state$1":I
    nop

    .line 257
    .local v1, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 258
    nop

    .line 255
    .end local v1    # "value$iv$iv":Ljava/lang/Object;
    :goto_5
    nop

    .line 254
    .end local v14    # "it$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 253
    .end local v11    # "invalid$iv$iv":Z
    .end local v12    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 75
    .end local v9    # "$changed$iv":I
    .end local v10    # "$i$f$remember":I
    check-cast v1, Landroidx/compose/material/pullrefresh/PullRefreshState;

    .line 79
    .local v1, "state":Landroidx/compose/material/pullrefresh/PullRefreshState;
    new-instance v3, Landroidx/compose/material/pullrefresh/PullRefreshStateKt$rememberPullRefreshState$3;

    move/from16 v5, p0

    invoke-direct {v3, v1, v5, v7, v8}, Landroidx/compose/material/pullrefresh/PullRefreshStateKt$rememberPullRefreshState$3;-><init>(Landroidx/compose/material/pullrefresh/PullRefreshState;ZLkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x0

    invoke-static {v3, v0, v9}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 85
    return-object v1

    .line 236
    .end local v1    # "state":Landroidx/compose/material/pullrefresh/PullRefreshState;
    .end local v2    # "scope":Lkotlinx/coroutines/CoroutineScope;
    .end local v4    # "onRefreshState":Landroidx/compose/runtime/State;
    .end local v7    # "thresholdPx":Lkotlin/jvm/internal/Ref$FloatRef;
    .end local v8    # "refreshingOffsetPx":Lkotlin/jvm/internal/Ref$FloatRef;
    .end local v16    # "refreshThreshold":F
    .end local v17    # "refreshingOffset":F
    .restart local v3    # "refreshThreshold":F
    .restart local v5    # "refreshingOffset":F
    :cond_8
    const/4 v1, 0x0

    .line 63
    .local v1, "$i$a$-require-PullRefreshStateKt$rememberPullRefreshState$1":I
    nop

    .end local v1    # "$i$a$-require-PullRefreshStateKt$rememberPullRefreshState$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The refresh trigger must be greater than zero!"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
