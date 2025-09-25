.class public final Landroidx/compose/material3/AndroidMenu_androidKt;
.super Ljava/lang/Object;
.source "AndroidMenu.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidMenu.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidMenu.android.kt\nandroidx/compose/material3/AndroidMenu_androidKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,203:1\n154#2:204\n154#2:224\n1116#3,6:205\n1116#3,6:211\n1116#3,6:218\n1116#3,6:225\n74#4:217\n*S KotlinDebug\n*F\n+ 1 AndroidMenu.android.kt\nandroidx/compose/material3/AndroidMenu_androidKt\n*L\n88#1:204\n139#1:224\n93#1:205,6\n97#1:211,6\n99#1:218,6\n189#1:225,6\n98#1:217\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001an\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u001c\u0010\u000e\u001a\u0018\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00010\u000f\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0008\u0012H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u001ad\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u001c\u0010\u000e\u001a\u0018\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00010\u000f\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0008\u0012H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u001a\u008e\u0001\u0010\u0017\u001a\u00020\u00012\u0011\u0010\u0018\u001a\r\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0002\u0008\u00112\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0015\u0008\u0002\u0010\u001a\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0005\u00a2\u0006\u0002\u0008\u00112\u0015\u0008\u0002\u0010\u001b\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0005\u00a2\u0006\u0002\u0008\u00112\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020 2\u0008\u0008\u0002\u0010!\u001a\u00020\"H\u0007\u00a2\u0006\u0002\u0010#\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006$"
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
        "text",
        "onClick",
        "leadingIcon",
        "trailingIcon",
        "enabled",
        "colors",
        "Landroidx/compose/material3/MenuItemColors;",
        "contentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V",
        "material3_release"
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
    .locals 27
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

    .line 92
    move/from16 v11, p9

    const v0, -0x43d36d5e

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(DropdownMenu)P(1,4,2,3:c#ui.unit.DpOffset,6,5)88@4529L21,92@4697L42,96@4884L51,97@4971L7,98@5015L281,107@5306L441:AndroidMenu.android.kt#uh7d8r"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p9

    .local v1, "$dirty":I
    and-int/lit8 v2, p10, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move/from16 v13, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v11, 0x6

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
    and-int/lit8 v2, v11, 0x30

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
    and-int/lit16 v4, v11, 0x180

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

    move-wide/from16 v7, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v7, v11, 0xc00

    if-nez v7, :cond_b

    move-wide/from16 v7, p3

    invoke-interface {v12, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_6

    :cond_a
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v1, v9

    goto :goto_7

    :cond_b
    move-wide/from16 v7, p3

    :goto_7
    and-int/lit16 v9, v11, 0x6000

    if-nez v9, :cond_e

    and-int/lit8 v9, p10, 0x10

    if-nez v9, :cond_c

    move-object/from16 v9, p5

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/16 v10, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v9, p5

    :cond_d
    const/16 v10, 0x2000

    :goto_8
    or-int/2addr v1, v10

    goto :goto_9

    :cond_e
    move-object/from16 v9, p5

    :goto_9
    and-int/lit8 v10, p10, 0x20

    const/high16 v15, 0x30000

    if-eqz v10, :cond_f

    or-int/2addr v1, v15

    move-object/from16 v15, p6

    goto :goto_b

    :cond_f
    and-int/2addr v15, v11

    if-nez v15, :cond_11

    move-object/from16 v15, p6

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v15, p6

    :goto_b
    and-int/lit8 v16, p10, 0x40

    const/high16 v17, 0x180000

    if-eqz v16, :cond_12

    or-int v1, v1, v17

    move-object/from16 v7, p7

    goto :goto_d

    :cond_12
    and-int v16, v11, v17

    if-nez v16, :cond_14

    move-object/from16 v7, p7

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    const/high16 v8, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v8, 0x80000

    :goto_c
    or-int/2addr v1, v8

    goto :goto_d

    :cond_14
    move-object/from16 v7, p7

    :goto_d
    const v8, 0x92493

    and-int/2addr v8, v1

    const v6, 0x92492

    if-ne v8, v6, :cond_16

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_15

    goto :goto_e

    .line 122
    :cond_15
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-wide/from16 v16, p3

    move/from16 v20, v1

    move-object/from16 v18, v9

    move-object/from16 v26, v15

    move-object v15, v4

    goto/16 :goto_1b

    .line 92
    :cond_16
    :goto_e
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v6, v11, 0x1

    const v8, -0xe001

    const/4 v3, 0x0

    const/4 v0, 0x1

    if-eqz v6, :cond_19

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_17

    goto :goto_f

    .line 90
    :cond_17
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, p10, 0x10

    if-eqz v2, :cond_18

    and-int/2addr v1, v8

    :cond_18
    move v6, v1

    move-object v8, v4

    move-object/from16 v26, v15

    move-object v15, v9

    move-wide/from16 v9, p3

    goto :goto_13

    .line 92
    :cond_19
    :goto_f
    if-eqz v2, :cond_1a

    .line 87
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_10

    .line 92
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_1a
    move-object v2, v4

    .line 87
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_10
    if-eqz v5, :cond_1b

    .line 88
    const/4 v4, 0x0

    .local v4, "$this$dp$iv":I
    const/4 v5, 0x0

    .line 204
    .local v5, "$i$f$getDp":I
    int-to-float v6, v4

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 88
    .end local v4    # "$this$dp$iv":I
    .end local v5    # "$i$f$getDp":I
    const/4 v5, 0x0

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 204
    .local v6, "$i$f$getDp":I
    int-to-float v8, v5

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 88
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/DpKt;->DpOffset-YgX7TsA(FF)J

    move-result-wide v4

    .end local p3    # "offset":J
    .local v4, "offset":J
    goto :goto_11

    .line 87
    .end local v4    # "offset":J
    .restart local p3    # "offset":J
    :cond_1b
    move-wide/from16 v4, p3

    .line 88
    .end local p3    # "offset":J
    .restart local v4    # "offset":J
    :goto_11
    and-int/lit8 v6, p10, 0x10

    if-eqz v6, :cond_1c

    .line 89
    invoke-static {v3, v12, v3, v0}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v6

    const v8, -0xe001

    .end local p5    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .local v6, "scrollState":Landroidx/compose/foundation/ScrollState;
    and-int/2addr v1, v8

    goto :goto_12

    .line 88
    .end local v6    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .restart local p5    # "scrollState":Landroidx/compose/foundation/ScrollState;
    :cond_1c
    move-object v6, v9

    .line 89
    .end local p5    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .restart local v6    # "scrollState":Landroidx/compose/foundation/ScrollState;
    :goto_12
    if-eqz v10, :cond_1d

    .line 90
    new-instance v8, Landroidx/compose/ui/window/PopupProperties;

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x3e

    const/16 v26, 0x0

    move-object/from16 v18, v8

    invoke-direct/range {v18 .. v26}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-wide v9, v4

    move-object v15, v6

    move-object/from16 v26, v8

    move v6, v1

    move-object v8, v2

    .end local p6    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .local v8, "properties":Landroidx/compose/ui/window/PopupProperties;
    goto :goto_13

    .line 89
    .end local v8    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .restart local p6    # "properties":Landroidx/compose/ui/window/PopupProperties;
    :cond_1d
    move-object v8, v2

    move-wide v9, v4

    move-object/from16 v26, v15

    move-object v15, v6

    move v6, v1

    .line 90
    .end local v1    # "$dirty":I
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v4    # "offset":J
    .end local p6    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .local v6, "$dirty":I
    .local v8, "modifier":Landroidx/compose/ui/Modifier;
    .local v9, "offset":J
    .local v15, "scrollState":Landroidx/compose/foundation/ScrollState;
    .local v26, "properties":Landroidx/compose/ui/window/PopupProperties;
    :goto_13
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 92
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:91)"

    const v4, -0x43d36d5e

    invoke-static {v4, v6, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1e
    const v1, 0x1b98ea46

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember):AndroidMenu.android.kt#9igjgp"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 93
    move v2, v3

    .local v2, "invalid$iv":Z
    move-object v4, v12

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 205
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 206
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_1f

    .line 207
    const/4 v3, 0x0

    .line 93
    .local v3, "$i$a$-cache-AndroidMenu_androidKt$DropdownMenu$expandedState$1":I
    move-object/from16 p2, v0

    .end local v0    # "it$iv":Ljava/lang/Object;
    .local p2, "it$iv":Ljava/lang/Object;
    new-instance v0, Landroidx/compose/animation/core/MutableTransitionState;

    move/from16 p3, v2

    const/16 v18, 0x0

    .end local v2    # "invalid$iv":Z
    .local p3, "invalid$iv":Z
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    .line 207
    .end local v3    # "$i$a$-cache-AndroidMenu_androidKt$DropdownMenu$expandedState$1":I
    nop

    .line 208
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 209
    nop

    .end local v0    # "value$iv":Ljava/lang/Object;
    goto :goto_14

    .line 210
    .end local p2    # "it$iv":Ljava/lang/Object;
    .end local p3    # "invalid$iv":Z
    .local v0, "it$iv":Ljava/lang/Object;
    .restart local v2    # "invalid$iv":Z
    :cond_1f
    move-object/from16 p2, v0

    move/from16 p3, v2

    .line 206
    .end local v0    # "it$iv":Ljava/lang/Object;
    .end local v2    # "invalid$iv":Z
    .restart local p2    # "it$iv":Ljava/lang/Object;
    .restart local p3    # "invalid$iv":Z
    :goto_14
    nop

    .line 205
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p2    # "it$iv":Ljava/lang/Object;
    nop

    .line 93
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    .end local p3    # "invalid$iv":Z
    check-cast v0, Landroidx/compose/animation/core/MutableTransitionState;

    .local v0, "expandedState":Landroidx/compose/animation/core/MutableTransitionState;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 94
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/animation/core/MutableTransitionState;->setTargetState(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v0}, Landroidx/compose/animation/core/MutableTransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {v0}, Landroidx/compose/animation/core/MutableTransitionState;->getTargetState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_15

    :cond_20
    move-object/from16 p2, v0

    move/from16 v20, v6

    goto/16 :goto_1a

    :cond_21
    :goto_15
    const v2, 0x1b98eb01

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 97
    move-object v2, v12

    const/4 v3, 0x0

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move v4, v3

    .local v4, "invalid$iv":Z
    const/4 v5, 0x0

    .line 211
    .restart local v5    # "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 212
    .restart local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p2, v4

    .end local v4    # "invalid$iv":Z
    .local p2, "invalid$iv":Z
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_22

    .line 213
    const/4 v4, 0x0

    .line 97
    .local v4, "$i$a$-cache-AndroidMenu_androidKt$DropdownMenu$transformOriginState$1":I
    sget-object v18, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    move-result-wide v20

    move-object/from16 p3, v3

    .end local v3    # "it$iv":Ljava/lang/Object;
    .local p3, "it$iv":Ljava/lang/Object;
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/graphics/TransformOrigin;->box-impl(J)Landroidx/compose/ui/graphics/TransformOrigin;

    move-result-object v3

    move/from16 p4, v4

    .end local v4    # "$i$a$-cache-AndroidMenu_androidKt$DropdownMenu$transformOriginState$1":I
    .local p4, "$i$a$-cache-AndroidMenu_androidKt$DropdownMenu$transformOriginState$1":I
    const/4 v4, 0x0

    move/from16 p5, v5

    const/4 v5, 0x2

    .end local v5    # "$i$f$cache":I
    .local p5, "$i$f$cache":I
    invoke-static {v3, v4, v5, v4}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    .line 213
    .end local p4    # "$i$a$-cache-AndroidMenu_androidKt$DropdownMenu$transformOriginState$1":I
    nop

    .line 214
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 215
    nop

    .end local v3    # "value$iv":Ljava/lang/Object;
    goto :goto_16

    .line 216
    .end local p3    # "it$iv":Ljava/lang/Object;
    .end local p5    # "$i$f$cache":I
    .local v3, "it$iv":Ljava/lang/Object;
    .restart local v5    # "$i$f$cache":I
    :cond_22
    move-object/from16 p3, v3

    move/from16 p5, v5

    .line 212
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$cache":I
    .restart local p3    # "it$iv":Ljava/lang/Object;
    .restart local p5    # "$i$f$cache":I
    :goto_16
    nop

    .line 211
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p3    # "it$iv":Ljava/lang/Object;
    nop

    .line 97
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local p2    # "invalid$iv":Z
    .end local p5    # "$i$f$cache":I
    move-object v5, v3

    check-cast v5, Landroidx/compose/runtime/MutableState;

    .local v5, "transformOriginState":Landroidx/compose/runtime/MutableState;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 98
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    .local v2, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v3, 0x0

    .local v3, "$changed$iv":I
    const/4 v4, 0x0

    .line 217
    .local v4, "$i$f$getCurrent":I
    move/from16 p2, v3

    .end local v3    # "$changed$iv":I
    .local p2, "$changed$iv":I
    const v3, 0x789c5f52

    move/from16 p3, v4

    .end local v4    # "$i$f$getCurrent":I
    .local p3, "$i$f$getCurrent":I
    const-string v4, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v12, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 98
    .end local v2    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local p2    # "$changed$iv":I
    .end local p3    # "$i$f$getCurrent":I
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/unit/Density;

    .local v4, "density":Landroidx/compose/ui/unit/Density;
    const v2, 0x1b98eb84

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit16 v1, v6, 0x1c00

    const/16 v2, 0x800

    if-ne v1, v2, :cond_23

    const/4 v3, 0x1

    goto :goto_17

    :cond_23
    const/4 v3, 0x0

    .line 99
    :goto_17
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v1, v3

    .local v1, "invalid$iv":Z
    move-object v2, v12

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 218
    .local v3, "$i$f$cache":I
    move/from16 p2, v3

    .end local v3    # "$i$f$cache":I
    .local p2, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 219
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_25

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p3, v1

    .end local v1    # "invalid$iv":Z
    .local p3, "invalid$iv":Z
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_24

    goto :goto_18

    .line 223
    :cond_24
    move-object v1, v3

    goto :goto_19

    .line 219
    .end local p3    # "invalid$iv":Z
    .restart local v1    # "invalid$iv":Z
    :cond_25
    move/from16 p3, v1

    .line 220
    .end local v1    # "invalid$iv":Z
    .restart local p3    # "invalid$iv":Z
    :goto_18
    const/4 v1, 0x0

    .line 100
    .local v1, "$i$a$-cache-AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1":I
    new-instance v17, Landroidx/compose/material3/DropdownMenuPositionProvider;

    .line 101
    nop

    .line 102
    nop

    .line 100
    const/16 v22, 0x0

    .line 103
    move/from16 p4, v1

    .end local v1    # "$i$a$-cache-AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1":I
    .local p4, "$i$a$-cache-AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1":I
    new-instance v1, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1;

    invoke-direct {v1, v5}, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    move-object/from16 v23, v1

    check-cast v23, Lkotlin/jvm/functions/Function2;

    .line 100
    const/16 v24, 0x4

    const/16 v25, 0x0

    move-object/from16 v18, v17

    move-wide/from16 v19, v9

    move-object/from16 v21, v4

    invoke-direct/range {v18 .. v25}, Landroidx/compose/material3/DropdownMenuPositionProvider;-><init>(JLandroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 220
    .end local p4    # "$i$a$-cache-AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1":I
    move-object/from16 v1, v17

    .line 221
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 222
    nop

    .line 219
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_19
    nop

    .line 218
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 99
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local p2    # "$i$f$cache":I
    .end local p3    # "invalid$iv":Z
    move-object/from16 v16, v1

    check-cast v16, Landroidx/compose/material3/DropdownMenuPositionProvider;

    .local v16, "popupPositionProvider":Landroidx/compose/material3/DropdownMenuPositionProvider;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 110
    move-object/from16 v1, v16

    check-cast v1, Landroidx/compose/ui/window/PopupPositionProvider;

    .line 109
    nop

    .line 111
    nop

    .line 112
    new-instance v2, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$1;

    move-object/from16 v17, v2

    move-object/from16 v18, v0

    move-object/from16 v19, v5

    move-object/from16 v20, v15

    move-object/from16 v21, v8

    move-object/from16 v22, p7

    invoke-direct/range {v17 .. v22}, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$1;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)V

    const v3, -0x328d3cb7    # -2.5455528E8f

    move-object/from16 p2, v0

    const/4 v0, 0x1

    .end local v0    # "expandedState":Landroidx/compose/animation/core/MutableTransitionState;
    .local p2, "expandedState":Landroidx/compose/animation/core/MutableTransitionState;
    invoke-static {v12, v3, v0, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    and-int/lit8 v2, v6, 0x70

    or-int/lit16 v2, v2, 0xc00

    shr-int/lit8 v3, v6, 0x9

    and-int/lit16 v3, v3, 0x380

    or-int v17, v2, v3

    const/16 v18, 0x0

    .line 108
    move-object/from16 v2, p1

    move-object/from16 v3, v26

    move-object/from16 v19, v4

    .end local v4    # "density":Landroidx/compose/ui/unit/Density;
    .local v19, "density":Landroidx/compose/ui/unit/Density;
    move-object v4, v0

    move-object v0, v5

    .end local v5    # "transformOriginState":Landroidx/compose/runtime/MutableState;
    .local v0, "transformOriginState":Landroidx/compose/runtime/MutableState;
    move-object v5, v12

    move/from16 v20, v6

    .end local v6    # "$dirty":I
    .local v20, "$dirty":I
    move/from16 v6, v17

    move/from16 v7, v18

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->Popup(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .end local v0    # "transformOriginState":Landroidx/compose/runtime/MutableState;
    .end local v16    # "popupPositionProvider":Landroidx/compose/material3/DropdownMenuPositionProvider;
    .end local v19    # "density":Landroidx/compose/ui/unit/Density;
    :goto_1a
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 122
    .end local p2    # "expandedState":Landroidx/compose/animation/core/MutableTransitionState;
    :cond_26
    move-wide/from16 v16, v9

    move-object/from16 v18, v15

    move-object v15, v8

    .end local v8    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v9    # "offset":J
    .local v15, "modifier":Landroidx/compose/ui/Modifier;
    .local v16, "offset":J
    .local v18, "scrollState":Landroidx/compose/foundation/ScrollState;
    :goto_1b
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_27

    new-instance v19, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$2;

    move-object/from16 v0, v19

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move-wide/from16 v4, v16

    move-object/from16 v6, v18

    move-object/from16 v7, v26

    move-object/from16 v8, p7

    move/from16 v9, p9

    move-object v11, v10

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$2;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_27
    return-void
.end method

.method public static final synthetic DropdownMenu-ILWXrKs(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 24
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

    .line 142
    move/from16 v10, p8

    const v0, 0x152639aa

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(DropdownMenu)P(1,4,2,3:c#ui.unit.DpOffset,5)146@6601L21,141@6457L219:AndroidMenu.android.kt#uh7d8r"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p8

    .local v1, "$dirty":I
    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move/from16 v8, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v10, 0x6

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
    and-int/lit8 v2, v10, 0x30

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
    and-int/lit16 v3, v10, 0x180

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
    and-int/lit16 v5, v10, 0xc00

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
    and-int/lit16 v12, v10, 0x6000

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

    const/high16 v14, 0x30000

    if-eqz v13, :cond_f

    or-int/2addr v1, v14

    move-object/from16 v14, p6

    goto :goto_b

    :cond_f
    and-int v13, v10, v14

    if-nez v13, :cond_11

    move-object/from16 v14, p6

    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v14, p6

    :goto_b
    const v13, 0x12493

    and-int/2addr v13, v1

    const v15, 0x12492

    if-ne v13, v15, :cond_13

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v13

    if-nez v13, :cond_12

    goto :goto_c

    .line 150
    :cond_12
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v11, v3

    move-object v14, v12

    move-wide v12, v5

    goto/16 :goto_10

    .line 142
    :cond_13
    :goto_c
    if-eqz v2, :cond_14

    .line 138
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_d

    .line 142
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_14
    move-object v2, v3

    .line 138
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_d
    if-eqz v4, :cond_15

    .line 139
    const/4 v3, 0x0

    .local v3, "$this$dp$iv":I
    const/4 v4, 0x0

    .line 224
    .local v4, "$i$f$getDp":I
    int-to-float v13, v3

    invoke-static {v13}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 139
    .end local v3    # "$this$dp$iv":I
    .end local v4    # "$i$f$getDp":I
    const/4 v4, 0x0

    .local v4, "$this$dp$iv":I
    const/4 v13, 0x0

    .line 224
    .local v13, "$i$f$getDp":I
    int-to-float v15, v4

    invoke-static {v15}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 139
    .end local v4    # "$this$dp$iv":I
    .end local v13    # "$i$f$getDp":I
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/DpKt;->DpOffset-YgX7TsA(FF)J

    move-result-wide v3

    .end local p3    # "offset":J
    .local v3, "offset":J
    goto :goto_e

    .line 138
    .end local v3    # "offset":J
    .restart local p3    # "offset":J
    :cond_15
    move-wide v3, v5

    .line 139
    .end local p3    # "offset":J
    .restart local v3    # "offset":J
    :goto_e
    if-eqz v11, :cond_16

    .line 140
    new-instance v5, Landroidx/compose/ui/window/PopupProperties;

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x3e

    const/16 v23, 0x0

    move-object v15, v5

    invoke-direct/range {v15 .. v23}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .end local p5    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .local v5, "properties":Landroidx/compose/ui/window/PopupProperties;
    goto :goto_f

    .line 139
    .end local v5    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .restart local p5    # "properties":Landroidx/compose/ui/window/PopupProperties;
    :cond_16
    move-object v5, v12

    .line 140
    .end local p5    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .restart local v5    # "properties":Landroidx/compose/ui/window/PopupProperties;
    :goto_f
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 142
    const/4 v6, -0x1

    const-string/jumbo v11, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:141)"

    invoke-static {v0, v1, v6, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 143
    :cond_17
    nop

    .line 144
    nop

    .line 145
    nop

    .line 146
    nop

    .line 147
    const/4 v0, 0x0

    const/4 v6, 0x1

    invoke-static {v0, v9, v0, v6}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v16

    .line 148
    nop

    .line 149
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

    .line 142
    move/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v2

    move-wide v14, v3

    move-object/from16 v17, v5

    move-object/from16 v18, p6

    move-object/from16 v19, v9

    invoke-static/range {v11 .. v21}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenu-4kj-_NE(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 150
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

    new-instance v16, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$3;

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

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$3;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function3;II)V

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

.method public static final DropdownMenuItem(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .param p0, "text"    # Lkotlin/jvm/functions/Function2;
    .param p1, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "leadingIcon"    # Lkotlin/jvm/functions/Function2;
    .param p4, "trailingIcon"    # Lkotlin/jvm/functions/Function2;
    .param p5, "enabled"    # Z
    .param p6, "colors"    # Landroidx/compose/material3/MenuItemColors;
    .param p7, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p8, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I
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
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
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
            ">;Z",
            "Landroidx/compose/material3/MenuItemColors;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 190
    move/from16 v12, p10

    move/from16 v11, p11

    const v0, 0x6cdbbe60

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(DropdownMenuItem)P(7,6,5,4,8,2)186@8615L12,188@8760L39,190@8809L319:AndroidMenu.android.kt#uh7d8r"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p10

    .local v1, "$dirty":I
    and-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v9, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v12, 0x6

    if-nez v2, :cond_2

    move-object/from16 v9, p0

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v9, p0

    :goto_1
    and-int/lit8 v2, v11, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v8, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v12, 0x30

    if-nez v2, :cond_5

    move-object/from16 v8, p1

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v8, p1

    :goto_3
    and-int/lit8 v2, v11, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v3, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v12, 0x180

    if-nez v3, :cond_8

    move-object/from16 v3, p2

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v4, v11, 0x8

    if-eqz v4, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v5, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v5, v12, 0xc00

    if-nez v5, :cond_b

    move-object/from16 v5, p3

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x800

    goto :goto_6

    :cond_a
    const/16 v6, 0x400

    :goto_6
    or-int/2addr v1, v6

    goto :goto_7

    :cond_b
    move-object/from16 v5, p3

    :goto_7
    and-int/lit8 v6, v11, 0x10

    if-eqz v6, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v7, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v7, v12, 0x6000

    if-nez v7, :cond_e

    move-object/from16 v7, p4

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v7, p4

    :goto_9
    and-int/lit8 v13, v11, 0x20

    const/high16 v14, 0x30000

    if-eqz v13, :cond_f

    or-int/2addr v1, v14

    move/from16 v14, p5

    goto :goto_b

    :cond_f
    and-int/2addr v14, v12

    if-nez v14, :cond_11

    move/from16 v14, p5

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    move/from16 v14, p5

    :goto_b
    const/high16 v15, 0x180000

    and-int/2addr v15, v12

    if-nez v15, :cond_14

    and-int/lit8 v15, v11, 0x40

    if-nez v15, :cond_12

    move-object/from16 v15, p6

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_12
    move-object/from16 v15, p6

    :cond_13
    const/high16 v16, 0x80000

    :goto_c
    or-int v1, v1, v16

    goto :goto_d

    :cond_14
    move-object/from16 v15, p6

    :goto_d
    and-int/lit16 v0, v11, 0x80

    const/high16 v17, 0xc00000

    if-eqz v0, :cond_15

    or-int v1, v1, v17

    move-object/from16 v3, p7

    goto :goto_f

    :cond_15
    and-int v17, v12, v17

    if-nez v17, :cond_17

    move-object/from16 v3, p7

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    const/high16 v17, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v17, 0x400000

    :goto_e
    or-int v1, v1, v17

    goto :goto_f

    :cond_17
    move-object/from16 v3, p7

    :goto_f
    and-int/lit16 v3, v11, 0x100

    const/high16 v17, 0x6000000

    if-eqz v3, :cond_18

    or-int v1, v1, v17

    move-object/from16 v5, p8

    goto :goto_11

    :cond_18
    and-int v17, v12, v17

    if-nez v17, :cond_1a

    move-object/from16 v5, p8

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    const/high16 v17, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v17, 0x2000000

    :goto_10
    or-int v1, v1, v17

    goto :goto_11

    :cond_1a
    move-object/from16 v5, p8

    :goto_11
    const v17, 0x2492493

    and-int v5, v1, v17

    const v7, 0x2492492

    if-ne v5, v7, :cond_1c

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_1b

    goto :goto_12

    .line 202
    :cond_1b
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v13, p2

    move-object/from16 v18, p7

    move-object/from16 v19, p8

    move/from16 v20, v1

    move/from16 v16, v14

    move-object/from16 v17, v15

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    goto/16 :goto_1c

    .line 190
    :cond_1c
    :goto_12
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v5, v12, 0x1

    const v7, -0x380001

    if-eqz v5, :cond_1f

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_13

    .line 189
    :cond_1d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v11, 0x40

    if-eqz v0, :cond_1e

    and-int v0, v1, v7

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v1, p7

    move-object/from16 v3, p8

    move v7, v0

    move v6, v14

    move-object v0, v15

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_1b

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_1e
    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v3, p8

    move v7, v1

    move v6, v14

    move-object v0, v15

    move-object/from16 v1, p7

    goto/16 :goto_1b

    .line 190
    :cond_1f
    :goto_13
    if-eqz v2, :cond_20

    .line 183
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_14

    .line 190
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_20
    move-object/from16 v2, p2

    .line 183
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_14
    if-eqz v4, :cond_21

    .line 184
    const/4 v4, 0x0

    .end local p3    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .local v4, "leadingIcon":Lkotlin/jvm/functions/Function2;
    goto :goto_15

    .line 183
    .end local v4    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .restart local p3    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    :cond_21
    move-object/from16 v4, p3

    .line 184
    .end local p3    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .restart local v4    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    :goto_15
    if-eqz v6, :cond_22

    .line 185
    const/4 v5, 0x0

    .end local p4    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    .local v5, "trailingIcon":Lkotlin/jvm/functions/Function2;
    goto :goto_16

    .line 184
    .end local v5    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    .restart local p4    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    :cond_22
    move-object/from16 v5, p4

    .line 185
    .end local p4    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    .restart local v5    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    :goto_16
    if-eqz v13, :cond_23

    .line 186
    const/4 v6, 0x1

    .end local p5    # "enabled":Z
    .local v6, "enabled":Z
    goto :goto_17

    .line 185
    .end local v6    # "enabled":Z
    .restart local p5    # "enabled":Z
    :cond_23
    move v6, v14

    .line 186
    .end local p5    # "enabled":Z
    .restart local v6    # "enabled":Z
    :goto_17
    and-int/lit8 v13, v11, 0x40

    if-eqz v13, :cond_24

    .line 187
    sget-object v13, Landroidx/compose/material3/MenuDefaults;->INSTANCE:Landroidx/compose/material3/MenuDefaults;

    const/4 v14, 0x6

    invoke-virtual {v13, v10, v14}, Landroidx/compose/material3/MenuDefaults;->itemColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/MenuItemColors;

    move-result-object v13

    .end local p6    # "colors":Landroidx/compose/material3/MenuItemColors;
    .local v13, "colors":Landroidx/compose/material3/MenuItemColors;
    and-int/2addr v1, v7

    goto :goto_18

    .line 186
    .end local v13    # "colors":Landroidx/compose/material3/MenuItemColors;
    .restart local p6    # "colors":Landroidx/compose/material3/MenuItemColors;
    :cond_24
    move-object v13, v15

    .line 187
    .end local p6    # "colors":Landroidx/compose/material3/MenuItemColors;
    .restart local v13    # "colors":Landroidx/compose/material3/MenuItemColors;
    :goto_18
    if-eqz v0, :cond_25

    .line 188
    sget-object v0, Landroidx/compose/material3/MenuDefaults;->INSTANCE:Landroidx/compose/material3/MenuDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/MenuDefaults;->getDropdownMenuItemContentPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    .end local p7    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v0, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    goto :goto_19

    .line 187
    .end local v0    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local p7    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :cond_25
    move-object/from16 v0, p7

    .line 188
    .end local p7    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local v0    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :goto_19
    if-eqz v3, :cond_27

    .line 189
    const v3, 0x769c32d2

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember):AndroidMenu.android.kt#9igjgp"

    invoke-static {v10, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v3, 0x0

    .local v3, "invalid$iv":Z
    move-object v7, v10

    .local v7, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 225
    .local v14, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 226
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p2, v0

    .end local v0    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local p2, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v15, v0, :cond_26

    .line 227
    const/4 v0, 0x0

    .line 189
    .local v0, "$i$a$-cache-AndroidMenu_androidKt$DropdownMenuItem$1":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    .line 227
    .end local v0    # "$i$a$-cache-AndroidMenu_androidKt$DropdownMenuItem$1":I
    nop

    .line 228
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 229
    nop

    .end local v0    # "value$iv":Ljava/lang/Object;
    goto :goto_1a

    .line 230
    :cond_26
    move-object v0, v15

    .line 226
    :goto_1a
    nop

    .line 225
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 189
    .end local v3    # "invalid$iv":Z
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache":I
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .end local p8    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v3, v0

    move v7, v1

    move-object v0, v13

    move-object/from16 v1, p2

    goto :goto_1b

    .line 188
    .end local p2    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v0, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local p8    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_27
    move-object/from16 p2, v0

    .end local v0    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local p2    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    move-object/from16 v3, p8

    move v7, v1

    move-object v0, v13

    move-object/from16 v1, p2

    .line 189
    .end local v13    # "colors":Landroidx/compose/material3/MenuItemColors;
    .end local p2    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .end local p8    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "colors":Landroidx/compose/material3/MenuItemColors;
    .local v1, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v3, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v7, "$dirty":I
    :goto_1b
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v13

    if-eqz v13, :cond_28

    .line 190
    const/4 v13, -0x1

    const-string/jumbo v14, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:189)"

    const v15, 0x6cdbbe60

    invoke-static {v15, v7, v13, v14}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 192
    :cond_28
    nop

    .line 193
    nop

    .line 194
    nop

    .line 195
    nop

    .line 196
    nop

    .line 197
    nop

    .line 198
    nop

    .line 199
    nop

    .line 200
    and-int/lit8 v13, v7, 0xe

    and-int/lit8 v14, v7, 0x70

    or-int/2addr v13, v14

    and-int/lit16 v14, v7, 0x380

    or-int/2addr v13, v14

    and-int/lit16 v14, v7, 0x1c00

    or-int/2addr v13, v14

    const v14, 0xe000

    and-int/2addr v14, v7

    or-int/2addr v13, v14

    const/high16 v14, 0x70000

    and-int/2addr v14, v7

    or-int/2addr v13, v14

    const/high16 v14, 0x380000

    and-int/2addr v14, v7

    or-int/2addr v13, v14

    const/high16 v14, 0x1c00000

    and-int/2addr v14, v7

    or-int/2addr v13, v14

    const/high16 v14, 0xe000000

    and-int/2addr v14, v7

    or-int v23, v13, v14

    .line 191
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object v15, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move-object/from16 v22, v10

    invoke-static/range {v13 .. v23}, Landroidx/compose/material3/MenuKt;->DropdownMenuItemContent(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v13

    if-eqz v13, :cond_29

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 202
    :cond_29
    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object v13, v2

    move-object/from16 v19, v3

    move-object v14, v4

    move-object v15, v5

    move/from16 v16, v6

    move/from16 v20, v7

    .end local v0    # "colors":Landroidx/compose/material3/MenuItemColors;
    .end local v1    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v4    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .end local v5    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    .end local v6    # "enabled":Z
    .end local v7    # "$dirty":I
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    .local v14, "leadingIcon":Lkotlin/jvm/functions/Function2;
    .local v15, "trailingIcon":Lkotlin/jvm/functions/Function2;
    .local v16, "enabled":Z
    .local v17, "colors":Landroidx/compose/material3/MenuItemColors;
    .local v18, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v19, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v20, "$dirty":I
    :goto_1c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_2a

    new-instance v21, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenuItem$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move/from16 v6, v16

    move-object v12, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v22, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v22, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenuItem$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    move-object/from16 v0, v21

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_1d

    .end local v22    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v10    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2a
    move-object/from16 v22, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v22    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_1d
    return-void
.end method
