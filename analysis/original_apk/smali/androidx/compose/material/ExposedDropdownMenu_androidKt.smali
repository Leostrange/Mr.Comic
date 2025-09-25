.class public final Landroidx/compose/material/ExposedDropdownMenu_androidKt;
.super Ljava/lang/Object;
.source "ExposedDropdownMenu.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExposedDropdownMenu.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExposedDropdownMenu.android.kt\nandroidx/compose/material/ExposedDropdownMenu_androidKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 7 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 8 Composer.kt\nandroidx/compose/runtime/Updater\n+ 9 SnapshotIntState.kt\nandroidx/compose/runtime/SnapshotIntStateKt__SnapshotIntStateKt\n*L\n1#1,740:1\n74#2:741\n74#2:742\n25#3:743\n25#3:750\n25#3:758\n67#3,3:765\n66#3:768\n25#3:775\n456#3,8:805\n464#3,3:819\n467#3,3:823\n1116#4,6:744\n1116#4,6:751\n1116#4,6:759\n1116#4,6:769\n1116#4,6:776\n1116#4,6:782\n1116#4,6:828\n1#5:757\n68#6,6:788\n74#6:822\n78#6:827\n79#7,11:794\n92#7:826\n3737#8,6:813\n75#9:834\n108#9,2:835\n75#9:837\n108#9,2:838\n*S KotlinDebug\n*F\n+ 1 ExposedDropdownMenu.android.kt\nandroidx/compose/material/ExposedDropdownMenu_androidKt\n*L\n97#1:741\n98#1:742\n99#1:743\n100#1:750\n102#1:758\n104#1:765,3\n104#1:768\n117#1:775\n119#1:805,8\n119#1:819,3\n119#1:823,3\n99#1:744,6\n100#1:751,6\n102#1:759,6\n104#1:769,6\n117#1:776,6\n131#1:782,6\n138#1:828,6\n119#1:788,6\n119#1:822\n119#1:827\n119#1:794,11\n119#1:826\n119#1:813,6\n99#1:834\n99#1:835,2\n100#1:837\n100#1:838,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u001aQ\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u001c\u0010\u0008\u001a\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0002\u0008\n\u00a2\u0006\u0002\u0008\u000bH\u0007\u00a2\u0006\u0002\u0010\u000c\u001a6\u0010\r\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00010\u0005H\u0002\u001a\"\u0010\u0015\u001a\u00020\u0007*\u00020\u00072\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002\u00a8\u0006\u0019\u00b2\u0006\n\u0010\u001a\u001a\u00020\u0013X\u008a\u008e\u0002\u00b2\u0006\n\u0010\u001b\u001a\u00020\u0013X\u008a\u008e\u0002"
    }
    d2 = {
        "ExposedDropdownMenuBox",
        "",
        "expanded",
        "",
        "onExpandedChange",
        "Lkotlin/Function1;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "content",
        "Landroidx/compose/material/ExposedDropdownMenuBoxScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "updateHeight",
        "view",
        "Landroid/view/View;",
        "coordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "verticalMarginInPx",
        "",
        "onHeightUpdate",
        "expandable",
        "Lkotlin/Function0;",
        "menuLabel",
        "",
        "material_release",
        "width",
        "menuHeight"
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
.method public static final ExposedDropdownMenuBox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 36
    .param p0, "expanded"    # Z
    .param p1, "onExpandedChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "content"    # Lkotlin/jvm/functions/Function3;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material/ExposedDropdownMenuBoxScope;",
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

    .line 96
    move/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move/from16 v10, p5

    const v0, -0x24d3f42d

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(ExposedDropdownMenuBox)P(1,3,2)96@4191L7,97@4224L7,98@4249L33,99@4305L33,101@4439L37,103@4494L486,116@5006L29,131@5474L38,118@5041L550,137@5597L70,141@5673L441:ExposedDropdownMenu.android.kt#jmzs0o"

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

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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

    .line 155
    :cond_c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v17, v3

    goto/16 :goto_17

    .line 96
    :cond_d
    :goto_8
    if-eqz v2, :cond_e

    .line 94
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_9

    .line 96
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_e
    move-object v1, v3

    .line 94
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v1    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 96
    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.material.ExposedDropdownMenuBox (ExposedDropdownMenu.android.kt:95)"

    invoke-static {v0, v12, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 97
    :cond_f
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v2, 0x0

    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .line 741
    .local v3, "$i$f$getCurrent":I
    const v4, 0x789c5f52

    const-string v5, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v11, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 97
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v2    # "$changed$iv":I
    .end local v3    # "$i$f$getCurrent":I
    move-object v0, v6

    check-cast v0, Landroidx/compose/ui/unit/Density;

    .line 98
    .local v0, "density":Landroidx/compose/ui/unit/Density;
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    .local v2, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v3, 0x0

    .local v3, "$changed$iv":I
    const/4 v6, 0x0

    .line 742
    .local v6, "$i$f$getCurrent":I
    invoke-static {v11, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 98
    .end local v2    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v3    # "$changed$iv":I
    .end local v6    # "$i$f$getCurrent":I
    move-object v2, v4

    check-cast v2, Landroid/view/View;

    .line 99
    .local v2, "view":Landroid/view/View;
    const/4 v3, 0x0

    move v4, v3

    .local v4, "$changed$iv":I
    const/4 v5, 0x0

    .local v5, "$i$f$remember":I
    const v6, -0x1d58f75c

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v11, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 743
    const/4 v14, 0x0

    .local v14, "invalid$iv$iv":Z
    move-object v15, v11

    .local v15, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 744
    .local v16, "$i$f$cache":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 745
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v6, v3, :cond_10

    .line 746
    const/4 v3, 0x0

    .line 99
    .local v3, "$i$a$-remember-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$width$2":I
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v3

    .line 746
    .end local v3    # "$i$a$-remember-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$width$2":I
    nop

    .line 747
    .local v3, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 748
    nop

    .end local v3    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_a

    .line 749
    :cond_10
    move-object v3, v6

    .line 745
    :goto_a
    nop

    .line 744
    .end local v6    # "it$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 743
    .end local v14    # "invalid$iv$iv":Z
    .end local v15    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 99
    .end local v4    # "$changed$iv":I
    .end local v5    # "$i$f$remember":I
    check-cast v3, Landroidx/compose/runtime/MutableIntState;

    .line 100
    .local v3, "width$delegate":Landroidx/compose/runtime/MutableIntState;
    const/4 v4, 0x0

    move v5, v4

    .local v5, "$changed$iv":I
    const/4 v4, 0x0

    const v6, -0x1d58f75c

    .local v4, "$i$f$remember":I
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v11, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 750
    const/4 v6, 0x0

    .local v6, "invalid$iv$iv":Z
    move-object v14, v11

    .local v14, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 751
    .local v15, "$i$f$cache":I
    move/from16 v16, v4

    .end local v4    # "$i$f$remember":I
    .local v16, "$i$f$remember":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 752
    .restart local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v19, v5

    .end local v5    # "$changed$iv":I
    .local v19, "$changed$iv":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_11

    .line 753
    const/4 v5, 0x0

    .line 100
    .local v5, "$i$a$-remember-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$menuHeight$2":I
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v5

    .line 753
    .end local v5    # "$i$a$-remember-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$menuHeight$2":I
    nop

    .line 754
    .local v5, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 755
    nop

    .end local v5    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_b

    .line 756
    :cond_11
    move-object v5, v4

    .line 752
    :goto_b
    nop

    .line 751
    .end local v4    # "it$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 750
    .end local v6    # "invalid$iv$iv":Z
    .end local v14    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$f$cache":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 100
    .end local v16    # "$i$f$remember":I
    .end local v19    # "$changed$iv":I
    move-object v4, v5

    check-cast v4, Landroidx/compose/runtime/MutableIntState;

    .line 101
    .local v4, "menuHeight$delegate":Landroidx/compose/runtime/MutableIntState;
    move-object v5, v0

    .line 757
    .local v5, "$this$ExposedDropdownMenuBox_u24lambda_u246":Landroidx/compose/ui/unit/Density;
    const/4 v6, 0x0

    .line 101
    .local v6, "$i$a$-with-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$verticalMarginInPx$1":I
    invoke-static {}, Landroidx/compose/material/MenuKt;->getMenuVerticalMargin()F

    move-result v14

    invoke-interface {v5, v14}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v5

    .line 102
    .end local v6    # "$i$a$-with-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$verticalMarginInPx$1":I
    .local v5, "verticalMarginInPx":I
    const/4 v6, 0x0

    move v14, v6

    .local v14, "$changed$iv":I
    const/4 v6, 0x0

    const v15, -0x1d58f75c

    .local v6, "$i$f$remember":I
    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v11, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 758
    const/4 v15, 0x0

    .local v15, "invalid$iv$iv":Z
    move-object/from16 v16, v11

    .local v16, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 759
    .local v17, "$i$f$cache":I
    move/from16 v18, v6

    .end local v6    # "$i$f$remember":I
    .local v18, "$i$f$remember":I
    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 760
    .local v19, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v6, v10, :cond_12

    .line 761
    const/4 v10, 0x0

    .line 102
    .local v10, "$i$a$-remember-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$coordinates$1":I
    new-instance v20, Landroidx/compose/ui/node/Ref;

    invoke-direct/range {v20 .. v20}, Landroidx/compose/ui/node/Ref;-><init>()V

    .line 761
    .end local v10    # "$i$a$-remember-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$coordinates$1":I
    move-object/from16 v10, v20

    .line 762
    .local v10, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 v20, v6

    move-object/from16 v6, v16

    .end local v16    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v6, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v20, "it$iv$iv":Ljava/lang/Object;
    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 763
    nop

    .end local v10    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_c

    .line 764
    .end local v20    # "it$iv$iv":Ljava/lang/Object;
    .local v6, "it$iv$iv":Ljava/lang/Object;
    .restart local v16    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_12
    move-object/from16 v20, v6

    move-object/from16 v6, v16

    .end local v16    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v6, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v20    # "it$iv$iv":Ljava/lang/Object;
    move-object/from16 v10, v20

    .line 760
    :goto_c
    nop

    .line 759
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v20    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 758
    .end local v6    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "invalid$iv$iv":Z
    .end local v17    # "$i$f$cache":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 102
    .end local v14    # "$changed$iv":I
    .end local v18    # "$i$f$remember":I
    move-object v6, v10

    check-cast v6, Landroidx/compose/ui/node/Ref;

    .line 104
    .local v6, "coordinates":Landroidx/compose/ui/node/Ref;
    invoke-static {v4}, Landroidx/compose/material/ExposedDropdownMenu_androidKt;->ExposedDropdownMenuBox$lambda$4(Landroidx/compose/runtime/MutableIntState;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .local v10, "key2$iv":Ljava/lang/Object;
    invoke-static {v3}, Landroidx/compose/material/ExposedDropdownMenu_androidKt;->ExposedDropdownMenuBox$lambda$1(Landroidx/compose/runtime/MutableIntState;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .local v14, "key3$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .local v15, "$changed$iv":I
    const/16 v16, 0x0

    move/from16 v17, v15

    .end local v15    # "$changed$iv":I
    .local v16, "$i$f$remember":I
    .local v17, "$changed$iv":I
    const v15, 0x607fb4c4

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v15, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {v11, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 765
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    .line 766
    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    .line 765
    or-int v15, v15, v18

    .line 767
    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    .line 765
    or-int v15, v15, v18

    .line 768
    move-object/from16 v18, v11

    .local v15, "invalid$iv$iv":Z
    .local v18, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 769
    .local v19, "$i$f$cache":I
    move-object/from16 v20, v10

    .end local v10    # "key2$iv":Ljava/lang/Object;
    .local v20, "key2$iv":Ljava/lang/Object;
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 770
    .local v21, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v15, :cond_14

    sget-object v22, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v23, v14

    .end local v14    # "key3$iv":Ljava/lang/Object;
    .local v23, "key3$iv":Ljava/lang/Object;
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v10, v14, :cond_13

    goto :goto_d

    .line 774
    :cond_13
    move-object/from16 v22, v10

    move-object/from16 v14, v18

    goto :goto_e

    .line 770
    .end local v23    # "key3$iv":Ljava/lang/Object;
    .restart local v14    # "key3$iv":Ljava/lang/Object;
    :cond_14
    move-object/from16 v23, v14

    .line 771
    .end local v14    # "key3$iv":Ljava/lang/Object;
    .restart local v23    # "key3$iv":Ljava/lang/Object;
    :goto_d
    const/4 v14, 0x0

    .line 105
    .local v14, "$i$a$-remember-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1":I
    move-object/from16 v22, v10

    .end local v10    # "it$iv$iv":Ljava/lang/Object;
    .local v22, "it$iv$iv":Ljava/lang/Object;
    new-instance v10, Landroidx/compose/material/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1$1;

    invoke-direct {v10, v0, v4, v3}, Landroidx/compose/material/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1$1;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;)V

    .line 771
    .end local v14    # "$i$a$-remember-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1":I
    nop

    .line 772
    .local v10, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 v14, v18

    .end local v18    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v14, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v14, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 773
    nop

    .line 770
    .end local v10    # "value$iv$iv":Ljava/lang/Object;
    :goto_e
    nop

    .line 769
    .end local v21    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v22    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 768
    .end local v14    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "invalid$iv$iv":Z
    .end local v19    # "$i$f$cache":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 104
    .end local v16    # "$i$f$remember":I
    .end local v17    # "$changed$iv":I
    .end local v20    # "key2$iv":Ljava/lang/Object;
    .end local v23    # "key3$iv":Ljava/lang/Object;
    check-cast v10, Landroidx/compose/material/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1$1;

    .line 117
    .local v10, "scope":Landroidx/compose/material/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1$1;
    const/4 v14, 0x0

    move v15, v14

    .local v15, "$changed$iv":I
    const/4 v14, 0x0

    move-object/from16 v19, v0

    const v0, -0x1d58f75c

    .end local v0    # "density":Landroidx/compose/ui/unit/Density;
    .local v14, "$i$f$remember":I
    .local v19, "density":Landroidx/compose/ui/unit/Density;
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v11, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 775
    const/4 v0, 0x0

    .local v0, "invalid$iv$iv":Z
    move-object v13, v11

    .local v13, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 776
    .local v16, "$i$f$cache":I
    move/from16 p2, v0

    .end local v0    # "invalid$iv$iv":Z
    .local p2, "invalid$iv$iv":Z
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 777
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v20, v14

    .end local v14    # "$i$f$remember":I
    .local v20, "$i$f$remember":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v0, v14, :cond_15

    .line 778
    const/4 v14, 0x0

    .line 117
    .local v14, "$i$a$-remember-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$focusRequester$1":I
    new-instance v18, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct/range {v18 .. v18}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 778
    .end local v14    # "$i$a$-remember-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$focusRequester$1":I
    move-object/from16 v14, v18

    .line 779
    .local v14, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 780
    nop

    .end local v14    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_f

    .line 781
    :cond_15
    move-object v14, v0

    .line 777
    :goto_f
    nop

    .line 776
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 775
    .end local v13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    .end local p2    # "invalid$iv$iv":Z
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 117
    .end local v15    # "$changed$iv":I
    .end local v20    # "$i$f$remember":I
    move-object v0, v14

    check-cast v0, Landroidx/compose/ui/focus/FocusRequester;

    .line 120
    .local v0, "focusRequester":Landroidx/compose/ui/focus/FocusRequester;
    new-instance v20, Landroidx/compose/material/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$1;

    move-object/from16 v13, v20

    move-object v14, v6

    move-object v15, v2

    move/from16 v16, v5

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-direct/range {v13 .. v18}, Landroidx/compose/material/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$1;-><init>(Landroidx/compose/ui/node/Ref;Landroid/view/View;ILandroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;)V

    move-object/from16 v13, v20

    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v13}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    const v14, 0x4a3de2ef    # 3111099.8f

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v15

    or-int/2addr v14, v15

    .line 131
    move-object v15, v11

    .local v14, "invalid$iv":Z
    .local v15, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 782
    .restart local v16    # "$i$f$cache":I
    move-object/from16 v17, v1

    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v17, "modifier":Landroidx/compose/ui/Modifier;
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 783
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v14, :cond_17

    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p2, v3

    .end local v3    # "width$delegate":Landroidx/compose/runtime/MutableIntState;
    .local p2, "width$delegate":Landroidx/compose/runtime/MutableIntState;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_16

    goto :goto_10

    .line 787
    :cond_16
    move-object/from16 v20, v1

    goto :goto_11

    .line 783
    .end local p2    # "width$delegate":Landroidx/compose/runtime/MutableIntState;
    .restart local v3    # "width$delegate":Landroidx/compose/runtime/MutableIntState;
    :cond_17
    move-object/from16 p2, v3

    .line 784
    .end local v3    # "width$delegate":Landroidx/compose/runtime/MutableIntState;
    .restart local p2    # "width$delegate":Landroidx/compose/runtime/MutableIntState;
    :goto_10
    const/4 v3, 0x0

    .line 131
    .local v3, "$i$a$-cache-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$2":I
    move-object/from16 v20, v1

    .end local v1    # "it$iv":Ljava/lang/Object;
    .local v20, "it$iv":Ljava/lang/Object;
    new-instance v1, Landroidx/compose/material/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$2$1;

    invoke-direct {v1, v8, v7}, Landroidx/compose/material/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$2$1;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 784
    .end local v3    # "$i$a$-cache-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$2":I
    nop

    .line 785
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 786
    nop

    .line 783
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_11
    nop

    .line 782
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v20    # "it$iv":Ljava/lang/Object;
    nop

    .line 131
    .end local v14    # "invalid$iv":Z
    .end local v15    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 132
    sget-object v3, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    invoke-virtual {v3}, Landroidx/compose/material/Strings$Companion;->getExposedDropdownMenu-UdPEhr4()I

    move-result v3

    const/4 v14, 0x6

    invoke-static {v3, v11, v14}, Landroidx/compose/material/Strings_androidKt;->getString-4foXLRw(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-static {v13, v1, v3}, Landroidx/compose/material/ExposedDropdownMenu_androidKt;->expandable(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 133
    invoke-static {v1, v0}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 119
    const/4 v3, 0x0

    .local v1, "modifier$iv":Landroidx/compose/ui/Modifier;
    move v13, v3

    .local v13, "$changed$iv":I
    const/4 v3, 0x0

    .local v3, "$i$f$Box":I
    const v15, 0x2bb5b5d7

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v15, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    invoke-static {v11, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 788
    sget-object v15, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v15

    .line 789
    .local v15, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v14, 0x0

    .line 792
    .local v14, "propagateMinConstraints$iv":Z
    shr-int/lit8 v18, v13, 0x3

    and-int/lit8 v18, v18, 0xe

    shr-int/lit8 v20, v13, 0x3

    and-int/lit8 v20, v20, 0x70

    move/from16 v21, v3

    .end local v3    # "$i$f$Box":I
    .local v21, "$i$f$Box":I
    or-int v3, v18, v20

    invoke-static {v15, v14, v11, v3}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    .local v3, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v18, v13, 0x3

    and-int/lit8 v18, v18, 0x70

    .line 793
    nop

    .local v18, "$changed$iv$iv":I
    const/16 v20, 0x0

    .local v20, "$i$f$Layout":I
    const v8, -0x4ee9b9da

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v8, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v11, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 794
    const/4 v8, 0x0

    invoke-static {v11, v8}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v22

    .line 795
    .local v22, "compositeKeyHash$iv$iv":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v8

    .line 797
    .local v8, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v23

    .line 804
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v24

    move-object/from16 v25, v1

    .end local v1    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v25, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v1, v18, 0x9

    and-int/lit16 v1, v1, 0x1c00

    const/16 v16, 0x6

    or-int/lit8 v1, v1, 0x6

    .line 796
    nop

    .local v1, "$changed$iv$iv$iv":I
    move-object/from16 v26, v23

    .local v26, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v23, v24

    .local v23, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v24, 0x0

    .line 805
    .local v24, "$i$f$ReusableComposeNode":I
    move/from16 v27, v14

    .end local v14    # "propagateMinConstraints$iv":Z
    .local v27, "propagateMinConstraints$iv":Z
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v14

    instance-of v14, v14, Landroidx/compose/runtime/Applier;

    if-nez v14, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 806
    :cond_18
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 807
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v14

    if-eqz v14, :cond_19

    .line 808
    move-object/from16 v14, v26

    .end local v26    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v14, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_12

    .line 810
    .end local v14    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v26    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_19
    move-object/from16 v14, v26

    .end local v26    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v14    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 812
    :goto_12
    move-object/from16 v26, v14

    .end local v14    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v26    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v14

    .local v14, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v28, 0x0

    .line 799
    .local v28, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v29, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v30, v15

    .end local v15    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v30, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    invoke-static {v14, v3, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 800
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    invoke-static {v14, v8, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 802
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    .local v15, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v29, 0x0

    .line 813
    .local v29, "$i$f$set-impl":I
    move-object/from16 v31, v14

    .local v31, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v32, 0x0

    .line 814
    .local v32, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v31 .. v31}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v33

    if-nez v33, :cond_1b

    move-object/from16 v33, v3

    .end local v3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v33, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v31 .. v31}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v34, v8

    .end local v8    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v34, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_13

    :cond_1a
    move-object/from16 v8, v31

    goto :goto_14

    .end local v33    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v34    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v8    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_1b
    move-object/from16 v33, v3

    move-object/from16 v34, v8

    .line 815
    .end local v3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v8    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v33    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v34    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_13
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v8, v31

    .end local v31    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v8, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 816
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v14, v3, v15}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 818
    :goto_14
    nop

    .line 813
    .end local v8    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v32    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 818
    nop

    .line 803
    .end local v15    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v29    # "$i$f$set-impl":I
    nop

    .line 812
    .end local v14    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v28    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 819
    invoke-static {v11}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v3

    shr-int/lit8 v8, v1, 0x3

    and-int/lit8 v8, v8, 0x70

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v14, v23

    .end local v23    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v14, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v14, v3, v11, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    const v3, 0x7ab4aae9

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 821
    shr-int/lit8 v3, v1, 0x9

    and-int/lit8 v3, v3, 0xe

    .local v3, "$changed$iv":I
    move-object v8, v11

    .local v8, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 822
    .local v15, "$i$a$-Layout-BoxKt$Box$1$iv":I
    move/from16 v23, v1

    .end local v1    # "$changed$iv$iv$iv":I
    .local v23, "$changed$iv$iv$iv":I
    const v1, -0x4ab8dd4f

    move/from16 v28, v3

    .end local v3    # "$changed$iv":I
    .local v28, "$changed$iv":I
    const-string v3, "C73@3426L9:Box.kt#2w3rfo"

    invoke-static {v8, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v3, v13, 0x6

    and-int/lit8 v3, v3, 0x70

    const/16 v16, 0x6

    or-int/lit8 v3, v3, 0x6

    .local v3, "$changed":I
    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    .local v1, "$this$ExposedDropdownMenuBox_u24lambda_u2411":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v16, v8

    .local v16, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v29, 0x0

    .line 135
    .local v29, "$i$a$-Box-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$3":I
    move-object/from16 v31, v1

    .end local v1    # "$this$ExposedDropdownMenuBox_u24lambda_u2411":Landroidx/compose/foundation/layout/BoxScope;
    .local v31, "$this$ExposedDropdownMenuBox_u24lambda_u2411":Landroidx/compose/foundation/layout/BoxScope;
    const v1, 0x5d08c0c2

    move/from16 v32, v3

    .end local v3    # "$changed":I
    .local v32, "$changed":I
    const-string v3, "C134@5576L9:ExposedDropdownMenu.android.kt#jmzs0o"

    move/from16 v35, v13

    move-object/from16 v13, v16

    .end local v16    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    .local v35, "$changed$iv":I
    invoke-static {v13, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    shr-int/lit8 v1, v12, 0x6

    and-int/lit8 v1, v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v10, v13, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 136
    nop

    .line 822
    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v29    # "$i$a$-Box-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$3":I
    .end local v31    # "$this$ExposedDropdownMenuBox_u24lambda_u2411":Landroidx/compose/foundation/layout/BoxScope;
    .end local v32    # "$changed":I
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 821
    .end local v8    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v28    # "$changed$iv":I
    nop

    .line 823
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 824
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 825
    nop

    .end local v14    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v23    # "$changed$iv$iv$iv":I
    .end local v24    # "$i$f$ReusableComposeNode":I
    .end local v26    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 826
    nop

    .end local v18    # "$changed$iv$iv":I
    .end local v20    # "$i$f$Layout":I
    .end local v22    # "compositeKeyHash$iv$iv":I
    .end local v34    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 827
    nop

    .end local v21    # "$i$f$Box":I
    .end local v25    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v27    # "propagateMinConstraints$iv":Z
    .end local v30    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v33    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v35    # "$changed$iv":I
    const v1, 0x4a3de3ae    # 3111147.5f

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v1

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 138
    move-object v3, v11

    .local v1, "invalid$iv":Z
    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 828
    .local v8, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 829
    .local v14, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_1d

    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v13, v15, :cond_1c

    goto :goto_15

    .line 833
    :cond_1c
    move/from16 v16, v1

    move-object v1, v13

    goto :goto_16

    .line 830
    :cond_1d
    :goto_15
    const/4 v15, 0x0

    .line 138
    .local v15, "$i$a$-cache-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$4":I
    move/from16 v16, v1

    .end local v1    # "invalid$iv":Z
    .local v16, "invalid$iv":Z
    new-instance v1, Landroidx/compose/material/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$4$1;

    invoke-direct {v1, v7, v0}, Landroidx/compose/material/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$4$1;-><init>(ZLandroidx/compose/ui/focus/FocusRequester;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 830
    .end local v15    # "$i$a$-cache-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$4":I
    nop

    .line 831
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 832
    nop

    .line 829
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_16
    nop

    .line 828
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 138
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache":I
    .end local v16    # "invalid$iv":Z
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v3, 0x0

    invoke-static {v1, v11, v3}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 142
    new-instance v1, Landroidx/compose/material/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$5;

    invoke-direct {v1, v2, v6, v5, v4}, Landroidx/compose/material/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$5;-><init>(Landroid/view/View;Landroidx/compose/ui/node/Ref;ILandroidx/compose/runtime/MutableIntState;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/16 v3, 0x8

    invoke-static {v2, v1, v11, v3}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 155
    .end local v0    # "focusRequester":Landroidx/compose/ui/focus/FocusRequester;
    .end local v2    # "view":Landroid/view/View;
    .end local v4    # "menuHeight$delegate":Landroidx/compose/runtime/MutableIntState;
    .end local v5    # "verticalMarginInPx":I
    .end local v6    # "coordinates":Landroidx/compose/ui/node/Ref;
    .end local v10    # "scope":Landroidx/compose/material/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1$1;
    .end local v19    # "density":Landroidx/compose/ui/unit/Density;
    .end local p2    # "width$delegate":Landroidx/compose/runtime/MutableIntState;
    :cond_1e
    :goto_17
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_1f

    new-instance v10, Landroidx/compose/material/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$6;

    move-object v0, v10

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    move-object/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$6;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;II)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1f
    return-void
.end method

.method private static final ExposedDropdownMenuBox$lambda$1(Landroidx/compose/runtime/MutableIntState;)I
    .locals 4
    .param p0, "$width$delegate"    # Landroidx/compose/runtime/MutableIntState;

    .line 99
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/IntState;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/IntState;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 834
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result v0

    .line 99
    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/IntState;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    return v0
.end method

.method private static final ExposedDropdownMenuBox$lambda$2(Landroidx/compose/runtime/MutableIntState;I)V
    .locals 4
    .param p0, "$width$delegate"    # Landroidx/compose/runtime/MutableIntState;
    .param p1, "value"    # I

    .line 99
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$setValue$iv":Landroidx/compose/runtime/MutableIntState;
    const/4 v3, 0x0

    .line 835
    .local v3, "$i$f$setValue":I
    invoke-interface {v2, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    .line 836
    nop

    .line 99
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$setValue$iv":Landroidx/compose/runtime/MutableIntState;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private static final ExposedDropdownMenuBox$lambda$4(Landroidx/compose/runtime/MutableIntState;)I
    .locals 4
    .param p0, "$menuHeight$delegate"    # Landroidx/compose/runtime/MutableIntState;

    .line 100
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/IntState;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/IntState;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 837
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result v0

    .line 100
    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/IntState;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    return v0
.end method

.method private static final ExposedDropdownMenuBox$lambda$5(Landroidx/compose/runtime/MutableIntState;I)V
    .locals 4
    .param p0, "$menuHeight$delegate"    # Landroidx/compose/runtime/MutableIntState;
    .param p1, "value"    # I

    .line 100
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$setValue$iv":Landroidx/compose/runtime/MutableIntState;
    const/4 v3, 0x0

    .line 838
    .local v3, "$i$f$setValue":I
    invoke-interface {v2, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    .line 839
    nop

    .line 100
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$setValue$iv":Landroidx/compose/runtime/MutableIntState;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method public static final synthetic access$ExposedDropdownMenuBox$lambda$1(Landroidx/compose/runtime/MutableIntState;)I
    .locals 1
    .param p0, "$width$delegate"    # Landroidx/compose/runtime/MutableIntState;

    .line 1
    invoke-static {p0}, Landroidx/compose/material/ExposedDropdownMenu_androidKt;->ExposedDropdownMenuBox$lambda$1(Landroidx/compose/runtime/MutableIntState;)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$ExposedDropdownMenuBox$lambda$2(Landroidx/compose/runtime/MutableIntState;I)V
    .locals 0
    .param p0, "$width$delegate"    # Landroidx/compose/runtime/MutableIntState;
    .param p1, "value"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/material/ExposedDropdownMenu_androidKt;->ExposedDropdownMenuBox$lambda$2(Landroidx/compose/runtime/MutableIntState;I)V

    return-void
.end method

.method public static final synthetic access$ExposedDropdownMenuBox$lambda$4(Landroidx/compose/runtime/MutableIntState;)I
    .locals 1
    .param p0, "$menuHeight$delegate"    # Landroidx/compose/runtime/MutableIntState;

    .line 1
    invoke-static {p0}, Landroidx/compose/material/ExposedDropdownMenu_androidKt;->ExposedDropdownMenuBox$lambda$4(Landroidx/compose/runtime/MutableIntState;)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$ExposedDropdownMenuBox$lambda$5(Landroidx/compose/runtime/MutableIntState;I)V
    .locals 0
    .param p0, "$menuHeight$delegate"    # Landroidx/compose/runtime/MutableIntState;
    .param p1, "value"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/material/ExposedDropdownMenu_androidKt;->ExposedDropdownMenuBox$lambda$5(Landroidx/compose/runtime/MutableIntState;I)V

    return-void
.end method

.method public static final synthetic access$updateHeight(Landroid/view/View;Landroidx/compose/ui/layout/LayoutCoordinates;ILkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "coordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .param p2, "verticalMarginInPx"    # I
    .param p3, "onHeightUpdate"    # Lkotlin/jvm/functions/Function1;

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/ExposedDropdownMenu_androidKt;->updateHeight(Landroid/view/View;Landroidx/compose/ui/layout/LayoutCoordinates;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final expandable(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)Landroidx/compose/ui/Modifier;
    .locals 5
    .param p0, "$this$expandable"    # Landroidx/compose/ui/Modifier;
    .param p1, "onExpandedChange"    # Lkotlin/jvm/functions/Function0;
    .param p2, "menuLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 520
    new-instance v0, Landroidx/compose/material/ExposedDropdownMenu_androidKt$expandable$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/compose/material/ExposedDropdownMenu_androidKt$expandable$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p1, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 530
    new-instance v2, Landroidx/compose/material/ExposedDropdownMenu_androidKt$expandable$2;

    invoke-direct {v2, p2, p1}, Landroidx/compose/material/ExposedDropdownMenu_androidKt$expandable$2;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v3, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 536
    return-object v0
.end method

.method private static final updateHeight(Landroid/view/View;Landroidx/compose/ui/layout/LayoutCoordinates;ILkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "coordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .param p2, "verticalMarginInPx"    # I
    .param p3, "onHeightUpdate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 544
    if-nez p1, :cond_0

    return-void

    .line 545
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, "it":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 546
    .local v1, "$i$a$-let-ExposedDropdownMenu_androidKt$updateHeight$visibleWindowBounds$1":I
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 547
    nop

    .line 545
    .end local v0    # "it":Landroid/graphics/Rect;
    .end local v1    # "$i$a$-let-ExposedDropdownMenu_androidKt$updateHeight$visibleWindowBounds$1":I
    nop

    .line 549
    .local v0, "visibleWindowBounds":Landroid/graphics/Rect;
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 551
    .local v1, "heightAbove":F
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v3

    sub-float/2addr v2, v3

    .line 550
    nop

    .line 552
    .local v2, "heightBelow":F
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    return-void
.end method
