.class public final Lcoil/compose/SingletonAsyncImageKt;
.super Ljava/lang/Object;
.source "SingletonAsyncImage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\u00e1\u0001\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\u0016\u0008\u0002\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r2\u0016\u0008\u0002\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r2\u0016\u0008\u0002\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020 H\u0007\u00a2\u0006\u0004\u0008!\u0010\"\u001a\u00cd\u0001\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\u0016\u0008\u0002\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r2\u0016\u0008\u0002\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r2\u0016\u0008\u0002\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001cH\u0007\u00a2\u0006\u0004\u0008#\u0010$\u001a\u00a3\u0001\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0014\u0008\u0002\u0010%\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&0\r2\u0016\u0008\u0002\u0010\'\u001a\u0010\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020 H\u0007\u00a2\u0006\u0004\u0008(\u0010)\u001a\u008f\u0001\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0014\u0008\u0002\u0010%\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&0\r2\u0016\u0008\u0002\u0010\'\u001a\u0010\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001cH\u0007\u00a2\u0006\u0004\u0008*\u0010+\u00a8\u0006,"
    }
    d2 = {
        "AsyncImage",
        "",
        "model",
        "",
        "contentDescription",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "placeholder",
        "Landroidx/compose/ui/graphics/painter/Painter;",
        "error",
        "fallback",
        "onLoading",
        "Lkotlin/Function1;",
        "Lcoil/compose/AsyncImagePainter$State$Loading;",
        "onSuccess",
        "Lcoil/compose/AsyncImagePainter$State$Success;",
        "onError",
        "Lcoil/compose/AsyncImagePainter$State$Error;",
        "alignment",
        "Landroidx/compose/ui/Alignment;",
        "contentScale",
        "Landroidx/compose/ui/layout/ContentScale;",
        "alpha",
        "",
        "colorFilter",
        "Landroidx/compose/ui/graphics/ColorFilter;",
        "filterQuality",
        "Landroidx/compose/ui/graphics/FilterQuality;",
        "clipToBounds",
        "",
        "modelEqualityDelegate",
        "Lcoil/compose/EqualityDelegate;",
        "AsyncImage-Vb_qNX0",
        "(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)V",
        "AsyncImage-ylYTKUw",
        "(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;III)V",
        "transform",
        "Lcoil/compose/AsyncImagePainter$State;",
        "onState",
        "AsyncImage-gl8XCv8",
        "(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)V",
        "AsyncImage-3HmZ8SU",
        "(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;II)V",
        "coil-compose-singleton_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic AsyncImage-3HmZ8SU(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;II)V
    .locals 25
    .param p0, "model"    # Ljava/lang/Object;
    .param p1, "contentDescription"    # Ljava/lang/String;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "transform"    # Lkotlin/jvm/functions/Function1;
    .param p4, "onState"    # Lkotlin/jvm/functions/Function1;
    .param p5, "alignment"    # Landroidx/compose/ui/Alignment;
    .param p6, "contentScale"    # Landroidx/compose/ui/layout/ContentScale;
    .param p7, "alpha"    # F
    .param p8, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p9, "filterQuality"    # I
    .param p10, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p11, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Kept for binary compatibility."
    .end annotation

    move-object/from16 v13, p10

    move/from16 v0, p12

    const v1, -0x381e6b2c

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 184
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object/from16 v17, v1

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_0

    .line 0
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_0
    move-object/from16 v17, p2

    .line 184
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v17, "modifier":Landroidx/compose/ui/Modifier;
    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 185
    sget-object v1, Lcoil/compose/AsyncImagePainter;->Companion:Lcoil/compose/AsyncImagePainter$Companion;

    invoke-virtual {v1}, Lcoil/compose/AsyncImagePainter$Companion;->getDefaultTransform()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    move-object/from16 v18, v1

    .end local p3    # "transform":Lkotlin/jvm/functions/Function1;
    .local v1, "transform":Lkotlin/jvm/functions/Function1;
    goto :goto_1

    .line 184
    .end local v1    # "transform":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "transform":Lkotlin/jvm/functions/Function1;
    :cond_1
    move-object/from16 v18, p3

    .line 185
    .end local p3    # "transform":Lkotlin/jvm/functions/Function1;
    .local v18, "transform":Lkotlin/jvm/functions/Function1;
    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    .line 186
    const/4 v1, 0x0

    move-object/from16 v19, v1

    .end local p4    # "onState":Lkotlin/jvm/functions/Function1;
    .local v1, "onState":Lkotlin/jvm/functions/Function1;
    goto :goto_2

    .line 185
    .end local v1    # "onState":Lkotlin/jvm/functions/Function1;
    .restart local p4    # "onState":Lkotlin/jvm/functions/Function1;
    :cond_2
    move-object/from16 v19, p4

    .line 186
    .end local p4    # "onState":Lkotlin/jvm/functions/Function1;
    .local v19, "onState":Lkotlin/jvm/functions/Function1;
    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 187
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v1

    move-object/from16 v20, v1

    .end local p5    # "alignment":Landroidx/compose/ui/Alignment;
    .local v1, "alignment":Landroidx/compose/ui/Alignment;
    goto :goto_3

    .line 186
    .end local v1    # "alignment":Landroidx/compose/ui/Alignment;
    .restart local p5    # "alignment":Landroidx/compose/ui/Alignment;
    :cond_3
    move-object/from16 v20, p5

    .line 187
    .end local p5    # "alignment":Landroidx/compose/ui/Alignment;
    .local v20, "alignment":Landroidx/compose/ui/Alignment;
    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    .line 188
    sget-object v1, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v1

    move-object/from16 v21, v1

    .end local p6    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v1, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    goto :goto_4

    .line 187
    .end local v1    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .restart local p6    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :cond_4
    move-object/from16 v21, p6

    .line 188
    .end local p6    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v21, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    .line 189
    const/high16 v1, 0x3f800000    # 1.0f

    move/from16 v22, v1

    .end local p7    # "alpha":F
    .local v1, "alpha":F
    goto :goto_5

    .line 188
    .end local v1    # "alpha":F
    .restart local p7    # "alpha":F
    :cond_5
    move/from16 v22, p7

    .line 189
    .end local p7    # "alpha":F
    .local v22, "alpha":F
    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    .line 190
    const/4 v1, 0x0

    move-object/from16 v23, v1

    .end local p8    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v1, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    goto :goto_6

    .line 189
    .end local v1    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .restart local p8    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :cond_6
    move-object/from16 v23, p8

    .line 190
    .end local p8    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v23, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :goto_6
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7

    .line 191
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result v0

    move/from16 v24, v0

    .end local p9    # "filterQuality":I
    .local v0, "filterQuality":I
    goto :goto_7

    .line 190
    .end local v0    # "filterQuality":I
    .restart local p9    # "filterQuality":I
    :cond_7
    move/from16 v24, p9

    .line 193
    .end local p9    # "filterQuality":I
    .local v24, "filterQuality":I
    :goto_7
    nop

    .line 194
    nop

    .line 195
    invoke-static {}, Lcoil/compose/LocalImageLoaderKt;->getLocalImageLoader()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v13, v1}, Lcoil/compose/ImageLoaderProvidableCompositionLocal;->getCurrent(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;I)Lcoil/ImageLoader;

    move-result-object v2

    .line 196
    nop

    .line 197
    nop

    .line 198
    nop

    .line 199
    nop

    .line 200
    nop

    .line 201
    nop

    .line 202
    nop

    .line 203
    const/4 v11, 0x0

    const/4 v12, 0x0

    and-int/lit8 v0, p11, 0x70

    or-int/lit16 v0, v0, 0x208

    shl-int/lit8 v1, p11, 0x3

    and-int/lit16 v1, v1, 0x1c00

    or-int/2addr v0, v1

    shl-int/lit8 v1, p11, 0x3

    const v3, 0xe000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    shl-int/lit8 v1, p11, 0x3

    const/high16 v3, 0x70000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    shl-int/lit8 v1, p11, 0x3

    const/high16 v3, 0x380000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    shl-int/lit8 v1, p11, 0x3

    const/high16 v3, 0x1c00000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    shl-int/lit8 v1, p11, 0x3

    const/high16 v3, 0xe000000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    const/high16 v1, 0x70000000

    shl-int/lit8 v3, p11, 0x3

    and-int/2addr v1, v3

    or-int v14, v0, v1

    shr-int/lit8 v0, p11, 0x1b

    and-int/lit8 v15, v0, 0xe

    const/16 v16, 0x1800

    .line 192
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v9, v23

    move/from16 v10, v24

    move-object/from16 v13, p10

    invoke-static/range {v0 .. v16}, Lcoil/compose/AsyncImageKt;->AsyncImage-QgsmV_s(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)V

    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 204
    return-void
