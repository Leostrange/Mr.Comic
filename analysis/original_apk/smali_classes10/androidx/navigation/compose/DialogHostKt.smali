.class public final Landroidx/navigation/compose/DialogHostKt;
.super Ljava/lang/Object;
.source "DialogHost.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogHost.kt\nandroidx/navigation/compose/DialogHostKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,137:1\n25#2:138\n67#2,3:147\n66#2:150\n36#2:161\n1097#3,6:139\n1097#3,6:151\n1097#3,3:162\n1100#3,3:168\n1855#4,2:145\n1855#4,2:158\n766#4:165\n857#4,2:166\n76#5:157\n76#5:160\n81#6:171\n81#6:172\n*S KotlinDebug\n*F\n+ 1 DialogHost.kt\nandroidx/navigation/compose/DialogHostKt\n*L\n48#1:138\n74#1:147,3\n74#1:150\n123#1:161\n48#1:139,6\n74#1:151,6\n123#1:162,3\n123#1:168,3\n50#1:145,2\n89#1:158,2\n126#1:165\n126#1:166,2\n88#1:157\n122#1:160\n43#1:171\n47#1:172\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\"\u001a\u0015\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u0004\u001a!\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\tH\u0001\u00a2\u0006\u0002\u0010\n\u001a%\u0010\u000b\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00070\u000c2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\tH\u0001\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e\u00b2\u0006\u0010\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0010X\u008a\u0084\u0002\u00b2\u0006\u0010\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0012X\u008a\u0084\u0002"
    }
    d2 = {
        "DialogHost",
        "",
        "dialogNavigator",
        "Landroidx/navigation/compose/DialogNavigator;",
        "(Landroidx/navigation/compose/DialogNavigator;Landroidx/compose/runtime/Composer;I)V",
        "rememberVisibleList",
        "Landroidx/compose/runtime/snapshots/SnapshotStateList;",
        "Landroidx/navigation/NavBackStackEntry;",
        "backStack",
        "",
        "(Ljava/util/Collection;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/snapshots/SnapshotStateList;",
        "PopulateVisibleList",
        "",
        "(Ljava/util/List;Ljava/util/Collection;Landroidx/compose/runtime/Composer;I)V",
        "navigation-compose_release",
        "dialogBackStack",
        "",
        "transitionInProgress",
        ""
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
.method public static final DialogHost(Landroidx/navigation/compose/DialogNavigator;Landroidx/compose/runtime/Composer;I)V
    .locals 26
    .param p0, "dialogNavigator"    # Landroidx/navigation/compose/DialogNavigator;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    .line 41
    move-object/from16 v6, p0

    move/from16 v7, p2

    const v0, 0x118f13d0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v14

    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(DialogHost)41@1668L29,42@1751L16,43@1795L36,44@1853L36,46@1960L16,47@2004L52,73@3243L260,73@3188L315:DialogHost.kt#opm8kd"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p2

    .local v1, "$dirty":I
    and-int/lit8 v2, v7, 0xe

    const/4 v3, 0x2

    if-nez v2, :cond_1

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    move v15, v1

    .end local v1    # "$dirty":I
    .local v15, "$dirty":I
    and-int/lit8 v1, v15, 0xb

    if-ne v1, v3, :cond_3

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 82
    :cond_2
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_6

    .line 41
    :cond_3
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    const-string v2, "androidx.navigation.compose.DialogHost (DialogHost.kt:40)"

    invoke-static {v0, v15, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 42
    :cond_4
    const/4 v0, 0x0

    invoke-static {v14, v0}, Landroidx/compose/runtime/saveable/SaveableStateHolderKt;->rememberSaveableStateHolder(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/saveable/SaveableStateHolder;

    move-result-object v16

    .line 43
    .local v16, "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/compose/DialogNavigator;->getBackStack$navigation_compose_release()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    const/4 v13, 0x0

    const/16 v2, 0x8

    const/4 v12, 0x1

    invoke-static {v1, v13, v14, v2, v12}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v17

    .line 44
    .local v17, "dialogBackStack$delegate":Landroidx/compose/runtime/State;
    invoke-static/range {v17 .. v17}, Landroidx/navigation/compose/DialogHostKt;->DialogHost$lambda$0(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1, v14, v2}, Landroidx/navigation/compose/DialogHostKt;->rememberVisibleList(Ljava/util/Collection;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object v18

    .line 45
    .local v18, "visibleBackStack":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    move-object/from16 v1, v18

    check-cast v1, Ljava/util/List;

    invoke-static/range {v17 .. v17}, Landroidx/navigation/compose/DialogHostKt;->DialogHost$lambda$0(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    const/16 v4, 0x40

    invoke-static {v1, v3, v14, v4}, Landroidx/navigation/compose/DialogHostKt;->PopulateVisibleList(Ljava/util/List;Ljava/util/Collection;Landroidx/compose/runtime/Composer;I)V

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/compose/DialogNavigator;->getTransitionInProgress$navigation_compose_release()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-static {v1, v13, v14, v2, v12}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v11

    .line 48
    .local v11, "transitionInProgress$delegate":Landroidx/compose/runtime/State;
    nop

    .local v0, "$changed$iv":I
    const/4 v1, 0x0

    .local v1, "$i$f$remember":I
    const v2, -0x1d58f75c

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v14, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 138
    const/4 v2, 0x0

    .local v2, "invalid$iv$iv":Z
    move-object v3, v14

    .local v3, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 139
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 140
    .local v8, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v5, v9, :cond_5

    .line 141
    const/4 v9, 0x0

    .line 48
    .local v9, "$i$a$-remember-DialogHostKt$DialogHost$dialogsToDispose$1":I
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateListOf()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object v9

    .line 141
    .end local v9    # "$i$a$-remember-DialogHostKt$DialogHost$dialogsToDispose$1":I
    nop

    .line 142
    .local v9, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 143
    nop

    .end local v9    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_2

    .line 144
    :cond_5
    move-object v9, v5

    .line 140
    :goto_2
    nop

    .line 139
    .end local v5    # "it$iv$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 138
    .end local v2    # "invalid$iv$iv":Z
    .end local v3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 48
    .end local v0    # "$changed$iv":I
    .end local v1    # "$i$f$remember":I
    move-object v10, v9

    check-cast v10, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .local v10, "dialogsToDispose":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const v0, 0x342a505e

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "*51@2183L736"

    invoke-static {v14, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 50
    move-object/from16 v19, v18

    check-cast v19, Ljava/lang/Iterable;

    .local v19, "$this$forEach$iv":Ljava/lang/Iterable;
    const/16 v20, 0x0

    .line 145
    .local v20, "$i$f$forEach":I
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    .local v22, "element$iv":Ljava/lang/Object;
    move-object/from16 v9, v22

    check-cast v9, Landroidx/navigation/NavBackStackEntry;

    .local v9, "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    const/16 v23, 0x0

    .line 51
    .local v23, "$i$a$-forEach-DialogHostKt$DialogHost$1":I
    invoke-virtual {v9}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.navigation.compose.DialogNavigator.Destination"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v24, v0

    check-cast v24, Landroidx/navigation/compose/DialogNavigator$Destination;

    .line 52
    .local v24, "destination":Landroidx/navigation/compose/DialogNavigator$Destination;
    new-instance v0, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$1;

    invoke-direct {v0, v6, v9}, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$1;-><init>(Landroidx/navigation/compose/DialogNavigator;Landroidx/navigation/NavBackStackEntry;)V

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 54
    invoke-virtual/range {v24 .. v24}, Landroidx/navigation/compose/DialogNavigator$Destination;->getDialogProperties$navigation_compose_release()Landroidx/compose/ui/window/DialogProperties;

    move-result-object v25

    .line 55
    new-instance v5, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2;

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v16

    move-object v3, v10

    move-object/from16 v4, p0

    move-object v13, v5

    move-object/from16 v5, v24

    invoke-direct/range {v0 .. v5}, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2;-><init>(Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/saveable/SaveableStateHolder;Landroidx/compose/runtime/snapshots/SnapshotStateList;Landroidx/navigation/compose/DialogNavigator;Landroidx/navigation/compose/DialogNavigator$Destination;)V

    const v0, 0x43541ebc

    invoke-static {v14, v0, v12, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/16 v1, 0x180

    const/4 v13, 0x0

    .line 52
    move-object v2, v9

    .end local v9    # "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    .local v2, "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    move-object/from16 v9, v25

    .end local v10    # "dialogsToDispose":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .local v3, "dialogsToDispose":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    move-object v10, v0

    move-object v0, v11

    .end local v11    # "transitionInProgress$delegate":Landroidx/compose/runtime/State;
    .local v0, "transitionInProgress$delegate":Landroidx/compose/runtime/State;
    move-object v11, v14

    move v4, v12

    move v12, v1

    const/4 v1, 0x0

    invoke-static/range {v8 .. v13}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->Dialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 70
    nop

    .line 145
    .end local v2    # "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    .end local v23    # "$i$a$-forEach-DialogHostKt$DialogHost$1":I
    .end local v24    # "destination":Landroidx/navigation/compose/DialogNavigator$Destination;
    move-object v11, v0

    move-object v13, v1

    move-object v10, v3

    move v12, v4

    .end local v22    # "element$iv":Ljava/lang/Object;
    goto :goto_3

    .line 146
    .end local v0    # "transitionInProgress$delegate":Landroidx/compose/runtime/State;
    .end local v3    # "dialogsToDispose":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v10    # "dialogsToDispose":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v11    # "transitionInProgress$delegate":Landroidx/compose/runtime/State;
    :cond_6
    move-object v3, v10

    move-object v0, v11

    move-object v1, v13

    .end local v10    # "dialogsToDispose":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v11    # "transitionInProgress$delegate":Landroidx/compose/runtime/State;
    .end local v19    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v20    # "$i$f$forEach":I
    .restart local v0    # "transitionInProgress$delegate":Landroidx/compose/runtime/State;
    .restart local v3    # "dialogsToDispose":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 74
    invoke-static {v0}, Landroidx/navigation/compose/DialogHostKt;->DialogHost$lambda$1(Landroidx/compose/runtime/State;)Ljava/util/Set;

    move-result-object v2

    shl-int/lit8 v4, v15, 0x3

    and-int/lit8 v4, v4, 0x70

    or-int/lit16 v4, v4, 0x180

    .local v4, "$changed$iv":I
    const/4 v5, 0x0

    .local v5, "$i$f$remember":I
    const v8, 0x607fb4c4

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v8, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {v14, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 147
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 148
    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    .line 147
    or-int/2addr v8, v9

    .line 149
    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    .line 147
    or-int/2addr v8, v9

    .line 150
    nop

    .local v8, "invalid$iv$iv":Z
    move-object v9, v14

    .local v9, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 151
    .local v10, "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 152
    .local v12, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v8, :cond_8

    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v11, v13, :cond_7

    goto :goto_4

    .line 156
    :cond_7
    move/from16 v19, v4

    move-object v1, v11

    goto :goto_5

    .line 153
    :cond_8
    :goto_4
    const/4 v13, 0x0

    .line 74
    .local v13, "$i$a$-remember-DialogHostKt$DialogHost$2":I
    move/from16 v19, v4

    .end local v4    # "$changed$iv":I
    .local v19, "$changed$iv":I
    new-instance v4, Landroidx/navigation/compose/DialogHostKt$DialogHost$2$1;

    invoke-direct {v4, v0, v6, v3, v1}, Landroidx/navigation/compose/DialogHostKt$DialogHost$2$1;-><init>(Landroidx/compose/runtime/State;Landroidx/navigation/compose/DialogNavigator;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 153
    .end local v13    # "$i$a$-remember-DialogHostKt$DialogHost$2":I
    move-object v1, v4

    .line 154
    .local v1, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 155
    nop

    .line 152
    .end local v1    # "value$iv$iv":Ljava/lang/Object;
    :goto_5
    nop

    .line 151
    .end local v11    # "it$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 150
    .end local v8    # "invalid$iv$iv":Z
    .end local v9    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$cache":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v5    # "$i$f$remember":I
    .end local v19    # "$changed$iv":I
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 74
    const/16 v4, 0x238

    invoke-static {v2, v3, v1, v14, v4}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 82
    .end local v0    # "transitionInProgress$delegate":Landroidx/compose/runtime/State;
    .end local v3    # "dialogsToDispose":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v16    # "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    .end local v17    # "dialogBackStack$delegate":Landroidx/compose/runtime/State;
    .end local v18    # "visibleBackStack":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :cond_9
    :goto_6
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    new-instance v1, Landroidx/navigation/compose/DialogHostKt$DialogHost$3;

    invoke-direct {v1, v6, v7}, Landroidx/navigation/compose/DialogHostKt$DialogHost$3;-><init>(Landroidx/navigation/compose/DialogNavigator;I)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_7
    return-void
.end method

.method private static final DialogHost$lambda$0(Landroidx/compose/runtime/State;)Ljava/util/List;
    .locals 4
    .param p0, "$dialogBackStack$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 171
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/util/List;

    .line 43
    return-object v0
.end method

.method private static final DialogHost$lambda$1(Landroidx/compose/runtime/State;)Ljava/util/Set;
    .locals 4
    .param p0, "$transitionInProgress$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/Set<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;)",
            "Ljava/util/Set<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 172
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/util/Set;

    .line 47
    return-object v0
.end method

.method public static final PopulateVisibleList(Ljava/util/List;Ljava/util/Collection;Landroidx/compose/runtime/Composer;I)V
    .locals 10
    .param p0, "$this$PopulateVisibleList"    # Ljava/util/List;
    .param p1, "backStack"    # Ljava/util/Collection;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Ljava/util/Collection<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 87
    const v0, 0x5baa69c3

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    const-string v1, "C(PopulateVisibleList)87@3676L7,*89@3725L1023:DialogHost.kt#opm8kd"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.navigation.compose.PopulateVisibleList (DialogHost.kt:86)"

    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 88
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectionModeKt;->getLocalInspectionMode()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .line 157
    .local v2, "$i$f$getCurrent":I
    const v3, 0x789c5f52

    const-string v4, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {p2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 88
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$getCurrent":I
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 89
    .local v0, "isInspecting":Z
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 158
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .local v5, "entry":Landroidx/navigation/NavBackStackEntry;
    const/4 v6, 0x0

    .line 90
    .local v6, "$i$a$-forEach-DialogHostKt$PopulateVisibleList$1":I
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v7

    new-instance v8, Landroidx/navigation/compose/DialogHostKt$PopulateVisibleList$1$1;

    invoke-direct {v8, v5, v0, p0}, Landroidx/navigation/compose/DialogHostKt$PopulateVisibleList$1$1;-><init>(Landroidx/navigation/NavBackStackEntry;ZLjava/util/List;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/16 v9, 0x8

    invoke-static {v7, v8, p2, v9}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 114
    nop

    .line 158
    .end local v5    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v6    # "$i$a$-forEach-DialogHostKt$PopulateVisibleList$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 159
    :cond_1
    nop

    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Landroidx/navigation/compose/DialogHostKt$PopulateVisibleList$2;

    invoke-direct {v2, p0, p1, p3}, Landroidx/navigation/compose/DialogHostKt$PopulateVisibleList$2;-><init>(Ljava/util/List;Ljava/util/Collection;I)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 115
    :goto_1
    return-void
.end method

.method public static final synthetic access$DialogHost$lambda$1(Landroidx/compose/runtime/State;)Ljava/util/Set;
    .locals 1
    .param p0, "$transitionInProgress$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/navigation/compose/DialogHostKt;->DialogHost$lambda$1(Landroidx/compose/runtime/State;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static final rememberVisibleList(Ljava/util/Collection;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .locals 24
    .param p0, "backStack"    # Ljava/util/Collection;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x1bdba1c5

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C(rememberVisibleList)121@4964L7,122@4983L399:DialogHost.kt#opm8kd"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    const/4 v3, -0x1

    const-string v4, "androidx.navigation.compose.rememberVisibleList (DialogHost.kt:119)"

    move/from16 v5, p2

    invoke-static {v2, v5, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_0

    .line 0
    :cond_0
    move/from16 v5, p2

    .line 122
    :goto_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectionModeKt;->getLocalInspectionMode()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    .local v2, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v3, 0x0

    .local v3, "$changed$iv":I
    const/4 v4, 0x0

    .line 160
    .local v4, "$i$f$getCurrent":I
    const v6, 0x789c5f52

    const-string v7, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v1, v6, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 122
    .end local v2    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v3    # "$changed$iv":I
    .end local v4    # "$i$f$getCurrent":I
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 123
    .local v2, "isInspecting":Z
    const/16 v3, 0x8

    .restart local v3    # "$changed$iv":I
    const/4 v4, 0x0

    .local v4, "$i$f$remember":I
    const v6, 0x44faf204

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v1, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 161
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    .local v6, "invalid$iv$iv":Z
    move-object/from16 v7, p1

    .local v7, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 162
    .local v8, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 163
    .local v10, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v6, :cond_2

    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v9, v11, :cond_1

    goto :goto_1

    .line 170
    :cond_1
    move/from16 v23, v2

    move-object v0, v9

    goto/16 :goto_5

    .line 164
    :cond_2
    :goto_1
    const/4 v11, 0x0

    .line 124
    .local v11, "$i$a$-remember-DialogHostKt$rememberVisibleList$1":I
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateListOf()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object v12

    move-object v13, v12

    .local v13, "it":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v14, 0x0

    .line 125
    .local v14, "$i$a$-also-DialogHostKt$rememberVisibleList$1$1":I
    nop

    .line 126
    move-object v15, v0

    check-cast v15, Ljava/lang/Iterable;

    .local v15, "$this$filter$iv":Ljava/lang/Iterable;
    const/16 v16, 0x0

    .line 165
    .local v16, "$i$f$filter":I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    check-cast v17, Ljava/util/Collection;

    .local v17, "destination$iv$iv":Ljava/util/Collection;
    move-object/from16 v18, v15

    .local v18, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    move-object/from16 v19, v17

    .end local v17    # "destination$iv$iv":Ljava/util/Collection;
    .local v19, "destination$iv$iv":Ljava/util/Collection;
    const/16 v17, 0x0

    .line 166
    .local v17, "$i$f$filterTo":I
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v21, v0

    check-cast v21, Landroidx/navigation/NavBackStackEntry;

    .local v21, "entry":Landroidx/navigation/NavBackStackEntry;
    const/16 v22, 0x0

    .line 127
    .local v22, "$i$a$-filter-DialogHostKt$rememberVisibleList$1$1$1":I
    if-eqz v2, :cond_3

    .line 128
    const/16 v23, 0x1

    move/from16 v1, v23

    move/from16 v23, v2

    goto :goto_3

    .line 130
    :cond_3
    invoke-virtual/range {v21 .. v21}, Landroidx/navigation/NavBackStackEntry;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    move/from16 v23, v2

    .end local v2    # "isInspecting":Z
    .local v23, "isInspecting":Z
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v1

    .line 127
    :goto_3
    nop

    .line 166
    .end local v21    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v22    # "$i$a$-filter-DialogHostKt$rememberVisibleList$1$1$1":I
    if-eqz v1, :cond_4

    move-object/from16 v1, v19

    .end local v19    # "destination$iv$iv":Ljava/util/Collection;
    .local v1, "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .end local v1    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v19    # "destination$iv$iv":Ljava/util/Collection;
    :cond_4
    move-object/from16 v1, v19

    .end local v19    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v1    # "destination$iv$iv":Ljava/util/Collection;
    :goto_4
    move-object/from16 v0, p0

    move/from16 v2, v23

    move-object/from16 v1, p1

    goto :goto_2

    .line 167
    .end local v0    # "element$iv$iv":Ljava/lang/Object;
    .end local v1    # "destination$iv$iv":Ljava/util/Collection;
    .end local v23    # "isInspecting":Z
    .restart local v2    # "isInspecting":Z
    .restart local v19    # "destination$iv$iv":Ljava/util/Collection;
    :cond_5
    move/from16 v23, v2

    move-object/from16 v1, v19

    .end local v2    # "isInspecting":Z
    .end local v17    # "$i$f$filterTo":I
    .end local v18    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v19    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v23    # "isInspecting":Z
    move-object v0, v1

    check-cast v0, Ljava/util/List;

    .line 165
    nop

    .end local v15    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v16    # "$i$f$filter":I
    check-cast v0, Ljava/util/Collection;

    .line 125
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->addAll(Ljava/util/Collection;)Z

    .line 134
    nop

    .line 124
    .end local v13    # "it":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v14    # "$i$a$-also-DialogHostKt$rememberVisibleList$1$1":I
    nop

    .line 164
    .end local v11    # "$i$a$-remember-DialogHostKt$rememberVisibleList$1":I
    move-object v0, v12

    .line 168
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 169
    nop

    .line 163
    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    :goto_5
    nop

    .line 162
    .end local v9    # "it$iv$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 161
    .end local v6    # "invalid$iv$iv":Z
    .end local v7    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 123
    .end local v3    # "$changed$iv":I
    .end local v4    # "$i$f$remember":I
    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method
