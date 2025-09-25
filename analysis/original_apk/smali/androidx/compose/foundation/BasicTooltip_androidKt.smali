.class public final Landroidx/compose/foundation/BasicTooltip_androidKt;
.super Ljava/lang/Object;
.source "BasicTooltip.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasicTooltip.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasicTooltip.android.kt\nandroidx/compose/foundation/BasicTooltip_androidKt\n+ 2 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 6 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 7 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 8 Composer.kt\nandroidx/compose/runtime/Updater\n*L\n1#1,222:1\n487#2,4:223\n491#2,2:231\n495#2:237\n487#2,4:285\n491#2,2:293\n495#2:299\n25#3:227\n456#3,8:256\n464#3,3:270\n467#3,3:274\n25#3:289\n456#3,8:317\n464#3,3:331\n467#3,3:335\n1116#4,3:228\n1119#4,3:234\n1116#4,6:279\n1116#4,3:290\n1119#4,3:296\n487#5:233\n487#5:295\n67#6,7:238\n74#6:273\n78#6:278\n68#6,6:300\n74#6:334\n78#6:339\n79#7,11:245\n92#7:277\n79#7,11:306\n92#7:338\n3737#8,6:264\n3737#8,6:325\n*S KotlinDebug\n*F\n+ 1 BasicTooltip.android.kt\nandroidx/compose/foundation/BasicTooltip_androidKt\n*L\n76#1:223,4\n76#1:231,2\n76#1:237\n109#1:285,4\n109#1:293,2\n109#1:299\n76#1:227\n77#1:256,8\n77#1:270,3\n77#1:274,3\n109#1:289\n111#1:317,8\n111#1:331,3\n111#1:335,3\n76#1:228,3\n76#1:234,3\n96#1:279,6\n109#1:290,3\n109#1:296,3\n76#1:233\n109#1:295\n77#1:238,7\n77#1:273\n77#1:278\n111#1:300,6\n111#1:334\n111#1:339\n77#1:245,11\n77#1:277\n111#1:306,11\n111#1:338\n77#1:264,6\n111#1:325,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u001aa\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0011\u0010\u0004\u001a\r\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0002\u0008\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0011\u0010\u000e\u001a\r\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0002\u0008\u0006H\u0007\u00a2\u0006\u0002\u0010\u000f\u001a@\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\u000c2\u0011\u0010\u000e\u001a\r\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0002\u0008\u0006H\u0003\u00a2\u0006\u0002\u0010\u0013\u001a:\u0010\u0014\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0011\u0010\u000e\u001a\r\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0002\u0008\u0006H\u0003\u00a2\u0006\u0002\u0010\u0015\u001a,\u0010\u0016\u001a\u00020\n*\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0012H\u0002\u001a\u001c\u0010\u001a\u001a\u00020\n*\u00020\n2\u0006\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u00a8\u0006\u001b"
    }
    d2 = {
        "BasicTooltipBox",
        "",
        "positionProvider",
        "Landroidx/compose/ui/window/PopupPositionProvider;",
        "tooltip",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "state",
        "Landroidx/compose/foundation/BasicTooltipState;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "focusable",
        "",
        "enableUserInput",
        "content",
        "(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/BasicTooltipState;Landroidx/compose/ui/Modifier;ZZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "TooltipPopup",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/foundation/BasicTooltipState;Lkotlinx/coroutines/CoroutineScope;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "WrappedAnchor",
        "(ZLandroidx/compose/foundation/BasicTooltipState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "anchorSemantics",
        "label",
        "",
        "enabled",
        "handleGestures",
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
.method public static final BasicTooltipBox(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/BasicTooltipState;Landroidx/compose/ui/Modifier;ZZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 41
    .param p0, "positionProvider"    # Landroidx/compose/ui/window/PopupPositionProvider;
    .param p1, "tooltip"    # Lkotlin/jvm/functions/Function2;
    .param p2, "state"    # Landroidx/compose/foundation/BasicTooltipState;
    .param p3, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p4, "focusable"    # Z
    .param p5, "enableUserInput"    # Z
    .param p6, "content"    # Lkotlin/jvm/functions/Function2;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/window/PopupPositionProvider;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/BasicTooltipState;",
            "Landroidx/compose/ui/Modifier;",
            "ZZ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 75
    move-object/from16 v10, p2

    move/from16 v11, p8

    const v0, -0x33c034cd    # -5.027758E7f

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(BasicTooltipBox)P(4,6,5,3,2,1)75@3416L24,76@3445L451,95@3902L71:BasicTooltip.android.kt#71ulvw"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p8

    .local v1, "$dirty":I
    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v13, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v11, 0xe

    if-nez v2, :cond_2

    move-object/from16 v13, p0

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    goto :goto_1

    :cond_2
    move-object/from16 v13, p0

    :goto_1
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v14, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v11, 0x70

    if-nez v2, :cond_5

    move-object/from16 v14, p1

    invoke-interface {v12, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    goto :goto_3

    :cond_5
    move-object/from16 v14, p1

    :goto_3
    and-int/lit8 v2, p9, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v2, v11, 0x380

    if-nez v2, :cond_8

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x100

    goto :goto_4

    :cond_7
    const/16 v2, 0x80

    :goto_4
    or-int/2addr v1, v2

    :cond_8
    :goto_5
    and-int/lit8 v2, p9, 0x8

    if-eqz v2, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v3, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v3, v11, 0x1c00

    if-nez v3, :cond_b

    move-object/from16 v3, p3

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x800

    goto :goto_6

    :cond_a
    const/16 v4, 0x400

    :goto_6
    or-int/2addr v1, v4

    goto :goto_7

    :cond_b
    move-object/from16 v3, p3

    :goto_7
    and-int/lit8 v4, p9, 0x10

    const v5, 0xe000

    if-eqz v4, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v6, p4

    goto :goto_9

    :cond_c
    and-int v6, v11, v5

    if-nez v6, :cond_e

    move/from16 v6, p4

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_d

    const/16 v7, 0x4000

    goto :goto_8

    :cond_d
    const/16 v7, 0x2000

    :goto_8
    or-int/2addr v1, v7

    goto :goto_9

    :cond_e
    move/from16 v6, p4

    :goto_9
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_f

    const/high16 v8, 0x30000

    or-int/2addr v1, v8

    move/from16 v8, p5

    goto :goto_b

    :cond_f
    const/high16 v8, 0x70000

    and-int/2addr v8, v11

    if-nez v8, :cond_11

    move/from16 v8, p5

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v9

    if-eqz v9, :cond_10

    const/high16 v9, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v9, 0x10000

    :goto_a
    or-int/2addr v1, v9

    goto :goto_b

    :cond_11
    move/from16 v8, p5

    :goto_b
    and-int/lit8 v9, p9, 0x40

    if-eqz v9, :cond_12

    const/high16 v9, 0x180000

    or-int/2addr v1, v9

    move-object/from16 v15, p6

    goto :goto_d

    :cond_12
    const/high16 v9, 0x380000

    and-int/2addr v9, v11

    if-nez v9, :cond_14

    move-object/from16 v15, p6

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    const/high16 v9, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v9, 0x80000

    :goto_c
    or-int/2addr v1, v9

    goto :goto_d

    :cond_14
    move-object/from16 v15, p6

    :goto_d
    move v9, v1

    .end local v1    # "$dirty":I
    .local v9, "$dirty":I
    const v1, 0x2db6db

    and-int/2addr v1, v9

    const v5, 0x92492

    if-ne v1, v5, :cond_16

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_e

    .line 99
    :cond_15
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v16, v3

    move/from16 v17, v6

    move/from16 v18, v8

    move/from16 v40, v9

    goto/16 :goto_19

    .line 75
    :cond_16
    :goto_e
    if-eqz v2, :cond_17

    .line 56
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object/from16 v16, v1

    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_f

    .line 75
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p3    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_17
    move-object/from16 v16, v3

    .line 56
    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    :goto_f
    if-eqz v4, :cond_18

    .line 57
    const/4 v1, 0x1

    move/from16 v17, v1

    .end local p4    # "focusable":Z
    .local v1, "focusable":Z
    goto :goto_10

    .line 56
    .end local v1    # "focusable":Z
    .restart local p4    # "focusable":Z
    :cond_18
    move/from16 v17, v6

    .line 57
    .end local p4    # "focusable":Z
    .local v17, "focusable":Z
    :goto_10
    if-eqz v7, :cond_19

    const/4 v1, 0x1

    move/from16 v18, v1

    .end local p5    # "enableUserInput":Z
    .local v1, "enableUserInput":Z
    goto :goto_11

    .end local v1    # "enableUserInput":Z
    .restart local p5    # "enableUserInput":Z
    :cond_19
    move/from16 v18, v8

    .end local p5    # "enableUserInput":Z
    .local v18, "enableUserInput":Z
    :goto_11
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 75
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.android.kt:74)"

    invoke-static {v0, v9, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1a
    nop

    .line 76
    const/4 v0, 0x0

    move v1, v0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .local v2, "$i$f$rememberCoroutineScope":I
    const v3, 0x2e20b340

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp"

    invoke-static {v12, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 223
    nop

    .line 225
    move-object v3, v12

    .line 226
    .local v3, "composer$iv":Landroidx/compose/runtime/Composer;
    move v4, v0

    .local v4, "$changed$iv$iv":I
    const/4 v5, 0x0

    .local v5, "$i$f$remember":I
    const v6, -0x1d58f75c

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v12, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 227
    const/4 v6, 0x0

    .local v6, "invalid$iv$iv$iv":Z
    move-object v7, v12

    .local v7, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 228
    .local v8, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 229
    .local v19, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p4, v1

    .end local v1    # "$changed$iv":I
    .local p4, "$changed$iv":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1b

    .line 230
    const/4 v1, 0x0

    .line 231
    .local v1, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 232
    const/16 v20, 0x0

    .line 233
    .local v20, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    sget-object v20, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 232
    .end local v20    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    move-object/from16 p5, v0

    .end local v0    # "it$iv$iv$iv":Ljava/lang/Object;
    .local p5, "it$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v20

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v3}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 231
    move/from16 v20, v1

    .end local v1    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    .local v20, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    new-instance v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 230
    .end local v20    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    move-object v0, v1

    .line 234
    .local v0, "value$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 235
    nop

    .end local v0    # "value$iv$iv$iv":Ljava/lang/Object;
    goto :goto_12

    .line 236
    .end local p5    # "it$iv$iv$iv":Ljava/lang/Object;
    .local v0, "it$iv$iv$iv":Ljava/lang/Object;
    :cond_1b
    move-object/from16 p5, v0

    .line 229
    .end local v0    # "it$iv$iv$iv":Ljava/lang/Object;
    .restart local p5    # "it$iv$iv$iv":Ljava/lang/Object;
    :goto_12
    nop

    .line 228
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    .end local p5    # "it$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 227
    .end local v6    # "invalid$iv$iv$iv":Z
    .end local v7    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 226
    .end local v4    # "$changed$iv$iv":I
    .end local v5    # "$i$f$remember":I
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 237
    .local v0, "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 76
    .end local v0    # "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    .end local v2    # "$i$f$rememberCoroutineScope":I
    .end local v3    # "composer$iv":Landroidx/compose/runtime/Composer;
    .end local p4    # "$changed$iv":I
    move-object v2, v1

    .line 77
    .local v2, "scope":Lkotlinx/coroutines/CoroutineScope;
    const/4 v0, 0x0

    move/from16 v19, v0

    .local v19, "$changed$iv":I
    const/16 v20, 0x0

    .local v20, "$i$f$Box":I
    const v0, 0x2bb5b5d7

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 238
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v21, v0

    check-cast v21, Landroidx/compose/ui/Modifier;

    .line 239
    .local v21, "modifier$iv":Landroidx/compose/ui/Modifier;
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v8

    .line 240
    .local v8, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v7, 0x0

    .line 243
    .local v7, "propagateMinConstraints$iv":Z
    shr-int/lit8 v0, v19, 0x3

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v1, v19, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    invoke-static {v8, v7, v12, v0}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    .local v6, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v0, v19, 0x3

    and-int/lit8 v0, v0, 0x70

    .line 244
    move/from16 v22, v0

    .local v22, "$changed$iv$iv":I
    const/16 v23, 0x0

    .local v23, "$i$f$Layout":I
    const v0, -0x4ee9b9da

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x0

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v24

    .line 246
    .local v24, "compositeKeyHash$iv$iv":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v5

    .line 248
    .local v5, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    .line 255
    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v1

    shl-int/lit8 v3, v22, 0x9

    and-int/lit16 v3, v3, 0x1c00

    or-int/lit8 v3, v3, 0x6

    .line 247
    move/from16 v25, v3

    .local v25, "$changed$iv$iv$iv":I
    move-object v4, v1

    .local v4, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object v3, v0

    .local v3, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v26, 0x0

    .line 256
    .local v26, "$i$f$ReusableComposeNode":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/runtime/Applier;

    if-nez v0, :cond_1c

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 257
    :cond_1c
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 258
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 259
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_13

    .line 261
    :cond_1d
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 263
    :goto_13
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    .local v0, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v1, 0x0

    .line 250
    .local v1, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v27, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 p3, v1

    .end local v1    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    .local p3, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v0, v6, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 251
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v0, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 253
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    .local v1, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v27, 0x0

    .line 264
    .local v27, "$i$f$set-impl":I
    move-object/from16 p4, v0

    .local p4, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v28, 0x0

    .line 265
    .local v28, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v29

    if-nez v29, :cond_1f

    move-object/from16 p5, v3

    .end local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local p5, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v29, v5

    .end local v5    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v29, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_14

    :cond_1e
    move-object/from16 v5, p4

    goto :goto_15

    .end local v29    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local p5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v5    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_1f
    move-object/from16 p5, v3

    move-object/from16 v29, v5

    .line 266
    .end local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v5    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v29    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local p5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :goto_14
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v5, p4

    .end local p4    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 267
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 269
    :goto_15
    nop

    .line 264
    .end local v5    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v28    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 269
    nop

    .line 254
    .end local v1    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v27    # "$i$f$set-impl":I
    nop

    .line 263
    .end local v0    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local p3    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 270
    invoke-static {v12}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v1, v25, 0x3

    and-int/lit8 v1, v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v0, v12, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const v0, 0x7ab4aae9

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 272
    shr-int/lit8 v0, v25, 0x9

    and-int/lit8 v27, v0, 0xe

    .local v27, "$changed$iv":I
    move-object v5, v12

    .local v5, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v28, 0x0

    .line 273
    .local v28, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const v0, -0x4ab8dd4f

    const-string v1, "C73@3426L9:Box.kt#2w3rfo"

    invoke-static {v5, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v1, v19, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v30, v1, 0x6

    .local v30, "$changed":I
    move-object/from16 v31, v0

    check-cast v31, Landroidx/compose/foundation/layout/BoxScope;

    .local v31, "$this$BasicTooltipBox_u24lambda_u240":Landroidx/compose/foundation/layout/BoxScope;
    move-object v3, v5

    .local v3, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v32, 0x0

    .line 78
    .local v32, "$i$a$-Box-BasicTooltip_androidKt$BasicTooltipBox$1":I
    const v0, 0x7a8c28e8

    const-string v1, "C87@3729L161:BasicTooltip.android.kt#71ulvw"

    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "78@3494L215"

    invoke-static {v3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Landroidx/compose/foundation/BasicTooltipState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 80
    nop

    .line 81
    nop

    .line 82
    nop

    .line 83
    nop

    .line 84
    and-int/lit8 v0, v9, 0xe

    or-int/lit16 v0, v0, 0x200

    shr-int/lit8 v1, v9, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    shr-int/lit8 v1, v9, 0x3

    and-int/lit16 v1, v1, 0x1c00

    or-int/2addr v0, v1

    shl-int/lit8 v1, v9, 0x9

    const v33, 0xe000

    and-int v1, v1, v33

    or-int v33, v0, v1

    .line 79
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v34, p5

    move-object/from16 v35, v3

    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .end local p5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v34, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v35, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v3, v17

    move-object/from16 v36, v4

    .end local v4    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v36, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v4, p1

    move-object/from16 v37, v5

    .end local v5    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v37, "$composer$iv":Landroidx/compose/runtime/Composer;
    move-object/from16 v5, v35

    move-object/from16 v38, v6

    .end local v6    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v38, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    move/from16 v6, v33

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/BasicTooltip_androidKt;->TooltipPopup(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/foundation/BasicTooltipState;Lkotlinx/coroutines/CoroutineScope;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_16

    .line 78
    .end local v34    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v35    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v36    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v37    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v38    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v4    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .restart local v5    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .restart local v6    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local p5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_20
    move-object/from16 v34, p5

    move-object/from16 v35, v3

    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move-object/from16 v38, v6

    .line 79
    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v4    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v5    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local p5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v34    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v35    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v36    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .restart local v37    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .restart local v38    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_16
    invoke-interface/range {v35 .. v35}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 89
    nop

    .line 90
    nop

    .line 91
    nop

    .line 92
    shr-int/lit8 v0, v9, 0xf

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v1, v9, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    shr-int/lit8 v1, v9, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int/2addr v0, v1

    shr-int/lit8 v1, v9, 0x9

    and-int/lit16 v1, v1, 0x1c00

    or-int/2addr v0, v1

    const/4 v1, 0x0

    .line 88
    move/from16 v3, v18

    move-object/from16 v4, p2

    move-object/from16 v5, v16

    move-object/from16 v6, p6

    move/from16 v33, v7

    .end local v7    # "propagateMinConstraints$iv":Z
    .local v33, "propagateMinConstraints$iv":Z
    move-object/from16 v7, v35

    move-object/from16 v39, v8

    .end local v8    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v39, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    move v8, v0

    move/from16 v40, v9

    .end local v9    # "$dirty":I
    .local v40, "$dirty":I
    move v9, v1

    invoke-static/range {v3 .. v9}, Landroidx/compose/foundation/BasicTooltip_androidKt;->WrappedAnchor(ZLandroidx/compose/foundation/BasicTooltipState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 78
    invoke-static/range {v35 .. v35}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 94
    nop

    .line 273
    .end local v30    # "$changed":I
    .end local v31    # "$this$BasicTooltipBox_u24lambda_u240":Landroidx/compose/foundation/layout/BoxScope;
    .end local v32    # "$i$a$-Box-BasicTooltip_androidKt$BasicTooltipBox$1":I
    .end local v35    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v37 .. v37}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 272
    .end local v27    # "$changed$iv":I
    .end local v28    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v37    # "$composer$iv":Landroidx/compose/runtime/Composer;
    nop

    .line 274
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 275
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 276
    nop

    .end local v25    # "$changed$iv$iv$iv":I
    .end local v26    # "$i$f$ReusableComposeNode":I
    .end local v34    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v36    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 277
    nop

    .end local v22    # "$changed$iv$iv":I
    .end local v23    # "$i$f$Layout":I
    .end local v24    # "compositeKeyHash$iv$iv":I
    .end local v29    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 278
    nop

    .line 96
    .end local v19    # "$changed$iv":I
    .end local v20    # "$i$f$Box":I
    .end local v21    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v33    # "propagateMinConstraints$iv":Z
    .end local v38    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v39    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const v0, -0x60f781bb

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "invalid$iv":Z
    move-object v1, v12

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 279
    .local v3, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 280
    .local v5, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_22

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_21

    goto :goto_17

    .line 284
    :cond_21
    move-object v6, v4

    goto :goto_18

    .line 281
    :cond_22
    :goto_17
    const/4 v6, 0x0

    .line 96
    .local v6, "$i$a$-cache-BasicTooltip_androidKt$BasicTooltipBox$2":I
    new-instance v7, Landroidx/compose/foundation/BasicTooltip_androidKt$BasicTooltipBox$2$1;

    invoke-direct {v7, v10}, Landroidx/compose/foundation/BasicTooltip_androidKt$BasicTooltipBox$2$1;-><init>(Landroidx/compose/foundation/BasicTooltipState;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 281
    .end local v6    # "$i$a$-cache-BasicTooltip_androidKt$BasicTooltipBox$2":I
    move-object v6, v7

    .line 282
    .local v6, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 283
    nop

    .line 280
    .end local v6    # "value$iv":Ljava/lang/Object;
    :goto_18
    nop

    .line 279
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 96
    .end local v0    # "invalid$iv":Z
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    shr-int/lit8 v0, v40, 0x6

    and-int/lit8 v0, v0, 0xe

    invoke-static {v10, v6, v12, v0}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 99
    .end local v2    # "scope":Lkotlinx/coroutines/CoroutineScope;
    :cond_23
    :goto_19
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_24

    new-instance v19, Landroidx/compose/foundation/BasicTooltip_androidKt$BasicTooltipBox$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v7, p6

    move/from16 v8, p8

    move-object v10, v9

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/BasicTooltip_androidKt$BasicTooltipBox$3;-><init>(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/BasicTooltipState;Landroidx/compose/ui/Modifier;ZZLkotlin/jvm/functions/Function2;II)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_24
    return-void
.end method

.method private static final TooltipPopup(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/foundation/BasicTooltipState;Lkotlinx/coroutines/CoroutineScope;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 25
    .param p0, "positionProvider"    # Landroidx/compose/ui/window/PopupPositionProvider;
    .param p1, "state"    # Landroidx/compose/foundation/BasicTooltipState;
    .param p2, "scope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p3, "focusable"    # Z
    .param p4, "content"    # Lkotlin/jvm/functions/Function2;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/window/PopupPositionProvider;",
            "Landroidx/compose/foundation/BasicTooltipState;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Z",
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

    .line 125
    const v0, -0x463f167

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    .end local p5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(TooltipPopup)P(2,4,3,1)125@4750L44,126@4799L464:BasicTooltip.android.kt#71ulvw"

    invoke-static {v8, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v9, p6

    .local v9, "$dirty":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.TooltipPopup (BasicTooltip.android.kt:124)"

    invoke-static {v0, v9, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 126
    :cond_0
    sget v0, Landroidx/compose/foundation/R$string;->tooltip_description:I

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "tooltipDescription":Ljava/lang/String;
    nop

    .line 127
    new-instance v1, Landroidx/compose/foundation/BasicTooltip_androidKt$TooltipPopup$1;

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    invoke-direct {v1, v15, v14}, Landroidx/compose/foundation/BasicTooltip_androidKt$TooltipPopup$1;-><init>(Landroidx/compose/foundation/BasicTooltipState;Lkotlinx/coroutines/CoroutineScope;)V

    move-object v2, v1

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 134
    new-instance v3, Landroidx/compose/ui/window/PopupProperties;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x3e

    const/16 v24, 0x0

    move-object/from16 v16, v3

    move/from16 v17, p3

    invoke-direct/range {v16 .. v24}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 135
    new-instance v1, Landroidx/compose/foundation/BasicTooltip_androidKt$TooltipPopup$2;

    move-object/from16 v13, p4

    invoke-direct {v1, v0, v13}, Landroidx/compose/foundation/BasicTooltip_androidKt$TooltipPopup$2;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    const v4, -0x446aa3c9

    const/4 v5, 0x1

    invoke-static {v8, v4, v5, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    and-int/lit8 v1, v9, 0xe

    or-int/lit16 v6, v1, 0xc00

    const/4 v7, 0x0

    .line 127
    move-object/from16 v1, p0

    move-object v5, v8

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->Popup(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Landroidx/compose/foundation/BasicTooltip_androidKt$TooltipPopup$3;

    move-object v10, v2

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p4

    move/from16 v16, p6

    invoke-direct/range {v10 .. v16}, Landroidx/compose/foundation/BasicTooltip_androidKt$TooltipPopup$3;-><init>(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/foundation/BasicTooltipState;Lkotlinx/coroutines/CoroutineScope;ZLkotlin/jvm/functions/Function2;I)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 143
    :cond_2
    return-void
.end method

.method private static final WrappedAnchor(ZLandroidx/compose/foundation/BasicTooltipState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 31
    .param p0, "enableUserInput"    # Z
    .param p1, "state"    # Landroidx/compose/foundation/BasicTooltipState;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "content"    # Lkotlin/jvm/functions/Function2;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/foundation/BasicTooltipState;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 108
    move/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move/from16 v10, p5

    const v0, 0x6619f0a1

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(WrappedAnchor)P(1,3,2)108@4208L24,109@4258L38,110@4301L171:BasicTooltip.android.kt#71ulvw"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p5

    .local v1, "$dirty":I
    and-int/lit8 v2, p6, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v10, 0xe

    if-nez v2, :cond_2

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_2
    :goto_1
    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v10, 0x70

    if-nez v2, :cond_5

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    :goto_3
    and-int/lit8 v2, p6, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v3, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v10, 0x380

    if-nez v3, :cond_8

    move-object/from16 v3, p2

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x100

    goto :goto_4

    :cond_7
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v1, v4

    goto :goto_5

    :cond_8
    move-object/from16 v3, p2

    :goto_5
    and-int/lit8 v4, p6, 0x8

    if-eqz v4, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v4, v10, 0x1c00

    if-nez v4, :cond_b

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x800

    goto :goto_6

    :cond_a
    const/16 v4, 0x400

    :goto_6
    or-int/2addr v1, v4

    :cond_b
    :goto_7
    move v12, v1

    .end local v1    # "$dirty":I
    .local v12, "$dirty":I
    and-int/lit16 v1, v12, 0x16db

    const/16 v4, 0x492

    if-ne v1, v4, :cond_d

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_8

    .line 115
    :cond_c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v17, v3

    goto/16 :goto_e

    .line 108
    :cond_d
    :goto_8
    if-eqz v2, :cond_e

    .line 106
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_9

    .line 108
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_e
    move-object v1, v3

    .line 106
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v1    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 108
    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.foundation.WrappedAnchor (BasicTooltip.android.kt:107)"

    invoke-static {v0, v12, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_f
    nop

    .line 109
    const/4 v0, 0x0

    move v2, v0

    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .local v3, "$i$f$rememberCoroutineScope":I
    const v4, 0x2e20b340

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp"

    invoke-static {v11, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 285
    nop

    .line 287
    move-object v4, v11

    .line 288
    .local v4, "composer$iv":Landroidx/compose/runtime/Composer;
    move v5, v0

    .local v5, "$changed$iv$iv":I
    const/4 v6, 0x0

    .local v6, "$i$f$remember":I
    const v13, -0x1d58f75c

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v11, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 289
    const/4 v13, 0x0

    .local v13, "invalid$iv$iv$iv":Z
    move-object v14, v11

    .local v14, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 290
    .local v15, "$i$f$cache":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 291
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p4, v2

    .end local v2    # "$changed$iv":I
    .local p4, "$changed$iv":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_10

    .line 292
    const/4 v2, 0x0

    .line 293
    .local v2, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 294
    const/16 v17, 0x0

    .line 295
    .local v17, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    sget-object v17, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 294
    .end local v17    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    move-object/from16 v18, v0

    .end local v0    # "it$iv$iv$iv":Ljava/lang/Object;
    .local v18, "it$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v17

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v4}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 293
    move/from16 v17, v2

    .end local v2    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    .local v17, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    new-instance v2, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v2, v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 292
    .end local v17    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    move-object v0, v2

    .line 296
    .local v0, "value$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 297
    nop

    .end local v0    # "value$iv$iv$iv":Ljava/lang/Object;
    goto :goto_a

    .line 298
    .end local v18    # "it$iv$iv$iv":Ljava/lang/Object;
    .local v0, "it$iv$iv$iv":Ljava/lang/Object;
    :cond_10
    move-object/from16 v18, v0

    .line 291
    .end local v0    # "it$iv$iv$iv":Ljava/lang/Object;
    .restart local v18    # "it$iv$iv$iv":Ljava/lang/Object;
    :goto_a
    nop

    .line 290
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    .end local v18    # "it$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 289
    .end local v13    # "invalid$iv$iv$iv":Z
    .end local v14    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$f$cache":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 288
    .end local v5    # "$changed$iv$iv":I
    .end local v6    # "$i$f$remember":I
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 299
    .local v0, "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 109
    .end local v0    # "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    .end local v3    # "$i$f$rememberCoroutineScope":I
    .end local v4    # "composer$iv":Landroidx/compose/runtime/Composer;
    .end local p4    # "$changed$iv":I
    move-object v0, v2

    .line 110
    .local v0, "scope":Lkotlinx/coroutines/CoroutineScope;
    sget v2, Landroidx/compose/foundation/R$string;->tooltip_label:I

    const/4 v3, 0x0

    invoke-static {v2, v11, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "longPressLabel":Ljava/lang/String;
    nop

    .line 112
    invoke-static {v1, v7, v8}, Landroidx/compose/foundation/BasicTooltip_androidKt;->handleGestures(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/BasicTooltipState;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 113
    invoke-static {v4, v2, v7, v8, v0}, Landroidx/compose/foundation/BasicTooltip_androidKt;->anchorSemantics(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLandroidx/compose/foundation/BasicTooltipState;Lkotlinx/coroutines/CoroutineScope;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 111
    move v5, v3

    .local v5, "$changed$iv":I
    move-object v3, v4

    .local v3, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/4 v4, 0x0

    .local v4, "$i$f$Box":I
    const v6, 0x2bb5b5d7

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    invoke-static {v11, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 300
    sget-object v6, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v6

    .line 301
    .local v6, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v13, 0x0

    .line 304
    .local v13, "propagateMinConstraints$iv":Z
    shr-int/lit8 v14, v5, 0x3

    and-int/lit8 v14, v14, 0xe

    shr-int/lit8 v15, v5, 0x3

    and-int/lit8 v15, v15, 0x70

    or-int/2addr v14, v15

    invoke-static {v6, v13, v11, v14}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v14

    .local v14, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v15, v5, 0x3

    and-int/lit8 v15, v15, 0x70

    .line 305
    nop

    .local v15, "$changed$iv$iv":I
    const/16 v16, 0x0

    move-object/from16 p4, v0

    .end local v0    # "scope":Lkotlinx/coroutines/CoroutineScope;
    .local v16, "$i$f$Layout":I
    .local p4, "scope":Lkotlinx/coroutines/CoroutineScope;
    const v0, -0x4ee9b9da

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v11, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x0

    invoke-static {v11, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v0

    .line 307
    .local v0, "compositeKeyHash$iv$iv":I
    move-object/from16 v17, v1

    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v17, "modifier":Landroidx/compose/ui/Modifier;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v1

    .line 309
    .local v1, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v18

    .line 316
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v19

    move-object/from16 p2, v2

    .end local v2    # "longPressLabel":Ljava/lang/String;
    .local p2, "longPressLabel":Ljava/lang/String;
    shl-int/lit8 v2, v15, 0x9

    and-int/lit16 v2, v2, 0x1c00

    or-int/lit8 v2, v2, 0x6

    .line 308
    nop

    .local v2, "$changed$iv$iv$iv":I
    move-object/from16 v20, v19

    .local v20, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v19, v18

    .local v19, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v18, 0x0

    .line 317
    .local v18, "$i$f$ReusableComposeNode":I
    move-object/from16 v21, v3

    .end local v3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v21, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 318
    :cond_11
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 319
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 320
    move-object/from16 v3, v19

    .end local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v3, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    .line 322
    .end local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_12
    move-object/from16 v3, v19

    .end local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 324
    :goto_b
    move-object/from16 v19, v3

    .end local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .local v3, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 311
    .local v22, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v24, v4

    .end local v4    # "$i$f$Box":I
    .local v24, "$i$f$Box":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v3, v14, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 312
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v3, v1, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 314
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .local v4, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v23, 0x0

    .line 325
    .local v23, "$i$f$set-impl":I
    move-object/from16 v25, v3

    .local v25, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v26, 0x0

    .line 326
    .local v26, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v27

    if-nez v27, :cond_14

    move-object/from16 v27, v1

    .end local v1    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v27, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v28, v6

    .end local v6    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v28, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_c

    :cond_13
    move-object/from16 v6, v25

    goto :goto_d

    .end local v27    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v28    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .restart local v1    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v6    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    :cond_14
    move-object/from16 v27, v1

    move-object/from16 v28, v6

    .line 327
    .end local v1    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v6    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .restart local v27    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v28    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    :goto_c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v6, v25

    .end local v25    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v6, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 328
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1, v4}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 330
    :goto_d
    nop

    .line 325
    .end local v6    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v26    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 330
    nop

    .line 315
    .end local v4    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v23    # "$i$f$set-impl":I
    nop

    .line 324
    .end local v3    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 331
    invoke-static {v11}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    shr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v20

    .end local v20    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v4, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v4, v1, v11, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const v1, 0x7ab4aae9

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 333
    shr-int/lit8 v1, v2, 0x9

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed$iv":I
    move-object v3, v11

    .local v3, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 334
    .local v6, "$i$a$-Layout-BoxKt$Box$1$iv":I
    move/from16 v20, v0

    .end local v0    # "compositeKeyHash$iv$iv":I
    .local v20, "compositeKeyHash$iv$iv":I
    const v0, -0x4ab8dd4f

    move/from16 v22, v1

    .end local v1    # "$changed$iv":I
    .local v22, "$changed$iv":I
    const-string v1, "C73@3426L9:Box.kt#2w3rfo"

    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v1, v5, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .local v0, "$this$WrappedAnchor_u24lambda_u242":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v23, v3

    .local v23, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 114
    .local v25, "$i$a$-Box-BasicTooltip_androidKt$WrappedAnchor$1":I
    move-object/from16 v26, v0

    .end local v0    # "$this$WrappedAnchor_u24lambda_u242":Landroidx/compose/foundation/layout/BoxScope;
    .local v26, "$this$WrappedAnchor_u24lambda_u242":Landroidx/compose/foundation/layout/BoxScope;
    const v0, 0x6a61f7ce

    move/from16 v29, v1

    .end local v1    # "$changed":I
    .local v29, "$changed":I
    const-string v1, "C113@4461L9:BasicTooltip.android.kt#71ulvw"

    move/from16 v30, v2

    move-object/from16 v2, v23

    .end local v23    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .local v30, "$changed$iv$iv$iv":I
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    shr-int/lit8 v0, v12, 0x9

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 334
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$a$-Box-BasicTooltip_androidKt$WrappedAnchor$1":I
    .end local v26    # "$this$WrappedAnchor_u24lambda_u242":Landroidx/compose/foundation/layout/BoxScope;
    .end local v29    # "$changed":I
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 333
    .end local v3    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v22    # "$changed$iv":I
    nop

    .line 335
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 336
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 337
    nop

    .end local v4    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v18    # "$i$f$ReusableComposeNode":I
    .end local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v30    # "$changed$iv$iv$iv":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 338
    nop

    .end local v15    # "$changed$iv$iv":I
    .end local v16    # "$i$f$Layout":I
    .end local v20    # "compositeKeyHash$iv$iv":I
    .end local v27    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 339
    nop

    .end local v5    # "$changed$iv":I
    .end local v13    # "propagateMinConstraints$iv":Z
    .end local v14    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v21    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v24    # "$i$f$Box":I
    .end local v28    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 115
    .end local p2    # "longPressLabel":Ljava/lang/String;
    .end local p4    # "scope":Lkotlinx/coroutines/CoroutineScope;
    :cond_15
    :goto_e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_16

    new-instance v14, Landroidx/compose/foundation/BasicTooltip_androidKt$WrappedAnchor$2;

    move-object v0, v14

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    move-object/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/BasicTooltip_androidKt$WrappedAnchor$2;-><init>(ZLandroidx/compose/foundation/BasicTooltipState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;II)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_16
    return-void
.end method

.method public static final synthetic access$TooltipPopup(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/foundation/BasicTooltipState;Lkotlinx/coroutines/CoroutineScope;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "positionProvider"    # Landroidx/compose/ui/window/PopupPositionProvider;
    .param p1, "state"    # Landroidx/compose/foundation/BasicTooltipState;
    .param p2, "scope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p3, "focusable"    # Z
    .param p4, "content"    # Lkotlin/jvm/functions/Function2;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/foundation/BasicTooltip_androidKt;->TooltipPopup(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/foundation/BasicTooltipState;Lkotlinx/coroutines/CoroutineScope;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$WrappedAnchor(ZLandroidx/compose/foundation/BasicTooltipState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 0
    .param p0, "enableUserInput"    # Z
    .param p1, "state"    # Landroidx/compose/foundation/BasicTooltipState;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "content"    # Lkotlin/jvm/functions/Function2;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .param p6, "$default"    # I

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/foundation/BasicTooltip_androidKt;->WrappedAnchor(ZLandroidx/compose/foundation/BasicTooltipState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method private static final anchorSemantics(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLandroidx/compose/foundation/BasicTooltipState;Lkotlinx/coroutines/CoroutineScope;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0, "$this$anchorSemantics"    # Landroidx/compose/ui/Modifier;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "state"    # Landroidx/compose/foundation/BasicTooltipState;
    .param p4, "scope"    # Lkotlinx/coroutines/CoroutineScope;

    .line 211
    if-eqz p2, :cond_0

    .line 212
    new-instance v0, Landroidx/compose/foundation/BasicTooltip_androidKt$anchorSemantics$1;

    invoke-direct {v0, p1, p4, p3}, Landroidx/compose/foundation/BasicTooltip_androidKt$anchorSemantics$1;-><init>(Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/BasicTooltipState;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_0

    .line 221
    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method private static final handleGestures(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/BasicTooltipState;)Landroidx/compose/ui/Modifier;
    .locals 3
    .param p0, "$this$handleGestures"    # Landroidx/compose/ui/Modifier;
    .param p1, "enabled"    # Z
    .param p2, "state"    # Landroidx/compose/foundation/BasicTooltipState;

    .line 150
    if-eqz p1, :cond_0

    .line 151
    new-instance v0, Landroidx/compose/foundation/BasicTooltip_androidKt$handleGestures$1;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroidx/compose/foundation/BasicTooltip_androidKt$handleGestures$1;-><init>(Landroidx/compose/foundation/BasicTooltipState;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p2, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 179
    new-instance v2, Landroidx/compose/foundation/BasicTooltip_androidKt$handleGestures$2;

    invoke-direct {v2, p2, v1}, Landroidx/compose/foundation/BasicTooltip_androidKt$handleGestures$2;-><init>(Landroidx/compose/foundation/BasicTooltipState;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p2, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method