.end method

.method public static final AsyncImage-Vb_qNX0(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)V
    .locals 35
    .param p0, "model"    # Ljava/lang/Object;
    .param p1, "contentDescription"    # Ljava/lang/String;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "placeholder"    # Landroidx/compose/ui/graphics/painter/Painter;
    .param p4, "error"    # Landroidx/compose/ui/graphics/painter/Painter;
    .param p5, "fallback"    # Landroidx/compose/ui/graphics/painter/Painter;
    .param p6, "onLoading"    # Lkotlin/jvm/functions/Function1;
    .param p7, "onSuccess"    # Lkotlin/jvm/functions/Function1;
    .param p8, "onError"    # Lkotlin/jvm/functions/Function1;
    .param p9, "alignment"    # Landroidx/compose/ui/Alignment;
    .param p10, "contentScale"    # Landroidx/compose/ui/layout/ContentScale;
    .param p11, "alpha"    # F
    .param p12, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p13, "filterQuality"    # I
    .param p14, "clipToBounds"    # Z
    .param p15, "modelEqualityDelegate"    # Lcoil/compose/EqualityDelegate;
    .param p16, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p17, "$changed"    # I
    .param p18, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/painter/Painter;",
            "Landroidx/compose/ui/graphics/painter/Painter;",
            "Landroidx/compose/ui/graphics/painter/Painter;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$State$Loading;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$State$Success;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$State$Error;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Alignment;",
            "Landroidx/compose/ui/layout/ContentScale;",
            "F",
            "Landroidx/compose/ui/graphics/ColorFilter;",
            "IZ",
            "Lcoil/compose/EqualityDelegate;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v15, p16

    move/from16 v0, p19

    const v1, 0x64f5e82f

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 52
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object/from16 v21, v1

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_0

    .line 0
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_0
    move-object/from16 v21, p2

    .line 52
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v21, "modifier":Landroidx/compose/ui/Modifier;
    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 53
    const/4 v1, 0x0

    move-object/from16 v22, v1

    .end local p3    # "placeholder":Landroidx/compose/ui/graphics/painter/Painter;
    .local v1, "placeholder":Landroidx/compose/ui/graphics/painter/Painter;
    goto :goto_1

    .line 52
    .end local v1    # "placeholder":Landroidx/compose/ui/graphics/painter/Painter;
    .restart local p3    # "placeholder":Landroidx/compose/ui/graphics/painter/Painter;
    :cond_1
    move-object/from16 v22, p3

    .line 53
    .end local p3    # "placeholder":Landroidx/compose/ui/graphics/painter/Painter;
    .local v22, "placeholder":Landroidx/compose/ui/graphics/painter/Painter;
    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    .line 54
    const/4 v1, 0x0

    move-object/from16 v23, v1

    .end local p4    # "error":Landroidx/compose/ui/graphics/painter/Painter;
    .local v1, "error":Landroidx/compose/ui/graphics/painter/Painter;
    goto :goto_2

    .line 53
    .end local v1    # "error":Landroidx/compose/ui/graphics/painter/Painter;
    .restart local p4    # "error":Landroidx/compose/ui/graphics/painter/Painter;
    :cond_2
    move-object/from16 v23, p4

    .line 54
    .end local p4    # "error":Landroidx/compose/ui/graphics/painter/Painter;
    .local v23, "error":Landroidx/compose/ui/graphics/painter/Painter;
    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 55
    move-object/from16 v1, v23

    move-object/from16 v24, v1

    .end local p5    # "fallback":Landroidx/compose/ui/graphics/painter/Painter;
    .local v1, "fallback":Landroidx/compose/ui/graphics/painter/Painter;
    goto :goto_3

    .line 54
    .end local v1    # "fallback":Landroidx/compose/ui/graphics/painter/Painter;
    .restart local p5    # "fallback":Landroidx/compose/ui/graphics/painter/Painter;
    :cond_3
    move-object/from16 v24, p5

    .line 55
    .end local p5    # "fallback":Landroidx/compose/ui/graphics/painter/Painter;
    .local v24, "fallback":Landroidx/compose/ui/graphics/painter/Painter;
    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    .line 56
    const/4 v1, 0x0

    move-object/from16 v25, v1

    .end local p6    # "onLoading":Lkotlin/jvm/functions/Function1;
    .local v1, "onLoading":Lkotlin/jvm/functions/Function1;
    goto :goto_4

    .line 55
    .end local v1    # "onLoading":Lkotlin/jvm/functions/Function1;
    .restart local p6    # "onLoading":Lkotlin/jvm/functions/Function1;
    :cond_4
    move-object/from16 v25, p6

    .line 56
    .end local p6    # "onLoading":Lkotlin/jvm/functions/Function1;
    .local v25, "onLoading":Lkotlin/jvm/functions/Function1;
    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    .line 57
    const/4 v1, 0x0

    move-object/from16 v26, v1

    .end local p7    # "onSuccess":Lkotlin/jvm/functions/Function1;
    .local v1, "onSuccess":Lkotlin/jvm/functions/Function1;
    goto :goto_5

    .line 56
    .end local v1    # "onSuccess":Lkotlin/jvm/functions/Function1;
    .restart local p7    # "onSuccess":Lkotlin/jvm/functions/Function1;
    :cond_5
    move-object/from16 v26, p7

    .line 57
    .end local p7    # "onSuccess":Lkotlin/jvm/functions/Function1;
    .local v26, "onSuccess":Lkotlin/jvm/functions/Function1;
    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    .line 58
    const/4 v1, 0x0

    move-object/from16 v27, v1

    .end local p8    # "onError":Lkotlin/jvm/functions/Function1;
    .local v1, "onError":Lkotlin/jvm/functions/Function1;
    goto :goto_6

    .line 57
    .end local v1    # "onError":Lkotlin/jvm/functions/Function1;
    .restart local p8    # "onError":Lkotlin/jvm/functions/Function1;
    :cond_6
    move-object/from16 v27, p8

    .line 58
    .end local p8    # "onError":Lkotlin/jvm/functions/Function1;
    .local v27, "onError":Lkotlin/jvm/functions/Function1;
    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    .line 59
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v1

    move-object/from16 v28, v1

    .end local p9    # "alignment":Landroidx/compose/ui/Alignment;
    .local v1, "alignment":Landroidx/compose/ui/Alignment;
    goto :goto_7

    .line 58
    .end local v1    # "alignment":Landroidx/compose/ui/Alignment;
    .restart local p9    # "alignment":Landroidx/compose/ui/Alignment;
    :cond_7
    move-object/from16 v28, p9

    .line 59
    .end local p9    # "alignment":Landroidx/compose/ui/Alignment;
    .local v28, "alignment":Landroidx/compose/ui/Alignment;
    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    .line 60
    sget-object v1, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v1

    move-object/from16 v29, v1

    .end local p10    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v1, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    goto :goto_8

    .line 59
    .end local v1    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .restart local p10    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :cond_8
    move-object/from16 v29, p10

    .line 60
    .end local p10    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v29, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    .line 61
    const/high16 v1, 0x3f800000    # 1.0f

    move/from16 v30, v1

    .end local p11    # "alpha":F
    .local v1, "alpha":F
    goto :goto_9

    .line 60
    .end local v1    # "alpha":F
    .restart local p11    # "alpha":F
    :cond_9
    move/from16 v30, p11

    .line 61
    .end local p11    # "alpha":F
    .local v30, "alpha":F
    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    .line 62
    const/4 v1, 0x0

    move-object/from16 v31, v1

    .end local p12    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v1, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    goto :goto_a

    .line 61
    .end local v1    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .restart local p12    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :cond_a
    move-object/from16 v31, p12

    .line 62
    .end local p12    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v31, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    .line 63
    sget-object v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result v1

    move/from16 v32, v1

    .end local p13    # "filterQuality":I
    .local v1, "filterQuality":I
    goto :goto_b

    .line 62
    .end local v1    # "filterQuality":I
    .restart local p13    # "filterQuality":I
    :cond_b
    move/from16 v32, p13

    .line 63
    .end local p13    # "filterQuality":I
    .local v32, "filterQuality":I
    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    .line 64
    const/4 v1, 0x1

    move/from16 v33, v1

    .end local p14    # "clipToBounds":Z
    .local v1, "clipToBounds":Z
    goto :goto_c

    .line 63
    .end local v1    # "clipToBounds":Z
    .restart local p14    # "clipToBounds":Z
    :cond_c
    move/from16 v33, p14

    .line 64
    .end local p14    # "clipToBounds":Z
    .local v33, "clipToBounds":Z
    :goto_c
    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    .line 65
    invoke-static {}, Lcoil/compose/EqualityDelegateKt;->getDefaultModelEqualityDelegate()Lcoil/compose/EqualityDelegate;

    move-result-object v0

    move-object/from16 v34, v0

    .end local p15    # "modelEqualityDelegate":Lcoil/compose/EqualityDelegate;
    .local v0, "modelEqualityDelegate":Lcoil/compose/EqualityDelegate;
    goto :goto_d

    .line 64
    .end local v0    # "modelEqualityDelegate":Lcoil/compose/EqualityDelegate;
    .restart local p15    # "modelEqualityDelegate":Lcoil/compose/EqualityDelegate;
    :cond_d
    move-object/from16 v34, p15

    .line 67
    .end local p15    # "modelEqualityDelegate":Lcoil/compose/EqualityDelegate;
    .local v34, "modelEqualityDelegate":Lcoil/compose/EqualityDelegate;
    :goto_d
    nop

    .line 68
    nop

    .line 69
    invoke-static {}, Lcoil/compose/LocalImageLoaderKt;->getLocalImageLoader()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v15, v1}, Lcoil/compose/ImageLoaderProvidableCompositionLocal;->getCurrent(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;I)Lcoil/ImageLoader;

    move-result-object v2

    .line 70
    nop

    .line 71
    nop

    .line 72
    nop

    .line 73
    nop

    .line 74
    nop

    .line 75
    nop

    .line 76
    nop

    .line 77
    nop

    .line 78
    nop

    .line 79
    nop

    .line 80
    nop

    .line 81
    nop

    .line 82
    nop

    .line 83
    and-int/lit8 v0, p17, 0x70

    const v1, 0x248208

    or-int/2addr v0, v1

    shl-int/lit8 v1, p17, 0x3

    and-int/lit16 v1, v1, 0x1c00

    or-int/2addr v0, v1

    shl-int/lit8 v1, p17, 0x3

    const/high16 v3, 0x1c00000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    shl-int/lit8 v1, p17, 0x3

    const/high16 v3, 0xe000000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    shl-int/lit8 v1, p17, 0x3

    const/high16 v3, 0x70000000

    and-int/2addr v1, v3

    or-int v18, v0, v1

    shr-int/lit8 v0, p17, 0x1b

    and-int/lit8 v0, v0, 0xe

    shl-int/lit8 v1, p18, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    shl-int/lit8 v1, p18, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int/2addr v0, v1

    shl-int/lit8 v1, p18, 0x3

    and-int/lit16 v1, v1, 0x1c00

    or-int/2addr v0, v1

    shl-int/lit8 v1, p18, 0x3

    const v3, 0xe000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    shl-int/lit8 v1, p18, 0x3

    const/high16 v3, 0x70000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    const/high16 v1, 0x380000

    shl-int/lit8 v3, p18, 0x3

    and-int/2addr v1, v3

    or-int v19, v0, v1

    const/16 v20, 0x0

    .line 66
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v7, v25

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    move-object/from16 v10, v28

    move-object/from16 v11, v29

    move/from16 v12, v30

    move-object/from16 v13, v31

    move/from16 v14, v32

    move/from16 v15, v33

    move-object/from16 v16, v34

    move-object/from16 v17, p16

    invoke-static/range {v0 .. v20}, Lcoil/compose/AsyncImageKt;->AsyncImage-J-FEaFM(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)V

    invoke-interface/range {p16 .. p16}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 84
    return-void
