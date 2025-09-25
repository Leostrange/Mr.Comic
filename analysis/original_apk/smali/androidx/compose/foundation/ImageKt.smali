.class public final Landroidx/compose/foundation/ImageKt;
.super Ljava/lang/Object;
.source "Image.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Image.kt\nandroidx/compose/foundation/ImageKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composer.kt\nandroidx/compose/runtime/Updater\n*L\n1#1,268:1\n36#2:269\n286#2,8:287\n294#2,2:307\n1116#3,6:270\n1116#3,6:276\n124#4,5:282\n130#4,5:295\n135#4:306\n137#4:309\n3737#5,6:300\n*S KotlinDebug\n*F\n+ 1 Image.kt\nandroidx/compose/foundation/ImageKt\n*L\n154#1:269\n256#1:287,8\n256#1:307,2\n154#1:270,6\n246#1:276,6\n256#1:282,5\n256#1:295,5\n256#1:306\n256#1:309\n256#1:300,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001aS\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007\u00a2\u0006\u0002\u0010\u0010\u001ab\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u001aS\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007\u00a2\u0006\u0002\u0010\u0017\u001aS\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007\u00a2\u0006\u0002\u0010\u001a\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001b"
    }
    d2 = {
        "Image",
        "",
        "bitmap",
        "Landroidx/compose/ui/graphics/ImageBitmap;",
        "contentDescription",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "alignment",
        "Landroidx/compose/ui/Alignment;",
        "contentScale",
        "Landroidx/compose/ui/layout/ContentScale;",
        "alpha",
        "",
        "colorFilter",
        "Landroidx/compose/ui/graphics/ColorFilter;",
        "(Landroidx/compose/ui/graphics/ImageBitmap;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V",
        "filterQuality",
        "Landroidx/compose/ui/graphics/FilterQuality;",
        "Image-5h-nEew",
        "(Landroidx/compose/ui/graphics/ImageBitmap;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;II)V",
        "painter",
        "Landroidx/compose/ui/graphics/painter/Painter;",
        "(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V",
        "imageVector",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V",
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
.method public static final synthetic Image(Landroidx/compose/ui/graphics/ImageBitmap;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V
    .locals 18
    .param p0, "bitmap"    # Landroidx/compose/ui/graphics/ImageBitmap;
    .param p1, "contentDescription"    # Ljava/lang/String;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "alignment"    # Landroidx/compose/ui/Alignment;
    .param p4, "contentScale"    # Landroidx/compose/ui/layout/ContentScale;
    .param p5, "alpha"    # F
    .param p6, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Consider usage of the Image composable that consumes an optional FilterQuality parameter"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Image(bitmap, contentDescription, modifier, alignment, contentScale, alpha, colorFilter, DefaultFilterQuality)"
            imports = {
                "androidx.compose.foundation",
                "androidx.compose.ui.graphics.DefaultAlpha",
                "androidx.compose.ui.Alignment",
                "androidx.compose.ui.graphics.drawscope.DrawScope.Companion.DefaultFilterQuality",
                "androidx.compose.ui.layout.ContentScale.Fit"
            }
        .end subannotation
    .end annotation

    move-object/from16 v11, p7

    move/from16 v12, p8

    const v0, -0x7e8de601

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(Image)P(2,4,6!1,5)96@4585L177:Image.kt#71ulvw"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p9, 0x4

    if-eqz v1, :cond_0

    .line 91
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v13, v1

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_0

    .line 0
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_0
    move-object/from16 v13, p2

    .line 91
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    :goto_0
    and-int/lit8 v1, p9, 0x8

    if-eqz v1, :cond_1

    .line 92
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v1

    move-object v14, v1

    .end local p3    # "alignment":Landroidx/compose/ui/Alignment;
    .local v1, "alignment":Landroidx/compose/ui/Alignment;
    goto :goto_1

    .line 91
    .end local v1    # "alignment":Landroidx/compose/ui/Alignment;
    .restart local p3    # "alignment":Landroidx/compose/ui/Alignment;
    :cond_1
    move-object/from16 v14, p3

    .line 92
    .end local p3    # "alignment":Landroidx/compose/ui/Alignment;
    .local v14, "alignment":Landroidx/compose/ui/Alignment;
    :goto_1
    and-int/lit8 v1, p9, 0x10

    if-eqz v1, :cond_2

    .line 93
    sget-object v1, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v1

    move-object v15, v1

    .end local p4    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v1, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    goto :goto_2

    .line 92
    .end local v1    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .restart local p4    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :cond_2
    move-object/from16 v15, p4

    .line 93
    .end local p4    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v15, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :goto_2
    and-int/lit8 v1, p9, 0x20

    if-eqz v1, :cond_3

    .line 94
    const/high16 v1, 0x3f800000    # 1.0f

    move/from16 v16, v1

    .end local p5    # "alpha":F
    .local v1, "alpha":F
    goto :goto_3

    .line 93
    .end local v1    # "alpha":F
    .restart local p5    # "alpha":F
    :cond_3
    move/from16 v16, p5

    .line 94
    .end local p5    # "alpha":F
    .local v16, "alpha":F
    :goto_3
    and-int/lit8 v1, p9, 0x40

    if-eqz v1, :cond_4

    .line 95
    const/4 v1, 0x0

    move-object/from16 v17, v1

    .end local p6    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v1, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    goto :goto_4

    .line 94
    .end local v1    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .restart local p6    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :cond_4
    move-object/from16 v17, p6

    .line 95
    .end local p6    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v17, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 96
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.Image (Image.kt:95)"

    invoke-static {v0, v12, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 98
    :cond_5
    nop

    .line 99
    nop

    .line 100
    nop

    .line 101
    nop

    .line 102
    nop

    .line 103
    nop

    .line 104
    nop

    .line 105
    sget-object v0, Landroidx/compose/ui/graphics/FilterQuality;->Companion:Landroidx/compose/ui/graphics/FilterQuality$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/FilterQuality$Companion;->getLow-f-v9h1I()I

    move-result v7

    and-int/lit8 v0, v12, 0x70

    or-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, v12, 0x380

    or-int/2addr v0, v1

    and-int/lit16 v1, v12, 0x1c00

    or-int/2addr v0, v1

    const v1, 0xe000

    and-int/2addr v1, v12

    or-int/2addr v0, v1

    const/high16 v1, 0x70000

    and-int/2addr v1, v12

    or-int/2addr v0, v1

    const/high16 v1, 0x380000

    and-int/2addr v1, v12

    or-int v9, v0, v1

    const/4 v10, 0x0

    .line 97
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/ImageKt;->Image-5h-nEew(Landroidx/compose/ui/graphics/ImageBitmap;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 107
    return-void
.end method

.method public static final Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V
    .locals 26
    .param p0, "painter"    # Landroidx/compose/ui/graphics/painter/Painter;
    .param p1, "contentDescription"    # Ljava/lang/String;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "alignment"    # Landroidx/compose/ui/Alignment;
    .param p4, "contentScale"    # Landroidx/compose/ui/layout/ContentScale;
    .param p5, "alpha"    # F
    .param p6, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I

    .line 244
    move-object/from16 v10, p1

    const v0, 0x441d0e20

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Image)P(6,3,5!1,4)255@11931L329:Image.kt#71ulvw"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p9, 0x4

    if-eqz v1, :cond_0

    .line 239
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v12, v1

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_0

    .line 244
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_0
    move-object/from16 v12, p2

    .line 239
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v12, "modifier":Landroidx/compose/ui/Modifier;
    :goto_0
    and-int/lit8 v1, p9, 0x8

    if-eqz v1, :cond_1

    .line 240
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v1

    move-object/from16 v22, v1

    .end local p3    # "alignment":Landroidx/compose/ui/Alignment;
    .local v1, "alignment":Landroidx/compose/ui/Alignment;
    goto :goto_1

    .line 239
    .end local v1    # "alignment":Landroidx/compose/ui/Alignment;
    .restart local p3    # "alignment":Landroidx/compose/ui/Alignment;
    :cond_1
    move-object/from16 v22, p3

    .line 240
    .end local p3    # "alignment":Landroidx/compose/ui/Alignment;
    .local v22, "alignment":Landroidx/compose/ui/Alignment;
    :goto_1
    and-int/lit8 v1, p9, 0x10

    if-eqz v1, :cond_2

    .line 241
    sget-object v1, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v1

    move-object/from16 v23, v1

    .end local p4    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v1, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    goto :goto_2

    .line 240
    .end local v1    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .restart local p4    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :cond_2
    move-object/from16 v23, p4

    .line 241
    .end local p4    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v23, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :goto_2
    and-int/lit8 v1, p9, 0x20

    if-eqz v1, :cond_3

    .line 242
    const/high16 v1, 0x3f800000    # 1.0f

    move/from16 v24, v1

    .end local p5    # "alpha":F
    .local v1, "alpha":F
    goto :goto_3

    .line 241
    .end local v1    # "alpha":F
    .restart local p5    # "alpha":F
    :cond_3
    move/from16 v24, p5

    .line 242
    .end local p5    # "alpha":F
    .local v24, "alpha":F
    :goto_3
    and-int/lit8 v1, p9, 0x40

    if-eqz v1, :cond_4

    .line 243
    const/4 v1, 0x0

    move-object/from16 v25, v1

    .end local p6    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v1, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    goto :goto_4

    .line 242
    .end local v1    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .restart local p6    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :cond_4
    move-object/from16 v25, p6

    .line 243
    .end local p6    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v25, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 244
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.Image (Image.kt:243)"

    move/from16 v9, p8

    invoke-static {v0, v9, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_5

    .line 243
    :cond_5
    move/from16 v9, p8

    .line 245
    :goto_5
    const/4 v0, 0x0

    if-eqz v10, :cond_8

    .line 246
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const v2, -0xa7b5724

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "invalid$iv":Z
    move-object v3, v11

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 276
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 277
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_7

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_6

    goto :goto_6

    .line 281
    :cond_6
    move-object v7, v5

    goto :goto_7

    .line 278
    :cond_7
    :goto_6
    const/4 v7, 0x0

    .line 246
    .local v7, "$i$a$-cache-ImageKt$Image$semantics$1":I
    new-instance v8, Landroidx/compose/foundation/ImageKt$Image$semantics$1$1;

    invoke-direct {v8, v10}, Landroidx/compose/foundation/ImageKt$Image$semantics$1$1;-><init>(Ljava/lang/String;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 278
    .end local v7    # "$i$a$-cache-ImageKt$Image$semantics$1":I
    move-object v7, v8

    .line 279
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 280
    nop

    .line 277
    .end local v7    # "value$iv":Ljava/lang/Object;
    :goto_7
    nop

    .line 276
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 246
    .end local v2    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v7, v2, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    goto :goto_8

    .line 251
    :cond_8
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 245
    :goto_8
    move-object v8, v1

    .line 257
    .local v8, "semantics":Landroidx/compose/ui/Modifier;
    invoke-interface {v12, v8}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    .line 258
    nop

    .line 257
    const/4 v15, 0x0

    .line 259
    nop

    .line 260
    nop

    .line 261
    nop

    .line 262
    nop

    .line 257
    const/16 v20, 0x2

    const/16 v21, 0x0

    move-object/from16 v14, p0

    move-object/from16 v16, v22

    move-object/from16 v17, v23

    move/from16 v18, v24

    move-object/from16 v19, v25

    invoke-static/range {v13 .. v21}, Landroidx/compose/ui/draw/PainterModifierKt;->paint$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 256
    sget-object v2, Landroidx/compose/foundation/ImageKt$Image$1;->INSTANCE:Landroidx/compose/foundation/ImageKt$Image$1;

    check-cast v2, Landroidx/compose/ui/layout/MeasurePolicy;

    .local v2, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    const/16 v3, 0x30

    .local v1, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v3, "$changed$iv":I
    const/4 v4, 0x0

    .local v4, "$i$f$Layout":I
    const v5, 0x207baf9a

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(Layout)P(1)123@4784L23,126@4935L385:Layout.kt#80mrfh"

    invoke-static {v11, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 282
    invoke-static {v11, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v0

    .line 283
    .local v0, "compositeKeyHash$iv":I
    invoke-static {v11, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 284
    .local v5, "materialized$iv":Landroidx/compose/ui/Modifier;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v6

    .line 286
    .local v6, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v7

    .line 285
    const/4 v13, 0x6

    .local v7, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v13, "$changed$iv$iv":I
    const/4 v14, 0x0

    .local v14, "$i$f$ReusableComposeNode":I
    const v15, 0x53ca7ea5

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v15, "CC(ReusableComposeNode):Composables.kt#9igjgp"

    invoke-static {v11, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 287
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v15

    instance-of v15, v15, Landroidx/compose/runtime/Applier;

    if-nez v15, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 288
    :cond_9
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 289
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 290
    new-instance v15, Landroidx/compose/foundation/ImageKt$Image$$inlined$Layout$1;

    invoke-direct {v15, v7}, Landroidx/compose/foundation/ImageKt$Image$$inlined$Layout$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v15, Lkotlin/jvm/functions/Function0;

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    .line 292
    :cond_a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 294
    :goto_9
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .local v15, "$this$Layout_u24lambda_u241$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 295
    .local v16, "$i$a$-ReusableComposeNode-LayoutKt$Layout$2$iv":I
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 p2, v1

    .end local v1    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local p2, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v15, v2, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 296
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v15, v6, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 297
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v15, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 299
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    .local v1, "block$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v17, 0x0

    .line 300
    .local v17, "$i$f$set-impl":I
    move-object/from16 p3, v15

    .local p3, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 301
    .local v18, "$i$a$-with-Updater$set$1$iv$iv":I
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v19

    if-nez v19, :cond_c

    move-object/from16 p4, v2

    .end local v2    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local p4, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    move/from16 p5, v3

    .end local v3    # "$changed$iv":I
    .local p5, "$changed$iv":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_a

    :cond_b
    move-object/from16 v3, p3

    goto :goto_b

    .end local p4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local p5    # "$changed$iv":I
    .restart local v2    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v3    # "$changed$iv":I
    :cond_c
    move-object/from16 p4, v2

    move/from16 p5, v3

    .line 302
    .end local v2    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v3    # "$changed$iv":I
    .restart local p4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local p5    # "$changed$iv":I
    :goto_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, p3

    .end local p3    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 303
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2, v1}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 305
    :goto_b
    nop

    .line 300
    .end local v3    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$a$-with-Updater$set$1$iv$iv":I
    nop

    .line 305
    nop

    .line 306
    .end local v1    # "block$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v17    # "$i$f$set-impl":I
    nop

    .line 294
    .end local v15    # "$this$Layout_u24lambda_u241$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$2$iv":I
    nop

    .line 307
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endNode()V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 308
    nop

    .end local v7    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v13    # "$changed$iv$iv":I
    .end local v14    # "$i$f$ReusableComposeNode":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 309
    nop

    .end local v0    # "compositeKeyHash$iv":I
    .end local v4    # "$i$f$Layout":I
    .end local v5    # "materialized$iv":Landroidx/compose/ui/Modifier;
    .end local v6    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local p2    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local p4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local p5    # "$changed$iv":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_d
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_e

    new-instance v14, Landroidx/compose/foundation/ImageKt$Image$2;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v12

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    move/from16 v6, v24

    move-object/from16 v7, v25

    move-object v15, v8

    .end local v8    # "semantics":Landroidx/compose/ui/Modifier;
    .local v15, "semantics":Landroidx/compose/ui/Modifier;
    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/ImageKt$Image$2;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;II)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_c

    .end local v15    # "semantics":Landroidx/compose/ui/Modifier;
    .restart local v8    # "semantics":Landroidx/compose/ui/Modifier;
    :cond_e
    move-object v15, v8

    .line 267
    .end local v8    # "semantics":Landroidx/compose/ui/Modifier;
    .restart local v15    # "semantics":Landroidx/compose/ui/Modifier;
    :goto_c
    return-void
.end method

.method public static final Image(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V
    .locals 18
    .param p0, "imageVector"    # Landroidx/compose/ui/graphics/vector/ImageVector;
    .param p1, "contentDescription"    # Ljava/lang/String;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "alignment"    # Landroidx/compose/ui/Alignment;
    .param p4, "contentScale"    # Landroidx/compose/ui/layout/ContentScale;
    .param p5, "alpha"    # F
    .param p6, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I

    move-object/from16 v10, p7

    move/from16 v11, p8

    const v0, 0x5f1f9c13

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(Image)P(5,3,6!1,4)198@9330L34,197@9309L237:Image.kt#71ulvw"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p9, 0x4

    if-eqz v1, :cond_0

    .line 193
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v12, v1

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_0

    .line 0
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_0
    move-object/from16 v12, p2

    .line 193
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v12, "modifier":Landroidx/compose/ui/Modifier;
    :goto_0
    and-int/lit8 v1, p9, 0x8

    if-eqz v1, :cond_1

    .line 194
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v1

    move-object v13, v1

    .end local p3    # "alignment":Landroidx/compose/ui/Alignment;
    .local v1, "alignment":Landroidx/compose/ui/Alignment;
    goto :goto_1

    .line 193
    .end local v1    # "alignment":Landroidx/compose/ui/Alignment;
    .restart local p3    # "alignment":Landroidx/compose/ui/Alignment;
    :cond_1
    move-object/from16 v13, p3

    .line 194
    .end local p3    # "alignment":Landroidx/compose/ui/Alignment;
    .local v13, "alignment":Landroidx/compose/ui/Alignment;
    :goto_1
    and-int/lit8 v1, p9, 0x10

    if-eqz v1, :cond_2

    .line 195
    sget-object v1, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v1

    move-object v14, v1

    .end local p4    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v1, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    goto :goto_2

    .line 194
    .end local v1    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .restart local p4    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :cond_2
    move-object/from16 v14, p4

    .line 195
    .end local p4    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v14, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :goto_2
    and-int/lit8 v1, p9, 0x20

    if-eqz v1, :cond_3

    .line 196
    const/high16 v1, 0x3f800000    # 1.0f

    move v15, v1

    .end local p5    # "alpha":F
    .local v1, "alpha":F
    goto :goto_3

    .line 195
    .end local v1    # "alpha":F
    .restart local p5    # "alpha":F
    :cond_3
    move/from16 v15, p5

    .line 196
    .end local p5    # "alpha":F
    .local v15, "alpha":F
    :goto_3
    and-int/lit8 v1, p9, 0x40

    if-eqz v1, :cond_4

    .line 197
    const/4 v1, 0x0

    move-object/from16 v16, v1

    .end local p6    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v1, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    goto :goto_4

    .line 196
    .end local v1    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .restart local p6    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :cond_4
    move-object/from16 v16, p6

    .line 197
    .end local p6    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v16, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 198
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.Image (Image.kt:197)"

    invoke-static {v0, v11, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 199
    :cond_5
    and-int/lit8 v0, v11, 0xe

    move-object/from16 v9, p0

    invoke-static {v9, v10, v0}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->rememberVectorPainter(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/VectorPainter;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/painter/Painter;

    .line 200
    nop

    .line 201
    nop

    .line 202
    nop

    .line 203
    nop

    .line 204
    nop

    .line 205
    sget v1, Landroidx/compose/ui/graphics/vector/VectorPainter;->$stable:I

    and-int/lit8 v2, v11, 0x70

    or-int/2addr v1, v2

    and-int/lit16 v2, v11, 0x380

    or-int/2addr v1, v2

    and-int/lit16 v2, v11, 0x1c00

    or-int/2addr v1, v2

    const v2, 0xe000

    and-int/2addr v2, v11

    or-int/2addr v1, v2

    const/high16 v2, 0x70000

    and-int/2addr v2, v11

    or-int/2addr v1, v2

    const/high16 v2, 0x380000

    and-int/2addr v2, v11

    or-int v8, v1, v2

    const/16 v17, 0x0

    .line 198
    move-object/from16 v1, p1

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, p7

    move/from16 v9, v17

    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 206
    return-void
.end method

.method public static final Image-5h-nEew(Landroidx/compose/ui/graphics/ImageBitmap;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;II)V
    .locals 26
    .param p0, "bitmap"    # Landroidx/compose/ui/graphics/ImageBitmap;
    .param p1, "contentDescription"    # Ljava/lang/String;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "alignment"    # Landroidx/compose/ui/Alignment;
    .param p4, "contentScale"    # Landroidx/compose/ui/layout/ContentScale;
    .param p5, "alpha"    # F
    .param p6, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p7, "filterQuality"    # I
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v0, p10

    const v1, -0x53393f7c

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(Image)P(2,4,7!1,5!,6:c#ui.graphics.FilterQuality)153@7224L73,154@7302L248:Image.kt#71ulvw"

    invoke-static {v10, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_0

    .line 147
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    move-object v12, v2

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_0

    .line 0
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_0
    move-object/from16 v12, p2

    .line 147
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v12, "modifier":Landroidx/compose/ui/Modifier;
    :goto_0
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_1

    .line 148
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v2

    move-object v13, v2

    .end local p3    # "alignment":Landroidx/compose/ui/Alignment;
    .local v2, "alignment":Landroidx/compose/ui/Alignment;
    goto :goto_1

    .line 147
    .end local v2    # "alignment":Landroidx/compose/ui/Alignment;
    .restart local p3    # "alignment":Landroidx/compose/ui/Alignment;
    :cond_1
    move-object/from16 v13, p3

    .line 148
    .end local p3    # "alignment":Landroidx/compose/ui/Alignment;
    .local v13, "alignment":Landroidx/compose/ui/Alignment;
    :goto_1
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_2

    .line 149
    sget-object v2, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v2

    move-object v14, v2

    .end local p4    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v2, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    goto :goto_2

    .line 148
    .end local v2    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .restart local p4    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :cond_2
    move-object/from16 v14, p4

    .line 149
    .end local p4    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v14, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :goto_2
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_3

    .line 150
    const/high16 v2, 0x3f800000    # 1.0f

    move v15, v2

    .end local p5    # "alpha":F
    .local v2, "alpha":F
    goto :goto_3

    .line 149
    .end local v2    # "alpha":F
    .restart local p5    # "alpha":F
    :cond_3
    move/from16 v15, p5

    .line 150
    .end local p5    # "alpha":F
    .local v15, "alpha":F
    :goto_3
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_4

    .line 151
    const/4 v2, 0x0

    move-object/from16 v16, v2

    .end local p6    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v2, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    goto :goto_4

    .line 150
    .end local v2    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .restart local p6    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :cond_4
    move-object/from16 v16, p6

    .line 151
    .end local p6    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v16, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :goto_4
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    .line 152
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result v0

    move/from16 v17, v0

    .end local p7    # "filterQuality":I
    .local v0, "filterQuality":I
    goto :goto_5

    .line 151
    .end local v0    # "filterQuality":I
    .restart local p7    # "filterQuality":I
    :cond_5
    move/from16 v17, p7

    .line 152
    .end local p7    # "filterQuality":I
    .local v17, "filterQuality":I
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 153
    const/4 v0, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.Image (Image.kt:152)"

    invoke-static {v1, v11, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_6
    nop

    .line 154
    const/16 v0, 0x8

    move v1, v0

    .local v1, "$changed$iv":I
    const/16 v18, 0x0

    .local v18, "$i$f$remember":I
    const v2, 0x44faf204

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v10, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 269
    move-object/from16 v9, p0

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    .local v19, "invalid$iv$iv":Z
    move-object/from16 v8, p8

    .local v8, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 270
    .local v20, "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 271
    .local v21, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v19, :cond_8

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v7, v2, :cond_7

    goto :goto_6

    .line 275
    :cond_7
    move-object/from16 v25, v7

    move-object v0, v8

    goto :goto_7

    .line 272
    :cond_8
    :goto_6
    const/16 v22, 0x0

    .line 154
    .local v22, "$i$a$-remember-ImageKt$Image$bitmapPainter$1":I
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/16 v23, 0x6

    const/16 v24, 0x0

    move-object/from16 v2, p0

    move-object/from16 v25, v7

    .end local v7    # "it$iv$iv":Ljava/lang/Object;
    .local v25, "it$iv$iv":Ljava/lang/Object;
    move/from16 v7, v17

    move-object v0, v8

    .end local v8    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v0, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    move/from16 v8, v23

    move-object/from16 v9, v24

    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/graphics/painter/BitmapPainterKt;->BitmapPainter-QZhYCtY$default(Landroidx/compose/ui/graphics/ImageBitmap;JJIILjava/lang/Object;)Landroidx/compose/ui/graphics/painter/BitmapPainter;

    move-result-object v2

    .line 272
    .end local v22    # "$i$a$-remember-ImageKt$Image$bitmapPainter$1":I
    move-object v7, v2

    .line 273
    .local v7, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 274
    nop

    .line 271
    .end local v7    # "value$iv$iv":Ljava/lang/Object;
    :goto_7
    nop

    .line 270
    .end local v21    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v25    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 269
    .end local v0    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "invalid$iv$iv":Z
    .end local v20    # "$i$f$cache":I
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 154
    .end local v1    # "$changed$iv":I
    .end local v18    # "$i$f$remember":I
    move-object/from16 v18, v7

    check-cast v18, Landroidx/compose/ui/graphics/painter/BitmapPainter;

    .line 156
    .local v18, "bitmapPainter":Landroidx/compose/ui/graphics/painter/BitmapPainter;
    move-object/from16 v0, v18

    check-cast v0, Landroidx/compose/ui/graphics/painter/Painter;

    .line 157
    nop

    .line 158
    nop

    .line 159
    nop

    .line 160
    nop

    .line 161
    nop

    .line 162
    and-int/lit8 v1, v11, 0x70

    const/16 v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v2, v11, 0x380

    or-int/2addr v1, v2

    and-int/lit16 v2, v11, 0x1c00

    or-int/2addr v1, v2

    const v2, 0xe000

    and-int/2addr v2, v11

    or-int/2addr v1, v2

    const/high16 v2, 0x70000

    and-int/2addr v2, v11

    or-int/2addr v1, v2

    const/high16 v2, 0x380000

    and-int/2addr v2, v11

    or-int v8, v1, v2

    const/4 v9, 0x0

    .line 155
    move-object/from16 v1, p1

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_9
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 164
    return-void
.end method
