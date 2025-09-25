.class public final Landroidx/compose/ui/graphics/vector/VectorPainterKt;
.super Ljava/lang/Object;
.source "VectorPainter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVectorPainter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VectorPainter.kt\nandroidx/compose/ui/graphics/vector/VectorPainterKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n+ 6 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n*L\n1#1,516:1\n74#2:517\n74#2:543\n50#3:518\n49#3:519\n25#3:526\n67#3,3:533\n66#3:536\n50#3:544\n49#3:545\n1116#4,6:520\n1116#4,6:527\n1116#4,6:537\n1116#4,6:546\n174#5,6:552\n262#5,11:558\n646#6:569\n*S KotlinDebug\n*F\n+ 1 VectorPainter.kt\nandroidx/compose/ui/graphics/vector/VectorPainterKt\n*L\n129#1:517\n170#1:543\n132#1:518\n132#1:519\n135#1:526\n144#1:533,3\n144#1:536\n171#1:544\n171#1:545\n132#1:520,6\n135#1:527,6\n144#1:537,6\n171#1:546,6\n266#1:552,6\n266#1:558,11\n326#1:569\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a+\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0014\u0008\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00080\u0007H\u0007\u00a2\u0006\u0002\u0010\t\u001a$\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u001a \u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0000\u001a*\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001eH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010!\u001a\u0015\u0010\"\u001a\u00020\u00132\u0006\u0010#\u001a\u00020\u0017H\u0007\u00a2\u0006\u0002\u0010$\u001a\u0096\u0001\u0010\"\u001a\u00020\u00132\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020&2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u001e2\u0008\u0008\u0002\u0010(\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2@\u0010)\u001a<\u0012\u0013\u0012\u00110\u001e\u00a2\u0006\u000c\u0008+\u0012\u0008\u0008(\u0012\u0004\u0008\u0008(\u001d\u0012\u0013\u0012\u00110\u001e\u00a2\u0006\u000c\u0008+\u0012\u0008\u0008(\u0012\u0004\u0008\u0008(\u001f\u0012\u0004\u0012\u00020\u00030*\u00a2\u0006\u0002\u0008,\u00a2\u0006\u0002\u0008-H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008.\u0010/\u001a\u00a0\u0001\u0010\"\u001a\u00020\u00132\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020&2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u001e2\u0008\u0008\u0002\u0010(\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u00100\u001a\u0002012@\u0010)\u001a<\u0012\u0013\u0012\u00110\u001e\u00a2\u0006\u000c\u0008+\u0012\u0008\u0008(\u0012\u0004\u0008\u0008(\u001d\u0012\u0013\u0012\u00110\u001e\u00a2\u0006\u000c\u0008+\u0012\u0008\u0008(\u0012\u0004\u0008\u0008(\u001f\u0012\u0004\u0012\u00020\u00030*\u00a2\u0006\u0002\u0008,\u00a2\u0006\u0002\u0008-H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u00082\u00103\u001aD\u00104\u001a\u00020\u0013*\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u00105\u001a\u00020\u001b2\u0008\u0008\u0002\u0010(\u001a\u00020\u00012\u0008\u00106\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u00100\u001a\u000201H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u00087\u00108\u001a\u0014\u00109\u001a\u00020\u0019*\u00020\u00192\u0006\u0010:\u001a\u00020\u0005H\u0000\u001a&\u0010;\u001a\u00020\u0003*\u00020<2\u0017\u0010=\u001a\u0013\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020\u00030>\u00a2\u0006\u0002\u0008?H\u0082\u0008\u001a&\u0010@\u001a\u00020\u001b*\u00020\u00152\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020&H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008A\u0010B\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006C"
    }
    d2 = {
        "RootGroupName",
        "",
        "RenderVectorGroup",
        "",
        "group",
        "Landroidx/compose/ui/graphics/vector/VectorGroup;",
        "configs",
        "",
        "Landroidx/compose/ui/graphics/vector/VectorConfig;",
        "(Landroidx/compose/ui/graphics/vector/VectorGroup;Ljava/util/Map;Landroidx/compose/runtime/Composer;II)V",
        "createColorFilter",
        "Landroidx/compose/ui/graphics/ColorFilter;",
        "tintColor",
        "Landroidx/compose/ui/graphics/Color;",
        "tintBlendMode",
        "Landroidx/compose/ui/graphics/BlendMode;",
        "createColorFilter-xETnrds",
        "(JI)Landroidx/compose/ui/graphics/ColorFilter;",
        "createVectorPainterFromImageVector",
        "Landroidx/compose/ui/graphics/vector/VectorPainter;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "imageVector",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "root",
        "Landroidx/compose/ui/graphics/vector/GroupComponent;",
        "obtainViewportSize",
        "Landroidx/compose/ui/geometry/Size;",
        "defaultSize",
        "viewportWidth",
        "",
        "viewportHeight",
        "obtainViewportSize-Pq9zytI",
        "(JFF)J",
        "rememberVectorPainter",
        "image",
        "(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/VectorPainter;",
        "defaultWidth",
        "Landroidx/compose/ui/unit/Dp;",
        "defaultHeight",
        "name",
        "content",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "Landroidx/compose/runtime/Composable;",
        "Landroidx/compose/ui/graphics/vector/VectorComposable;",
        "rememberVectorPainter-mlNsNFs",
        "(FFFFLjava/lang/String;JILkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/graphics/vector/VectorPainter;",
        "autoMirror",
        "",
        "rememberVectorPainter-vIP8VLU",
        "(FFFFLjava/lang/String;JIZLkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/graphics/vector/VectorPainter;",
        "configureVectorPainter",
        "viewportSize",
        "intrinsicColorFilter",
        "configureVectorPainter-T4PVSW8",
        "(Landroidx/compose/ui/graphics/vector/VectorPainter;JJLjava/lang/String;Landroidx/compose/ui/graphics/ColorFilter;Z)Landroidx/compose/ui/graphics/vector/VectorPainter;",
        "createGroupComponent",
        "currentGroup",
        "mirror",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "obtainSizePx",
        "obtainSizePx-VpY3zN4",
        "(Landroidx/compose/ui/unit/Density;FF)J",
        "ui_release"
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
.field public static final RootGroupName:Ljava/lang/String; = "VectorRootGroup"


# direct methods
.method public static final RenderVectorGroup(Landroidx/compose/ui/graphics/vector/VectorGroup;Ljava/util/Map;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .param p0, "group"    # Landroidx/compose/ui/graphics/vector/VectorGroup;
    .param p1, "configs"    # Ljava/util/Map;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/vector/VectorGroup;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroidx/compose/ui/graphics/vector/VectorConfig;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 427
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    const v3, -0x1a9827a1

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const-string v4, "C(RenderVectorGroup)P(1):VectorPainter.kt#huu6hf"

    invoke-static {v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v4, p3

    .local v4, "$dirty":I
    and-int/lit8 v5, v2, 0x1

    const/4 v6, 0x2

    if-eqz v5, :cond_0

    or-int/lit8 v4, v4, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v1, 0xe

    if-nez v5, :cond_2

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    or-int/2addr v4, v5

    :cond_2
    :goto_1
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v4, v4, 0x10

    :cond_3
    move v14, v4

    .end local v4    # "$dirty":I
    .local v14, "$dirty":I
    if-ne v5, v6, :cond_5

    and-int/lit8 v4, v14, 0x5b

    const/16 v6, 0x12

    if-ne v4, v6, :cond_5

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    .line 515
    :cond_4
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move/from16 v22, v14

    move-object v3, v15

    goto/16 :goto_5

    .line 427
    :cond_5
    :goto_2
    if-eqz v5, :cond_6

    .line 426
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v4

    move-object v13, v4

    .end local p1    # "configs":Ljava/util/Map;
    .local v4, "configs":Ljava/util/Map;
    goto :goto_3

    .line 427
    .end local v4    # "configs":Ljava/util/Map;
    .restart local p1    # "configs":Ljava/util/Map;
    :cond_6
    move-object/from16 v13, p1

    .line 426
    .end local p1    # "configs":Ljava/util/Map;
    .local v13, "configs":Ljava/util/Map;
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 427
    const/4 v4, -0x1

    const-string v5, "androidx.compose.ui.graphics.vector.RenderVectorGroup (VectorPainter.kt:426)"

    invoke-static {v3, v14, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 428
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroidx/compose/ui/graphics/vector/VectorNode;

    .line 429
    .local v12, "vectorNode":Landroidx/compose/ui/graphics/vector/VectorNode;
    instance-of v4, v12, Landroidx/compose/ui/graphics/vector/VectorPath;

    if-eqz v4, :cond_9

    const v4, -0x1372ab17

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "430@15882L1719"

    invoke-static {v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 430
    move-object v4, v12

    check-cast v4, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/VectorPath;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/vector/VectorConfig;

    if-nez v4, :cond_8

    new-instance v4, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$config$1;

    invoke-direct {v4}, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$config$1;-><init>()V

    check-cast v4, Landroidx/compose/ui/graphics/vector/VectorConfig;

    :cond_8
    move-object v11, v4

    .line 432
    .local v11, "config":Landroidx/compose/ui/graphics/vector/VectorConfig;
    nop

    .line 433
    sget-object v4, Landroidx/compose/ui/graphics/vector/VectorProperty$PathData;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$PathData;

    check-cast v4, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 434
    move-object v5, v12

    check-cast v5, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/VectorPath;->getPathData()Ljava/util/List;

    move-result-object v5

    .line 432
    invoke-interface {v11, v4, v5}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 436
    move-object v5, v12

    check-cast v5, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/VectorPath;->getPathFillType-Rg-k1Os()I

    move-result v5

    .line 437
    move-object v6, v12

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorPath;->getName()Ljava/lang/String;

    move-result-object v6

    .line 438
    nop

    .line 439
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorProperty$Fill;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$Fill;

    check-cast v7, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 440
    move-object v8, v12

    check-cast v8, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/VectorPath;->getFill()Landroidx/compose/ui/graphics/Brush;

    move-result-object v8

    .line 438
    invoke-interface {v11, v7, v8}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/Brush;

    .line 442
    nop

    .line 443
    sget-object v8, Landroidx/compose/ui/graphics/vector/VectorProperty$FillAlpha;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$FillAlpha;

    check-cast v8, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 444
    move-object v9, v12

    check-cast v9, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/VectorPath;->getFillAlpha()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    .line 442
    invoke-interface {v11, v8, v9}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    .line 446
    nop

    .line 447
    sget-object v9, Landroidx/compose/ui/graphics/vector/VectorProperty$Stroke;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$Stroke;

    check-cast v9, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 448
    move-object v10, v12

    check-cast v10, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/VectorPath;->getStroke()Landroidx/compose/ui/graphics/Brush;

    move-result-object v10

    .line 446
    invoke-interface {v11, v9, v10}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/graphics/Brush;

    .line 450
    nop

    .line 451
    sget-object v10, Landroidx/compose/ui/graphics/vector/VectorProperty$StrokeAlpha;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$StrokeAlpha;

    check-cast v10, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 452
    move-object/from16 v16, v12

    check-cast v16, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/VectorPath;->getStrokeAlpha()F

    move-result v16

    move-object/from16 p1, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 450
    invoke-interface {v11, v10, v3}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v10

    .line 454
    nop

    .line 455
    sget-object v3, Landroidx/compose/ui/graphics/vector/VectorProperty$StrokeLineWidth;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$StrokeLineWidth;

    check-cast v3, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 456
    move-object/from16 v16, v12

    check-cast v16, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/VectorPath;->getStrokeLineWidth()F

    move-result v16

    move-object/from16 v17, v13

    .end local v13    # "configs":Ljava/util/Map;
    .local v17, "configs":Ljava/util/Map;
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    .line 454
    invoke-interface {v11, v3, v13}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    move-object v13, v11

    .end local v11    # "config":Landroidx/compose/ui/graphics/vector/VectorConfig;
    .local v13, "config":Landroidx/compose/ui/graphics/vector/VectorConfig;
    move v11, v3

    .line 458
    move-object v3, v12

    check-cast v3, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VectorPath;->getStrokeLineCap-KaPHkGw()I

    move-result v3

    move-object v0, v12

    .end local v12    # "vectorNode":Landroidx/compose/ui/graphics/vector/VectorNode;
    .local v0, "vectorNode":Landroidx/compose/ui/graphics/vector/VectorNode;
    move v12, v3

    .line 459
    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VectorPath;->getStrokeLineJoin-LxFBmk8()I

    move-result v3

    move-object v1, v13

    move-object/from16 v2, v17

    .end local v13    # "config":Landroidx/compose/ui/graphics/vector/VectorConfig;
    .end local v17    # "configs":Ljava/util/Map;
    .local v1, "config":Landroidx/compose/ui/graphics/vector/VectorConfig;
    .local v2, "configs":Ljava/util/Map;
    move v13, v3

    .line 460
    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VectorPath;->getStrokeLineMiter()F

    move-result v3

    move/from16 v22, v14

    .end local v14    # "$dirty":I
    .local v22, "$dirty":I
    move v14, v3

    .line 461
    nop

    .line 462
    sget-object v3, Landroidx/compose/ui/graphics/vector/VectorProperty$TrimPathStart;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$TrimPathStart;

    check-cast v3, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 463
    move-object/from16 v16, v0

    check-cast v16, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/VectorPath;->getTrimPathStart()F

    move-result v16

    move-object/from16 p2, v15

    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p2    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    .line 461
    invoke-interface {v1, v3, v15}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v15

    move-object/from16 v3, p2

    .line 465
    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$composer":Landroidx/compose/runtime/Composer;
    nop

    .line 466
    sget-object v16, Landroidx/compose/ui/graphics/vector/VectorProperty$TrimPathEnd;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$TrimPathEnd;

    move-object/from16 p2, v2

    .end local v2    # "configs":Ljava/util/Map;
    .local p2, "configs":Ljava/util/Map;
    move-object/from16 v2, v16

    check-cast v2, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 467
    move-object/from16 v16, v0

    check-cast v16, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/VectorPath;->getTrimPathEnd()F

    move-result v16

    move-object/from16 v23, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 465
    invoke-interface {v1, v2, v4}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v16

    .line 469
    nop

    .line 470
    sget-object v2, Landroidx/compose/ui/graphics/vector/VectorProperty$TrimPathOffset;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$TrimPathOffset;

    check-cast v2, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 471
    move-object v4, v0

    check-cast v4, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/VectorPath;->getTrimPathOffset()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 469
    invoke-interface {v1, v2, v4}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v17

    const/16 v19, 0x8

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 431
    move-object/from16 v18, v3

    move-object/from16 v4, v23

    invoke-static/range {v4 .. v21}, Landroidx/compose/ui/graphics/vector/VectorComposeKt;->Path-9cdaXJ4(Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFLandroidx/compose/runtime/Composer;III)V

    .line 429
    .end local v1    # "config":Landroidx/compose/ui/graphics/vector/VectorConfig;
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object/from16 v0, p0

    move-object/from16 v13, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move-object v15, v3

    move/from16 v14, v22

    move-object/from16 v3, p1

    goto/16 :goto_4

    .line 474
    .end local v0    # "vectorNode":Landroidx/compose/ui/graphics/vector/VectorNode;
    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v22    # "$dirty":I
    .end local p2    # "configs":Ljava/util/Map;
    .restart local v12    # "vectorNode":Landroidx/compose/ui/graphics/vector/VectorNode;
    .local v13, "configs":Ljava/util/Map;
    .restart local v14    # "$dirty":I
    .restart local v15    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_9
    move-object/from16 p1, v3

    move-object v0, v12

    move-object/from16 p2, v13

    move/from16 v22, v14

    move-object v3, v15

    .end local v12    # "vectorNode":Landroidx/compose/ui/graphics/vector/VectorNode;
    .end local v13    # "configs":Ljava/util/Map;
    .end local v14    # "$dirty":I
    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v0    # "vectorNode":Landroidx/compose/ui/graphics/vector/VectorNode;
    .restart local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v22    # "$dirty":I
    .restart local p2    # "configs":Ljava/util/Map;
    instance-of v1, v0, Landroidx/compose/ui/graphics/vector/VectorGroup;

    if-eqz v1, :cond_b

    const v1, -0x1372a3d5

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "475@17740L1368"

    invoke-static {v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 475
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    .end local p2    # "configs":Ljava/util/Map;
    .restart local v2    # "configs":Ljava/util/Map;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/vector/VectorConfig;

    if-nez v1, :cond_a

    new-instance v1, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$config$2;

    invoke-direct {v1}, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$config$2;-><init>()V

    check-cast v1, Landroidx/compose/ui/graphics/vector/VectorConfig;

    .line 477
    .restart local v1    # "config":Landroidx/compose/ui/graphics/vector/VectorConfig;
    :cond_a
    move-object v4, v0

    check-cast v4, Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getName()Ljava/lang/String;

    move-result-object v4

    .line 478
    nop

    .line 479
    sget-object v5, Landroidx/compose/ui/graphics/vector/VectorProperty$Rotation;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$Rotation;

    check-cast v5, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 480
    move-object v6, v0

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getRotation()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 478
    invoke-interface {v1, v5, v6}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    .line 482
    nop

    .line 483
    sget-object v6, Landroidx/compose/ui/graphics/vector/VectorProperty$ScaleX;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$ScaleX;

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 484
    move-object v7, v0

    check-cast v7, Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getScaleX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 482
    invoke-interface {v1, v6, v7}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v8

    .line 486
    nop

    .line 487
    sget-object v6, Landroidx/compose/ui/graphics/vector/VectorProperty$ScaleY;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$ScaleY;

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 488
    move-object v7, v0

    check-cast v7, Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getScaleY()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 486
    invoke-interface {v1, v6, v7}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v9

    .line 490
    nop

    .line 491
    sget-object v6, Landroidx/compose/ui/graphics/vector/VectorProperty$TranslateX;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$TranslateX;

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 492
    move-object v7, v0

    check-cast v7, Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getTranslationX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 490
    invoke-interface {v1, v6, v7}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v10

    .line 494
    nop

    .line 495
    sget-object v6, Landroidx/compose/ui/graphics/vector/VectorProperty$TranslateY;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$TranslateY;

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 496
    move-object v7, v0

    check-cast v7, Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getTranslationY()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 494
    invoke-interface {v1, v6, v7}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v11

    .line 498
    nop

    .line 499
    sget-object v6, Landroidx/compose/ui/graphics/vector/VectorProperty$PivotX;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$PivotX;

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 500
    move-object v7, v0

    check-cast v7, Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getPivotX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 498
    invoke-interface {v1, v6, v7}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    .line 502
    nop

    .line 503
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorProperty$PivotY;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$PivotY;

    check-cast v7, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 504
    move-object v12, v0

    check-cast v12, Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getPivotY()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    .line 502
    invoke-interface {v1, v7, v12}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    .line 506
    nop

    .line 507
    sget-object v12, Landroidx/compose/ui/graphics/vector/VectorProperty$PathData;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$PathData;

    check-cast v12, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 508
    move-object v13, v0

    check-cast v13, Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getClipPathData()Ljava/util/List;

    move-result-object v13

    .line 506
    invoke-interface {v1, v12, v13}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 477
    nop

    .line 478
    nop

    .line 498
    nop

    .line 502
    nop

    .line 482
    nop

    .line 486
    nop

    .line 490
    nop

    .line 494
    nop

    .line 506
    nop

    .line 510
    new-instance v13, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$1;

    invoke-direct {v13, v0, v2}, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$1;-><init>(Landroidx/compose/ui/graphics/vector/VectorNode;Ljava/util/Map;)V

    const v14, 0x566df4ae

    const/4 v15, 0x1

    invoke-static {v3, v14, v15, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v13

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/high16 v15, 0x38000000

    const/16 v16, 0x0

    .line 476
    move-object v14, v3

    invoke-static/range {v4 .. v16}, Landroidx/compose/ui/graphics/vector/VectorComposeKt;->Group(Ljava/lang/String;FFFFFFFLjava/util/List;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 474
    .end local v1    # "config":Landroidx/compose/ui/graphics/vector/VectorConfig;
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object v13, v2

    move-object v15, v3

    move/from16 v14, v22

    move-object/from16 v3, p1

    move/from16 v2, p4

    goto/16 :goto_4

    .line 513
    .end local v2    # "configs":Ljava/util/Map;
    .restart local p2    # "configs":Ljava/util/Map;
    :cond_b
    move-object/from16 v2, p2

    .end local p2    # "configs":Ljava/util/Map;
    .restart local v2    # "configs":Ljava/util/Map;
    const v1, -0x13729e17

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object v13, v2

    move-object v15, v3

    move/from16 v14, v22

    move-object/from16 v3, p1

    move/from16 v2, p4

    .end local v0    # "vectorNode":Landroidx/compose/ui/graphics/vector/VectorNode;
    goto/16 :goto_4

    .end local v2    # "configs":Ljava/util/Map;
    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v22    # "$dirty":I
    .restart local v13    # "configs":Ljava/util/Map;
    .restart local v14    # "$dirty":I
    .restart local v15    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_c
    move-object v2, v13

    move/from16 v22, v14

    move-object v3, v15

    .end local v13    # "configs":Ljava/util/Map;
    .end local v14    # "$dirty":I
    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v2    # "configs":Ljava/util/Map;
    .restart local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v22    # "$dirty":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 515
    :cond_d
    :goto_5
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$2;

    move-object/from16 v4, p0

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct {v1, v4, v2, v5, v6}, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$2;-><init>(Landroidx/compose/ui/graphics/vector/VectorGroup;Ljava/util/Map;II)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_6

    :cond_e
    move-object/from16 v4, p0

    move/from16 v5, p3

    :goto_6
    return-void
.end method

.method public static final synthetic access$createColorFilter-xETnrds(JI)Landroidx/compose/ui/graphics/ColorFilter;
    .locals 1
    .param p0, "tintColor"    # J
    .param p2, "tintBlendMode"    # I

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->createColorFilter-xETnrds(JI)Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public static final configureVectorPainter-T4PVSW8(Landroidx/compose/ui/graphics/vector/VectorPainter;JJLjava/lang/String;Landroidx/compose/ui/graphics/ColorFilter;Z)Landroidx/compose/ui/graphics/vector/VectorPainter;
    .locals 2
    .param p0, "$this$configureVectorPainter_u2dT4PVSW8"    # Landroidx/compose/ui/graphics/vector/VectorPainter;
    .param p1, "defaultSize"    # J
    .param p3, "viewportSize"    # J
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "intrinsicColorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p7, "autoMirror"    # Z

    .line 341
    move-object v0, p0

    .local v0, "$this$configureVectorPainter_T4PVSW8_u24lambda_u246":Landroidx/compose/ui/graphics/vector/VectorPainter;
    const/4 v1, 0x0

    .line 342
    .local v1, "$i$a$-apply-VectorPainterKt$configureVectorPainter$1":I
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/graphics/vector/VectorPainter;->setSize-uvyYCjk$ui_release(J)V

    .line 343
    invoke-virtual {v0, p7}, Landroidx/compose/ui/graphics/vector/VectorPainter;->setAutoMirror$ui_release(Z)V

    .line 344
    invoke-virtual {v0, p6}, Landroidx/compose/ui/graphics/vector/VectorPainter;->setIntrinsicColorFilter$ui_release(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 345
    invoke-virtual {v0, p3, p4}, Landroidx/compose/ui/graphics/vector/VectorPainter;->setViewportSize-uvyYCjk$ui_release(J)V

    .line 346
    invoke-virtual {v0, p5}, Landroidx/compose/ui/graphics/vector/VectorPainter;->setName$ui_release(Ljava/lang/String;)V

    .line 347
    nop

    .line 341
    .end local v0    # "$this$configureVectorPainter_T4PVSW8_u24lambda_u246":Landroidx/compose/ui/graphics/vector/VectorPainter;
    .end local v1    # "$i$a$-apply-VectorPainterKt$configureVectorPainter$1":I
    nop

    .line 347
    return-object p0
.end method

.method public static synthetic configureVectorPainter-T4PVSW8$default(Landroidx/compose/ui/graphics/vector/VectorPainter;JJLjava/lang/String;Landroidx/compose/ui/graphics/ColorFilter;ZILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/VectorPainter;
    .locals 9

    .line 335
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    .line 338
    const-string v0, "VectorRootGroup"

    move-object v6, v0

    goto :goto_0

    .line 335
    :cond_0
    move-object v6, p5

    :goto_0
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_1

    .line 340
    const/4 v0, 0x0

    move v8, v0

    goto :goto_1

    .line 335
    :cond_1
    move/from16 v8, p7

    :goto_1
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p6

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->configureVectorPainter-T4PVSW8(Landroidx/compose/ui/graphics/vector/VectorPainter;JJLjava/lang/String;Landroidx/compose/ui/graphics/ColorFilter;Z)Landroidx/compose/ui/graphics/vector/VectorPainter;

    move-result-object v0

    return-object v0
.end method

.method private static final createColorFilter-xETnrds(JI)Landroidx/compose/ui/graphics/ColorFilter;
    .locals 5
    .param p0, "tintColor"    # J
    .param p2, "tintBlendMode"    # I

    .line 326
    move-wide v0, p0

    .local v0, "$this$isSpecified$iv":J
    const/4 v2, 0x0

    .line 569
    .local v2, "$i$f$isSpecified-8_81llA":I
    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 326
    .end local v0    # "$this$isSpecified$iv":J
    .end local v2    # "$i$f$isSpecified-8_81llA":I
    :goto_0
    if-eqz v3, :cond_1

    .line 327
    sget-object v0, Landroidx/compose/ui/graphics/ColorFilter;->Companion:Landroidx/compose/ui/graphics/ColorFilter$Companion;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->tint-xETnrds(JI)Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object v0

    goto :goto_1

    .line 329
    :cond_1
    const/4 v0, 0x0

    .line 330
    :goto_1
    return-object v0
.end method

.method public static final createGroupComponent(Landroidx/compose/ui/graphics/vector/GroupComponent;Landroidx/compose/ui/graphics/vector/VectorGroup;)Landroidx/compose/ui/graphics/vector/GroupComponent;
    .locals 7
    .param p0, "$this$createGroupComponent"    # Landroidx/compose/ui/graphics/vector/GroupComponent;
    .param p1, "currentGroup"    # Landroidx/compose/ui/graphics/vector/VectorGroup;

    .line 377
    const/4 v0, 0x0

    .local v0, "index":I
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getSize()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 378
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->get(I)Landroidx/compose/ui/graphics/vector/VectorNode;

    move-result-object v2

    .line 379
    .local v2, "vectorNode":Landroidx/compose/ui/graphics/vector/VectorNode;
    instance-of v3, v2, Landroidx/compose/ui/graphics/vector/VectorPath;

    if-eqz v3, :cond_0

    .line 380
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathComponent;

    invoke-direct {v3}, Landroidx/compose/ui/graphics/vector/PathComponent;-><init>()V

    move-object v4, v3

    .local v4, "$this$createGroupComponent_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathComponent;
    const/4 v5, 0x0

    .line 381
    .local v5, "$i$a$-apply-VectorPainterKt$createGroupComponent$pathComponent$1":I
    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorPath;->getPathData()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/PathComponent;->setPathData(Ljava/util/List;)V

    .line 382
    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorPath;->getPathFillType-Rg-k1Os()I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/PathComponent;->setPathFillType-oQ8Xj4U(I)V

    .line 383
    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorPath;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/PathComponent;->setName(Ljava/lang/String;)V

    .line 384
    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorPath;->getFill()Landroidx/compose/ui/graphics/Brush;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/PathComponent;->setFill(Landroidx/compose/ui/graphics/Brush;)V

    .line 385
    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorPath;->getFillAlpha()F

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/PathComponent;->setFillAlpha(F)V

    .line 386
    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorPath;->getStroke()Landroidx/compose/ui/graphics/Brush;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/PathComponent;->setStroke(Landroidx/compose/ui/graphics/Brush;)V

    .line 387
    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorPath;->getStrokeAlpha()F

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/PathComponent;->setStrokeAlpha(F)V

    .line 388
    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorPath;->getStrokeLineWidth()F

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/PathComponent;->setStrokeLineWidth(F)V

    .line 389
    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorPath;->getStrokeLineCap-KaPHkGw()I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/PathComponent;->setStrokeLineCap-BeK7IIE(I)V

    .line 390
    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorPath;->getStrokeLineJoin-LxFBmk8()I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/PathComponent;->setStrokeLineJoin-Ww9F2mQ(I)V

    .line 391
    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorPath;->getStrokeLineMiter()F

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/PathComponent;->setStrokeLineMiter(F)V

    .line 392
    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorPath;->getTrimPathStart()F

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/PathComponent;->setTrimPathStart(F)V

    .line 393
    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorPath;->getTrimPathEnd()F

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/PathComponent;->setTrimPathEnd(F)V

    .line 394
    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorPath;->getTrimPathOffset()F

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/PathComponent;->setTrimPathOffset(F)V

    .line 395
    nop

    .line 380
    .end local v4    # "$this$createGroupComponent_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathComponent;
    .end local v5    # "$i$a$-apply-VectorPainterKt$createGroupComponent$pathComponent$1":I
    nop

    .line 396
    .local v3, "pathComponent":Landroidx/compose/ui/graphics/vector/PathComponent;
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/graphics/vector/VNode;

    invoke-virtual {p0, v0, v4}, Landroidx/compose/ui/graphics/vector/GroupComponent;->insertAt(ILandroidx/compose/ui/graphics/vector/VNode;)V

    .end local v3    # "pathComponent":Landroidx/compose/ui/graphics/vector/PathComponent;
    goto :goto_1

    .line 397
    :cond_0
    instance-of v3, v2, Landroidx/compose/ui/graphics/vector/VectorGroup;

    if-eqz v3, :cond_1

    .line 398
    new-instance v3, Landroidx/compose/ui/graphics/vector/GroupComponent;

    invoke-direct {v3}, Landroidx/compose/ui/graphics/vector/GroupComponent;-><init>()V

    move-object v4, v3

    .local v4, "$this$createGroupComponent_u24lambda_u248":Landroidx/compose/ui/graphics/vector/GroupComponent;
    const/4 v5, 0x0

    .line 399
    .local v5, "$i$a$-apply-VectorPainterKt$createGroupComponent$groupComponent$1":I
    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/GroupComponent;->setName(Ljava/lang/String;)V

    .line 400
    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getRotation()F

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/GroupComponent;->setRotation(F)V

    .line 401
    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getScaleX()F

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/GroupComponent;->setScaleX(F)V

    .line 402
    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getScaleY()F

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/GroupComponent;->setScaleY(F)V

    .line 403
    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getTranslationX()F

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/GroupComponent;->setTranslationX(F)V

    .line 404
    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getTranslationY()F

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/GroupComponent;->setTranslationY(F)V

    .line 405
    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getPivotX()F

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/GroupComponent;->setPivotX(F)V

    .line 406
    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getPivotY()F

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/GroupComponent;->setPivotY(F)V

    .line 407
    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getClipPathData()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/GroupComponent;->setClipPathData(Ljava/util/List;)V

    .line 408
    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-static {v4, v6}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->createGroupComponent(Landroidx/compose/ui/graphics/vector/GroupComponent;Landroidx/compose/ui/graphics/vector/VectorGroup;)Landroidx/compose/ui/graphics/vector/GroupComponent;

    .line 409
    nop

    .line 398
    .end local v4    # "$this$createGroupComponent_u24lambda_u248":Landroidx/compose/ui/graphics/vector/GroupComponent;
    .end local v5    # "$i$a$-apply-VectorPainterKt$createGroupComponent$groupComponent$1":I
    nop

    .line 410
    .local v3, "groupComponent":Landroidx/compose/ui/graphics/vector/GroupComponent;
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/graphics/vector/VNode;

    invoke-virtual {p0, v0, v4}, Landroidx/compose/ui/graphics/vector/GroupComponent;->insertAt(ILandroidx/compose/ui/graphics/vector/VNode;)V

    .line 377
    .end local v2    # "vectorNode":Landroidx/compose/ui/graphics/vector/VectorNode;
    .end local v3    # "groupComponent":Landroidx/compose/ui/graphics/vector/GroupComponent;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 413
    .end local v0    # "index":I
    :cond_2
    return-object p0
.end method

.method public static final createVectorPainterFromImageVector(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/GroupComponent;)Landroidx/compose/ui/graphics/vector/VectorPainter;
    .locals 12
    .param p0, "density"    # Landroidx/compose/ui/unit/Density;
    .param p1, "imageVector"    # Landroidx/compose/ui/graphics/vector/ImageVector;
    .param p2, "root"    # Landroidx/compose/ui/graphics/vector/GroupComponent;

    .line 357
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector;->getDefaultWidth-D9Ej5fM()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector;->getDefaultHeight-D9Ej5fM()F

    move-result v1

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->obtainSizePx-VpY3zN4(Landroidx/compose/ui/unit/Density;FF)J

    move-result-wide v0

    .line 359
    .local v0, "defaultSize":J
    nop

    .line 360
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector;->getViewportWidth()F

    move-result v2

    .line 361
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector;->getViewportHeight()F

    move-result v3

    .line 358
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->obtainViewportSize-Pq9zytI(JFF)J

    move-result-wide v10

    .line 363
    .local v10, "viewport":J
    new-instance v2, Landroidx/compose/ui/graphics/vector/VectorPainter;

    invoke-direct {v2, p2}, Landroidx/compose/ui/graphics/vector/VectorPainter;-><init>(Landroidx/compose/ui/graphics/vector/GroupComponent;)V

    .line 364
    nop

    .line 365
    nop

    .line 366
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector;->getName()Ljava/lang/String;

    move-result-object v7

    .line 367
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector;->getTintColor-0d7_KjU()J

    move-result-wide v3

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector;->getTintBlendMode-0nO6VwU()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->createColorFilter-xETnrds(JI)Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object v8

    .line 368
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector;->getAutoMirror()Z

    move-result v9

    .line 363
    move-wide v3, v0

    move-wide v5, v10

    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->configureVectorPainter-T4PVSW8(Landroidx/compose/ui/graphics/vector/VectorPainter;JJLjava/lang/String;Landroidx/compose/ui/graphics/ColorFilter;Z)Landroidx/compose/ui/graphics/vector/VectorPainter;

    move-result-object v2

    return-object v2
.end method

.method private static final mirror(Landroidx/compose/ui/graphics/drawscope/DrawScope;Lkotlin/jvm/functions/Function1;)V
    .locals 15
    .param p0, "$this$mirror"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 266
    .local v0, "$i$f$mirror":I
    const/high16 v1, -0x40800000    # -1.0f

    .local v1, "scaleX$iv":F
    const/high16 v2, 0x3f800000    # 1.0f

    .local v2, "scaleY$iv":F
    move-object v3, p0

    .line 552
    .local v3, "$this$scale_u2dFgt4K4Q_u24default$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    nop

    .line 555
    invoke-interface {v3}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v4

    .line 552
    .local v4, "pivot$iv":J
    const/4 v6, 0x0

    .line 557
    .local v6, "$i$f$scale-Fgt4K4Q":I
    move-object v7, v3

    .local v7, "$this$withTransform$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/4 v8, 0x0

    .line 558
    .local v8, "$i$f$withTransform":I
    invoke-interface {v7}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v9

    .local v9, "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    const/4 v10, 0x0

    .line 562
    .local v10, "$i$a$-with-DrawScopeKt$withTransform$1$iv$iv":I
    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    move-result-wide v11

    .line 563
    .local v11, "previousSize$iv$iv":J
    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v13

    invoke-interface {v13}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 564
    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v13

    .local v13, "$this$scale_Fgt4K4Q_u24lambda_u242$iv":Landroidx/compose/ui/graphics/drawscope/DrawTransform;
    const/4 v14, 0x0

    .line 557
    .local v14, "$i$a$-withTransform-DrawScopeKt$scale$1$iv":I
    invoke-interface {v13, v1, v2, v4, v5}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->scale-0AR0LA0(FFJ)V

    .line 564
    .end local v13    # "$this$scale_Fgt4K4Q_u24lambda_u242$iv":Landroidx/compose/ui/graphics/drawscope/DrawTransform;
    .end local v14    # "$i$a$-withTransform-DrawScopeKt$scale$1$iv":I
    nop

    .line 565
    move-object/from16 v13, p1

    invoke-interface {v13, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v14

    invoke-interface {v14}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 567
    invoke-interface {v9, v11, v12}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    .line 568
    nop

    .line 558
    .end local v9    # "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .end local v10    # "$i$a$-with-DrawScopeKt$withTransform$1$iv$iv":I
    .end local v11    # "previousSize$iv$iv":J
    nop

    .line 568
    nop

    .line 557
    .end local v7    # "$this$withTransform$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v8    # "$i$f$withTransform":I
    nop

    .line 267
    .end local v1    # "scaleX$iv":F
    .end local v2    # "scaleY$iv":F
    .end local v3    # "$this$scale_u2dFgt4K4Q_u24default$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v4    # "pivot$iv":J
    .end local v6    # "$i$f$scale-Fgt4K4Q":I
    return-void
.end method

.method private static final obtainSizePx-VpY3zN4(Landroidx/compose/ui/unit/Density;FF)J
    .locals 2
    .param p0, "$this$obtainSizePx_u2dVpY3zN4"    # Landroidx/compose/ui/unit/Density;
    .param p1, "defaultWidth"    # F
    .param p2, "defaultHeight"    # F

    .line 306
    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    invoke-interface {p0, p2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final obtainViewportSize-Pq9zytI(JFF)J
    .locals 2
    .param p0, "defaultSize"    # J
    .param p2, "viewportWidth"    # F
    .param p3, "viewportHeight"    # F

    .line 317
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    .line 318
    :goto_0
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v1

    goto :goto_1

    :cond_1
    move v1, p3

    .line 316
    :goto_1
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v0

    .line 319
    return-wide v0
.end method

.method public static final rememberVectorPainter(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/VectorPainter;
    .locals 16
    .param p0, "image"    # Landroidx/compose/ui/graphics/vector/ImageVector;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p1

    const v1, 0x544566b0

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(rememberVectorPainter)169@6989L7,170@7008L232:VectorPainter.kt#huu6hf"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    const/4 v2, -0x1

    const-string v3, "androidx.compose.ui.graphics.vector.rememberVectorPainter (VectorPainter.kt:168)"

    move/from16 v4, p2

    invoke-static {v1, v4, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_0

    .line 0
    :cond_0
    move/from16 v4, p2

    .line 170
    :goto_0
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    .local v1, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v2, 0x6

    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .line 543
    .local v3, "$i$f$getCurrent":I
    const v5, 0x789c5f52

    const-string v6, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v0, v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 170
    .end local v1    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v2    # "$changed$iv":I
    .end local v3    # "$i$f$getCurrent":I
    move-object v1, v5

    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 171
    .local v1, "density":Landroidx/compose/ui/unit/Density;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->getGenId$ui_release()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .local v2, "key1$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "$changed$iv":I
    const/4 v5, 0x0

    .local v5, "$i$f$remember":I
    const v6, 0x1e7b2b64

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v0, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 544
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    .line 545
    move-object/from16 v7, p1

    .local v6, "invalid$iv$iv":Z
    .local v7, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 546
    .local v8, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 547
    .local v10, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v6, :cond_2

    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v9, v11, :cond_1

    goto :goto_1

    .line 551
    :cond_1
    move-object/from16 v13, p0

    move-object v11, v9

    goto :goto_2

    .line 548
    :cond_2
    :goto_1
    const/4 v11, 0x0

    .line 173
    .local v11, "$i$a$-remember-VectorPainterKt$rememberVectorPainter$3":I
    nop

    .line 174
    nop

    .line 175
    new-instance v12, Landroidx/compose/ui/graphics/vector/GroupComponent;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/GroupComponent;-><init>()V

    move-object v13, v12

    .local v13, "$this$rememberVectorPainter_u24lambda_u245_u24lambda_u244":Landroidx/compose/ui/graphics/vector/GroupComponent;
    const/4 v14, 0x0

    .line 176
    .local v14, "$i$a$-apply-VectorPainterKt$rememberVectorPainter$3$1":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->getRoot()Landroidx/compose/ui/graphics/vector/VectorGroup;

    move-result-object v15

    invoke-static {v13, v15}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->createGroupComponent(Landroidx/compose/ui/graphics/vector/GroupComponent;Landroidx/compose/ui/graphics/vector/VectorGroup;)Landroidx/compose/ui/graphics/vector/GroupComponent;

    .line 177
    nop

    .end local v13    # "$this$rememberVectorPainter_u24lambda_u245_u24lambda_u244":Landroidx/compose/ui/graphics/vector/GroupComponent;
    .end local v14    # "$i$a$-apply-VectorPainterKt$rememberVectorPainter$3$1":I
    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 175
    nop

    .line 172
    move-object/from16 v13, p0

    invoke-static {v1, v13, v12}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->createVectorPainterFromImageVector(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/GroupComponent;)Landroidx/compose/ui/graphics/vector/VectorPainter;

    move-result-object v11

    .line 548
    .end local v11    # "$i$a$-remember-VectorPainterKt$rememberVectorPainter$3":I
    nop

    .line 549
    .local v11, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 550
    nop

    .line 547
    .end local v11    # "value$iv$iv":Ljava/lang/Object;
    :goto_2
    nop

    .line 546
    .end local v9    # "it$iv$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 545
    .end local v6    # "invalid$iv$iv":Z
    .end local v7    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 171
    .end local v2    # "key1$iv":Ljava/lang/Object;
    .end local v3    # "$changed$iv":I
    .end local v5    # "$i$f$remember":I
    check-cast v11, Landroidx/compose/ui/graphics/vector/VectorPainter;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v11
.end method

.method public static final rememberVectorPainter-mlNsNFs(FFFFLjava/lang/String;JILkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/graphics/vector/VectorPainter;
    .locals 21
    .param p0, "defaultWidth"    # F
    .param p1, "defaultHeight"    # F
    .param p2, "viewportWidth"    # F
    .param p3, "viewportHeight"    # F
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "tintColor"    # J
    .param p7, "tintBlendMode"    # I
    .param p8, "content"    # Lkotlin/jvm/functions/Function4;
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF",
            "Ljava/lang/String;",
            "JI",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/ui/graphics/vector/VectorPainter;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Replace rememberVectorPainter graphicsLayer that consumes the auto mirror flag"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "rememberVectorPainter(defaultWidth, defaultHeight, viewportWidth, viewportHeight, name, tintColor, tintBlendMode, false, content)"
            imports = {
                "androidx.compose.ui.graphics.vector"
            }
        .end subannotation
    .end annotation

    move-object/from16 v13, p9

    move/from16 v14, p10

    const v0, -0x397b0b9a

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberVectorPainter)P(2:c#ui.unit.Dp,1:c#ui.unit.Dp,7,6,3,5:c#ui.graphics.Color,4:c#ui.graphics.BlendMode)85@3689L207:VectorPainter.kt#huu6hf"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p11, 0x4

    if-eqz v1, :cond_0

    .line 79
    const/high16 v1, 0x7fc00000    # Float.NaN

    move v15, v1

    .end local p2    # "viewportWidth":F
    .local v1, "viewportWidth":F
    goto :goto_0

    .line 0
    .end local v1    # "viewportWidth":F
    .restart local p2    # "viewportWidth":F
    :cond_0
    move/from16 v15, p2

    .line 79
    .end local p2    # "viewportWidth":F
    .local v15, "viewportWidth":F
    :goto_0
    and-int/lit8 v1, p11, 0x8

    if-eqz v1, :cond_1

    .line 80
    const/high16 v1, 0x7fc00000    # Float.NaN

    move/from16 v16, v1

    .end local p3    # "viewportHeight":F
    .local v1, "viewportHeight":F
    goto :goto_1

    .line 79
    .end local v1    # "viewportHeight":F
    .restart local p3    # "viewportHeight":F
    :cond_1
    move/from16 v16, p3

    .line 80
    .end local p3    # "viewportHeight":F
    .local v16, "viewportHeight":F
    :goto_1
    and-int/lit8 v1, p11, 0x10

    if-eqz v1, :cond_2

    .line 81
    const-string v1, "VectorRootGroup"

    move-object/from16 v17, v1

    .end local p4    # "name":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    goto :goto_2

    .line 80
    .end local v1    # "name":Ljava/lang/String;
    .restart local p4    # "name":Ljava/lang/String;
    :cond_2
    move-object/from16 v17, p4

    .line 81
    .end local p4    # "name":Ljava/lang/String;
    .local v17, "name":Ljava/lang/String;
    :goto_2
    and-int/lit8 v1, p11, 0x20

    if-eqz v1, :cond_3

    .line 82
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v1

    move-wide/from16 v18, v1

    .end local p5    # "tintColor":J
    .local v1, "tintColor":J
    goto :goto_3

    .line 81
    .end local v1    # "tintColor":J
    .restart local p5    # "tintColor":J
    :cond_3
    move-wide/from16 v18, p5

    .line 82
    .end local p5    # "tintColor":J
    .local v18, "tintColor":J
    :goto_3
    and-int/lit8 v1, p11, 0x40

    if-eqz v1, :cond_4

    .line 83
    sget-object v1, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcIn-0nO6VwU()I

    move-result v1

    move/from16 v20, v1

    .end local p7    # "tintBlendMode":I
    .local v1, "tintBlendMode":I
    goto :goto_4

    .line 82
    .end local v1    # "tintBlendMode":I
    .restart local p7    # "tintBlendMode":I
    :cond_4
    move/from16 v20, p7

    .line 83
    .end local p7    # "tintBlendMode":I
    .local v20, "tintBlendMode":I
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 86
    const/4 v1, -0x1

    const-string v2, "androidx.compose.ui.graphics.vector.rememberVectorPainter (VectorPainter.kt:85)"

    invoke-static {v0, v14, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 87
    :cond_5
    nop

    .line 88
    nop

    .line 89
    nop

    .line 90
    nop

    .line 91
    nop

    .line 92
    nop

    .line 93
    nop

    .line 94
    const/4 v8, 0x0

    .line 95
    and-int/lit8 v0, v14, 0xe

    const/high16 v1, 0xc00000

    or-int/2addr v0, v1

    and-int/lit8 v1, v14, 0x70

    or-int/2addr v0, v1

    and-int/lit16 v1, v14, 0x380

    or-int/2addr v0, v1

    and-int/lit16 v1, v14, 0x1c00

    or-int/2addr v0, v1

    const v1, 0xe000

    and-int/2addr v1, v14

    or-int/2addr v0, v1

    const/high16 v1, 0x70000

    and-int/2addr v1, v14

    or-int/2addr v0, v1

    const/high16 v1, 0x380000

    and-int/2addr v1, v14

    or-int/2addr v0, v1

    shl-int/lit8 v1, v14, 0x3

    const/high16 v2, 0xe000000

    and-int/2addr v1, v2

    or-int v11, v0, v1

    const/4 v12, 0x0

    .line 86
    move/from16 v0, p0

    move/from16 v1, p1

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-wide/from16 v5, v18

    move/from16 v7, v20

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->rememberVectorPainter-vIP8VLU(FFFFLjava/lang/String;JIZLkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/graphics/vector/VectorPainter;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    invoke-interface/range {p9 .. p9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final rememberVectorPainter-vIP8VLU(FFFFLjava/lang/String;JIZLkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/graphics/vector/VectorPainter;
    .locals 29
    .param p0, "defaultWidth"    # F
    .param p1, "defaultHeight"    # F
    .param p2, "viewportWidth"    # F
    .param p3, "viewportHeight"    # F
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "tintColor"    # J
    .param p7, "tintBlendMode"    # I
    .param p8, "autoMirror"    # Z
    .param p9, "content"    # Lkotlin/jvm/functions/Function4;
    .param p10, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p11, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF",
            "Ljava/lang/String;",
            "JIZ",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/ui/graphics/vector/VectorPainter;"
        }
    .end annotation

    move-object/from16 v0, p9

    move-object/from16 v1, p10

    move/from16 v2, p11

    move/from16 v3, p12

    const v4, 0x3fb166c2

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "C(rememberVectorPainter)P(3:c#ui.unit.Dp,2:c#ui.unit.Dp,8,7,4,6:c#ui.graphics.Color,5:c#ui.graphics.BlendMode)128@5474L7,131@5667L94,*134@5773L28,142@6079L28,143@6135L487:VectorPainter.kt#huu6hf"

    invoke-static {v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v5, v3, 0x4

    if-eqz v5, :cond_0

    .line 121
    const/high16 v5, 0x7fc00000    # Float.NaN

    .end local p2    # "viewportWidth":F
    .local v5, "viewportWidth":F
    goto :goto_0

    .line 0
    .end local v5    # "viewportWidth":F
    .restart local p2    # "viewportWidth":F
    :cond_0
    move/from16 v5, p2

    .line 121
    .end local p2    # "viewportWidth":F
    .restart local v5    # "viewportWidth":F
    :goto_0
    and-int/lit8 v6, v3, 0x8

    if-eqz v6, :cond_1

    .line 122
    const/high16 v6, 0x7fc00000    # Float.NaN

    .end local p3    # "viewportHeight":F
    .local v6, "viewportHeight":F
    goto :goto_1

    .line 121
    .end local v6    # "viewportHeight":F
    .restart local p3    # "viewportHeight":F
    :cond_1
    move/from16 v6, p3

    .line 122
    .end local p3    # "viewportHeight":F
    .restart local v6    # "viewportHeight":F
    :goto_1
    and-int/lit8 v7, v3, 0x10

    if-eqz v7, :cond_2

    .line 123
    const-string v7, "VectorRootGroup"

    .end local p4    # "name":Ljava/lang/String;
    .local v7, "name":Ljava/lang/String;
    goto :goto_2

    .line 122
    .end local v7    # "name":Ljava/lang/String;
    .restart local p4    # "name":Ljava/lang/String;
    :cond_2
    move-object/from16 v7, p4

    .line 123
    .end local p4    # "name":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    :goto_2
    and-int/lit8 v8, v3, 0x20

    if-eqz v8, :cond_3

    .line 124
    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v8

    move-wide v14, v8

    .end local p5    # "tintColor":J
    .local v8, "tintColor":J
    goto :goto_3

    .line 123
    .end local v8    # "tintColor":J
    .restart local p5    # "tintColor":J
    :cond_3
    move-wide/from16 v14, p5

    .line 124
    .end local p5    # "tintColor":J
    .local v14, "tintColor":J
    :goto_3
    and-int/lit8 v8, v3, 0x40

    if-eqz v8, :cond_4

    .line 125
    sget-object v8, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcIn-0nO6VwU()I

    move-result v8

    move v13, v8

    .end local p7    # "tintBlendMode":I
    .local v8, "tintBlendMode":I
    goto :goto_4

    .line 124
    .end local v8    # "tintBlendMode":I
    .restart local p7    # "tintBlendMode":I
    :cond_4
    move/from16 v13, p7

    .line 125
    .end local p7    # "tintBlendMode":I
    .local v13, "tintBlendMode":I
    :goto_4
    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_5

    .line 126
    const/4 v3, 0x0

    .end local p8    # "autoMirror":Z
    .local v3, "autoMirror":Z
    goto :goto_5

    .line 125
    .end local v3    # "autoMirror":Z
    .restart local p8    # "autoMirror":Z
    :cond_5
    move/from16 v3, p8

    .line 126
    .end local p8    # "autoMirror":Z
    .restart local v3    # "autoMirror":Z
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 128
    const/4 v8, -0x1

    const-string v9, "androidx.compose.ui.graphics.vector.rememberVectorPainter (VectorPainter.kt:127)"

    invoke-static {v4, v2, v8, v9}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 129
    :cond_6
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/CompositionLocal;

    .local v4, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v8, 0x6

    .local v8, "$changed$iv":I
    const/4 v9, 0x0

    .line 517
    .local v9, "$i$f$getCurrent":I
    const v10, 0x789c5f52

    const-string v11, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v1, v10, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    invoke-static/range {p10 .. p10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 129
    .end local v4    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v8    # "$changed$iv":I
    .end local v9    # "$i$f$getCurrent":I
    move-object v4, v10

    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 130
    .local v4, "density":Landroidx/compose/ui/unit/Density;
    move/from16 v11, p0

    move/from16 v12, p1

    invoke-static {v4, v11, v12}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->obtainSizePx-VpY3zN4(Landroidx/compose/ui/unit/Density;FF)J

    move-result-wide v9

    .line 131
    .local v9, "defaultSize":J
    move/from16 p2, v3

    move-object/from16 p3, v4

    .end local v3    # "autoMirror":Z
    .end local v4    # "density":Landroidx/compose/ui/unit/Density;
    .local p2, "autoMirror":Z
    .local p3, "density":Landroidx/compose/ui/unit/Density;
    invoke-static {v9, v10, v5, v6}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->obtainViewportSize-Pq9zytI(JFF)J

    move-result-wide v3

    .local v3, "viewport":J
    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v8

    invoke-static {v13}, Landroidx/compose/ui/graphics/BlendMode;->box-impl(I)Landroidx/compose/ui/graphics/BlendMode;

    move-result-object v16

    shr-int/lit8 v17, v2, 0xf

    and-int/lit8 v17, v17, 0xe

    shr-int/lit8 v18, v2, 0xf

    and-int/lit8 v18, v18, 0x70

    or-int v17, v17, v18

    .line 132
    nop

    .local v8, "key1$iv":Ljava/lang/Object;
    .local v17, "$changed$iv":I
    move-object/from16 p4, v16

    .local p4, "key2$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    move-wide/from16 p5, v9

    .end local v9    # "defaultSize":J
    .local v16, "$i$f$remember":I
    .local p5, "defaultSize":J
    const v9, 0x1e7b2b64

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v1, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 518
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    move-object/from16 v10, p4

    .end local p4    # "key2$iv":Ljava/lang/Object;
    .local v10, "key2$iv":Ljava/lang/Object;
    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    or-int v9, v9, v18

    .line 519
    nop

    .local v9, "invalid$iv$iv":Z
    move-object/from16 p4, p10

    .local p4, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 520
    .local v18, "$i$f$cache":I
    move-object/from16 p7, v8

    .end local v8    # "key1$iv":Ljava/lang/Object;
    .local p7, "key1$iv":Ljava/lang/Object;
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 521
    .local v19, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v9, :cond_8

    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p8, v9

    .end local v9    # "invalid$iv$iv":Z
    .local p8, "invalid$iv$iv":Z
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v8, v9, :cond_7

    goto :goto_6

    .line 525
    :cond_7
    move-object/from16 p12, v8

    move-object/from16 v9, p12

    move-object/from16 v8, p4

    goto :goto_7

    .line 521
    .end local p8    # "invalid$iv$iv":Z
    .restart local v9    # "invalid$iv$iv":Z
    :cond_8
    move/from16 p8, v9

    .line 522
    .end local v9    # "invalid$iv$iv":Z
    .restart local p8    # "invalid$iv$iv":Z
    :goto_6
    const/4 v9, 0x0

    .line 133
    .local v9, "$i$a$-remember-VectorPainterKt$rememberVectorPainter$intrinsicColorFilter$1":I
    invoke-static {v14, v15, v13}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->access$createColorFilter-xETnrds(JI)Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object v9

    .line 522
    .end local v9    # "$i$a$-remember-VectorPainterKt$rememberVectorPainter$intrinsicColorFilter$1":I
    nop

    .line 523
    .local v9, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 p12, v8

    move-object/from16 v8, p4

    .end local p4    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v8, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local p12, "it$iv$iv":Ljava/lang/Object;
    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 524
    nop

    .line 521
    .end local v9    # "value$iv$iv":Ljava/lang/Object;
    :goto_7
    nop

    .line 520
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local p12    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 519
    .end local v8    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$f$cache":I
    .end local p8    # "invalid$iv$iv":Z
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 132
    .end local v10    # "key2$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$remember":I
    .end local v17    # "$changed$iv":I
    .end local p7    # "key1$iv":Ljava/lang/Object;
    move-object/from16 v16, v9

    check-cast v16, Landroidx/compose/ui/graphics/ColorFilter;

    .line 135
    .local v16, "intrinsicColorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    const/4 v9, 0x0

    move v8, v9

    .local v8, "$changed$iv":I
    const/4 v10, 0x0

    .local v10, "$i$f$remember":I
    const v9, -0x1d58f75c

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v1, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 526
    const/4 v9, 0x0

    .local v9, "invalid$iv$iv":Z
    move-object/from16 p7, p10

    .local p7, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 527
    .local v17, "$i$f$cache":I
    move/from16 p8, v8

    .end local v8    # "$changed$iv":I
    .local p8, "$changed$iv":I
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 528
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p12, v9

    .end local v9    # "invalid$iv$iv":Z
    .local p12, "invalid$iv$iv":Z
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    const/4 v0, 0x1

    if-ne v8, v9, :cond_9

    .line 529
    const/4 v9, 0x0

    .line 135
    .local v9, "$i$a$-remember-VectorPainterKt$rememberVectorPainter$1":I
    move-object/from16 v19, v8

    .end local v8    # "it$iv$iv":Ljava/lang/Object;
    .local v19, "it$iv$iv":Ljava/lang/Object;
    new-instance v8, Landroidx/compose/ui/graphics/vector/VectorPainter;

    move/from16 v20, v9

    .end local v9    # "$i$a$-remember-VectorPainterKt$rememberVectorPainter$1":I
    .local v20, "$i$a$-remember-VectorPainterKt$rememberVectorPainter$1":I
    const/4 v9, 0x0

    invoke-direct {v8, v9, v0, v9}, Landroidx/compose/ui/graphics/vector/VectorPainter;-><init>(Landroidx/compose/ui/graphics/vector/GroupComponent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 529
    .end local v20    # "$i$a$-remember-VectorPainterKt$rememberVectorPainter$1":I
    nop

    .line 530
    .local v8, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 v9, p7

    .end local p7    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v9, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 531
    move-object/from16 v20, v8

    .end local v8    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_8

    .line 532
    .end local v9    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "it$iv$iv":Ljava/lang/Object;
    .local v8, "it$iv$iv":Ljava/lang/Object;
    .restart local p7    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_9
    move-object/from16 v9, p7

    move-object/from16 v19, v8

    .end local v8    # "it$iv$iv":Ljava/lang/Object;
    .end local p7    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v9    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v19    # "it$iv$iv":Ljava/lang/Object;
    move-object/from16 v20, v19

    .line 528
    :goto_8
    nop

    .line 527
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v19    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 526
    .end local v9    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$f$cache":I
    .end local p12    # "invalid$iv$iv":Z
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 135
    .end local v10    # "$i$f$remember":I
    .end local p8    # "$changed$iv":I
    move-object/from16 v9, v20

    check-cast v9, Landroidx/compose/ui/graphics/vector/VectorPainter;

    .local v9, "$this$rememberVectorPainter_vIP8VLU_u24lambda_u243":Landroidx/compose/ui/graphics/vector/VectorPainter;
    const/16 v17, 0x0

    .line 136
    .local v17, "$i$a$-apply-VectorPainterKt$rememberVectorPainter$2":I
    nop

    .line 137
    nop

    .line 138
    nop

    .line 139
    nop

    .line 140
    nop

    .line 141
    nop

    .line 136
    move-object v8, v9

    move-wide/from16 v18, p5

    move-object/from16 p4, v9

    const/4 v0, 0x0

    .end local v9    # "$this$rememberVectorPainter_vIP8VLU_u24lambda_u243":Landroidx/compose/ui/graphics/vector/VectorPainter;
    .end local p5    # "defaultSize":J
    .local v18, "defaultSize":J
    .local p4, "$this$rememberVectorPainter_vIP8VLU_u24lambda_u243":Landroidx/compose/ui/graphics/vector/VectorPainter;
    move-wide/from16 v9, v18

    move-wide v11, v3

    move/from16 v21, v13

    .end local v13    # "tintBlendMode":I
    .local v21, "tintBlendMode":I
    move-object v13, v7

    move-wide/from16 v22, v14

    .end local v14    # "tintColor":J
    .local v22, "tintColor":J
    move-object/from16 v14, v16

    move/from16 v15, p2

    invoke-static/range {v8 .. v15}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->configureVectorPainter-T4PVSW8(Landroidx/compose/ui/graphics/vector/VectorPainter;JJLjava/lang/String;Landroidx/compose/ui/graphics/ColorFilter;Z)Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 143
    invoke-static {v1, v0}, Landroidx/compose/runtime/ComposablesKt;->rememberCompositionContext(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/CompositionContext;

    move-result-object v0

    .line 144
    .local v0, "compositionContext":Landroidx/compose/runtime/CompositionContext;
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .local v8, "key1$iv":Ljava/lang/Object;
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    .local v9, "key2$iv":Ljava/lang/Object;
    shr-int/lit8 v10, v2, 0x6

    and-int/lit8 v10, v10, 0xe

    shr-int/lit8 v11, v2, 0x6

    and-int/lit8 v11, v11, 0x70

    or-int/2addr v10, v11

    shr-int/lit8 v11, v2, 0x12

    and-int/lit16 v11, v11, 0x380

    or-int/2addr v10, v11

    .local v10, "$changed$iv":I
    const/4 v11, 0x0

    .local v11, "$i$f$remember":I
    const v12, 0x607fb4c4

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {v1, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 533
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    .line 534
    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    .line 533
    or-int/2addr v12, v13

    .line 535
    move-object/from16 v13, p9

    const/4 v14, 0x1

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    .line 533
    or-int/2addr v12, v15

    .line 536
    move-object/from16 v15, p10

    .local v12, "invalid$iv$iv":Z
    .local v15, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v24, 0x0

    .line 537
    .local v24, "$i$f$cache":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv$iv":Ljava/lang/Object;
    const/16 v25, 0x0

    .line 538
    .local v25, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v12, :cond_b

    sget-object v26, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v14, v1, :cond_a

    goto :goto_9

    .line 542
    :cond_a
    move-object/from16 p7, v0

    move-wide/from16 v27, v3

    move-object v0, v14

    goto :goto_c

    .line 539
    :cond_b
    :goto_9
    const/4 v1, 0x0

    .line 145
    .local v1, "$i$a$-remember-VectorPainterKt$rememberVectorPainter$2$1":I
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/graphics/vector/VectorPainter;->getComposition$ui_release()Landroidx/compose/runtime/Composition;

    move-result-object v26

    .line 146
    .local v26, "curComp":Landroidx/compose/runtime/Composition;
    if-eqz v26, :cond_d

    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composition;->isDisposed()Z

    move-result v27

    if-eqz v27, :cond_c

    goto :goto_a

    .line 152
    :cond_c
    move/from16 p6, v1

    move-object/from16 v1, v26

    goto :goto_b

    .line 148
    :cond_d
    :goto_a
    move/from16 p6, v1

    .end local v1    # "$i$a$-remember-VectorPainterKt$rememberVectorPainter$2$1":I
    .local p6, "$i$a$-remember-VectorPainterKt$rememberVectorPainter$2$1":I
    new-instance v1, Landroidx/compose/ui/graphics/vector/VectorApplier;

    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/graphics/vector/VectorPainter;->getVector$ui_release()Landroidx/compose/ui/graphics/vector/VectorComponent;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/graphics/vector/VectorComponent;->getRoot()Landroidx/compose/ui/graphics/vector/GroupComponent;

    move-result-object v27

    move-object/from16 v2, v27

    check-cast v2, Landroidx/compose/ui/graphics/vector/VNode;

    invoke-direct {v1, v2}, Landroidx/compose/ui/graphics/vector/VectorApplier;-><init>(Landroidx/compose/ui/graphics/vector/VNode;)V

    check-cast v1, Landroidx/compose/runtime/Applier;

    .line 149
    nop

    .line 147
    invoke-static {v1, v0}, Landroidx/compose/runtime/CompositionKt;->Composition(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/CompositionContext;)Landroidx/compose/runtime/Composition;

    move-result-object v1

    .line 146
    :goto_b
    nop

    .line 154
    .local v1, "next":Landroidx/compose/runtime/Composition;
    new-instance v2, Landroidx/compose/ui/graphics/vector/VectorPainterKt$rememberVectorPainter$2$1$1;

    invoke-direct {v2, v13, v3, v4}, Landroidx/compose/ui/graphics/vector/VectorPainterKt$rememberVectorPainter$2$1$1;-><init>(Lkotlin/jvm/functions/Function4;J)V

    move-object/from16 p7, v0

    .end local v0    # "compositionContext":Landroidx/compose/runtime/CompositionContext;
    .local p7, "compositionContext":Landroidx/compose/runtime/CompositionContext;
    const v0, -0x3123ac09

    move-wide/from16 v27, v3

    const/4 v3, 0x1

    .end local v3    # "viewport":J
    .local v27, "viewport":J
    invoke-static {v0, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composition;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 157
    nop

    .line 539
    .end local v1    # "next":Landroidx/compose/runtime/Composition;
    .end local v26    # "curComp":Landroidx/compose/runtime/Composition;
    .end local p6    # "$i$a$-remember-VectorPainterKt$rememberVectorPainter$2$1":I
    move-object v0, v1

    .line 540
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 541
    nop

    .line 538
    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    :goto_c
    nop

    .line 537
    .end local v14    # "it$iv$iv":Ljava/lang/Object;
    .end local v25    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 536
    .end local v12    # "invalid$iv$iv":Z
    .end local v15    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v24    # "$i$f$cache":I
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v8    # "key1$iv":Ljava/lang/Object;
    .end local v9    # "key2$iv":Ljava/lang/Object;
    .end local v10    # "$changed$iv":I
    .end local v11    # "$i$f$remember":I
    check-cast v0, Landroidx/compose/runtime/Composition;

    .line 144
    move-object/from16 v1, p4

    .end local p4    # "$this$rememberVectorPainter_vIP8VLU_u24lambda_u243":Landroidx/compose/ui/graphics/vector/VectorPainter;
    .local v1, "$this$rememberVectorPainter_vIP8VLU_u24lambda_u243":Landroidx/compose/ui/graphics/vector/VectorPainter;
    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/VectorPainter;->setComposition$ui_release(Landroidx/compose/runtime/Composition;)V

    .line 159
    nop

    .line 135
    .end local v1    # "$this$rememberVectorPainter_vIP8VLU_u24lambda_u243":Landroidx/compose/ui/graphics/vector/VectorPainter;
    .end local v17    # "$i$a$-apply-VectorPainterKt$rememberVectorPainter$2":I
    .end local p7    # "compositionContext":Landroidx/compose/runtime/CompositionContext;
    check-cast v20, Landroidx/compose/ui/graphics/vector/VectorPainter;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_e
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v20
.end method
