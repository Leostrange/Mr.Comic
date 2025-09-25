.class public final Landroidx/compose/material3/internal/ExposedDropdownMenuPopup_androidKt;
.super Ljava/lang/Object;
.source "ExposedDropdownMenuPopup.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExposedDropdownMenuPopup.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExposedDropdownMenuPopup.android.kt\nandroidx/compose/material3/internal/ExposedDropdownMenuPopup_androidKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n+ 7 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,436:1\n74#2:437\n74#2:438\n74#2:439\n1116#3,6:440\n1116#3,6:446\n1116#3,6:452\n1116#3,6:458\n1116#3,6:464\n78#4,11:470\n91#4:501\n78#4,11:502\n91#4:533\n456#5,8:481\n464#5,6:495\n456#5,8:513\n464#5,6:527\n3737#6,6:489\n3737#6,6:521\n81#7:534\n81#7:535\n*S KotlinDebug\n*F\n+ 1 ExposedDropdownMenuPopup.android.kt\nandroidx/compose/material3/internal/ExposedDropdownMenuPopup_androidKt\n*L\n86#1:437\n87#1:438\n88#1:439\n94#1:440,6\n121#1:446,6\n134#1:452,6\n146#1:458,6\n157#1:464,6\n144#1:470,11\n144#1:501\n168#1:502,11\n168#1:533\n144#1:481,8\n144#1:495,6\n168#1:513,8\n168#1:527,6\n144#1:489,6\n168#1:521,6\n89#1:534\n92#1:535\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u001a:\u0010\u0000\u001a\u00020\u00012\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0011\u0010\u0006\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u0007H\u0001\u00a2\u0006\u0002\u0010\u0008\u001a+\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u000b2\u0013\u0008\u0008\u0010\u0006\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u0007H\u0083\u0008\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r\u00b2\u0006\n\u0010\u000e\u001a\u00020\u000fX\u008a\u0084\u0002\u00b2\u0006\u0015\u0010\u0010\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u0007X\u008a\u0084\u0002"
    }
    d2 = {
        "ExposedDropdownMenuPopup",
        "",
        "onDismissRequest",
        "Lkotlin/Function0;",
        "popupPositionProvider",
        "Landroidx/compose/ui/window/PopupPositionProvider;",
        "content",
        "Landroidx/compose/runtime/Composable;",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "SimpleStack",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "material3_release",
        "isTouchExplorationEnabled",
        "",
        "currentContent"
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
.method public static final ExposedDropdownMenuPopup(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 29
    .param p0, "onDismissRequest"    # Lkotlin/jvm/functions/Function0;
    .param p1, "popupPositionProvider"    # Landroidx/compose/ui/window/PopupPositionProvider;
    .param p2, "content"    # Lkotlin/jvm/functions/Function2;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/window/PopupPositionProvider;",
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

    .line 85
    move-object/from16 v6, p2

    move/from16 v7, p4

    const v0, -0x2b63c465

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(ExposedDropdownMenuPopup)P(1,2)85@3452L7,86@3491L7,87@3546L7,88@3591L23,90@3644L28,91@3699L29,92@3747L38,93@3808L964,120@4808L319,120@4778L349,133@5144L150,133@5133L161,145@5551L462,156@6020L99,143@5472L647:ExposedDropdownMenuPopup.android.kt#mqatfk"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p4

    .local v1, "$dirty":I
    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v4, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v7, 0x6

    if-nez v4, :cond_2

    move-object/from16 v4, p0

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v1, v5

    goto :goto_1

    :cond_2
    move-object/from16 v4, p0

    :goto_1
    and-int/lit8 v5, p5, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v5, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v7, 0x30

    if-nez v5, :cond_5

    move-object/from16 v5, p1

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x20

    goto :goto_2

    :cond_4
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v1, v8

    goto :goto_3

    :cond_5
    move-object/from16 v5, p1

    :goto_3
    and-int/lit8 v8, p5, 0x4

    if-eqz v8, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v8, v7, 0x180

    if-nez v8, :cond_8

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_4

    :cond_7
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v1, v8

    :cond_8
    :goto_5
    and-int/lit16 v8, v1, 0x93

    const/16 v9, 0x92

    if-ne v8, v9, :cond_a

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_6

    .line 161
    :cond_9
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v20, v1

    move-object/from16 v21, v4

    goto/16 :goto_17

    .line 85
    :cond_a
    :goto_6
    if-eqz v2, :cond_b

    .line 82
    const/4 v2, 0x0

    .end local p0    # "onDismissRequest":Lkotlin/jvm/functions/Function0;
    .local v2, "onDismissRequest":Lkotlin/jvm/functions/Function0;
    goto :goto_7

    .line 85
    .end local v2    # "onDismissRequest":Lkotlin/jvm/functions/Function0;
    .restart local p0    # "onDismissRequest":Lkotlin/jvm/functions/Function0;
    :cond_b
    move-object v2, v4

    .line 82
    .end local p0    # "onDismissRequest":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "onDismissRequest":Lkotlin/jvm/functions/Function0;
    :goto_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 85
    const/4 v4, -0x1

    const-string/jumbo v8, "androidx.compose.material3.internal.ExposedDropdownMenuPopup (ExposedDropdownMenuPopup.android.kt:84)"

    invoke-static {v0, v1, v4, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 86
    :cond_c
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v4, 0x0

    .local v4, "$changed$iv":I
    const/4 v8, 0x0

    .line 437
    .local v8, "$i$f$getCurrent":I
    const v9, 0x789c5f52

    const-string v10, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v15, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 86
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v4    # "$changed$iv":I
    .end local v8    # "$i$f$getCurrent":I
    move-object v0, v11

    check-cast v0, Landroid/view/View;

    .line 87
    .local v0, "view":Landroid/view/View;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/CompositionLocal;

    .local v4, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v8, 0x0

    .local v8, "$changed$iv":I
    const/4 v11, 0x0

    .line 438
    .local v11, "$i$f$getCurrent":I
    invoke-static {v15, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 87
    .end local v4    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v8    # "$changed$iv":I
    .end local v11    # "$i$f$getCurrent":I
    move-object v4, v12

    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 88
    .local v4, "density":Landroidx/compose/ui/unit/Density;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v8

    check-cast v8, Landroidx/compose/runtime/CompositionLocal;

    .local v8, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v11, 0x0

    .local v11, "$changed$iv":I
    const/4 v12, 0x0

    .line 439
    .local v12, "$i$f$getCurrent":I
    invoke-static {v15, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 88
    .end local v8    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v11    # "$changed$iv":I
    .end local v12    # "$i$f$getCurrent":I
    move-object v14, v9

    check-cast v14, Landroidx/compose/ui/unit/LayoutDirection;

    .line 89
    .local v14, "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    const/4 v13, 0x0

    invoke-static {v15, v13}, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt;->touchExplorationState(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v16

    .line 91
    .local v16, "isTouchExplorationEnabled$delegate":Landroidx/compose/runtime/State;
    invoke-static {v15, v13}, Landroidx/compose/runtime/ComposablesKt;->rememberCompositionContext(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/CompositionContext;

    move-result-object v12

    .line 92
    .local v12, "parentComposition":Landroidx/compose/runtime/CompositionContext;
    shr-int/lit8 v8, v1, 0x6

    and-int/lit8 v8, v8, 0xe

    invoke-static {v6, v15, v8}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v11

    .local v11, "currentContent$delegate":Landroidx/compose/runtime/State;
    new-array v8, v13, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 93
    sget-object v17, Landroidx/compose/material3/internal/ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$popupId$1;->INSTANCE:Landroidx/compose/material3/internal/ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$popupId$1;

    check-cast v17, Lkotlin/jvm/functions/Function0;

    const/16 v18, 0xc00

    const/16 v19, 0x6

    move-object v3, v11

    .end local v11    # "currentContent$delegate":Landroidx/compose/runtime/State;
    .local v3, "currentContent$delegate":Landroidx/compose/runtime/State;
    move-object/from16 v11, v17

    move-object/from16 v20, v12

    .end local v12    # "parentComposition":Landroidx/compose/runtime/CompositionContext;
    .local v20, "parentComposition":Landroidx/compose/runtime/CompositionContext;
    move-object v12, v15

    move/from16 v13, v18

    move-object v5, v14

    .end local v14    # "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    .local v5, "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    move/from16 v14, v19

    invoke-static/range {v8 .. v14}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v17, v8

    check-cast v17, Ljava/util/UUID;

    .line 94
    .local v17, "popupId":Ljava/util/UUID;
    invoke-static/range {v16 .. v16}, Landroidx/compose/material3/internal/ExposedDropdownMenuPopup_androidKt;->ExposedDropdownMenuPopup$lambda$0(Landroidx/compose/runtime/State;)Z

    move-result v8

    const v9, -0xeb260ea

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v14, "CC(remember):ExposedDropdownMenuPopup.android.kt#9igjgp"

    invoke-static {v15, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v8

    .local v8, "invalid$iv":Z
    move-object v13, v15

    .local v13, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move/from16 v18, v8

    .end local v8    # "invalid$iv":Z
    .local v18, "invalid$iv":Z
    const/16 v19, 0x0

    .line 440
    .local v19, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 441
    .local v22, "$i$a$-let-ComposerKt$cache$1$iv":I
    const/4 v11, 0x1

    if-nez v18, :cond_e

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v12, v8, :cond_d

    goto :goto_8

    .line 445
    :cond_d
    move-object/from16 p0, v0

    move v0, v11

    move-object/from16 v26, v12

    move-object v8, v13

    move-object/from16 v28, v14

    move-object/from16 v11, v20

    goto :goto_9

    .line 442
    :cond_e
    :goto_8
    const/16 v23, 0x0

    .line 95
    .local v23, "$i$a$-cache-ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$popupLayout$1":I
    new-instance v24, Landroidx/compose/material3/internal/PopupLayout;

    .line 96
    nop

    .line 97
    nop

    .line 98
    nop

    .line 99
    invoke-static/range {v16 .. v16}, Landroidx/compose/material3/internal/ExposedDropdownMenuPopup_androidKt;->ExposedDropdownMenuPopup$lambda$0(Landroidx/compose/runtime/State;)Z

    move-result v25

    .line 100
    nop

    .line 101
    nop

    .line 95
    move-object/from16 v8, v24

    move-object v9, v2

    move-object v10, v0

    move-object/from16 p0, v0

    move v0, v11

    .end local v0    # "view":Landroid/view/View;
    .local p0, "view":Landroid/view/View;
    move-object/from16 v11, p1

    move-object/from16 v26, v12

    .end local v12    # "it$iv":Ljava/lang/Object;
    .local v26, "it$iv":Ljava/lang/Object;
    move/from16 v12, v25

    move-object/from16 v27, v13

    .end local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v27, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move-object v13, v4

    move-object/from16 v28, v14

    move-object/from16 v14, v17

    invoke-direct/range {v8 .. v14}, Landroidx/compose/material3/internal/PopupLayout;-><init>(Lkotlin/jvm/functions/Function0;Landroid/view/View;Landroidx/compose/ui/window/PopupPositionProvider;ZLandroidx/compose/ui/unit/Density;Ljava/util/UUID;)V

    .line 102
    nop

    .local v8, "$this$ExposedDropdownMenuPopup_u24lambda_u243_u24lambda_u242":Landroidx/compose/material3/internal/PopupLayout;
    const/4 v9, 0x0

    .line 103
    .local v9, "$i$a$-apply-ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$popupLayout$1$1":I
    new-instance v10, Landroidx/compose/material3/internal/ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$popupLayout$1$1$1;

    invoke-direct {v10, v8, v3}, Landroidx/compose/material3/internal/ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$popupLayout$1$1$1;-><init>(Landroidx/compose/material3/internal/PopupLayout;Landroidx/compose/runtime/State;)V

    const v11, -0x1d6fba3b

    invoke-static {v11, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v10

    check-cast v10, Lkotlin/jvm/functions/Function2;

    move-object/from16 v11, v20

    .end local v20    # "parentComposition":Landroidx/compose/runtime/CompositionContext;
    .local v11, "parentComposition":Landroidx/compose/runtime/CompositionContext;
    invoke-virtual {v8, v11, v10}, Landroidx/compose/material3/internal/PopupLayout;->setContent(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V

    .line 118
    nop

    .line 102
    .end local v8    # "$this$ExposedDropdownMenuPopup_u24lambda_u243_u24lambda_u242":Landroidx/compose/material3/internal/PopupLayout;
    .end local v9    # "$i$a$-apply-ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$popupLayout$1$1":I
    nop

    .line 442
    .end local v23    # "$i$a$-cache-ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$popupLayout$1":I
    move-object/from16 v12, v24

    .line 443
    .local v12, "value$iv":Ljava/lang/Object;
    move-object/from16 v8, v27

    .end local v27    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v8, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 444
    nop

    .line 441
    .end local v12    # "value$iv":Ljava/lang/Object;
    :goto_9
    nop

    .line 440
    .end local v22    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v26    # "it$iv":Ljava/lang/Object;
    nop

    .line 94
    .end local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "invalid$iv":Z
    .end local v19    # "$i$f$cache":I
    move-object v8, v12

    check-cast v8, Landroidx/compose/material3/internal/PopupLayout;

    .local v8, "popupLayout":Landroidx/compose/material3/internal/PopupLayout;
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 121
    const v9, -0xeb25d02

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 v9, v28

    invoke-static {v15, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    and-int/lit8 v12, v1, 0xe

    const/4 v13, 0x4

    if-ne v12, v13, :cond_f

    move v13, v0

    goto :goto_a

    :cond_f
    const/4 v13, 0x0

    :goto_a
    or-int/2addr v10, v13

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v10, v12

    .local v10, "invalid$iv":Z
    move-object v12, v15

    .local v12, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 446
    .local v13, "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 447
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v10, :cond_11

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v14, v0, :cond_10

    goto :goto_b

    .line 451
    :cond_10
    move-object v0, v14

    goto :goto_c

    .line 448
    :cond_11
    :goto_b
    const/4 v0, 0x0

    .line 121
    .local v0, "$i$a$-cache-ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$1":I
    move/from16 v19, v0

    .end local v0    # "$i$a$-cache-ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$1":I
    .local v19, "$i$a$-cache-ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$1":I
    new-instance v0, Landroidx/compose/material3/internal/ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$1$1;

    invoke-direct {v0, v8, v2, v5}, Landroidx/compose/material3/internal/ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$1$1;-><init>(Landroidx/compose/material3/internal/PopupLayout;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/unit/LayoutDirection;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 448
    .end local v19    # "$i$a$-cache-ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$1":I
    nop

    .line 449
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 450
    nop

    .line 447
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_c
    nop

    .line 446
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 121
    .end local v10    # "invalid$iv":Z
    .end local v12    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v10, 0x0

    invoke-static {v8, v0, v15, v10}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    const v0, -0xeb25bb2

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    and-int/lit8 v12, v1, 0xe

    const/4 v13, 0x4

    if-ne v12, v13, :cond_12

    const/4 v13, 0x1

    goto :goto_d

    :cond_12
    move v13, v10

    :goto_d
    or-int/2addr v0, v13

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v0, v12

    .line 134
    move-object v12, v15

    .local v0, "invalid$iv":Z
    .restart local v12    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 452
    .restart local v13    # "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .restart local v14    # "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 453
    .restart local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_14

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v14, v10, :cond_13

    goto :goto_e

    .line 457
    :cond_13
    move/from16 p3, v0

    move-object v0, v14

    goto :goto_f

    .line 454
    :cond_14
    :goto_e
    const/4 v10, 0x0

    .line 134
    .local v10, "$i$a$-cache-ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$2":I
    move/from16 p3, v0

    .end local v0    # "invalid$iv":Z
    .local p3, "invalid$iv":Z
    new-instance v0, Landroidx/compose/material3/internal/ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$2$1;

    invoke-direct {v0, v8, v2, v5}, Landroidx/compose/material3/internal/ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$2$1;-><init>(Landroidx/compose/material3/internal/PopupLayout;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/unit/LayoutDirection;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 454
    .end local v10    # "$i$a$-cache-ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$2":I
    nop

    .line 455
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 456
    nop

    .line 453
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_f
    nop

    .line 452
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 134
    .end local v12    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    .end local p3    # "invalid$iv":Z
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v10, 0x0

    invoke-static {v0, v15, v10}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 146
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const v10, -0xeb25a1b

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    .local v10, "invalid$iv":Z
    move-object v12, v15

    .restart local v12    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 458
    .restart local v13    # "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .restart local v14    # "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 459
    .restart local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v10, :cond_16

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v20, v1

    .end local v1    # "$dirty":I
    .local v20, "$dirty":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v14, v1, :cond_15

    goto :goto_10

    .line 463
    :cond_15
    move-object v1, v14

    goto :goto_11

    .line 459
    .end local v20    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_16
    move/from16 v20, v1

    .line 460
    .end local v1    # "$dirty":I
    .restart local v20    # "$dirty":I
    :goto_10
    const/4 v1, 0x0

    .line 146
    .local v1, "$i$a$-cache-ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$4":I
    move/from16 p3, v1

    .end local v1    # "$i$a$-cache-ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$4":I
    .local p3, "$i$a$-cache-ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$4":I
    new-instance v1, Landroidx/compose/material3/internal/ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$4$1;

    invoke-direct {v1, v8}, Landroidx/compose/material3/internal/ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$4$1;-><init>(Landroidx/compose/material3/internal/PopupLayout;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 460
    .end local p3    # "$i$a$-cache-ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$4":I
    nop

    .line 461
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 462
    nop

    .line 459
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_11
    nop

    .line 458
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 146
    .end local v10    # "invalid$iv":Z
    .end local v12    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v0, v1}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v1, -0xeb25846

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v1, v9

    .line 157
    move-object v9, v15

    .local v1, "invalid$iv":Z
    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 464
    .local v10, "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 465
    .local v13, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_18

    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_17

    goto :goto_12

    .line 469
    :cond_17
    move/from16 p3, v1

    move-object v1, v12

    goto :goto_13

    .line 466
    :cond_18
    :goto_12
    const/4 v14, 0x0

    .line 157
    .local v14, "$i$a$-cache-ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$5":I
    move/from16 p3, v1

    .end local v1    # "invalid$iv":Z
    .local p3, "invalid$iv":Z
    new-instance v1, Landroidx/compose/material3/internal/ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$5$1;

    invoke-direct {v1, v8, v5}, Landroidx/compose/material3/internal/ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$5$1;-><init>(Landroidx/compose/material3/internal/PopupLayout;Landroidx/compose/ui/unit/LayoutDirection;)V

    check-cast v1, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 466
    .end local v14    # "$i$a$-cache-ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$5":I
    nop

    .line 467
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 468
    nop

    .line 465
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_13
    nop

    .line 464
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 157
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$cache":I
    .end local p3    # "invalid$iv":Z
    check-cast v1, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 144
    nop

    .local v0, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/4 v9, 0x0

    .local v1, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    move v10, v9

    .local v10, "$changed$iv":I
    const/4 v12, 0x0

    .local v12, "$i$f$Layout":I
    const v13, -0x4ee9b9da

    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh"

    invoke-static {v15, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 470
    invoke-static {v15, v9}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v9

    .line 471
    .local v9, "compositeKeyHash$iv":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v13

    .line 473
    .local v13, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v14

    .line 480
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v18

    move-object/from16 p3, v0

    .end local v0    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local p3, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v0, v10, 0x9

    and-int/lit16 v0, v0, 0x1c00

    or-int/lit8 v0, v0, 0x6

    .line 472
    nop

    .local v0, "$changed$iv$iv":I
    move-object/from16 v19, v18

    .local v14, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v19, "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v18, 0x0

    .line 481
    .local v18, "$i$f$ReusableComposeNode":I
    move-object/from16 v21, v2

    .end local v2    # "onDismissRequest":Lkotlin/jvm/functions/Function0;
    .local v21, "onDismissRequest":Lkotlin/jvm/functions/Function0;
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 482
    :cond_19
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 483
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 484
    invoke-interface {v15, v14}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_14

    .line 486
    :cond_1a
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 488
    :goto_14
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 475
    .local v22, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v24, v3

    .end local v3    # "currentContent$delegate":Landroidx/compose/runtime/State;
    .local v24, "currentContent$delegate":Landroidx/compose/runtime/State;
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 476
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, v13, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 478
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .local v3, "block$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v23, 0x0

    .line 489
    .local v23, "$i$f$set-impl":I
    move-object/from16 v25, v2

    .local v25, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v26, 0x0

    .line 490
    .local v26, "$i$a$-with-Updater$set$1$iv$iv":I
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v27

    if-nez v27, :cond_1c

    move-object/from16 v27, v1

    .end local v1    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v27, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v28, v4

    .end local v4    # "density":Landroidx/compose/ui/unit/Density;
    .local v28, "density":Landroidx/compose/ui/unit/Density;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_15

    :cond_1b
    move-object/from16 v4, v25

    goto :goto_16

    .end local v27    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v28    # "density":Landroidx/compose/ui/unit/Density;
    .restart local v1    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v4    # "density":Landroidx/compose/ui/unit/Density;
    :cond_1c
    move-object/from16 v27, v1

    move-object/from16 v28, v4

    .line 491
    .end local v1    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v4    # "density":Landroidx/compose/ui/unit/Density;
    .restart local v27    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v28    # "density":Landroidx/compose/ui/unit/Density;
    :goto_15
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v4, v25

    .end local v25    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 492
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v3}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 494
    :goto_16
    nop

    .line 489
    .end local v4    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v26    # "$i$a$-with-Updater$set$1$iv$iv":I
    nop

    .line 494
    nop

    .line 479
    .end local v3    # "block$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v23    # "$i$f$set-impl":I
    nop

    .line 488
    .end local v2    # "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    nop

    .line 495
    invoke-static {v15}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    shr-int/lit8 v2, v0, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v19

    .end local v19    # "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v3, "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v3, v1, v15, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const v1, 0x7ab4aae9

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 497
    shr-int/lit8 v1, v0, 0x9

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed":I
    move-object v2, v15

    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 145
    .local v4, "$i$a$-Layout-ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$3":I
    move/from16 v19, v0

    .end local v0    # "$changed$iv$iv":I
    .local v19, "$changed$iv$iv":I
    const v0, 0x221006d2

    move/from16 v22, v1

    .end local v1    # "$changed":I
    .local v22, "$changed":I
    const-string v1, "C:ExposedDropdownMenuPopup.android.kt#mqatfk"

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 497
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$a$-Layout-ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$3":I
    .end local v22    # "$changed":I
    nop

    .line 498
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 499
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 500
    nop

    .end local v3    # "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v14    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v18    # "$i$f$ReusableComposeNode":I
    .end local v19    # "$changed$iv$iv":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 501
    nop

    .end local v9    # "compositeKeyHash$iv":I
    .end local v10    # "$changed$iv":I
    .end local v12    # "$i$f$Layout":I
    .end local v13    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v27    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local p3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 161
    .end local v5    # "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    .end local v8    # "popupLayout":Landroidx/compose/material3/internal/PopupLayout;
    .end local v11    # "parentComposition":Landroidx/compose/runtime/CompositionContext;
    .end local v16    # "isTouchExplorationEnabled$delegate":Landroidx/compose/runtime/State;
    .end local v17    # "popupId":Ljava/util/UUID;
    .end local v24    # "currentContent$delegate":Landroidx/compose/runtime/State;
    .end local v28    # "density":Landroidx/compose/ui/unit/Density;
    .end local p0    # "view":Landroid/view/View;
    :cond_1d
    :goto_17
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_1e

    new-instance v9, Landroidx/compose/material3/internal/ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$6;

    move-object v0, v9

    move/from16 v10, v20

    .end local v20    # "$dirty":I
    .local v10, "$dirty":I
    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/internal/ExposedDropdownMenuPopup_androidKt$ExposedDropdownMenuPopup$6;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function2;II)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_18

    .end local v10    # "$dirty":I
    .restart local v20    # "$dirty":I
    :cond_1e
    move/from16 v10, v20

    .end local v20    # "$dirty":I
    .restart local v10    # "$dirty":I
    :goto_18
    return-void
.end method

.method private static final ExposedDropdownMenuPopup$lambda$0(Landroidx/compose/runtime/State;)Z
    .locals 4
    .param p0, "$isTouchExplorationEnabled$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 534
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 89
    return v0
.end method

.method private static final ExposedDropdownMenuPopup$lambda$1(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;
    .locals 4
    .param p0, "$currentContent$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;>;)",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 92
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 535
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 92
    return-object v0
.end method

.method private static final SimpleStack(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 19
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "content"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
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
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p2

    const/4 v1, 0x0

    .local v1, "$i$f$SimpleStack":I
    const v2, 0x1a197bfe

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(SimpleStack)P(1)167@6382L979:ExposedDropdownMenuPopup.android.kt#mqatfk"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 168
    sget-object v2, Landroidx/compose/material3/internal/ExposedDropdownMenuPopup_androidKt$SimpleStack$1;->INSTANCE:Landroidx/compose/material3/internal/ExposedDropdownMenuPopup_androidKt$SimpleStack$1;

    check-cast v2, Landroidx/compose/ui/layout/MeasurePolicy;

    .local v2, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shr-int/lit8 v3, p3, 0x3

    and-int/lit8 v3, v3, 0xe

    shl-int/lit8 v4, p3, 0x3

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    .local v3, "$changed$iv":I
    const/4 v4, 0x0

    .local v4, "$i$f$Layout":I
    const v5, -0x4ee9b9da

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh"

    invoke-static {v0, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 502
    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v5

    .line 503
    .local v5, "compositeKeyHash$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v6

    .line 505
    .local v6, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v7

    .line 512
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v8

    shl-int/lit8 v9, v3, 0x9

    and-int/lit16 v9, v9, 0x1c00

    or-int/lit8 v9, v9, 0x6

    .line 504
    nop

    .local v7, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v8, "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v9, "$changed$iv$iv":I
    const/4 v10, 0x0

    .line 513
    .local v10, "$i$f$ReusableComposeNode":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v11

    instance-of v11, v11, Landroidx/compose/runtime/Applier;

    if-nez v11, :cond_0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 514
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 515
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 516
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 518
    :cond_1
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 520
    :goto_0
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .local v11, "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 507
    .local v12, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v11, v2, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 508
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v11, v6, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 510
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    .local v13, "block$iv$iv":Lkotlin/jvm/functions/Function2;
    const/4 v14, 0x0

    .line 521
    .local v14, "$i$f$set-impl":I
    move-object v15, v11

    .local v15, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 522
    .local v16, "$i$a$-with-Updater$set$1$iv$iv":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v17

    if-nez v17, :cond_2

    move/from16 v17, v1

    .end local v1    # "$i$f$SimpleStack":I
    .local v17, "$i$f$SimpleStack":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v2

    .end local v2    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v18, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .end local v17    # "$i$f$SimpleStack":I
    .end local v18    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v1    # "$i$f$SimpleStack":I
    .restart local v2    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_2
    move/from16 v17, v1

    move-object/from16 v18, v2

    .line 523
    .end local v1    # "$i$f$SimpleStack":I
    .end local v2    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v17    # "$i$f$SimpleStack":I
    .restart local v18    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 524
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1, v13}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 526
    :cond_3
    nop

    .line 521
    .end local v15    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-with-Updater$set$1$iv$iv":I
    nop

    .line 526
    nop

    .line 511
    .end local v13    # "block$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v14    # "$i$f$set-impl":I
    nop

    .line 520
    .end local v11    # "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    nop

    .line 527
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    shr-int/lit8 v2, v9, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v1, v0, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const v1, 0x7ab4aae9

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 529
    shr-int/lit8 v1, v9, 0x9

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-interface {v2, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 531
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 532
    nop

    .end local v7    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v8    # "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v9    # "$changed$iv$iv":I
    .end local v10    # "$i$f$ReusableComposeNode":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 533
    nop

    .end local v3    # "$changed$iv":I
    .end local v4    # "$i$f$Layout":I
    .end local v5    # "compositeKeyHash$iv":I
    .end local v6    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v18    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 195
    return-void
.end method

.method public static final synthetic access$ExposedDropdownMenuPopup$lambda$1(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;
    .locals 1
    .param p0, "$currentContent$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/compose/material3/internal/ExposedDropdownMenuPopup_androidKt;->ExposedDropdownMenuPopup$lambda$1(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    return-object v0
.end method
