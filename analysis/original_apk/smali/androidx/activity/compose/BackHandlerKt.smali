.class public final Landroidx/activity/compose/BackHandlerKt;
.super Ljava/lang/Object;
.source "BackHandler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackHandler.kt\nandroidx/activity/compose/BackHandlerKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt\n*L\n1#1,110:1\n25#2:111\n50#2:118\n49#2:119\n955#3,6:112\n955#3,6:120\n76#4:126\n89#5:127\n*S KotlinDebug\n*F\n+ 1 BackHandler.kt\nandroidx/activity/compose/BackHandlerKt\n*L\n86#1:111\n94#1:118\n94#1:119\n86#1:112,6\n94#1:120,6\n100#1:126\n84#1:127\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a%\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0005H\u0007\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007\u00b2\u0006\u0010\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0005X\u008a\u0084\u0002"
    }
    d2 = {
        "BackHandler",
        "",
        "enabled",
        "",
        "onBack",
        "Lkotlin/Function0;",
        "(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V",
        "activity-compose_release",
        "currentOnBack"
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
.method public static final BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 18
    .param p0, "enabled"    # Z
    .param p1, "onBack"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 82
    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    const v3, -0x158b58d6

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$composer":Landroidx/compose/runtime/Composer;
    const-string v4, "C(BackHandler)83@3458L28,85@3588L171,93@3860L48,93@3849L59,*96@3981L7,99@4160L7,100@4172L302:BackHandler.kt#q1dkbc"

    invoke-static {v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v4, p3

    .local v4, "$dirty":I
    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_0

    or-int/lit8 v4, v4, 0x6

    move/from16 v6, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v1, 0xe

    if-nez v6, :cond_2

    move/from16 v6, p0

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v4, v7

    goto :goto_1

    :cond_2
    move/from16 v6, p0

    :goto_1
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_3

    or-int/lit8 v4, v4, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v7, v1, 0x70

    if-nez v7, :cond_5

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v4, v7

    :cond_5
    :goto_3
    and-int/lit8 v7, v4, 0x5b

    const/16 v8, 0x12

    if-ne v7, v8, :cond_7

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_4

    .line 109
    :cond_6
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v17, v4

    move v5, v6

    goto/16 :goto_9

    .line 82
    :cond_7
    :goto_4
    if-eqz v5, :cond_8

    const/4 v5, 0x1

    .end local p0    # "enabled":Z
    .local v5, "enabled":Z
    goto :goto_5

    .end local v5    # "enabled":Z
    .restart local p0    # "enabled":Z
    :cond_8
    move v5, v6

    .line 84
    .end local p0    # "enabled":Z
    .restart local v5    # "enabled":Z
    :goto_5
    shr-int/lit8 v6, v4, 0x3

    and-int/lit8 v6, v6, 0xe

    invoke-static {v0, v3, v6}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v6

    .line 86
    .local v6, "currentOnBack$delegate":Landroidx/compose/runtime/State;
    const/4 v7, 0x0

    move v8, v7

    .local v8, "$changed$iv":I
    const/4 v9, 0x0

    .local v9, "$i$f$remember":I
    const v10, -0x384349

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "C(remember):Composables.kt#9igjgp"

    invoke-static {v3, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 111
    const/4 v10, 0x0

    .local v10, "invalid$iv$iv":Z
    move-object v11, v3

    .local v11, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 112
    .local v12, "$i$f$cache":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 113
    .local v14, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v13, v15, :cond_9

    .line 114
    const/4 v15, 0x0

    .line 87
    .local v15, "$i$a$-remember-BackHandlerKt$BackHandler$backCallback$1":I
    new-instance v7, Landroidx/activity/compose/BackHandlerKt$BackHandler$backCallback$1$1;

    invoke-direct {v7, v5, v6}, Landroidx/activity/compose/BackHandlerKt$BackHandler$backCallback$1$1;-><init>(ZLandroidx/compose/runtime/State;)V

    .line 114
    .end local v15    # "$i$a$-remember-BackHandlerKt$BackHandler$backCallback$1":I
    nop

    .line 115
    .local v7, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 116
    nop

    .end local v7    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_6

    .line 117
    :cond_9
    move-object v7, v13

    .line 113
    :goto_6
    nop

    .line 112
    .end local v13    # "it$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 111
    .end local v10    # "invalid$iv$iv":Z
    .end local v11    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 86
    .end local v8    # "$changed$iv":I
    .end local v9    # "$i$f$remember":I
    check-cast v7, Landroidx/activity/compose/BackHandlerKt$BackHandler$backCallback$1$1;

    .local v7, "backCallback":Landroidx/activity/compose/BackHandlerKt$BackHandler$backCallback$1$1;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    shl-int/lit8 v9, v4, 0x3

    and-int/lit8 v9, v9, 0x70

    const/4 v10, 0x6

    or-int/2addr v9, v10

    .line 94
    nop

    .local v8, "key2$iv":Ljava/lang/Object;
    .local v9, "$changed$iv":I
    const/4 v11, 0x0

    .local v11, "$i$f$remember":I
    const v12, -0x384098

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "C(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v3, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 118
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v12, v13

    .line 119
    nop

    .local v12, "invalid$iv$iv":Z
    move-object v13, v3

    .local v13, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 120
    .local v14, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 121
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v12, :cond_b

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v15, v10, :cond_a

    goto :goto_7

    .line 125
    :cond_a
    move/from16 v17, v4

    move-object v4, v15

    goto :goto_8

    .line 122
    :cond_b
    :goto_7
    const/4 v10, 0x0

    .line 94
    .local v10, "$i$a$-remember-BackHandlerKt$BackHandler$1":I
    move/from16 v17, v4

    .end local v4    # "$dirty":I
    .local v17, "$dirty":I
    new-instance v4, Landroidx/activity/compose/BackHandlerKt$BackHandler$1$1;

    invoke-direct {v4, v7, v5}, Landroidx/activity/compose/BackHandlerKt$BackHandler$1$1;-><init>(Landroidx/activity/compose/BackHandlerKt$BackHandler$backCallback$1$1;Z)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 122
    .end local v10    # "$i$a$-remember-BackHandlerKt$BackHandler$1":I
    nop

    .line 123
    .local v4, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 124
    nop

    .line 121
    .end local v4    # "value$iv$iv":Ljava/lang/Object;
    :goto_8
    nop

    .line 120
    .end local v15    # "it$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 119
    .end local v12    # "invalid$iv$iv":Z
    .end local v13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v8    # "key2$iv":Ljava/lang/Object;
    .end local v9    # "$changed$iv":I
    .end local v11    # "$i$f$remember":I
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 94
    const/4 v8, 0x0

    invoke-static {v4, v3, v8}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 97
    sget-object v4, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->INSTANCE:Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;

    const/4 v8, 0x6

    invoke-virtual {v4, v3, v8}, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/activity/OnBackPressedDispatcherOwner;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 99
    invoke-interface {v4}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v4

    .line 97
    nop

    .line 100
    .local v4, "backDispatcher":Landroidx/activity/OnBackPressedDispatcher;
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalLifecycleOwner()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v8

    check-cast v8, Landroidx/compose/runtime/CompositionLocal;

    .local v8, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v9, 0x0

    .restart local v9    # "$changed$iv":I
    const/4 v10, 0x0

    .line 126
    .local v10, "$i$f$getCurrent":I
    const v11, 0x6292b32

    const-string v12, "C:CompositionLocal.kt#9igjgp"

    invoke-static {v3, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 100
    .end local v8    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v9    # "$changed$iv":I
    .end local v10    # "$i$f$getCurrent":I
    move-object v8, v11

    check-cast v8, Landroidx/lifecycle/LifecycleOwner;

    .line 101
    .local v8, "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    new-instance v9, Landroidx/activity/compose/BackHandlerKt$BackHandler$2;

    invoke-direct {v9, v4, v8, v7}, Landroidx/activity/compose/BackHandlerKt$BackHandler$2;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/compose/BackHandlerKt$BackHandler$backCallback$1$1;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/16 v10, 0x48

    invoke-static {v8, v4, v9, v3, v10}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 109
    .end local v4    # "backDispatcher":Landroidx/activity/OnBackPressedDispatcher;
    .end local v6    # "currentOnBack$delegate":Landroidx/compose/runtime/State;
    .end local v7    # "backCallback":Landroidx/activity/compose/BackHandlerKt$BackHandler$backCallback$1$1;
    .end local v8    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    :goto_9
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v4

    if-nez v4, :cond_c

    goto :goto_a

    :cond_c
    new-instance v6, Landroidx/activity/compose/BackHandlerKt$BackHandler$3;

    invoke-direct {v6, v5, v0, v1, v2}, Landroidx/activity/compose/BackHandlerKt$BackHandler$3;-><init>(ZLkotlin/jvm/functions/Function0;II)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-interface {v4, v6}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_a
    return-void

    .line 97
    .restart local v6    # "currentOnBack$delegate":Landroidx/compose/runtime/State;
    .restart local v7    # "backCallback":Landroidx/activity/compose/BackHandlerKt$BackHandler$backCallback$1$1;
    :cond_d
    const/4 v2, 0x0

    .line 98
    .local v2, "$i$a$-checkNotNull-BackHandlerKt$BackHandler$backDispatcher$1":I
    nop

    .line 97
    .end local v2    # "$i$a$-checkNotNull-BackHandlerKt$BackHandler$backDispatcher$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "No OnBackPressedDispatcherOwner was provided via LocalOnBackPressedDispatcherOwner"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static final BackHandler$lambda$0(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function0;
    .locals 4
    .param p0, "$currentOnBack$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 127
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 84
    return-object v0
.end method

.method public static final synthetic access$BackHandler$lambda$0(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .param p0, "$currentOnBack$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/activity/compose/BackHandlerKt;->BackHandler$lambda$0(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method