.end method

.method public static final AsyncImage-gl8XCv8(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)V
    .locals 27
    .param p0, "model"    # Ljava/lang/Object;
    .param p1, "contentDescription"    # Ljava/lang/String;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "transform"    # Lkotlin/jvm/functions/Function1;
    .param p4, "onState"    # Lkotlin/jvm/functions/Function1;
    .param p5, "alignment"    # Landroidx/compose/ui/Alignment;
    .param p6, "contentScale"    # Landroidx/compose/ui/layout/ContentScale;
    .param p7, "alpha"    # F
    .param p8, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p9, "filterQuality"    # I
    .param p10, "clipToBounds"    # Z
    .param p11, "modelEqualityDelegate"    # Lcoil/compose/EqualityDelegate;
    .param p12, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p13, "$changed"    # I
    .param p14, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$State;",
            "+",
            "Lcoil/compose/AsyncImagePainter$State;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$State;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Alignment;",
            "Landroidx/compose/ui/layout/ContentScale;",
            "F",
            "Landroidx/compose/ui/graphics/ColorFilter;",
            "IZ",
            "Lcoil/compose/EqualityDelegate;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v13, p12

    move/from16 v0, p15

    const v1, 0x567d9ae5

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 152
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object/from16 v17, v1

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_0

    .line 0
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_0
    move-object/from16 v17, p2

    .line 152
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v17, "modifier":Landroidx/compose/ui/Modifier;
    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 153
    sget-object v1, Lcoil/compose/AsyncImagePainter;->Companion:Lcoil/compose/AsyncImagePainter$Companion;

    invoke-virtual {v1}, Lcoil/compose/AsyncImagePainter$Companion;->getDefaultTransform()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    move-object/from16 v18, v1

    .end local p3    # "transform":Lkotlin/jvm/functions/Function1;
    .local v1, "transform":Lkotlin/jvm/functions/Function1;
    goto :goto_1

    .line 152
    .end local v1    # "transform":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "transform":Lkotlin/jvm/functions/Function1;
    :cond_1
    move-object/from16 v18, p3

    .line 153
    .end local p3    # "transform":Lkotlin/jvm/functions/Function1;
    .local v18, "transform":Lkotlin/jvm/functions/Function1;
    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    .line 154
    const/4 v1, 0x0

    move-object/from16 v19, v1

    .end local p4    # "onState":Lkotlin/jvm/functions/Function1;
    .local v1, "onState":Lkotlin/jvm/functions/Function1;
    goto :goto_2

    .line 153
    .end local v1    # "onState":Lkotlin/jvm/functions/Function1;
    .restart local p4    # "onState":Lkotlin/jvm/functions/Function1;
    :cond_2
    move-object/from16 v19, p4

    .line 154
    .end local p4    # "onState":Lkotlin/jvm/functions/Function1;
    .local v19, "onState":Lkotlin/jvm/functions/Function1;
    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 155
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v1

    move-object/from16 v20, v1

    .end local p5    # "alignment":Landroidx/compose/ui/Alignment;
    .local v1, "alignment":Landroidx/compose/ui/Alignment;
    goto :goto_3

    .line 154
    .end local v1    # "alignment":Landroidx/compose/ui/Alignment;
    .restart local p5    # "alignment":Landroidx/compose/ui/Alignment;
    :cond_3
    move-object/from16 v20, p5

    .line 155
    .end local p5    # "alignment":Landroidx/compose/ui/Alignment;
    .local v20, "alignment":Landroidx/compose/ui/Alignment;
    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    .line 156
    sget-object v1, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v1

    move-object/from16 v21, v1

    .end local p6    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v1, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    goto :goto_4

    .line 155
    .end local v1    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .restart local p6    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :cond_4
    move-object/from16 v21, p6

    .line 156
    .end local p6    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v21, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    .line 157
    const/high16 v1, 0x3f800000    # 1.0f

    move/from16 v22, v1

    .end local p7    # "alpha":F
    .local v1, "alpha":F
    goto :goto_5

    .line 156
    .end local v1    # "alpha":F
    .restart local p7    # "alpha":F
    :cond_5
    move/from16 v22, p7

    .line 157
    .end local p7    # "alpha":F
    .local v22, "alpha":F
    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    .line 158
    const/4 v1, 0x0

    move-object/from16 v23, v1

    .end local p8    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v1, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    goto :goto_6

    .line 157
    .end local v1    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .restart local p8    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :cond_6
    move-object/from16 v23, p8

    .line 158
    .end local p8    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v23, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    .line 159
    sget-object v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result v1

    move/from16 v24, v1

    .end local p9    # "filterQuality":I
    .local v1, "filterQuality":I
    goto :goto_7

    .line 158
    .end local v1    # "filterQuality":I
    .restart local p9    # "filterQuality":I
    :cond_7
    move/from16 v24, p9

    .line 159
    .end local p9    # "filterQuality":I
    .local v24, "filterQuality":I
    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    .line 160
    const/4 v1, 0x1

    move/from16 v25, v1

    .end local p10    # "clipToBounds":Z
    .local v1, "clipToBounds":Z
    goto :goto_8

    .line 159
    .end local v1    # "clipToBounds":Z
    .restart local p10    # "clipToBounds":Z
    :cond_8
    move/from16 v25, p10

    .line 160
    .end local p10    # "clipToBounds":Z
    .local v25, "clipToBounds":Z
    :goto_8
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_9

    .line 161
    invoke-static {}, Lcoil/compose/EqualityDelegateKt;->getDefaultModelEqualityDelegate()Lcoil/compose/EqualityDelegate;

    move-result-object v0

    move-object/from16 v26, v0

    .end local p11    # "modelEqualityDelegate":Lcoil/compose/EqualityDelegate;
    .local v0, "modelEqualityDelegate":Lcoil/compose/EqualityDelegate;
    goto :goto_9

    .line 160
    .end local v0    # "modelEqualityDelegate":Lcoil/compose/EqualityDelegate;
    .restart local p11    # "modelEqualityDelegate":Lcoil/compose/EqualityDelegate;
    :cond_9
    move-object/from16 v26, p11

    .line 163
    .end local p11    # "modelEqualityDelegate":Lcoil/compose/EqualityDelegate;
    .local v26, "modelEqualityDelegate":Lcoil/compose/EqualityDelegate;
    :goto_9
    nop

    .line 164
    nop

    .line 165
    invoke-static {}, Lcoil/compose/LocalImageLoaderKt;->getLocalImageLoader()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v13, v1}, Lcoil/compose/ImageLoaderProvidableCompositionLocal;->getCurrent(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;I)Lcoil/ImageLoader;

    move-result-object v2

    .line 166
    nop

    .line 167
    nop

    .line 168
    nop

    .line 169
    nop

    .line 170
    nop

    .line 171
    nop

    .line 172
    nop

    .line 173
    nop

    .line 174
    nop

    .line 175
    and-int/lit8 v0, p13, 0x70

    or-int/lit16 v0, v0, 0x208

    shl-int/lit8 v1, p13, 0x3

    and-int/lit16 v1, v1, 0x1c00

    or-int/2addr v0, v1

    shl-int/lit8 v1, p13, 0x3

    const v3, 0xe000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    shl-int/lit8 v1, p13, 0x3

    const/high16 v3, 0x70000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    shl-int/lit8 v1, p13, 0x3

    const/high16 v3, 0x380000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    shl-int/lit8 v1, p13, 0x3

    const/high16 v3, 0x1c00000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    shl-int/lit8 v1, p13, 0x3

    const/high16 v3, 0xe000000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    shl-int/lit8 v1, p13, 0x3

    const/high16 v3, 0x70000000

    and-int/2addr v1, v3

    or-int v14, v0, v1

    shr-int/lit8 v0, p13, 0x1b

    and-int/lit8 v0, v0, 0xe

    shl-int/lit8 v1, p14, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    shl-int/lit8 v1, p14, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int v15, v0, v1

    const/16 v16, 0x0

    .line 162
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v9, v23

    move/from16 v10, v24

    move/from16 v11, v25

    move-object/from16 v12, v26

    move-object/from16 v13, p12

    invoke-static/range {v0 .. v16}, Lcoil/compose/AsyncImageKt;->AsyncImage-QgsmV_s(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)V

    invoke-interface/range {p12 .. p12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 176
    return-void
.end method

.method public static final synthetic AsyncImage-ylYTKUw(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;III)V
    .locals 33
    .param p0, "model"    # Ljava/lang/Object;
    .param p1, "contentDescription"    # Ljava/lang/String;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "placeholder"    # Landroidx/compose/ui/graphics/painter/Painter;
    .param p4, "error"    # Landroidx/compose/ui/graphics/painter/Painter;
    .param p5, "fallback"    # Landroidx/compose/ui/graphics/painter/Painter;
    .param p6, "onLoading"    # Lkotlin/jvm/functions/Function1;
    .param p7, "onSuccess"    # Lkotlin/jvm/functions/Function1;
    .param p8, "onError"    # Lkotlin/jvm/functions/Function1;
    .param p9, "alignment"    # Landroidx/compose/ui/Alignment;
    .param p10, "contentScale"    # Landroidx/compose/ui/layout/ContentScale;
    .param p11, "alpha"    # F
    .param p12, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p13, "filterQuality"    # I
    .param p14, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p15, "$changed"    # I
    .param p16, "$changed1"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Kept for binary compatibility."
    .end annotation

    move-object/from16 v14, p14

    move/from16 v0, p17

    const v1, 0x78daf84a

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 92
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object/from16 v21, v1

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_0

    .line 0
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_0
    move-object/from16 v21, p2

    .line 92
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v21, "modifier":Landroidx/compose/ui/Modifier;
    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 93
    const/4 v1, 0x0

    move-object/from16 v22, v1

    .end local p3    # "placeholder":Landroidx/compose/ui/graphics/painter/Painter;
    .local v1, "placeholder":Landroidx/compose/ui/graphics/painter/Painter;
    goto :goto_1

    .line 92
    .end local v1    # "placeholder":Landroidx/compose/ui/graphics/painter/Painter;
    .restart local p3    # "placeholder":Landroidx/compose/ui/graphics/painter/Painter;
    :cond_1
    move-object/from16 v22, p3

    .line 93
    .end local p3    # "placeholder":Landroidx/compose/ui/graphics/painter/Painter;
    .local v22, "placeholder":Landroidx/compose/ui/graphics/painter/Painter;
    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    .line 94
    const/4 v1, 0x0

    move-object/from16 v23, v1

    .end local p4    # "error":Landroidx/compose/ui/graphics/painter/Painter;
    .local v1, "error":Landroidx/compose/ui/graphics/painter/Painter;
    goto :goto_2

    .line 93
    .end local v1    # "error":Landroidx/compose/ui/graphics/painter/Painter;
    .restart local p4    # "error":Landroidx/compose/ui/graphics/painter/Painter;
    :cond_2
    move-object/from16 v23, p4

    .line 94
    .end local p4    # "error":Landroidx/compose/ui/graphics/painter/Painter;
    .local v23, "error":Landroidx/compose/ui/graphics/painter/Painter;
    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 95
    move-object/from16 v1, v23

    move-object/from16 v24, v1

    .end local p5    # "fallback":Landroidx/compose/ui/graphics/painter/Painter;
    .local v1, "fallback":Landroidx/compose/ui/graphics/painter/Painter;
    goto :goto_3

    .line 94
    .end local v1    # "fallback":Landroidx/compose/ui/graphics/painter/Painter;
    .restart local p5    # "fallback":Landroidx/compose/ui/graphics/painter/Painter;
    :cond_3
    move-object/from16 v24, p5

    .line 95
    .end local p5    # "fallback":Landroidx/compose/ui/graphics/painter/Painter;
    .local v24, "fallback":Landroidx/compose/ui/graphics/painter/Painter;
    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    .line 96
    const/4 v1, 0x0

    move-object/from16 v25, v1

    .end local p6    # "onLoading":Lkotlin/jvm/functions/Function1;
    .local v1, "onLoading":Lkotlin/jvm/functions/Function1;
    goto :goto_4

    .line 95
    .end local v1    # "onLoading":Lkotlin/jvm/functions/Function1;
    .restart local p6    # "onLoading":Lkotlin/jvm/functions/Function1;
    :cond_4
    move-object/from16 v25, p6

    .line 96
    .end local p6    # "onLoading":Lkotlin/jvm/functions/Function1;
    .local v25, "onLoading":Lkotlin/jvm/functions/Function1;
    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    .line 97
    const/4 v1, 0x0

    move-object/from16 v26, v1

    .end local p7    # "onSuccess":Lkotlin/jvm/functions/Function1;
    .local v1, "onSuccess":Lkotlin/jvm/functions/Function1;
    goto :goto_5

    .line 96
    .end local v1    # "onSuccess":Lkotlin/jvm/functions/Function1;
    .restart local p7    # "onSuccess":Lkotlin/jvm/functions/Function1;
    :cond_5
    move-object/from16 v26, p7

    .line 97
    .end local p7    # "onSuccess":Lkotlin/jvm/functions/Function1;
    .local v26, "onSuccess":Lkotlin/jvm/functions/Function1;
    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    .line 98
    const/4 v1, 0x0

    move-object/from16 v27, v1

    .end local p8    # "onError":Lkotlin/jvm/functions/Function1;
    .local v1, "onError":Lkotlin/jvm/functions/Function1;
    goto :goto_6

    .line 97
    .end local v1    # "onError":Lkotlin/jvm/functions/Function1;
    .restart local p8    # "onError":Lkotlin/jvm/functions/Function1;
    :cond_6
    move-object/from16 v27, p8

    .line 98
    .end local p8    # "onError":Lkotlin/jvm/functions/Function1;
    .local v27, "onError":Lkotlin/jvm/functions/Function1;
    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    .line 99
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v1

    move-object/from16 v28, v1

    .end local p9    # "alignment":Landroidx/compose/ui/Alignment;
    .local v1, "alignment":Landroidx/compose/ui/Alignment;
    goto :goto_7

    .line 98
    .end local v1    # "alignment":Landroidx/compose/ui/Alignment;
    .restart local p9    # "alignment":Landroidx/compose/ui/Alignment;
    :cond_7
    move-object/from16 v28, p9

    .line 99
    .end local p9    # "alignment":Landroidx/compose/ui/Alignment;
    .local v28, "alignment":Landroidx/compose/ui/Alignment;
    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    .line 100
    sget-object v1, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v1

    move-object/from16 v29, v1

    .end local p10    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v1, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    goto :goto_8

    .line 99
    .end local v1    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .restart local p10    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :cond_8
    move-object/from16 v29, p10

    .line 100
    .end local p10    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v29, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    .line 101
    const/high16 v1, 0x3f800000    # 1.0f

    move/from16 v30, v1

    .end local p11    # "alpha":F
    .local v1, "alpha":F
    goto :goto_9

    .line 100
    .end local v1    # "alpha":F
    .restart local p11    # "alpha":F
    :cond_9
    move/from16 v30, p11

    .line 101
    .end local p11    # "alpha":F
    .local v30, "alpha":F
    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    .line 102
    const/4 v1, 0x0

    move-object/from16 v31, v1

    .end local p12    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v1, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    goto :goto_a

    .line 101
    .end local v1    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .restart local p12    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :cond_a
    move-object/from16 v31, p12

    .line 102
    .end local p12    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v31, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :goto_a
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_b

    .line 103
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result v0

    move/from16 v32, v0

    .end local p13    # "filterQuality":I
    .local v0, "filterQuality":I
    goto :goto_b

    .line 102
    .end local v0    # "filterQuality":I
    .restart local p13    # "filterQuality":I
    :cond_b
    move/from16 v32, p13

    .line 105
    .end local p13    # "filterQuality":I
    .local v32, "filterQuality":I
    :goto_b
    nop

    .line 106
    nop

    .line 107
    invoke-static {}, Lcoil/compose/LocalImageLoaderKt;->getLocalImageLoader()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v14, v1}, Lcoil/compose/ImageLoaderProvidableCompositionLocal;->getCurrent(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;I)Lcoil/ImageLoader;

    move-result-object v2

    .line 108
    nop

    .line 109
    nop

    .line 110
    nop

    .line 111
    nop

    .line 112
    nop

    .line 113
    nop

    .line 114
    nop

    .line 115
    nop

    .line 116
    nop

    .line 117
    nop

    .line 118
    nop

    .line 119
    const/4 v15, 0x0

    const/16 v16, 0x0

    and-int/lit8 v0, p15, 0x70

    const v1, 0x248208

    or-int/2addr v0, v1

    shl-int/lit8 v1, p15, 0x3

    and-int/lit16 v1, v1, 0x1c00

    or-int/2addr v0, v1

    shl-int/lit8 v1, p15, 0x3

    const/high16 v3, 0x1c00000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    shl-int/lit8 v1, p15, 0x3

    const/high16 v3, 0xe000000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    shl-int/lit8 v1, p15, 0x3

    const/high16 v3, 0x70000000

    and-int/2addr v1, v3

    or-int v18, v0, v1

    shr-int/lit8 v0, p15, 0x1b

    and-int/lit8 v0, v0, 0xe

    shl-int/lit8 v1, p16, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    shl-int/lit8 v1, p16, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int/2addr v0, v1

    shl-int/lit8 v1, p16, 0x3

    and-int/lit16 v1, v1, 0x1c00

    or-int/2addr v0, v1

    const v1, 0xe000

    shl-int/lit8 v3, p16, 0x3

    and-int/2addr v1, v3

    or-int v19, v0, v1

    const v20, 0x18000

    .line 104
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v7, v25

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    move-object/from16 v10, v28

    move-object/from16 v11, v29

    move/from16 v12, v30

    move-object/from16 v13, v31

    move/from16 v14, v32

    move-object/from16 v17, p14

    invoke-static/range {v0 .. v20}, Lcoil/compose/AsyncImageKt;->AsyncImage-J-FEaFM(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)V

    invoke-interface/range {p14 .. p14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 120
    return-void
.end method
