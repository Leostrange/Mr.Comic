.class public final Landroidx/compose/material/MaterialTextSelectionColorsKt;
.super Ljava/lang/Object;
.source "MaterialTextSelectionColors.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaterialTextSelectionColors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaterialTextSelectionColors.kt\nandroidx/compose/material/MaterialTextSelectionColorsKt\n+ 2 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,242:1\n658#2:243\n646#2:244\n74#3:245\n67#4,3:246\n66#4:249\n1116#5,6:250\n*S KotlinDebug\n*F\n+ 1 MaterialTextSelectionColors.kt\nandroidx/compose/material/MaterialTextSelectionColorsKt\n*L\n43#1:243\n43#1:244\n44#1:245\n48#1:246,3\n48#1:249\n48#1:250,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a*\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\n\u001a\"\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a2\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u001a*\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u001a\u0015\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0001\u00a2\u0006\u0002\u0010\u001a\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001b"
    }
    d2 = {
        "DefaultSelectionBackgroundAlpha",
        "",
        "DesiredContrastRatio",
        "MinimumSelectionBackgroundAlpha",
        "binarySearchForAccessibleSelectionColorAlpha",
        "selectionColor",
        "Landroidx/compose/ui/graphics/Color;",
        "textColor",
        "backgroundColor",
        "binarySearchForAccessibleSelectionColorAlpha-ysEtTa8",
        "(JJJ)F",
        "calculateContrastRatio",
        "foreground",
        "background",
        "calculateContrastRatio--OWjLjI",
        "(JJ)F",
        "selectionColorAlpha",
        "calculateContrastRatio-nb2GgbA",
        "(JFJJ)F",
        "calculateSelectionBackgroundColor",
        "calculateSelectionBackgroundColor-ysEtTa8",
        "(JJJ)J",
        "rememberTextSelectionColors",
        "Landroidx/compose/foundation/text/selection/TextSelectionColors;",
        "colors",
        "Landroidx/compose/material/Colors;",
        "(Landroidx/compose/material/Colors;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/text/selection/TextSelectionColors;",
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
.field private static final DefaultSelectionBackgroundAlpha:F = 0.4f

.field private static final DesiredContrastRatio:F = 4.5f

.field private static final MinimumSelectionBackgroundAlpha:F = 0.2f


# direct methods
.method private static final binarySearchForAccessibleSelectionColorAlpha-ysEtTa8(JJJ)F
    .locals 12
    .param p0, "selectionColor"    # J
    .param p2, "textColor"    # J
    .param p4, "backgroundColor"    # J

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "attempts":I
    const/4 v1, 0x7

    .line 147
    .local v1, "maxAttempts":I
    const v2, 0x3e4ccccd    # 0.2f

    .line 148
    .local v2, "lowAlpha":F
    const v3, 0x3ecccccd    # 0.4f

    .line 149
    .local v3, "alpha":F
    const v4, 0x3ecccccd    # 0.4f

    move v10, v3

    move v11, v4

    .line 151
    .end local v3    # "alpha":F
    .local v10, "alpha":F
    .local v11, "highAlpha":F
    :goto_0
    if-ge v0, v1, :cond_2

    .line 153
    nop

    .line 154
    nop

    .line 155
    nop

    .line 156
    nop

    .line 152
    move-wide v3, p0

    move v5, v10

    move-wide v6, p2

    move-wide/from16 v8, p4

    invoke-static/range {v3 .. v9}, Landroidx/compose/material/MaterialTextSelectionColorsKt;->calculateContrastRatio-nb2GgbA(JFJJ)F

    move-result v3

    .line 161
    .local v3, "contrastRatio":F
    const/high16 v4, 0x40900000    # 4.5f

    div-float v4, v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    .line 162
    .local v4, "percentageError":F
    nop

    .line 164
    const/4 v5, 0x0

    cmpg-float v6, v5, v4

    const/4 v7, 0x0

    if-gtz v6, :cond_0

    const v6, 0x3c23d70a    # 0.01f

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_0

    const/4 v7, 0x1

    :cond_0
    if-nez v7, :cond_2

    .line 166
    cmpg-float v5, v4, v5

    if-gez v5, :cond_1

    move v5, v10

    move v11, v5

    .end local v11    # "highAlpha":F
    .local v5, "highAlpha":F
    goto :goto_1

    .line 168
    .end local v5    # "highAlpha":F
    .restart local v11    # "highAlpha":F
    :cond_1
    move v2, v10

    .line 170
    :goto_1
    add-float v5, v11, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float v10, v5, v6

    .line 171
    nop

    .end local v3    # "contrastRatio":F
    .end local v4    # "percentageError":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_2
    return v10
.end method

.method public static final calculateContrastRatio--OWjLjI(JJ)F
    .locals 4
    .param p0, "foreground"    # J
    .param p2, "background"    # J

    .line 217
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/ColorKt;->luminance-8_81llA(J)F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v1

    .line 218
    .local v0, "foregroundLuminance":F
    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/ColorKt;->luminance-8_81llA(J)F

    move-result v2

    add-float/2addr v2, v1

    .line 220
    .local v2, "backgroundLuminance":F
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 221
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 220
    div-float/2addr v1, v3

    return v1
.end method

.method private static final calculateContrastRatio-nb2GgbA(JFJJ)F
    .locals 8
    .param p0, "selectionColor"    # J
    .param p2, "selectionColorAlpha"    # F
    .param p3, "textColor"    # J
    .param p5, "backgroundColor"    # J

    .line 198
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-wide v0, p0

    move v2, p2

    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v0

    .line 199
    invoke-static {v0, v1, p5, p6}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    move-result-wide v0

    .line 198
    nop

    .line 200
    .local v0, "compositeBackground":J
    invoke-static {p3, p4, v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    move-result-wide v2

    .line 201
    .local v2, "compositeTextColor":J
    invoke-static {v2, v3, v0, v1}, Landroidx/compose/material/MaterialTextSelectionColorsKt;->calculateContrastRatio--OWjLjI(JJ)F

    move-result v4

    return v4
.end method

.method public static final calculateSelectionBackgroundColor-ysEtTa8(JJJ)J
    .locals 11
    .param p0, "selectionColor"    # J
    .param p2, "textColor"    # J
    .param p4, "backgroundColor"    # J

    .line 84
    nop

    .line 85
    const v2, 0x3ecccccd    # 0.4f

    .line 86
    nop

    .line 87
    nop

    .line 83
    move-wide v0, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Landroidx/compose/material/MaterialTextSelectionColorsKt;->calculateContrastRatio-nb2GgbA(JFJJ)F

    move-result v0

    .line 91
    .local v0, "maximumContrastRatio":F
    nop

    .line 92
    const v3, 0x3e4ccccd    # 0.2f

    .line 93
    nop

    .line 94
    nop

    .line 90
    move-wide v1, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v1 .. v7}, Landroidx/compose/material/MaterialTextSelectionColorsKt;->calculateContrastRatio-nb2GgbA(JFJJ)F

    move-result v1

    .line 97
    .local v1, "minimumContrastRatio":F
    nop

    .line 99
    const/high16 v2, 0x40900000    # 4.5f

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_0

    const v2, 0x3ecccccd    # 0.4f

    move v5, v2

    goto :goto_0

    .line 101
    :cond_0
    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    const v2, 0x3e4ccccd    # 0.2f

    move v5, v2

    goto :goto_0

    .line 103
    :cond_1
    nop

    .line 104
    nop

    .line 105
    nop

    .line 102
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/MaterialTextSelectionColorsKt;->binarySearchForAccessibleSelectionColorAlpha-ysEtTa8(JJJ)F

    move-result v2

    move v5, v2

    .line 97
    :goto_0
    nop

    .line 109
    .local v5, "alpha":F
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    const/4 v10, 0x0

    move-wide v3, p0

    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v2

    return-wide v2
.end method

.method public static final rememberTextSelectionColors(Landroidx/compose/material/Colors;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/text/selection/TextSelectionColors;
    .locals 30
    .param p0, "colors"    # Landroidx/compose/material/Colors;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p1

    const v1, -0x2b0437ad

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(rememberTextSelectionColors)45@1902L6,47@1930L384:MaterialTextSelectionColors.kt#jmzs0o"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.material.rememberTextSelectionColors (MaterialTextSelectionColors.kt:35)"

    move/from16 v4, p2

    invoke-static {v1, v4, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_0

    .line 0
    :cond_0
    move/from16 v4, p2

    .line 37
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    move-result-wide v1

    .line 38
    .local v1, "primaryColor":J
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material/Colors;->getBackground-0d7_KjU()J

    move-result-wide v11

    .local v11, "backgroundColor":J
    const v3, 0x21eccae

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "*43@1845L7"

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 42
    move-object/from16 v3, p0

    invoke-static {v3, v11, v12}, Landroidx/compose/material/ColorsKt;->contentColorFor-4WTKRHQ(Landroidx/compose/material/Colors;J)J

    move-result-wide v5

    .line 43
    nop

    .local v5, "$this$takeOrElse_u2dDxMtmZc$iv":J
    const/4 v7, 0x0

    .line 243
    .local v7, "$i$f$takeOrElse-DxMtmZc":I
    move-wide v8, v5

    .local v8, "$this$isSpecified$iv$iv":J
    const/4 v10, 0x0

    .line 244
    .local v10, "$i$f$isSpecified-8_81llA":I
    sget-object v13, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v13

    cmp-long v13, v8, v13

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 243
    .end local v8    # "$this$isSpecified$iv$iv":J
    .end local v10    # "$i$f$isSpecified-8_81llA":I
    :goto_1
    if-eqz v13, :cond_2

    move-wide/from16 v17, v5

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 44
    .local v8, "$i$a$-takeOrElse-DxMtmZc-MaterialTextSelectionColorsKt$rememberTextSelectionColors$textColorWithLowestAlpha$1":I
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    check-cast v9, Landroidx/compose/runtime/CompositionLocal;

    .local v9, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v10, 0x6

    .local v10, "$changed$iv":I
    const/4 v13, 0x0

    .line 245
    .local v13, "$i$f$getCurrent":I
    const v15, 0x789c5f52

    const-string v14, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v0, v15, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 44
    .end local v9    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v10    # "$changed$iv":I
    .end local v13    # "$i$f$getCurrent":I
    check-cast v14, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v8

    .line 243
    .end local v8    # "$i$a$-takeOrElse-DxMtmZc-MaterialTextSelectionColorsKt$rememberTextSelectionColors$textColorWithLowestAlpha$1":I
    move-wide/from16 v17, v8

    .line 43
    .end local v5    # "$this$takeOrElse_u2dDxMtmZc$iv":J
    .end local v7    # "$i$f$takeOrElse-DxMtmZc":I
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 46
    sget-object v5, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    const/4 v6, 0x6

    invoke-virtual {v5, v0, v6}, Landroidx/compose/material/ContentAlpha;->getMedium(Landroidx/compose/runtime/Composer;I)F

    move-result v19

    .line 45
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0xe

    const/16 v24, 0x0

    invoke-static/range {v17 .. v24}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v7

    .line 42
    nop

    .local v7, "textColorWithLowestAlpha":J
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v5

    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v6

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v9

    .line 48
    move-object v13, v9

    const/4 v9, 0x0

    .local v13, "key3$iv":Ljava/lang/Object;
    move v14, v9

    .local v14, "$changed$iv":I
    move-object v15, v6

    .local v15, "key2$iv":Ljava/lang/Object;
    move-object v9, v5

    .local v9, "key1$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .local v16, "$i$f$remember":I
    const v5, 0x607fb4c4

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {v0, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 246
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    .line 247
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    .line 246
    or-int/2addr v5, v6

    .line 248
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    .line 246
    or-int/2addr v5, v6

    .line 249
    move-object/from16 v10, p1

    .local v10, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    move/from16 v17, v5

    .local v17, "invalid$iv$iv":Z
    const/16 v18, 0x0

    .line 250
    .local v18, "$i$f$cache":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 251
    .local v19, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v17, :cond_4

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_3

    goto :goto_3

    .line 255
    :cond_3
    move-object/from16 v28, v5

    move-object/from16 v29, v9

    move-object v0, v10

    goto :goto_4

    .line 252
    :cond_4
    :goto_3
    const/16 v20, 0x0

    .line 49
    .local v20, "$i$a$-remember-MaterialTextSelectionColorsKt$rememberTextSelectionColors$1":I
    new-instance v27, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    move-result-wide v22

    .line 52
    nop

    .line 53
    nop

    .line 54
    nop

    .line 51
    move-object/from16 v28, v5

    .end local v5    # "it$iv$iv":Ljava/lang/Object;
    .local v28, "it$iv$iv":Ljava/lang/Object;
    move-wide v5, v1

    move-object/from16 v29, v9

    move-object v0, v10

    .end local v9    # "key1$iv":Ljava/lang/Object;
    .end local v10    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v0, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v29, "key1$iv":Ljava/lang/Object;
    move-wide v9, v11

    invoke-static/range {v5 .. v10}, Landroidx/compose/material/MaterialTextSelectionColorsKt;->calculateSelectionBackgroundColor-ysEtTa8(JJJ)J

    move-result-wide v24

    const/16 v26, 0x0

    .line 49
    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v26}, Landroidx/compose/foundation/text/selection/TextSelectionColors;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 252
    .end local v20    # "$i$a$-remember-MaterialTextSelectionColorsKt$rememberTextSelectionColors$1":I
    move-object/from16 v5, v27

    .line 253
    .local v5, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 254
    nop

    .line 251
    .end local v5    # "value$iv$iv":Ljava/lang/Object;
    :goto_4
    nop

    .line 250
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v28    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 249
    .end local v0    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "invalid$iv$iv":Z
    .end local v18    # "$i$f$cache":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 48
    .end local v13    # "key3$iv":Ljava/lang/Object;
    .end local v14    # "$changed$iv":I
    .end local v15    # "key2$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$remember":I
    .end local v29    # "key1$iv":Ljava/lang/Object;
    check-cast v5, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v5
.end method
