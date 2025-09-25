.class public final Landroidx/compose/material/AndroidMenu_androidKt;
.super Ljava/lang/Object;
.source "AndroidMenu.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidMenu.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidMenu.android.kt\nandroidx/compose/material/AndroidMenu_androidKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,185:1\n154#2:186\n154#2:187\n25#3:188\n25#3:195\n25#3:209\n1116#4,6:189\n1116#4,6:196\n1116#4,6:203\n1116#4,6:210\n74#5:202\n*S KotlinDebug\n*F\n+ 1 AndroidMenu.android.kt\nandroidx/compose/material/AndroidMenu_androidKt\n*L\n52#1:186\n116#1:187\n121#1:188\n125#1:195\n173#1:209\n121#1:189,6\n125#1:196,6\n130#1:203,6\n173#1:210,6\n126#1:202\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001an\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u001c\u0010\u000e\u001a\u0018\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00010\u000f\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0008\u0012H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u001ad\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u001c\u0010\u000e\u001a\u0018\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00010\u000f\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0008\u0012H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u001aa\u0010\u0017\u001a\u00020\u00012\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\u001c\u0010\u000e\u001a\u0018\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00010\u000f\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0008\u0012H\u0007\u00a2\u0006\u0002\u0010\u001f\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006 "
    }
    d2 = {
        "DropdownMenu",
        "",
        "expanded",
        "",
        "onDismissRequest",
        "Lkotlin/Function0;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "offset",
        "Landroidx/compose/ui/unit/DpOffset;",
        "scrollState",
        "Landroidx/compose/foundation/ScrollState;",
        "properties",
        "Landroidx/compose/ui/window/PopupProperties;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "DropdownMenu-4kj-_NE",
        "(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "DropdownMenu-ILWXrKs",
        "(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "DropdownMenuItem",
        "onClick",
        "enabled",
        "contentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "Landroidx/compose/foundation/layout/RowScope;",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
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


# direct methods
.method public static final DropdownMenu-4kj-_NE(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 31
    .param p0, "expanded"    # Z
    .param p1, "onDismissRequest"    # Lkotlin/jvm/functions/Function0;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "offset"    # J
    .param p5, "scrollState"    # Landroidx/compose/foundation/ScrollState;
    .param p6, "properties"    # Landroidx/compose/ui/window/PopupProperties;
    .param p7, "content"    # Lkotlin/jvm/functions/Function3;
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "J",
            "Landroidx/compose/foundation/ScrollState;",
            "Landroidx/compose/ui/window/PopupProperties;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
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

    .line 120
    move/from16 v11, p9

    const v0, -0x7f470bfb

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(DropdownMenu)P(1,4,2,3:c#ui.unit.DpOffset,6,5)116@5501L21,120@5670L42,124@5860L51,125@5947L7,133@6212L443:AndroidMenu.android.kt#jmzs0o"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p9

    .local v1, "$dirty":I
    and-int/lit8 v2, p10, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move/from16 v13, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v11, 0xe

    if-nez v2, :cond_2

    move/from16 v13, p0

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    move/from16 v13, p0

    :goto_1
    and-int/lit8 v2, p10, 0x2

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
    and-int/lit8 v2, p10, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v4, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v4, v11, 0x380

    if-nez v4, :cond_8

    move-object/from16 v4, p2

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_4

    :cond_7
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v1, v5

    goto :goto_5

    :cond_8
    move-object/from16 v4, p2

    :goto_5
    and-int/lit8 v5, p10, 0x8

    if-eqz v5, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-wide/from16 v6, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v6, v11, 0x1c00

    if-nez v6, :cond_b

    move-wide/from16 v6, p3

    invoke-interface {v12, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_6

    :cond_a
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v1, v8

    goto :goto_7

    :cond_b
    move-wide/from16 v6, p3

    :goto_7
    const v8, 0xe000

    and-int/2addr v8, v11

    if-nez v8, :cond_e

    and-int/lit8 v8, p10, 0x10

    if-nez v8, :cond_c

    move-object/from16 v8, p5

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    const/16 v9, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v8, p5

    :cond_d
    const/16 v9, 0x2000

    :goto_8
    or-int/2addr v1, v9

    goto :goto_9

    :cond_e
    move-object/from16 v8, p5

    :goto_9
    and-int/lit8 v9, p10, 0x20

    if-eqz v9, :cond_f

    const/high16 v10, 0x30000

    or-int/2addr v1, v10

    move-object/from16 v10, p6

    goto :goto_b

    :cond_f
    const/high16 v10, 0x70000

    and-int/2addr v10, v11

    if-nez v10, :cond_11

    move-object/from16 v10, p6

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v1, v15

    goto :goto_b

    :cond_11
    move-object/from16 v10, p6

    :goto_b
    and-int/lit8 v15, p10, 0x40

    if-eqz v15, :cond_12

    const/high16 v15, 0x180000

    or-int/2addr v1, v15

    move-object/from16 v15, p7

    goto :goto_d

    :cond_12
    const/high16 v15, 0x380000

    and-int/2addr v15, v11

    if-nez v15, :cond_14

    move-object/from16 v15, p7

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v16, 0x80000

    :goto_c
    or-int v1, v1, v16

    goto :goto_d

    :cond_14
    move-object/from16 v15, p7

    :goto_d
    const v16, 0x2db6db

    and-int v3, v1, v16

    const v0, 0x92492

    if-ne v3, v0, :cond_16

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_e

    .line 148
    :cond_15
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v20, v1

    move-object/from16 v16, v4

    move-wide/from16 v17, v6

    move-object/from16 v19, v8

    move-object/from16 v22, v10

    goto/16 :goto_18

    .line 120
    :cond_16
    :goto_e
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v11, 0x1

    if-eqz v0, :cond_19

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_f

    .line 118
    :cond_17
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p10, 0x10

    if-eqz v0, :cond_18

    const v0, -0xe001

    and-int/2addr v1, v0

    :cond_18
    move-object v0, v4

    move-object/from16 v22, v10

    move-object v10, v8

    move-wide v8, v6

    move v7, v1

    goto :goto_11

    .line 120
    :cond_19
    :goto_f
    if-eqz v2, :cond_1a

    .line 115
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_10

    .line 120
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_1a
    move-object v0, v4

    .line 115
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_10
    if-eqz v5, :cond_1b

    .line 116
    const/4 v2, 0x0

    .local v2, "$this$dp$iv":I
    const/4 v4, 0x0

    .line 187
    .local v4, "$i$f$getDp":I
    int-to-float v5, v2

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 116
    .end local v2    # "$this$dp$iv":I
    .end local v4    # "$i$f$getDp":I
    const/4 v4, 0x0

    .local v4, "$this$dp$iv":I
    const/4 v5, 0x0

    .line 187
    .local v5, "$i$f$getDp":I
    int-to-float v3, v4

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 116
    .end local v4    # "$this$dp$iv":I
    .end local v5    # "$i$f$getDp":I
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/DpKt;->DpOffset-YgX7TsA(FF)J

    move-result-wide v2

    move-wide v6, v2

    .end local p3    # "offset":J
    .local v6, "offset":J
    :cond_1b
    and-int/lit8 v2, p10, 0x10

    if-eqz v2, :cond_1c

    .line 117
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v12, v2, v3}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v4

    const v2, -0xe001

    .end local p5    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .local v4, "scrollState":Landroidx/compose/foundation/ScrollState;
    and-int/2addr v1, v2

    move-object v8, v4

    .end local v4    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .local v8, "scrollState":Landroidx/compose/foundation/ScrollState;
    :cond_1c
    if-eqz v9, :cond_1d

    .line 118
    new-instance v2, Landroidx/compose/ui/window/PopupProperties;

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x3e

    const/16 v30, 0x0

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v30}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v8

    move-wide v8, v6

    move v7, v1

    .end local p6    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .local v2, "properties":Landroidx/compose/ui/window/PopupProperties;
    goto :goto_11

    .line 117
    .end local v2    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .restart local p6    # "properties":Landroidx/compose/ui/window/PopupProperties;
    :cond_1d
    move-object/from16 v22, v10

    move-object v10, v8

    move-wide v8, v6

    move v7, v1

    .line 118
    .end local v1    # "$dirty":I
    .end local v6    # "offset":J
    .end local p6    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .local v7, "$dirty":I
    .local v8, "offset":J
    .local v10, "scrollState":Landroidx/compose/foundation/ScrollState;
    .local v22, "properties":Landroidx/compose/ui/window/PopupProperties;
    :goto_11
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 120
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material.DropdownMenu (AndroidMenu.android.kt:119)"

    const v3, -0x7f470bfb

    invoke-static {v3, v7, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1e
    nop

    .line 121
    const/4 v1, 0x0

    move v2, v1

    .local v2, "$changed$iv":I
    const/4 v1, 0x0

    .local v1, "$i$f$remember":I
    const v3, -0x1d58f75c

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v12, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 188
    const/4 v5, 0x0

    .local v5, "invalid$iv$iv":Z
    move-object v6, v12

    .local v6, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 189
    .local v16, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 190
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p3, v1

    .end local v1    # "$i$f$remember":I
    .local p3, "$i$f$remember":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_1f

    .line 191
    const/4 v1, 0x0

    .line 121
    .local v1, "$i$a$-remember-AndroidMenu_androidKt$DropdownMenu$expandedStates$1":I
    move/from16 p4, v1

    .end local v1    # "$i$a$-remember-AndroidMenu_androidKt$DropdownMenu$expandedStates$1":I
    .local p4, "$i$a$-remember-AndroidMenu_androidKt$DropdownMenu$expandedStates$1":I
    new-instance v1, Landroidx/compose/animation/core/MutableTransitionState;

    move/from16 p5, v2

    const/16 v18, 0x0

    .end local v2    # "$changed$iv":I
    .local p5, "$changed$iv":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    .line 191
    .end local p4    # "$i$a$-remember-AndroidMenu_androidKt$DropdownMenu$expandedStates$1":I
    nop

    .line 192
    .local v1, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 193
    nop

    .end local v1    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_12

    .line 194
    .end local p5    # "$changed$iv":I
    .restart local v2    # "$changed$iv":I
    :cond_1f
    move/from16 p5, v2

    .end local v2    # "$changed$iv":I
    .restart local p5    # "$changed$iv":I
    move-object v1, v3

    .line 190
    :goto_12
    nop

    .line 189
    .end local v3    # "it$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 188
    .end local v5    # "invalid$iv$iv":Z
    .end local v6    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 121
    .end local p3    # "$i$f$remember":I
    .end local p5    # "$changed$iv":I
    move-object v6, v1

    check-cast v6, Landroidx/compose/animation/core/MutableTransitionState;

    .line 122
    .local v6, "expandedStates":Landroidx/compose/animation/core/MutableTransitionState;
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroidx/compose/animation/core/MutableTransitionState;->setTargetState(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v6}, Landroidx/compose/animation/core/MutableTransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {v6}, Landroidx/compose/animation/core/MutableTransitionState;->getTargetState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_13

    :cond_20
    move-object/from16 v25, v6

    move/from16 v17, v7

    goto/16 :goto_17

    .line 125
    :cond_21
    :goto_13
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    const v3, -0x1d58f75c

    .local v2, "$i$f$remember":I
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 195
    const/4 v3, 0x0

    .local v3, "invalid$iv$iv":Z
    move-object v4, v12

    .local v4, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 196
    .local v5, "$i$f$cache":I
    move/from16 p2, v1

    .end local v1    # "$changed$iv":I
    .local p2, "$changed$iv":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 197
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p3, v2

    .end local v2    # "$i$f$remember":I
    .restart local p3    # "$i$f$remember":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_22

    .line 198
    const/4 v2, 0x0

    .line 125
    .local v2, "$i$a$-remember-AndroidMenu_androidKt$DropdownMenu$transformOriginState$1":I
    sget-object v17, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    move-result-wide v17

    move-object/from16 p4, v1

    .end local v1    # "it$iv$iv":Ljava/lang/Object;
    .local p4, "it$iv$iv":Ljava/lang/Object;
    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/graphics/TransformOrigin;->box-impl(J)Landroidx/compose/ui/graphics/TransformOrigin;

    move-result-object v1

    move/from16 p5, v2

    .end local v2    # "$i$a$-remember-AndroidMenu_androidKt$DropdownMenu$transformOriginState$1":I
    .local p5, "$i$a$-remember-AndroidMenu_androidKt$DropdownMenu$transformOriginState$1":I
    const/4 v2, 0x0

    move/from16 p6, v3

    const/4 v3, 0x2

    .end local v3    # "invalid$iv$iv":Z
    .local p6, "invalid$iv$iv":Z
    invoke-static {v1, v2, v3, v2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    .line 198
    .end local p5    # "$i$a$-remember-AndroidMenu_androidKt$DropdownMenu$transformOriginState$1":I
    nop

    .line 199
    .local v1, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 200
    nop

    .end local v1    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_14

    .line 201
    .end local p4    # "it$iv$iv":Ljava/lang/Object;
    .end local p6    # "invalid$iv$iv":Z
    .local v1, "it$iv$iv":Ljava/lang/Object;
    .restart local v3    # "invalid$iv$iv":Z
    :cond_22
    move-object/from16 p4, v1

    move/from16 p6, v3

    .line 197
    .end local v1    # "it$iv$iv":Ljava/lang/Object;
    .end local v3    # "invalid$iv$iv":Z
    .restart local p4    # "it$iv$iv":Ljava/lang/Object;
    .restart local p6    # "invalid$iv$iv":Z
    :goto_14
    nop

    .line 196
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local p4    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 195
    .end local v4    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    .end local p6    # "invalid$iv$iv":Z
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 125
    .end local p2    # "$changed$iv":I
    .end local p3    # "$i$f$remember":I
    move-object v5, v1

    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 126
    .local v5, "transformOriginState":Landroidx/compose/runtime/MutableState;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    .local v1, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v2, 0x0

    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .line 202
    .local v3, "$i$f$getCurrent":I
    const v4, 0x789c5f52

    move/from16 p2, v2

    .end local v2    # "$changed$iv":I
    .restart local p2    # "$changed$iv":I
    const-string v2, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v12, v4, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 126
    .end local v1    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v3    # "$i$f$getCurrent":I
    .end local p2    # "$changed$iv":I
    move-object/from16 v23, v2

    check-cast v23, Landroidx/compose/ui/unit/Density;

    .line 127
    .local v23, "density":Landroidx/compose/ui/unit/Density;
    nop

    .line 128
    nop

    .line 129
    const v1, 0x603ef1b

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .line 130
    move-object v2, v12

    .local v1, "invalid$iv":Z
    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 203
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 204
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_24

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p2, v1

    .end local v1    # "invalid$iv":Z
    .local p2, "invalid$iv":Z
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v4, v1, :cond_23

    goto :goto_15

    .line 208
    :cond_23
    move-object v1, v4

    goto :goto_16

    .line 204
    .end local p2    # "invalid$iv":Z
    .restart local v1    # "invalid$iv":Z
    :cond_24
    move/from16 p2, v1

    .line 205
    .end local v1    # "invalid$iv":Z
    .restart local p2    # "invalid$iv":Z
    :goto_15
    const/4 v1, 0x0

    .line 130
    .local v1, "$i$a$-cache-AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1":I
    move/from16 p3, v1

    .end local v1    # "$i$a$-cache-AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1":I
    .local p3, "$i$a$-cache-AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1":I
    new-instance v1, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1;

    invoke-direct {v1, v5}, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 205
    .end local p3    # "$i$a$-cache-AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1":I
    nop

    .line 206
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 207
    nop

    .line 204
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_16
    nop

    .line 203
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 130
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    .end local p2    # "invalid$iv":Z
    move-object/from16 v16, v1

    check-cast v16, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/16 v17, 0x0

    .line 127
    new-instance v18, Landroidx/compose/material/DropdownMenuPositionProvider;

    move-object/from16 v1, v18

    move-wide v2, v8

    move-object/from16 v4, v23

    move-object/from16 v24, v5

    .end local v5    # "transformOriginState":Landroidx/compose/runtime/MutableState;
    .local v24, "transformOriginState":Landroidx/compose/runtime/MutableState;
    move-object/from16 v5, v16

    move-object/from16 v25, v6

    .end local v6    # "expandedStates":Landroidx/compose/animation/core/MutableTransitionState;
    .local v25, "expandedStates":Landroidx/compose/animation/core/MutableTransitionState;
    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Landroidx/compose/material/DropdownMenuPositionProvider;-><init>(JLandroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v26, v18

    .line 136
    .local v26, "popupPositionProvider":Landroidx/compose/material/DropdownMenuPositionProvider;
    move-object/from16 v1, v26

    check-cast v1, Landroidx/compose/ui/window/PopupPositionProvider;

    .line 135
    nop

    .line 137
    nop

    .line 138
    new-instance v2, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$2;

    move-object/from16 v16, v2

    move-object/from16 v17, v25

    move-object/from16 v18, v24

    move-object/from16 v19, v10

    move-object/from16 v20, v0

    move-object/from16 v21, p7

    invoke-direct/range {v16 .. v21}, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$2;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)V

    const v3, -0x2d96d82

    const/4 v4, 0x1

    invoke-static {v12, v3, v4, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    and-int/lit8 v2, v7, 0x70

    or-int/lit16 v2, v2, 0xc00

    shr-int/lit8 v3, v7, 0x9

    and-int/lit16 v3, v3, 0x380

    or-int v6, v2, v3

    const/16 v16, 0x0

    .line 134
    move-object/from16 v2, p1

    move-object/from16 v3, v22

    move-object v5, v12

    move/from16 v17, v7

    .end local v7    # "$dirty":I
    .local v17, "$dirty":I
    move/from16 v7, v16

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->Popup(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .end local v23    # "density":Landroidx/compose/ui/unit/Density;
    .end local v24    # "transformOriginState":Landroidx/compose/runtime/MutableState;
    .end local v26    # "popupPositionProvider":Landroidx/compose/material/DropdownMenuPositionProvider;
    :goto_17
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 148
    .end local v25    # "expandedStates":Landroidx/compose/animation/core/MutableTransitionState;
    :cond_25
    move-object/from16 v16, v0

    move-object/from16 v19, v10

    move/from16 v20, v17

    move-wide/from16 v17, v8

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v8    # "offset":J
    .end local v10    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    .local v17, "offset":J
    .local v19, "scrollState":Landroidx/compose/foundation/ScrollState;
    .local v20, "$dirty":I
    :goto_18
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_26

    new-instance v21, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$3;

    move-object/from16 v0, v21

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-wide/from16 v4, v17

    move-object/from16 v6, v19

    move-object/from16 v7, v22

    move-object/from16 v8, p7

    move/from16 v9, p9

    move-object v11, v10

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$3;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v21

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_26
    return-void
.end method

.method public static final synthetic DropdownMenu-ILWXrKs(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 25
    .param p0, "expanded"    # Z
    .param p1, "onDismissRequest"    # Lkotlin/jvm/functions/Function0;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "offset"    # J
    .param p5, "properties"    # Landroidx/compose/ui/window/PopupProperties;
    .param p6, "content"    # Lkotlin/jvm/functions/Function3;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Replaced by a DropdownMenu function with a ScrollState parameter"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "DropdownMenu(expanded,onDismissRequest, modifier, offset, rememberScrollState(), properties, content)"
            imports = {
                "androidx.compose.foundation.rememberScrollState"
            }
        .end subannotation
    .end annotation

    .line 55
    move/from16 v10, p8

    const v0, -0x3215b403

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(DropdownMenu)P(1,4,2,3:c#ui.unit.DpOffset,5)59@2347L21,54@2203L219:AndroidMenu.android.kt#jmzs0o"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p8

    .local v1, "$dirty":I
    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move/from16 v8, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v10, 0xe

    if-nez v2, :cond_2

    move/from16 v8, p0

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    move/from16 v8, p0

    :goto_1
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v7, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v10, 0x70

    if-nez v2, :cond_5

    move-object/from16 v7, p1

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v7, p1

    :goto_3
    and-int/lit8 v2, p9, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v3, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v10, 0x380

    if-nez v3, :cond_8

    move-object/from16 v3, p2

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v4, p9, 0x8

    if-eqz v4, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-wide/from16 v5, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v5, v10, 0x1c00

    if-nez v5, :cond_b

    move-wide/from16 v5, p3

    invoke-interface {v9, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x800

    goto :goto_6

    :cond_a
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v1, v11

    goto :goto_7

    :cond_b
    move-wide/from16 v5, p3

    :goto_7
    and-int/lit8 v11, p9, 0x10

    if-eqz v11, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v12, p5

    goto :goto_9

    :cond_c
    const v12, 0xe000

    and-int/2addr v12, v10

    if-nez v12, :cond_e

    move-object/from16 v12, p5

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/16 v13, 0x4000

    goto :goto_8

    :cond_d
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v1, v13

    goto :goto_9

    :cond_e
    move-object/from16 v12, p5

    :goto_9
    and-int/lit8 v13, p9, 0x20

    const/high16 v14, 0x70000

    if-eqz v13, :cond_f

    const/high16 v13, 0x30000

    or-int/2addr v1, v13

    move-object/from16 v15, p6

    goto :goto_b

    :cond_f
    and-int v13, v10, v14

    if-nez v13, :cond_11

    move-object/from16 v15, p6

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    const/high16 v13, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v13, 0x10000

    :goto_a
    or-int/2addr v1, v13

    goto :goto_b

    :cond_11
    move-object/from16 v15, p6

    :goto_b
    const v13, 0x5b6db

    and-int/2addr v13, v1

    const v14, 0x12492

    if-ne v13, v14, :cond_13

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v13

    if-nez v13, :cond_12

    goto :goto_c

    .line 63
    :cond_12
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v11, v3

    move-object v14, v12

    move-wide v12, v5

    goto/16 :goto_10

    .line 55
    :cond_13
    :goto_c
    if-eqz v2, :cond_14

    .line 51
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_d

    .line 55
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_14
    move-object v2, v3

    .line 51
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_d
    if-eqz v4, :cond_15

    .line 52
    const/4 v3, 0x0

    .local v3, "$this$dp$iv":I
    const/4 v4, 0x0

    .line 186
    .local v4, "$i$f$getDp":I
    int-to-float v13, v3

    invoke-static {v13}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 52
    .end local v3    # "$this$dp$iv":I
    .end local v4    # "$i$f$getDp":I
    const/4 v4, 0x0

    .local v4, "$this$dp$iv":I
    const/4 v13, 0x0

    .line 186
    .local v13, "$i$f$getDp":I
    int-to-float v14, v4

    invoke-static {v14}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 52
    .end local v4    # "$this$dp$iv":I
    .end local v13    # "$i$f$getDp":I
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/DpKt;->DpOffset-YgX7TsA(FF)J

    move-result-wide v3

    .end local p3    # "offset":J
    .local v3, "offset":J
    goto :goto_e

    .line 51
    .end local v3    # "offset":J
    .restart local p3    # "offset":J
    :cond_15
    move-wide v3, v5

    .line 52
    .end local p3    # "offset":J
    .restart local v3    # "offset":J
    :goto_e
    if-eqz v11, :cond_16

    .line 53
    new-instance v5, Landroidx/compose/ui/window/PopupProperties;

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x3e

    const/16 v24, 0x0

    move-object/from16 v16, v5

    invoke-direct/range {v16 .. v24}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .end local p5    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .local v5, "properties":Landroidx/compose/ui/window/PopupProperties;
    goto :goto_f

    .line 52
    .end local v5    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .restart local p5    # "properties":Landroidx/compose/ui/window/PopupProperties;
    :cond_16
    move-object v5, v12

    .line 53
    .end local p5    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .restart local v5    # "properties":Landroidx/compose/ui/window/PopupProperties;
    :goto_f
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 55
    const/4 v6, -0x1

    const-string/jumbo v11, "androidx.compose.material.DropdownMenu (AndroidMenu.android.kt:54)"

    invoke-static {v0, v1, v6, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 56
    :cond_17
    nop

    .line 57
    nop

    .line 58
    nop

    .line 59
    nop

    .line 60
    const/4 v0, 0x0

    const/4 v6, 0x1

    invoke-static {v0, v9, v0, v6}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v16

    .line 61
    nop

    .line 62
    and-int/lit8 v0, v1, 0xe

    and-int/lit8 v6, v1, 0x70

    or-int/2addr v0, v6

    and-int/lit16 v6, v1, 0x380

    or-int/2addr v0, v6

    and-int/lit16 v6, v1, 0x1c00

    or-int/2addr v0, v6

    shl-int/lit8 v6, v1, 0x3

    const/high16 v11, 0x70000

    and-int/2addr v6, v11

    or-int/2addr v0, v6

    const/high16 v6, 0x380000

    shl-int/lit8 v11, v1, 0x3

    and-int/2addr v6, v11

    or-int v20, v0, v6

    const/16 v21, 0x0

    .line 55
    move/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v2

    move-wide v14, v3

    move-object/from16 v17, v5

    move-object/from16 v18, p6

    move-object/from16 v19, v9

    invoke-static/range {v11 .. v21}, Landroidx/compose/material/AndroidMenu_androidKt;->DropdownMenu-4kj-_NE(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 63
    :cond_18
    move-object v11, v2

    move-wide v12, v3

    move-object v14, v5

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "offset":J
    .end local v5    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .local v11, "modifier":Landroidx/compose/ui/Modifier;
    .local v12, "offset":J
    .local v14, "properties":Landroidx/compose/ui/window/PopupProperties;
    :goto_10
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_19

    new-instance v16, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$1;

    move-object/from16 v0, v16

    move/from16 v17, v1

    .end local v1    # "$dirty":I
    .local v17, "$dirty":I
    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v18, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v18, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$1;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_11

    .end local v17    # "$dirty":I
    .end local v18    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$dirty":I
    .restart local v9    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_19
    move/from16 v17, v1

    move-object/from16 v18, v9

    .end local v1    # "$dirty":I
    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v17    # "$dirty":I
    .restart local v18    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_11
    return-void
.end method

.method public static final DropdownMenuItem(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 19
    .param p0, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "enabled"    # Z
    .param p3, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p4, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p5, "content"    # Lkotlin/jvm/functions/Function3;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
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

    .line 175
    move/from16 v9, p7

    const v0, -0x76870fcc

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(DropdownMenuItem)P(5,4,2,1,3)172@7838L39,175@7932L227:AndroidMenu.android.kt#jmzs0o"

    invoke-static {v8, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p7

    .local v1, "$dirty":I
    and-int/lit8 v2, p8, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v7, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v9, 0xe

    if-nez v2, :cond_2

    move-object/from16 v7, p0

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v7, p0

    :goto_1
    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v9, 0x70

    if-nez v3, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    goto :goto_3

    :cond_5
    move-object/from16 v3, p1

    :goto_3
    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    move/from16 v5, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v9, 0x380

    if-nez v5, :cond_8

    move/from16 v5, p2

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_4

    :cond_7
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v1, v6

    goto :goto_5

    :cond_8
    move/from16 v5, p2

    :goto_5
    and-int/lit8 v6, p8, 0x8

    if-eqz v6, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v10, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v10, v9, 0x1c00

    if-nez v10, :cond_b

    move-object/from16 v10, p3

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x800

    goto :goto_6

    :cond_a
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v1, v11

    goto :goto_7

    :cond_b
    move-object/from16 v10, p3

    :goto_7
    and-int/lit8 v11, p8, 0x10

    const v12, 0xe000

    if-eqz v11, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v13, p4

    goto :goto_9

    :cond_c
    and-int v13, v9, v12

    if-nez v13, :cond_e

    move-object/from16 v13, p4

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/16 v14, 0x4000

    goto :goto_8

    :cond_d
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v1, v14

    goto :goto_9

    :cond_e
    move-object/from16 v13, p4

    :goto_9
    and-int/lit8 v14, p8, 0x20

    const/high16 v15, 0x70000

    if-eqz v14, :cond_f

    const/high16 v14, 0x30000

    or-int/2addr v1, v14

    move-object/from16 v14, p5

    goto :goto_b

    :cond_f
    and-int v14, v9, v15

    if-nez v14, :cond_11

    move-object/from16 v14, p5

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v1, v1, v16

    goto :goto_b

    :cond_11
    move-object/from16 v14, p5

    :goto_b
    const v16, 0x5b6db

    and-int v15, v1, v16

    const v12, 0x12492

    if-ne v15, v12, :cond_13

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v12

    if-nez v12, :cond_12

    goto :goto_c

    .line 184
    :cond_12
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v11, v5

    move-object v12, v10

    move-object v10, v3

    goto/16 :goto_12

    .line 175
    :cond_13
    :goto_c
    if-eqz v2, :cond_14

    .line 170
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_d

    .line 175
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_14
    move-object v2, v3

    .line 170
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_d
    if-eqz v4, :cond_15

    .line 171
    const/4 v3, 0x1

    .end local p2    # "enabled":Z
    .local v3, "enabled":Z
    goto :goto_e

    .line 170
    .end local v3    # "enabled":Z
    .restart local p2    # "enabled":Z
    :cond_15
    move v3, v5

    .line 171
    .end local p2    # "enabled":Z
    .restart local v3    # "enabled":Z
    :goto_e
    if-eqz v6, :cond_16

    .line 172
    sget-object v4, Landroidx/compose/material/MenuDefaults;->INSTANCE:Landroidx/compose/material/MenuDefaults;

    invoke-virtual {v4}, Landroidx/compose/material/MenuDefaults;->getDropdownMenuItemContentPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v4

    .end local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v4, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    goto :goto_f

    .line 171
    .end local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :cond_16
    move-object v4, v10

    .line 172
    .end local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :goto_f
    if-eqz v11, :cond_18

    .line 173
    const/4 v5, 0x0

    .local v5, "$changed$iv":I
    const/4 v6, 0x0

    .local v6, "$i$f$remember":I
    const v10, -0x1d58f75c

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v8, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 209
    const/4 v10, 0x0

    .local v10, "invalid$iv$iv":Z
    move-object v11, v8

    .local v11, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 210
    .local v12, "$i$f$cache":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 211
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v15, v0, :cond_17

    .line 212
    const/4 v0, 0x0

    .line 173
    .local v0, "$i$a$-remember-AndroidMenu_androidKt$DropdownMenuItem$1":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    .line 212
    .end local v0    # "$i$a$-remember-AndroidMenu_androidKt$DropdownMenuItem$1":I
    nop

    .line 213
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 214
    nop

    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_10

    .line 215
    :cond_17
    move-object v0, v15

    .line 211
    :goto_10
    nop

    .line 210
    .end local v15    # "it$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 209
    .end local v10    # "invalid$iv$iv":Z
    .end local v11    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v5    # "$changed$iv":I
    .end local v6    # "$i$f$remember":I
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .end local p4    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    goto :goto_11

    .line 172
    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p4    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_18
    move-object v0, v13

    .line 209
    .end local p4    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_11
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 175
    const/4 v5, -0x1

    const-string/jumbo v6, "androidx.compose.material.DropdownMenuItem (AndroidMenu.android.kt:174)"

    const v10, -0x76870fcc

    invoke-static {v10, v1, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 177
    :cond_19
    nop

    .line 178
    nop

    .line 179
    nop

    .line 180
    nop

    .line 181
    nop

    .line 182
    and-int/lit8 v5, v1, 0xe

    and-int/lit8 v6, v1, 0x70

    or-int/2addr v5, v6

    and-int/lit16 v6, v1, 0x380

    or-int/2addr v5, v6

    and-int/lit16 v6, v1, 0x1c00

    or-int/2addr v5, v6

    const v6, 0xe000

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/high16 v6, 0x70000

    and-int/2addr v6, v1

    or-int v17, v5, v6

    const/16 v18, 0x0

    .line 176
    move-object/from16 v10, p0

    move-object v11, v2

    move v12, v3

    move-object v13, v4

    move-object v14, v0

    move-object/from16 v15, p5

    move-object/from16 v16, v8

    invoke-static/range {v10 .. v18}, Landroidx/compose/material/MenuKt;->DropdownMenuItemContent(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 184
    :cond_1a
    move-object v13, v0

    move-object v10, v2

    move v11, v3

    move-object v12, v4

    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "enabled":Z
    .end local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v10, "modifier":Landroidx/compose/ui/Modifier;
    .local v11, "enabled":Z
    .local v12, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v13, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_12
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_1b

    new-instance v15, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenuItem$2;

    move-object v0, v15

    move/from16 v16, v1

    .end local v1    # "$dirty":I
    .local v16, "$dirty":I
    move-object/from16 v1, p0

    move-object v2, v10

    move v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object/from16 v6, p5

    move/from16 v7, p7

    move-object/from16 v17, v8

    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenuItem$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;II)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-interface {v14, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_13

    .end local v16    # "$dirty":I
    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$dirty":I
    .restart local v8    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_1b
    move/from16 v16, v1

    move-object/from16 v17, v8

    .end local v1    # "$dirty":I
    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v16    # "$dirty":I
    .restart local v17    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_13
    return-void
.end method
