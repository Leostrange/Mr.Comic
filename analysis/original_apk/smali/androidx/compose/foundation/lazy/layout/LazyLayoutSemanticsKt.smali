.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt;
.super Ljava/lang/Object;
.source "LazyLayoutSemantics.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyLayoutSemantics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyLayoutSemantics.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt\n+ 2 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n*L\n1#1,170:1\n487#2,4:171\n491#2,2:179\n495#2:185\n25#3:175\n83#3,3:186\n1116#4,3:176\n1119#4,3:182\n1116#4,6:189\n487#5:181\n*S KotlinDebug\n*F\n+ 1 LazyLayoutSemantics.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt\n*L\n48#1:171,4\n48#1:179,2\n48#1:185\n48#1:175\n50#1:186,3\n48#1:176,3\n48#1:182,3\n50#1:189,6\n48#1:181\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u001a?\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0001\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "lazyLayoutSemantics",
        "Landroidx/compose/ui/Modifier;",
        "itemProviderLambda",
        "Lkotlin/Function0;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;",
        "state",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "userScrollEnabled",
        "",
        "reverseScrolling",
        "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;",
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
.method public static final lazyLayoutSemantics(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 27
    .param p0, "$this$lazyLayoutSemantics"    # Landroidx/compose/ui/Modifier;
    .param p1, "itemProviderLambda"    # Lkotlin/jvm/functions/Function0;
    .param p2, "state"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;
    .param p3, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p4, "userScrollEnabled"    # Z
    .param p5, "reverseScrolling"    # Z
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;",
            ">;",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "ZZ",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    const v4, 0x3fc8fe51

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "C(lazyLayoutSemantics)P(!1,3!1,4)47@1936L24,49@1991L2820:LazyLayoutSemantics.kt#wow0x6"

    invoke-static {v3, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 47
    const/4 v5, -0x1

    const-string/jumbo v6, "androidx.compose.foundation.lazy.layout.lazyLayoutSemantics (LazyLayoutSemantics.kt:46)"

    move/from16 v7, p7

    invoke-static {v4, v7, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_0

    .line 0
    :cond_0
    move/from16 v7, p7

    .line 47
    :goto_0
    nop

    .line 48
    const/4 v4, 0x0

    move v5, v4

    .local v5, "$changed$iv":I
    const/4 v6, 0x0

    .local v6, "$i$f$rememberCoroutineScope":I
    const v8, 0x2e20b340

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v8, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp"

    invoke-static {v3, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 171
    nop

    .line 173
    move-object/from16 v8, p6

    .line 174
    .local v8, "composer$iv":Landroidx/compose/runtime/Composer;
    move v9, v4

    .local v9, "$changed$iv$iv":I
    const/4 v10, 0x0

    .local v10, "$i$f$remember":I
    const v11, -0x1d58f75c

    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v3, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 175
    const/4 v11, 0x0

    .local v11, "invalid$iv$iv$iv":Z
    move-object/from16 v12, p6

    .local v12, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 176
    .local v13, "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 177
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v14, v4, :cond_1

    .line 178
    const/4 v4, 0x0

    .line 179
    .local v4, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 180
    const/16 v16, 0x0

    .line 181
    .local v16, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    sget-object v16, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 180
    .end local v16    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    move/from16 v17, v4

    .end local v4    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    .local v17, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    move-object/from16 v4, v16

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v4, v8}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 179
    move/from16 v16, v5

    .end local v5    # "$changed$iv":I
    .local v16, "$changed$iv":I
    new-instance v5, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v5, v4}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 178
    .end local v17    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    move-object v4, v5

    .line 182
    .local v4, "value$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 183
    nop

    .end local v4    # "value$iv$iv$iv":Ljava/lang/Object;
    goto :goto_1

    .line 184
    .end local v16    # "$changed$iv":I
    .restart local v5    # "$changed$iv":I
    :cond_1
    move/from16 v16, v5

    .end local v5    # "$changed$iv":I
    .restart local v16    # "$changed$iv":I
    move-object v4, v14

    .line 177
    :goto_1
    nop

    .line 176
    .end local v14    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    nop

    .line 175
    .end local v11    # "invalid$iv$iv$iv":Z
    .end local v12    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 174
    .end local v9    # "$changed$iv$iv":I
    .end local v10    # "$i$f$remember":I
    check-cast v4, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 185
    .local v4, "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    invoke-virtual {v4}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 48
    .end local v4    # "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    .end local v6    # "$i$f$rememberCoroutineScope":I
    .end local v8    # "composer$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$changed$iv":I
    move-object v4, v5

    .line 49
    .local v4, "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    nop

    .line 51
    nop

    .line 52
    nop

    .line 51
    nop

    .line 53
    nop

    .line 51
    nop

    .line 54
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v0, v1, v2, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 51
    nop

    .line 50
    const/16 v6, 0x8

    .local v5, "keys$iv":[Ljava/lang/Object;
    .local v6, "$changed$iv":I
    const/4 v8, 0x0

    .local v8, "$i$f$remember":I
    const v9, -0x21de6e89

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v3, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 186
    const/4 v9, 0x0

    .line 187
    .local v9, "invalid$iv":Z
    array-length v10, v5

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_2

    aget-object v12, v5, v11

    .local v12, "key$iv":Ljava/lang/Object;
    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v9, v13

    .end local v12    # "key$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 188
    :cond_2
    move-object/from16 v10, p6

    .local v10, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 189
    .local v11, "$i$f$cache":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 190
    .local v13, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v9, :cond_4

    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_3

    goto :goto_3

    .line 194
    :cond_3
    move/from16 v7, p5

    move-object/from16 v24, v5

    move/from16 v25, v6

    move-object v0, v12

    goto/16 :goto_7

    .line 191
    :cond_4
    :goto_3
    const/4 v14, 0x0

    .line 56
    .local v14, "$i$a$-remember-LazyLayoutSemanticsKt$lazyLayoutSemantics$1":I
    sget-object v15, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v2, v15, :cond_5

    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    .line 57
    .local v15, "isVertical":Z
    :goto_4
    new-instance v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt$lazyLayoutSemantics$1$indexForKeyMapping$1;

    invoke-direct {v3, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt$lazyLayoutSemantics$1$indexForKeyMapping$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 69
    .local v3, "indexForKeyMapping":Lkotlin/jvm/functions/Function1;
    new-instance v2, Landroidx/compose/ui/semantics/ScrollAxisRange;

    move-object/from16 v24, v5

    .end local v5    # "keys$iv":[Ljava/lang/Object;
    .local v24, "keys$iv":[Ljava/lang/Object;
    new-instance v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt$lazyLayoutSemantics$1$accessibilityScrollState$1;

    invoke-direct {v5, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt$lazyLayoutSemantics$1$accessibilityScrollState$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    move/from16 v25, v6

    .end local v6    # "$changed$iv":I
    .local v25, "$changed$iv":I
    new-instance v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt$lazyLayoutSemantics$1$accessibilityScrollState$2;

    invoke-direct {v6, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt$lazyLayoutSemantics$1$accessibilityScrollState$2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 72
    nop

    .line 69
    move/from16 v7, p5

    invoke-direct {v2, v5, v6, v7}, Landroidx/compose/ui/semantics/ScrollAxisRange;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V

    move-object/from16 v20, v2

    .line 75
    .local v20, "accessibilityScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    const/4 v2, 0x0

    if-eqz p4, :cond_6

    new-instance v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt$lazyLayoutSemantics$1$scrollByAction$1;

    invoke-direct {v5, v15, v4, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt$lazyLayoutSemantics$1$scrollByAction$1;-><init>(ZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object/from16 v21, v5

    goto :goto_5

    .line 89
    :cond_6
    move-object/from16 v21, v2

    .line 75
    :goto_5
    nop

    .line 92
    .local v21, "scrollByAction":Lkotlin/jvm/functions/Function2;
    if-eqz p4, :cond_7

    new-instance v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt$lazyLayoutSemantics$1$scrollToIndexAction$1;

    invoke-direct {v5, v0, v4, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt$lazyLayoutSemantics$1$scrollToIndexAction$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object/from16 v22, v5

    goto :goto_6

    .line 105
    :cond_7
    move-object/from16 v22, v2

    .line 92
    :goto_6
    nop

    .line 108
    .local v22, "scrollToIndexAction":Lkotlin/jvm/functions/Function1;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;->collectionInfo()Landroidx/compose/ui/semantics/CollectionInfo;

    move-result-object v5

    .line 110
    .local v5, "collectionInfo":Landroidx/compose/ui/semantics/CollectionInfo;
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v6, Landroidx/compose/ui/Modifier;

    new-instance v26, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt$lazyLayoutSemantics$1$1;

    move-object/from16 v17, v26

    move-object/from16 v18, v3

    move/from16 v19, v15

    move-object/from16 v23, v5

    invoke-direct/range {v17 .. v23}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt$lazyLayoutSemantics$1$1;-><init>(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/ui/semantics/ScrollAxisRange;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/semantics/CollectionInfo;)V

    move-object/from16 v0, v26

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object/from16 v16, v3

    const/4 v1, 0x1

    const/4 v3, 0x0

    .end local v3    # "indexForKeyMapping":Lkotlin/jvm/functions/Function1;
    .local v16, "indexForKeyMapping":Lkotlin/jvm/functions/Function1;
    invoke-static {v6, v3, v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 191
    .end local v5    # "collectionInfo":Landroidx/compose/ui/semantics/CollectionInfo;
    .end local v14    # "$i$a$-remember-LazyLayoutSemanticsKt$lazyLayoutSemantics$1":I
    .end local v15    # "isVertical":Z
    .end local v16    # "indexForKeyMapping":Lkotlin/jvm/functions/Function1;
    .end local v20    # "accessibilityScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v21    # "scrollByAction":Lkotlin/jvm/functions/Function2;
    .end local v22    # "scrollToIndexAction":Lkotlin/jvm/functions/Function1;
    nop

    .line 192
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 193
    nop

    .line 190
    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    :goto_7
    nop

    .line 189
    .end local v12    # "it$iv$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 188
    .end local v10    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache":I
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v8    # "$i$f$remember":I
    .end local v9    # "invalid$iv":Z
    .end local v24    # "keys$iv":[Ljava/lang/Object;
    .end local v25    # "$changed$iv":I
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 49
    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_8
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method
