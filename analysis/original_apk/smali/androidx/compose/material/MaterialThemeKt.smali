.class public final Landroidx/compose/material/MaterialThemeKt;
.super Ljava/lang/Object;
.source "MaterialTheme.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaterialTheme.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaterialTheme.kt\nandroidx/compose/material/MaterialThemeKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,139:1\n25#2:140\n1116#3,6:141\n1#4:147\n*S KotlinDebug\n*F\n+ 1 MaterialTheme.kt\nandroidx/compose/material/MaterialThemeKt\n*L\n65#1:140\n65#1:141,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a>\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0011\u0010\u0008\u001a\r\u0012\u0004\u0012\u00020\u00010\t\u00a2\u0006\u0002\u0008\nH\u0007\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "MaterialTheme",
        "",
        "colors",
        "Landroidx/compose/material/Colors;",
        "typography",
        "Landroidx/compose/material/Typography;",
        "shapes",
        "Landroidx/compose/material/Shapes;",
        "content",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "(Landroidx/compose/material/Colors;Landroidx/compose/material/Typography;Landroidx/compose/material/Shapes;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
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
.method public static final MaterialTheme(Landroidx/compose/material/Colors;Landroidx/compose/material/Typography;Landroidx/compose/material/Shapes;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 45
    .param p0, "colors"    # Landroidx/compose/material/Colors;
    .param p1, "typography"    # Landroidx/compose/material/Typography;
    .param p2, "shapes"    # Landroidx/compose/material/Shapes;
    .param p3, "content"    # Lkotlin/jvm/functions/Function2;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/Colors;",
            "Landroidx/compose/material/Typography;",
            "Landroidx/compose/material/Shapes;",
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

    .line 64
    move-object/from16 v7, p3

    move/from16 v8, p5

    const v0, -0x3521f1f7    # -7276292.5f

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(MaterialTheme)P(!1,3,2)59@2947L6,60@2998L10,61@3045L6,*64@3120L184,69@3367L16,70@3410L45,73@3581L4,71@3460L492:MaterialTheme.kt#jmzs0o"

    invoke-static {v6, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p5

    .local v1, "$dirty":I
    and-int/lit8 v2, v8, 0xe

    if-nez v2, :cond_2

    and-int/lit8 v2, p6, 0x1

    if-nez v2, :cond_0

    move-object/from16 v2, p0

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    move-object/from16 v2, p0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v1, v5

    goto :goto_1

    :cond_2
    move-object/from16 v2, p0

    :goto_1
    and-int/lit8 v5, v8, 0x70

    if-nez v5, :cond_5

    and-int/lit8 v5, p6, 0x2

    if-nez v5, :cond_3

    move-object/from16 v5, p1

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x20

    goto :goto_2

    :cond_3
    move-object/from16 v5, p1

    :cond_4
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v1, v9

    goto :goto_3

    :cond_5
    move-object/from16 v5, p1

    :goto_3
    and-int/lit16 v9, v8, 0x380

    if-nez v9, :cond_8

    and-int/lit8 v9, p6, 0x4

    if-nez v9, :cond_6

    move-object/from16 v9, p2

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v9, p2

    :cond_7
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v1, v10

    goto :goto_5

    :cond_8
    move-object/from16 v9, p2

    :goto_5
    and-int/lit8 v10, p6, 0x8

    if-eqz v10, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v10, v8, 0x1c00

    if-nez v10, :cond_b

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x800

    goto :goto_6

    :cond_a
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v1, v10

    :cond_b
    :goto_7
    and-int/lit16 v10, v1, 0x16db

    const/16 v11, 0x492

    if-ne v10, v11, :cond_d

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v10

    if-nez v10, :cond_c

    goto :goto_8

    .line 85
    :cond_c
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v17, v1

    move-object v10, v5

    move-object v11, v9

    move-object v9, v2

    goto/16 :goto_c

    .line 64
    :cond_d
    :goto_8
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v10, v8, 0x1

    const/4 v15, 0x6

    if-eqz v10, :cond_12

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v10

    if-eqz v10, :cond_e

    goto :goto_9

    .line 62
    :cond_e
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v10, p6, 0x1

    if-eqz v10, :cond_f

    and-int/lit8 v1, v1, -0xf

    :cond_f
    and-int/lit8 v10, p6, 0x2

    if-eqz v10, :cond_10

    and-int/lit8 v1, v1, -0x71

    :cond_10
    and-int/lit8 v10, p6, 0x4

    if-eqz v10, :cond_11

    and-int/lit16 v1, v1, -0x381

    move v14, v1

    move-object v1, v9

    goto :goto_a

    :cond_11
    move v14, v1

    move-object v1, v9

    goto :goto_a

    .line 64
    :cond_12
    :goto_9
    and-int/lit8 v10, p6, 0x1

    if-eqz v10, :cond_13

    .line 60
    sget-object v10, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v10, v6, v15}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v2

    .end local p0    # "colors":Landroidx/compose/material/Colors;
    .local v2, "colors":Landroidx/compose/material/Colors;
    and-int/lit8 v1, v1, -0xf

    :cond_13
    and-int/lit8 v10, p6, 0x2

    if-eqz v10, :cond_14

    .line 61
    sget-object v10, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v10, v6, v15}, Landroidx/compose/material/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    move-result-object v5

    .end local p1    # "typography":Landroidx/compose/material/Typography;
    .local v5, "typography":Landroidx/compose/material/Typography;
    and-int/lit8 v1, v1, -0x71

    :cond_14
    and-int/lit8 v10, p6, 0x4

    if-eqz v10, :cond_15

    .line 62
    sget-object v10, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v10, v6, v15}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    move-result-object v9

    .end local p2    # "shapes":Landroidx/compose/material/Shapes;
    .local v9, "shapes":Landroidx/compose/material/Shapes;
    and-int/lit16 v1, v1, -0x381

    move v14, v1

    move-object v1, v9

    goto :goto_a

    .line 61
    .end local v9    # "shapes":Landroidx/compose/material/Shapes;
    .restart local p2    # "shapes":Landroidx/compose/material/Shapes;
    :cond_15
    move v14, v1

    move-object v1, v9

    .line 62
    .end local p2    # "shapes":Landroidx/compose/material/Shapes;
    .local v1, "shapes":Landroidx/compose/material/Shapes;
    .local v14, "$dirty":I
    :goto_a
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 64
    const/4 v9, -0x1

    const-string/jumbo v10, "androidx.compose.material.MaterialTheme (MaterialTheme.kt:63)"

    invoke-static {v0, v14, v9, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_16
    nop

    .line 65
    const/4 v0, 0x0

    move v9, v0

    .local v9, "$changed$iv":I
    const/4 v10, 0x0

    .local v10, "$i$f$remember":I
    const v11, -0x1d58f75c

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v6, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 140
    const/4 v11, 0x0

    .local v11, "invalid$iv$iv":Z
    move-object v12, v6

    .local v12, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 141
    .local v13, "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv$iv":Ljava/lang/Object;
    const/16 v44, 0x0

    .line 142
    .local v44, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v15, v3, :cond_17

    .line 143
    const/4 v3, 0x0

    .line 68
    .local v3, "$i$a$-remember-MaterialThemeKt$MaterialTheme$rememberedColors$1":I
    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x1fff

    const/16 v43, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v16 .. v43}, Landroidx/compose/material/Colors;->copy-pvPzIIM$default(Landroidx/compose/material/Colors;JJJJJJJJJJJJZILjava/lang/Object;)Landroidx/compose/material/Colors;

    move-result-object v3

    .line 143
    .end local v3    # "$i$a$-remember-MaterialThemeKt$MaterialTheme$rememberedColors$1":I
    nop

    .line 144
    .local v3, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 145
    nop

    .end local v3    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_b

    .line 146
    :cond_17
    move-object v3, v15

    .line 142
    :goto_b
    nop

    .line 141
    .end local v15    # "it$iv$iv":Ljava/lang/Object;
    .end local v44    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 140
    .end local v11    # "invalid$iv$iv":Z
    .end local v12    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 69
    .end local v9    # "$changed$iv":I
    .end local v10    # "$i$f$remember":I
    move-object v9, v3

    check-cast v9, Landroidx/compose/material/Colors;

    .line 147
    .local v9, "$this$MaterialTheme_u24lambda_u241":Landroidx/compose/material/Colors;
    const/4 v10, 0x0

    .line 69
    .local v10, "$i$a$-apply-MaterialThemeKt$MaterialTheme$rememberedColors$2":I
    invoke-static {v9, v2}, Landroidx/compose/material/ColorsKt;->updateColorsFrom(Landroidx/compose/material/Colors;Landroidx/compose/material/Colors;)V

    .end local v9    # "$this$MaterialTheme_u24lambda_u241":Landroidx/compose/material/Colors;
    .end local v10    # "$i$a$-apply-MaterialThemeKt$MaterialTheme$rememberedColors$2":I
    check-cast v3, Landroidx/compose/material/Colors;

    .line 65
    nop

    .local v3, "rememberedColors":Landroidx/compose/material/Colors;
    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7

    .line 70
    move-object v13, v6

    move/from16 v17, v14

    .end local v14    # "$dirty":I
    .local v17, "$dirty":I
    move v14, v15

    const/4 v4, 0x6

    move/from16 v15, v16

    invoke-static/range {v9 .. v15}, Landroidx/compose/material/ripple/RippleKt;->rememberRipple-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    move-result-object v9

    .line 71
    .local v9, "rippleIndication":Landroidx/compose/foundation/Indication;
    invoke-static {v3, v6, v0}, Landroidx/compose/material/MaterialTextSelectionColorsKt;->rememberTextSelectionColors(Landroidx/compose/material/Colors;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/text/selection/TextSelectionColors;

    move-result-object v10

    .line 73
    .local v10, "selectionColors":Landroidx/compose/foundation/text/selection/TextSelectionColors;
    const/4 v11, 0x7

    new-array v11, v11, [Landroidx/compose/runtime/ProvidedValue;

    invoke-static {}, Landroidx/compose/material/ColorsKt;->getLocalColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v12

    aput-object v12, v11, v0

    .line 74
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->getLocalContentAlpha()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sget-object v12, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v12, v6, v4}, Landroidx/compose/material/ContentAlpha;->getHigh(Landroidx/compose/runtime/Composer;I)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    const/4 v12, 0x1

    aput-object v0, v11, v12

    .line 73
    nop

    .line 75
    invoke-static {}, Landroidx/compose/foundation/IndicationKt;->getLocalIndication()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    const/4 v13, 0x2

    aput-object v0, v11, v13

    .line 73
    nop

    .line 76
    invoke-static {}, Landroidx/compose/material/ripple/RippleThemeKt;->getLocalRippleTheme()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sget-object v13, Landroidx/compose/material/MaterialRippleTheme;->INSTANCE:Landroidx/compose/material/MaterialRippleTheme;

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    const/4 v13, 0x3

    aput-object v0, v11, v13

    .line 73
    nop

    .line 77
    invoke-static {}, Landroidx/compose/material/ShapesKt;->getLocalShapes()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    const/4 v13, 0x4

    aput-object v0, v11, v13

    .line 73
    nop

    .line 78
    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    const/4 v13, 0x5

    aput-object v0, v11, v13

    .line 73
    nop

    .line 79
    invoke-static {}, Landroidx/compose/material/TypographyKt;->getLocalTypography()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    aput-object v0, v11, v4

    .line 73
    nop

    .line 80
    new-instance v0, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$1;

    invoke-direct {v0, v5, v7}, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$1;-><init>(Landroidx/compose/material/Typography;Lkotlin/jvm/functions/Function2;)V

    const v4, -0x67b7dd37

    invoke-static {v6, v4, v12, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 72
    const/16 v4, 0x38

    invoke-static {v11, v0, v6, v4}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 85
    .end local v3    # "rememberedColors":Landroidx/compose/material/Colors;
    .end local v9    # "rippleIndication":Landroidx/compose/foundation/Indication;
    .end local v10    # "selectionColors":Landroidx/compose/foundation/text/selection/TextSelectionColors;
    :cond_18
    move-object v11, v1

    move-object v9, v2

    move-object v10, v5

    .end local v1    # "shapes":Landroidx/compose/material/Shapes;
    .end local v2    # "colors":Landroidx/compose/material/Colors;
    .end local v5    # "typography":Landroidx/compose/material/Typography;
    .local v9, "colors":Landroidx/compose/material/Colors;
    .local v10, "typography":Landroidx/compose/material/Typography;
    .local v11, "shapes":Landroidx/compose/material/Shapes;
    :goto_c
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_19

    new-instance v13, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$2;

    move-object v0, v13

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object/from16 v4, p3

    move/from16 v5, p5

    move-object v14, v6

    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$2;-><init>(Landroidx/compose/material/Colors;Landroidx/compose/material/Typography;Landroidx/compose/material/Shapes;Lkotlin/jvm/functions/Function2;II)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_d

    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v6    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_19
    move-object v14, v6

    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v14    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_d
    return-void
.end method
