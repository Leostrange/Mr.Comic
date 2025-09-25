.class public final Landroidx/compose/ui/graphics/vector/PathNodeKt;
.super Ljava/lang/Object;
.source "PathNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPathNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathNode.kt\nandroidx/compose/ui/graphics/vector/PathNodeKt\n*L\n1#1,400:1\n347#1,15:401\n347#1,15:416\n347#1,15:431\n347#1,15:446\n347#1,15:461\n347#1,15:476\n347#1,15:491\n347#1,15:506\n347#1,15:521\n347#1,15:536\n347#1,15:551\n347#1,15:566\n347#1,15:581\n347#1,15:596\n347#1,15:611\n347#1,15:626\n347#1,15:641\n347#1,15:656\n*S KotlinDebug\n*F\n+ 1 PathNode.kt\nandroidx/compose/ui/graphics/vector/PathNodeKt\n*L\n154#1:401,15\n163#1:416,15\n167#1:431,15\n176#1:446,15\n180#1:461,15\n189#1:476,15\n198#1:491,15\n207#1:506,15\n216#1:521,15\n232#1:536,15\n243#1:551,15\n257#1:566,15\n271#1:581,15\n285#1:596,15\n294#1:611,15\n303#1:626,15\n312#1:641,15\n324#1:656,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0017\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001ai\u0010\u001f\u001a\u00020 2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020\u000828\u0008\u0004\u0010(\u001a2\u0012\u0013\u0012\u00110%\u00a2\u0006\u000c\u0008*\u0012\u0008\u0008+\u0012\u0004\u0008\u0008(,\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008*\u0012\u0008\u0008+\u0012\u0004\u0008\u0008(-\u0012\u0004\u0012\u00020#0)H\u0082\u0008\u001a4\u0010.\u001a\u00020 *\u00020\u00012\u0016\u0010!\u001a\u0012\u0012\u0004\u0012\u00020#0/j\u0008\u0012\u0004\u0012\u00020#`02\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0008H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000c\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0010\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0011\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0012\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0013\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0014\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0015\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0017\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0018\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0019\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001a\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001b\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001c\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001d\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001e\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "ArcToKey",
        "",
        "CloseKey",
        "CurveToKey",
        "HorizontalToKey",
        "LineToKey",
        "MoveToKey",
        "NUM_ARC_TO_ARGS",
        "",
        "NUM_CURVE_TO_ARGS",
        "NUM_HORIZONTAL_TO_ARGS",
        "NUM_LINE_TO_ARGS",
        "NUM_MOVE_TO_ARGS",
        "NUM_QUAD_TO_ARGS",
        "NUM_REFLECTIVE_CURVE_TO_ARGS",
        "NUM_REFLECTIVE_QUAD_TO_ARGS",
        "NUM_VERTICAL_TO_ARGS",
        "QuadToKey",
        "ReflectiveCurveToKey",
        "ReflectiveQuadToKey",
        "RelativeArcToKey",
        "RelativeCloseKey",
        "RelativeCurveToKey",
        "RelativeHorizontalToKey",
        "RelativeLineToKey",
        "RelativeMoveToKey",
        "RelativeQuadToKey",
        "RelativeReflectiveCurveToKey",
        "RelativeReflectiveQuadToKey",
        "RelativeVerticalToKey",
        "VerticalToKey",
        "pathNodesFromArgs",
        "",
        "nodes",
        "",
        "Landroidx/compose/ui/graphics/vector/PathNode;",
        "args",
        "",
        "count",
        "numArgs",
        "nodeFor",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "subArray",
        "start",
        "addPathNodes",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "ui-graphics_release"
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
.field private static final ArcToKey:C = 'A'

.field private static final CloseKey:C = 'Z'

.field private static final CurveToKey:C = 'C'

.field private static final HorizontalToKey:C = 'H'

.field private static final LineToKey:C = 'L'

.field private static final MoveToKey:C = 'M'

.field private static final NUM_ARC_TO_ARGS:I = 0x7

.field private static final NUM_CURVE_TO_ARGS:I = 0x6

.field private static final NUM_HORIZONTAL_TO_ARGS:I = 0x1

.field private static final NUM_LINE_TO_ARGS:I = 0x2

.field private static final NUM_MOVE_TO_ARGS:I = 0x2

.field private static final NUM_QUAD_TO_ARGS:I = 0x4

.field private static final NUM_REFLECTIVE_CURVE_TO_ARGS:I = 0x4

.field private static final NUM_REFLECTIVE_QUAD_TO_ARGS:I = 0x2

.field private static final NUM_VERTICAL_TO_ARGS:I = 0x1

.field private static final QuadToKey:C = 'Q'

.field private static final ReflectiveCurveToKey:C = 'S'

.field private static final ReflectiveQuadToKey:C = 'T'

.field private static final RelativeArcToKey:C = 'a'

.field private static final RelativeCloseKey:C = 'z'

.field private static final RelativeCurveToKey:C = 'c'

.field private static final RelativeHorizontalToKey:C = 'h'

.field private static final RelativeLineToKey:C = 'l'

.field private static final RelativeMoveToKey:C = 'm'

.field private static final RelativeQuadToKey:C = 'q'

.field private static final RelativeReflectiveCurveToKey:C = 's'

.field private static final RelativeReflectiveQuadToKey:C = 't'

.field private static final RelativeVerticalToKey:C = 'v'

.field private static final VerticalToKey:C = 'V'


# direct methods
.method public static final addPathNodes(CLjava/util/ArrayList;[FI)V
    .locals 21
    .param p0, "$this$addPathNodes"    # C
    .param p1, "nodes"    # Ljava/util/ArrayList;
    .param p2, "args"    # [F
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;[FI)V"
        }
    .end annotation

    .line 151
    move/from16 v0, p0

    move-object/from16 v1, p1

    .line 152
    const/16 v2, 0x7a

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_0

    :goto_0
    move v2, v4

    goto :goto_1

    :cond_0
    const/16 v2, 0x5a

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    sget-object v2, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2a

    .line 154
    :cond_2
    const/16 v2, 0x6d

    const/4 v5, 0x2

    if-ne v0, v2, :cond_6

    .line 158
    nop

    .line 154
    move v2, v5

    .local v2, "numArgs$iv":I
    const/4 v3, 0x0

    .line 401
    .local v3, "$i$f$pathNodesFromArgs":I
    sub-int v4, p3, v2

    .line 402
    .local v4, "end$iv":I
    const/4 v5, 0x0

    .line 403
    .local v5, "index$iv":I
    :goto_2
    if-gt v5, v4, :cond_5

    .line 404
    move-object/from16 v6, p2

    .local v6, "array":[F
    move v7, v5

    .local v7, "start":I
    const/4 v8, 0x0

    .line 160
    .local v8, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$1":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    aget v10, v6, v7

    add-int/lit8 v11, v7, 0x1

    aget v11, v6, v11

    invoke-direct {v9, v10, v11}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;-><init>(FF)V

    check-cast v9, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 404
    .end local v6    # "array":[F
    .end local v7    # "start":I
    .end local v8    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$1":I
    move-object v6, v9

    .line 405
    .local v6, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 408
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_3

    if-lez v5, :cond_3

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_3

    .line 409
    :cond_3
    if-lez v5, :cond_4

    .line 410
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_3

    .line 411
    :cond_4
    move-object v8, v6

    .line 405
    :goto_3
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    add-int/2addr v5, v2

    .end local v6    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_2

    .line 415
    :cond_5
    nop

    .end local v2    # "numArgs$iv":I
    .end local v3    # "$i$f$pathNodesFromArgs":I
    .end local v4    # "end$iv":I
    .end local v5    # "index$iv":I
    goto/16 :goto_2a

    .line 163
    :cond_6
    const/16 v2, 0x4d

    if-ne v0, v2, :cond_a

    const/4 v2, 0x2

    .restart local v2    # "numArgs$iv":I
    const/4 v3, 0x0

    .line 416
    .restart local v3    # "$i$f$pathNodesFromArgs":I
    sub-int v4, p3, v2

    .line 417
    .restart local v4    # "end$iv":I
    const/4 v5, 0x0

    .line 418
    .restart local v5    # "index$iv":I
    :goto_4
    if-gt v5, v4, :cond_9

    .line 419
    move-object/from16 v6, p2

    .local v6, "array":[F
    move v7, v5

    .restart local v7    # "start":I
    const/4 v8, 0x0

    .line 164
    .local v8, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$2":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    aget v10, v6, v7

    add-int/lit8 v11, v7, 0x1

    aget v11, v6, v11

    invoke-direct {v9, v10, v11}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    check-cast v9, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 419
    .end local v6    # "array":[F
    .end local v7    # "start":I
    .end local v8    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$2":I
    move-object v6, v9

    .line 420
    .local v6, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 423
    if-lez v5, :cond_7

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_5

    .line 424
    :cond_7
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_8

    if-lez v5, :cond_8

    .line 425
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_5

    .line 426
    :cond_8
    move-object v8, v6

    .line 420
    :goto_5
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    add-int/2addr v5, v2

    .end local v6    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_4

    .line 430
    :cond_9
    nop

    .end local v2    # "numArgs$iv":I
    .end local v3    # "$i$f$pathNodesFromArgs":I
    .end local v4    # "end$iv":I
    .end local v5    # "index$iv":I
    goto/16 :goto_2a

    .line 167
    :cond_a
    const/16 v2, 0x6c

    if-ne v0, v2, :cond_e

    .line 171
    nop

    .line 167
    move v2, v5

    .restart local v2    # "numArgs$iv":I
    const/4 v3, 0x0

    .line 431
    .restart local v3    # "$i$f$pathNodesFromArgs":I
    sub-int v4, p3, v2

    .line 432
    .restart local v4    # "end$iv":I
    const/4 v5, 0x0

    .line 433
    .restart local v5    # "index$iv":I
    :goto_6
    if-gt v5, v4, :cond_d

    .line 434
    move-object/from16 v6, p2

    .local v6, "array":[F
    move v7, v5

    .restart local v7    # "start":I
    const/4 v8, 0x0

    .line 173
    .local v8, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$3":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v10, v6, v7

    add-int/lit8 v11, v7, 0x1

    aget v11, v6, v11

    invoke-direct {v9, v10, v11}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v9, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 434
    .end local v6    # "array":[F
    .end local v7    # "start":I
    .end local v8    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$3":I
    move-object v6, v9

    .line 435
    .local v6, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 438
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_b

    if-lez v5, :cond_b

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_7

    .line 439
    :cond_b
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_c

    if-lez v5, :cond_c

    .line 440
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_7

    .line 441
    :cond_c
    move-object v8, v6

    .line 435
    :goto_7
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    add-int/2addr v5, v2

    .end local v6    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_6

    .line 445
    :cond_d
    nop

    .end local v2    # "numArgs$iv":I
    .end local v3    # "$i$f$pathNodesFromArgs":I
    .end local v4    # "end$iv":I
    .end local v5    # "index$iv":I
    goto/16 :goto_2a

    .line 176
    :cond_e
    const/16 v2, 0x4c

    if-ne v0, v2, :cond_12

    const/4 v2, 0x2

    .restart local v2    # "numArgs$iv":I
    const/4 v3, 0x0

    .line 446
    .restart local v3    # "$i$f$pathNodesFromArgs":I
    sub-int v4, p3, v2

    .line 447
    .restart local v4    # "end$iv":I
    const/4 v5, 0x0

    .line 448
    .restart local v5    # "index$iv":I
    :goto_8
    if-gt v5, v4, :cond_11

    .line 449
    move-object/from16 v6, p2

    .local v6, "array":[F
    move v7, v5

    .restart local v7    # "start":I
    const/4 v8, 0x0

    .line 177
    .local v8, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$4":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v10, v6, v7

    add-int/lit8 v11, v7, 0x1

    aget v11, v6, v11

    invoke-direct {v9, v10, v11}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v9, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 449
    .end local v6    # "array":[F
    .end local v7    # "start":I
    .end local v8    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$4":I
    move-object v6, v9

    .line 450
    .local v6, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 453
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_f

    if-lez v5, :cond_f

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_9

    .line 454
    :cond_f
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_10

    if-lez v5, :cond_10

    .line 455
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_9

    .line 456
    :cond_10
    move-object v8, v6

    .line 450
    :goto_9
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    add-int/2addr v5, v2

    .end local v6    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_8

    .line 460
    :cond_11
    nop

    .end local v2    # "numArgs$iv":I
    .end local v3    # "$i$f$pathNodesFromArgs":I
    .end local v4    # "end$iv":I
    .end local v5    # "index$iv":I
    goto/16 :goto_2a

    .line 180
    :cond_12
    const/16 v2, 0x68

    if-ne v0, v2, :cond_16

    .line 184
    nop

    .line 180
    move v2, v4

    .restart local v2    # "numArgs$iv":I
    const/4 v3, 0x0

    .line 461
    .restart local v3    # "$i$f$pathNodesFromArgs":I
    sub-int v4, p3, v2

    .line 462
    .restart local v4    # "end$iv":I
    const/4 v5, 0x0

    .line 463
    .restart local v5    # "index$iv":I
    :goto_a
    if-gt v5, v4, :cond_15

    .line 464
    move-object/from16 v6, p2

    .local v6, "array":[F
    move v7, v5

    .restart local v7    # "start":I
    const/4 v8, 0x0

    .line 186
    .local v8, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$5":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    aget v10, v6, v7

    invoke-direct {v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;-><init>(F)V

    check-cast v9, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 464
    .end local v6    # "array":[F
    .end local v7    # "start":I
    .end local v8    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$5":I
    move-object v6, v9

    .line 465
    .local v6, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 468
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_13

    if-lez v5, :cond_13

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_b

    .line 469
    :cond_13
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_14

    if-lez v5, :cond_14

    .line 470
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_b

    .line 471
    :cond_14
    move-object v8, v6

    .line 465
    :goto_b
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    add-int/2addr v5, v2

    .end local v6    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_a

    .line 475
    :cond_15
    nop

    .end local v2    # "numArgs$iv":I
    .end local v3    # "$i$f$pathNodesFromArgs":I
    .end local v4    # "end$iv":I
    .end local v5    # "index$iv":I
    goto/16 :goto_2a

    .line 189
    :cond_16
    const/16 v2, 0x48

    if-ne v0, v2, :cond_1a

    .line 193
    nop

    .line 189
    move v2, v4

    .restart local v2    # "numArgs$iv":I
    const/4 v3, 0x0

    .line 476
    .restart local v3    # "$i$f$pathNodesFromArgs":I
    sub-int v4, p3, v2

    .line 477
    .restart local v4    # "end$iv":I
    const/4 v5, 0x0

    .line 478
    .restart local v5    # "index$iv":I
    :goto_c
    if-gt v5, v4, :cond_19

    .line 479
    move-object/from16 v6, p2

    .local v6, "array":[F
    move v7, v5

    .restart local v7    # "start":I
    const/4 v8, 0x0

    .line 195
    .local v8, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$6":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    aget v10, v6, v7

    invoke-direct {v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;-><init>(F)V

    check-cast v9, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 479
    .end local v6    # "array":[F
    .end local v7    # "start":I
    .end local v8    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$6":I
    move-object v6, v9

    .line 480
    .local v6, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 483
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_17

    if-lez v5, :cond_17

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_d

    .line 484
    :cond_17
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_18

    if-lez v5, :cond_18

    .line 485
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_d

    .line 486
    :cond_18
    move-object v8, v6

    .line 480
    :goto_d
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    add-int/2addr v5, v2

    .end local v6    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_c

    .line 490
    :cond_19
    nop

    .end local v2    # "numArgs$iv":I
    .end local v3    # "$i$f$pathNodesFromArgs":I
    .end local v4    # "end$iv":I
    .end local v5    # "index$iv":I
    goto/16 :goto_2a

    .line 198
    :cond_1a
    const/16 v2, 0x76

    if-ne v0, v2, :cond_1e

    .line 202
    nop

    .line 198
    move v2, v4

    .restart local v2    # "numArgs$iv":I
    const/4 v3, 0x0

    .line 491
    .restart local v3    # "$i$f$pathNodesFromArgs":I
    sub-int v4, p3, v2

    .line 492
    .restart local v4    # "end$iv":I
    const/4 v5, 0x0

    .line 493
    .restart local v5    # "index$iv":I
    :goto_e
    if-gt v5, v4, :cond_1d

    .line 494
    move-object/from16 v6, p2

    .local v6, "array":[F
    move v7, v5

    .restart local v7    # "start":I
    const/4 v8, 0x0

    .line 204
    .local v8, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$7":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    aget v10, v6, v7

    invoke-direct {v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;-><init>(F)V

    check-cast v9, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 494
    .end local v6    # "array":[F
    .end local v7    # "start":I
    .end local v8    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$7":I
    move-object v6, v9

    .line 495
    .local v6, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 498
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_1b

    if-lez v5, :cond_1b

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_f

    .line 499
    :cond_1b
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_1c

    if-lez v5, :cond_1c

    .line 500
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_f

    .line 501
    :cond_1c
    move-object v8, v6

    .line 495
    :goto_f
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    add-int/2addr v5, v2

    .end local v6    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_e

    .line 505
    :cond_1d
    nop

    .end local v2    # "numArgs$iv":I
    .end local v3    # "$i$f$pathNodesFromArgs":I
    .end local v4    # "end$iv":I
    .end local v5    # "index$iv":I
    goto/16 :goto_2a

    .line 207
    :cond_1e
    const/16 v2, 0x56

    if-ne v0, v2, :cond_22

    .line 211
    nop

    .line 207
    move v2, v4

    .restart local v2    # "numArgs$iv":I
    const/4 v3, 0x0

    .line 506
    .restart local v3    # "$i$f$pathNodesFromArgs":I
    sub-int v4, p3, v2

    .line 507
    .restart local v4    # "end$iv":I
    const/4 v5, 0x0

    .line 508
    .restart local v5    # "index$iv":I
    :goto_10
    if-gt v5, v4, :cond_21

    .line 509
    move-object/from16 v6, p2

    .local v6, "array":[F
    move v7, v5

    .restart local v7    # "start":I
    const/4 v8, 0x0

    .line 213
    .local v8, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$8":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    aget v10, v6, v7

    invoke-direct {v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;-><init>(F)V

    check-cast v9, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 509
    .end local v6    # "array":[F
    .end local v7    # "start":I
    .end local v8    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$8":I
    move-object v6, v9

    .line 510
    .local v6, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 513
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_1f

    if-lez v5, :cond_1f

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_11

    .line 514
    :cond_1f
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_20

    if-lez v5, :cond_20

    .line 515
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_11

    .line 516
    :cond_20
    move-object v8, v6

    .line 510
    :goto_11
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    add-int/2addr v5, v2

    .end local v6    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_10

    .line 520
    :cond_21
    nop

    .end local v2    # "numArgs$iv":I
    .end local v3    # "$i$f$pathNodesFromArgs":I
    .end local v4    # "end$iv":I
    .end local v5    # "index$iv":I
    goto/16 :goto_2a

    .line 216
    :cond_22
    const/16 v2, 0x63

    if-ne v0, v2, :cond_26

    .line 220
    nop

    .line 216
    const/4 v2, 0x6

    .restart local v2    # "numArgs$iv":I
    const/4 v3, 0x0

    .line 521
    .restart local v3    # "$i$f$pathNodesFromArgs":I
    sub-int v4, p3, v2

    .line 522
    .restart local v4    # "end$iv":I
    const/4 v5, 0x0

    .line 523
    .restart local v5    # "index$iv":I
    :goto_12
    if-gt v5, v4, :cond_25

    .line 524
    move-object/from16 v6, p2

    .local v6, "array":[F
    move v7, v5

    .restart local v7    # "start":I
    const/4 v8, 0x0

    .line 222
    .local v8, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$9":I
    new-instance v16, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    .line 223
    aget v10, v6, v7

    .line 224
    add-int/lit8 v9, v7, 0x1

    aget v11, v6, v9

    .line 225
    add-int/lit8 v9, v7, 0x2

    aget v12, v6, v9

    .line 226
    add-int/lit8 v9, v7, 0x3

    aget v13, v6, v9

    .line 227
    add-int/lit8 v9, v7, 0x4

    aget v14, v6, v9

    .line 228
    add-int/lit8 v9, v7, 0x5

    aget v15, v6, v9

    .line 222
    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v15}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;-><init>(FFFFFF)V

    check-cast v16, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 524
    .end local v6    # "array":[F
    .end local v7    # "start":I
    .end local v8    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$9":I
    move-object/from16 v6, v16

    .line 525
    .local v6, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 528
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_23

    if-lez v5, :cond_23

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_13

    .line 529
    :cond_23
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_24

    if-lez v5, :cond_24

    .line 530
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_13

    .line 531
    :cond_24
    move-object v8, v6

    .line 525
    :goto_13
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    add-int/2addr v5, v2

    .end local v6    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_12

    .line 535
    :cond_25
    nop

    .end local v2    # "numArgs$iv":I
    .end local v3    # "$i$f$pathNodesFromArgs":I
    .end local v4    # "end$iv":I
    .end local v5    # "index$iv":I
    goto/16 :goto_2a

    .line 232
    :cond_26
    const/16 v2, 0x43

    if-ne v0, v2, :cond_2a

    const/4 v2, 0x6

    .restart local v2    # "numArgs$iv":I
    const/4 v3, 0x0

    .line 536
    .restart local v3    # "$i$f$pathNodesFromArgs":I
    sub-int v4, p3, v2

    .line 537
    .restart local v4    # "end$iv":I
    const/4 v5, 0x0

    .line 538
    .restart local v5    # "index$iv":I
    :goto_14
    if-gt v5, v4, :cond_29

    .line 539
    move-object/from16 v6, p2

    .local v6, "array":[F
    move v7, v5

    .restart local v7    # "start":I
    const/4 v8, 0x0

    .line 233
    .local v8, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$10":I
    new-instance v16, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    .line 234
    aget v10, v6, v7

    .line 235
    add-int/lit8 v9, v7, 0x1

    aget v11, v6, v9

    .line 236
    add-int/lit8 v9, v7, 0x2

    aget v12, v6, v9

    .line 237
    add-int/lit8 v9, v7, 0x3

    aget v13, v6, v9

    .line 238
    add-int/lit8 v9, v7, 0x4

    aget v14, v6, v9

    .line 239
    add-int/lit8 v9, v7, 0x5

    aget v15, v6, v9

    .line 233
    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v15}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;-><init>(FFFFFF)V

    check-cast v16, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 539
    .end local v6    # "array":[F
    .end local v7    # "start":I
    .end local v8    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$10":I
    move-object/from16 v6, v16

    .line 540
    .local v6, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 543
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_27

    if-lez v5, :cond_27

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_15

    .line 544
    :cond_27
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_28

    if-lez v5, :cond_28

    .line 545
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_15

    .line 546
    :cond_28
    move-object v8, v6

    .line 540
    :goto_15
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    add-int/2addr v5, v2

    .end local v6    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_14

    .line 550
    :cond_29
    nop

    .end local v2    # "numArgs$iv":I
    .end local v3    # "$i$f$pathNodesFromArgs":I
    .end local v4    # "end$iv":I
    .end local v5    # "index$iv":I
    goto/16 :goto_2a

    .line 243
    :cond_2a
    const/16 v2, 0x73

    const/4 v6, 0x4

    if-ne v0, v2, :cond_2e

    .line 247
    nop

    .line 243
    move v2, v6

    .restart local v2    # "numArgs$iv":I
    const/4 v3, 0x0

    .line 551
    .restart local v3    # "$i$f$pathNodesFromArgs":I
    sub-int v4, p3, v2

    .line 552
    .restart local v4    # "end$iv":I
    const/4 v5, 0x0

    .line 553
    .restart local v5    # "index$iv":I
    :goto_16
    if-gt v5, v4, :cond_2d

    .line 554
    move-object/from16 v6, p2

    .local v6, "array":[F
    move v7, v5

    .restart local v7    # "start":I
    const/4 v8, 0x0

    .line 249
    .local v8, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$11":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    .line 250
    aget v10, v6, v7

    .line 251
    add-int/lit8 v11, v7, 0x1

    aget v11, v6, v11

    .line 252
    add-int/lit8 v12, v7, 0x2

    aget v12, v6, v12

    .line 253
    add-int/lit8 v13, v7, 0x3

    aget v13, v6, v13

    .line 249
    invoke-direct {v9, v10, v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;-><init>(FFFF)V

    check-cast v9, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 554
    .end local v6    # "array":[F
    .end local v7    # "start":I
    .end local v8    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$11":I
    move-object v6, v9

    .line 555
    .local v6, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 558
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_2b

    if-lez v5, :cond_2b

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_17

    .line 559
    :cond_2b
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_2c

    if-lez v5, :cond_2c

    .line 560
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_17

    .line 561
    :cond_2c
    move-object v8, v6

    .line 555
    :goto_17
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    add-int/2addr v5, v2

    .end local v6    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_16

    .line 565
    :cond_2d
    nop

    .end local v2    # "numArgs$iv":I
    .end local v3    # "$i$f$pathNodesFromArgs":I
    .end local v4    # "end$iv":I
    .end local v5    # "index$iv":I
    goto/16 :goto_2a

    .line 257
    :cond_2e
    const/16 v2, 0x53

    if-ne v0, v2, :cond_32

    .line 261
    nop

    .line 257
    move v2, v6

    .restart local v2    # "numArgs$iv":I
    const/4 v3, 0x0

    .line 566
    .restart local v3    # "$i$f$pathNodesFromArgs":I
    sub-int v4, p3, v2

    .line 567
    .restart local v4    # "end$iv":I
    const/4 v5, 0x0

    .line 568
    .restart local v5    # "index$iv":I
    :goto_18
    if-gt v5, v4, :cond_31

    .line 569
    move-object/from16 v6, p2

    .local v6, "array":[F
    move v7, v5

    .restart local v7    # "start":I
    const/4 v8, 0x0

    .line 263
    .local v8, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$12":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    .line 264
    aget v10, v6, v7

    .line 265
    add-int/lit8 v11, v7, 0x1

    aget v11, v6, v11

    .line 266
    add-int/lit8 v12, v7, 0x2

    aget v12, v6, v12

    .line 267
    add-int/lit8 v13, v7, 0x3

    aget v13, v6, v13

    .line 263
    invoke-direct {v9, v10, v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;-><init>(FFFF)V

    check-cast v9, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 569
    .end local v6    # "array":[F
    .end local v7    # "start":I
    .end local v8    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$12":I
    move-object v6, v9

    .line 570
    .local v6, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 573
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_2f

    if-lez v5, :cond_2f

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_19

    .line 574
    :cond_2f
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_30

    if-lez v5, :cond_30

    .line 575
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_19

    .line 576
    :cond_30
    move-object v8, v6

    .line 570
    :goto_19
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    add-int/2addr v5, v2

    .end local v6    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_18

    .line 580
    :cond_31
    nop

    .end local v2    # "numArgs$iv":I
    .end local v3    # "$i$f$pathNodesFromArgs":I
    .end local v4    # "end$iv":I
    .end local v5    # "index$iv":I
    goto/16 :goto_2a

    .line 271
    :cond_32
    const/16 v2, 0x71

    if-ne v0, v2, :cond_36

    .line 275
    nop

    .line 271
    move v2, v6

    .restart local v2    # "numArgs$iv":I
    const/4 v3, 0x0

    .line 581
    .restart local v3    # "$i$f$pathNodesFromArgs":I
    sub-int v4, p3, v2

    .line 582
    .restart local v4    # "end$iv":I
    const/4 v5, 0x0

    .line 583
    .restart local v5    # "index$iv":I
    :goto_1a
    if-gt v5, v4, :cond_35

    .line 584
    move-object/from16 v6, p2

    .local v6, "array":[F
    move v7, v5

    .restart local v7    # "start":I
    const/4 v8, 0x0

    .line 277
    .local v8, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$13":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    .line 278
    aget v10, v6, v7

    .line 279
    add-int/lit8 v11, v7, 0x1

    aget v11, v6, v11

    .line 280
    add-int/lit8 v12, v7, 0x2

    aget v12, v6, v12

    .line 281
    add-int/lit8 v13, v7, 0x3

    aget v13, v6, v13

    .line 277
    invoke-direct {v9, v10, v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;-><init>(FFFF)V

    check-cast v9, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 584
    .end local v6    # "array":[F
    .end local v7    # "start":I
    .end local v8    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$13":I
    move-object v6, v9

    .line 585
    .local v6, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 588
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_33

    if-lez v5, :cond_33

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_1b

    .line 589
    :cond_33
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_34

    if-lez v5, :cond_34

    .line 590
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_1b

    .line 591
    :cond_34
    move-object v8, v6

    .line 585
    :goto_1b
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    add-int/2addr v5, v2

    .end local v6    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_1a

    .line 595
    :cond_35
    nop

    .end local v2    # "numArgs$iv":I
    .end local v3    # "$i$f$pathNodesFromArgs":I
    .end local v4    # "end$iv":I
    .end local v5    # "index$iv":I
    goto/16 :goto_2a

    .line 285
    :cond_36
    const/16 v2, 0x51

    if-ne v0, v2, :cond_3a

    const/4 v2, 0x4

    .restart local v2    # "numArgs$iv":I
    const/4 v3, 0x0

    .line 596
    .restart local v3    # "$i$f$pathNodesFromArgs":I
    sub-int v4, p3, v2

    .line 597
    .restart local v4    # "end$iv":I
    const/4 v5, 0x0

    .line 598
    .restart local v5    # "index$iv":I
    :goto_1c
    if-gt v5, v4, :cond_39

    .line 599
    move-object/from16 v6, p2

    .local v6, "array":[F
    move v7, v5

    .restart local v7    # "start":I
    const/4 v8, 0x0

    .line 286
    .local v8, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$14":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    .line 287
    aget v10, v6, v7

    .line 288
    add-int/lit8 v11, v7, 0x1

    aget v11, v6, v11

    .line 289
    add-int/lit8 v12, v7, 0x2

    aget v12, v6, v12

    .line 290
    add-int/lit8 v13, v7, 0x3

    aget v13, v6, v13

    .line 286
    invoke-direct {v9, v10, v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;-><init>(FFFF)V

    check-cast v9, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 599
    .end local v6    # "array":[F
    .end local v7    # "start":I
    .end local v8    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$14":I
    move-object v6, v9

    .line 600
    .local v6, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 603
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_37

    if-lez v5, :cond_37

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_1d

    .line 604
    :cond_37
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_38

    if-lez v5, :cond_38

    .line 605
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_1d

    .line 606
    :cond_38
    move-object v8, v6

    .line 600
    :goto_1d
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    add-int/2addr v5, v2

    .end local v6    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_1c

    .line 610
    :cond_39
    nop

    .end local v2    # "numArgs$iv":I
    .end local v3    # "$i$f$pathNodesFromArgs":I
    .end local v4    # "end$iv":I
    .end local v5    # "index$iv":I
    goto/16 :goto_2a

    .line 294
    :cond_3a
    const/16 v2, 0x74

    if-ne v0, v2, :cond_3e

    .line 298
    nop

    .line 294
    move v2, v5

    .restart local v2    # "numArgs$iv":I
    const/4 v3, 0x0

    .line 611
    .restart local v3    # "$i$f$pathNodesFromArgs":I
    sub-int v4, p3, v2

    .line 612
    .restart local v4    # "end$iv":I
    const/4 v5, 0x0

    .line 613
    .restart local v5    # "index$iv":I
    :goto_1e
    if-gt v5, v4, :cond_3d

    .line 614
    move-object/from16 v6, p2

    .local v6, "array":[F
    move v7, v5

    .restart local v7    # "start":I
    const/4 v8, 0x0

    .line 300
    .local v8, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$15":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    aget v10, v6, v7

    add-int/lit8 v11, v7, 0x1

    aget v11, v6, v11

    invoke-direct {v9, v10, v11}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;-><init>(FF)V

    check-cast v9, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 614
    .end local v6    # "array":[F
    .end local v7    # "start":I
    .end local v8    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$15":I
    move-object v6, v9

    .line 615
    .local v6, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 618
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_3b

    if-lez v5, :cond_3b

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_1f

    .line 619
    :cond_3b
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_3c

    if-lez v5, :cond_3c

    .line 620
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_1f

    .line 621
    :cond_3c
    move-object v8, v6

    .line 615
    :goto_1f
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    add-int/2addr v5, v2

    .end local v6    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_1e

    .line 625
    :cond_3d
    nop

    .end local v2    # "numArgs$iv":I
    .end local v3    # "$i$f$pathNodesFromArgs":I
    .end local v4    # "end$iv":I
    .end local v5    # "index$iv":I
    goto/16 :goto_2a

    .line 303
    :cond_3e
    const/16 v2, 0x54

    if-ne v0, v2, :cond_42

    .line 307
    nop

    .line 303
    move v2, v5

    .restart local v2    # "numArgs$iv":I
    const/4 v3, 0x0

    .line 626
    .restart local v3    # "$i$f$pathNodesFromArgs":I
    sub-int v4, p3, v2

    .line 627
    .restart local v4    # "end$iv":I
    const/4 v5, 0x0

    .line 628
    .restart local v5    # "index$iv":I
    :goto_20
    if-gt v5, v4, :cond_41

    .line 629
    move-object/from16 v6, p2

    .local v6, "array":[F
    move v7, v5

    .restart local v7    # "start":I
    const/4 v8, 0x0

    .line 309
    .local v8, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$16":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    aget v10, v6, v7

    add-int/lit8 v11, v7, 0x1

    aget v11, v6, v11

    invoke-direct {v9, v10, v11}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;-><init>(FF)V

    check-cast v9, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 629
    .end local v6    # "array":[F
    .end local v7    # "start":I
    .end local v8    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$16":I
    move-object v6, v9

    .line 630
    .local v6, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 633
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_3f

    if-lez v5, :cond_3f

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_21

    .line 634
    :cond_3f
    instance-of v8, v6, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_40

    if-lez v5, :cond_40

    .line 635
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_21

    .line 636
    :cond_40
    move-object v8, v6

    .line 630
    :goto_21
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    add-int/2addr v5, v2

    .end local v6    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_20

    .line 640
    :cond_41
    nop

    .end local v2    # "numArgs$iv":I
    .end local v3    # "$i$f$pathNodesFromArgs":I
    .end local v4    # "end$iv":I
    .end local v5    # "index$iv":I
    goto/16 :goto_2a

    .line 312
    :cond_42
    const/16 v2, 0x61

    const/4 v5, 0x0

    if-ne v0, v2, :cond_48

    const/4 v2, 0x7

    .restart local v2    # "numArgs$iv":I
    const/4 v6, 0x0

    .line 641
    .local v6, "$i$f$pathNodesFromArgs":I
    sub-int v7, p3, v2

    .line 642
    .local v7, "end$iv":I
    const/4 v8, 0x0

    .line 643
    .local v8, "index$iv":I
    :goto_22
    if-gt v8, v7, :cond_47

    .line 644
    move-object/from16 v9, p2

    .local v9, "array":[F
    move v10, v8

    .local v10, "start":I
    const/4 v11, 0x0

    .line 313
    .local v11, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$17":I
    new-instance v20, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    .line 314
    aget v13, v9, v10

    .line 315
    add-int/lit8 v12, v10, 0x1

    aget v14, v9, v12

    .line 316
    add-int/lit8 v12, v10, 0x2

    aget v15, v9, v12

    .line 317
    add-int/lit8 v12, v10, 0x3

    aget v12, v9, v12

    invoke-static {v12, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-eqz v12, :cond_43

    move/from16 v16, v4

    goto :goto_23

    :cond_43
    move/from16 v16, v3

    .line 318
    :goto_23
    add-int/lit8 v12, v10, 0x4

    aget v12, v9, v12

    invoke-static {v12, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-eqz v12, :cond_44

    move/from16 v17, v4

    goto :goto_24

    :cond_44
    move/from16 v17, v3

    .line 319
    :goto_24
    add-int/lit8 v12, v10, 0x5

    aget v18, v9, v12

    .line 320
    add-int/lit8 v12, v10, 0x6

    aget v19, v9, v12

    .line 313
    move-object/from16 v12, v20

    invoke-direct/range {v12 .. v19}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;-><init>(FFFZZFF)V

    check-cast v20, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 644
    .end local v9    # "array":[F
    .end local v10    # "start":I
    .end local v11    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$17":I
    move-object/from16 v9, v20

    .line 645
    .local v9, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    move-object v10, v1

    check-cast v10, Ljava/util/List;

    .line 648
    instance-of v11, v9, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v11, :cond_45

    if-lez v8, :cond_45

    new-instance v11, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v12, p2, v8

    add-int/lit8 v13, v8, 0x1

    aget v13, p2, v13

    invoke-direct {v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v11, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_25

    .line 649
    :cond_45
    instance-of v11, v9, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v11, :cond_46

    if-lez v8, :cond_46

    .line 650
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v12, p2, v8

    add-int/lit8 v13, v8, 0x1

    aget v13, p2, v13

    invoke-direct {v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v11, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_25

    .line 651
    :cond_46
    move-object v11, v9

    .line 645
    :goto_25
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    add-int/2addr v8, v2

    .end local v9    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_22

    .line 655
    :cond_47
    nop

    .end local v2    # "numArgs$iv":I
    .end local v6    # "$i$f$pathNodesFromArgs":I
    .end local v7    # "end$iv":I
    .end local v8    # "index$iv":I
    goto/16 :goto_2a

    .line 324
    :cond_48
    const/16 v2, 0x41

    if-ne v0, v2, :cond_4e

    const/4 v2, 0x7

    .restart local v2    # "numArgs$iv":I
    const/4 v6, 0x0

    .line 656
    .restart local v6    # "$i$f$pathNodesFromArgs":I
    sub-int v7, p3, v2

    .line 657
    .restart local v7    # "end$iv":I
    const/4 v8, 0x0

    .line 658
    .restart local v8    # "index$iv":I
    :goto_26
    if-gt v8, v7, :cond_4d

    .line 659
    move-object/from16 v9, p2

    .local v9, "array":[F
    move v10, v8

    .restart local v10    # "start":I
    const/4 v11, 0x0

    .line 325
    .local v11, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$18":I
    new-instance v20, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    .line 326
    aget v13, v9, v10

    .line 327
    add-int/lit8 v12, v10, 0x1

    aget v14, v9, v12

    .line 328
    add-int/lit8 v12, v10, 0x2

    aget v15, v9, v12

    .line 329
    add-int/lit8 v12, v10, 0x3

    aget v12, v9, v12

    invoke-static {v12, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-eqz v12, :cond_49

    move/from16 v16, v4

    goto :goto_27

    :cond_49
    move/from16 v16, v3

    .line 330
    :goto_27
    add-int/lit8 v12, v10, 0x4

    aget v12, v9, v12

    invoke-static {v12, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-eqz v12, :cond_4a

    move/from16 v17, v4

    goto :goto_28

    :cond_4a
    move/from16 v17, v3

    .line 331
    :goto_28
    add-int/lit8 v12, v10, 0x5

    aget v18, v9, v12

    .line 332
    add-int/lit8 v12, v10, 0x6

    aget v19, v9, v12

    .line 325
    move-object/from16 v12, v20

    invoke-direct/range {v12 .. v19}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;-><init>(FFFZZFF)V

    check-cast v20, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 659
    .end local v9    # "array":[F
    .end local v10    # "start":I
    .end local v11    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$18":I
    move-object/from16 v9, v20

    .line 660
    .local v9, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    move-object v10, v1

    check-cast v10, Ljava/util/List;

    .line 663
    instance-of v11, v9, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v11, :cond_4b

    if-lez v8, :cond_4b

    new-instance v11, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v12, p2, v8

    add-int/lit8 v13, v8, 0x1

    aget v13, p2, v13

    invoke-direct {v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v11, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_29

    .line 664
    :cond_4b
    instance-of v11, v9, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v11, :cond_4c

    if-lez v8, :cond_4c

    .line 665
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v12, p2, v8

    add-int/lit8 v13, v8, 0x1

    aget v13, p2, v13

    invoke-direct {v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v11, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_29

    .line 666
    :cond_4c
    move-object v11, v9

    .line 660
    :goto_29
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    add-int/2addr v8, v2

    .end local v9    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_26

    .line 670
    :cond_4d
    nop

    .line 338
    .end local v2    # "numArgs$iv":I
    .end local v6    # "$i$f$pathNodesFromArgs":I
    .end local v7    # "end$iv":I
    .end local v8    # "index$iv":I
    :goto_2a
    return-void

    .line 336
    :cond_4e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown command for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static final pathNodesFromArgs(Ljava/util/List;[FIILkotlin/jvm/functions/Function2;)V
    .locals 7
    .param p0, "nodes"    # Ljava/util/List;
    .param p1, "args"    # [F
    .param p2, "count"    # I
    .param p3, "numArgs"    # I
    .param p4, "nodeFor"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;[FII",
            "Lkotlin/jvm/functions/Function2<",
            "-[F-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 347
    .local v0, "$i$f$pathNodesFromArgs":I
    sub-int v1, p2, p3

    .line 348
    .local v1, "end":I
    const/4 v2, 0x0

    .line 349
    .local v2, "index":I
    :goto_0
    if-gt v2, v1, :cond_2

    .line 350
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p4, p1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 351
    .local v3, "node":Landroidx/compose/ui/graphics/vector/PathNode;
    nop

    .line 354
    instance-of v4, v3, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v4, :cond_0

    if-lez v2, :cond_0

    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, p1, v2

    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    invoke-direct {v4, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v4, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_1

    .line 355
    :cond_0
    instance-of v4, v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v4, :cond_1

    if-lez v2, :cond_1

    .line 356
    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, p1, v2

    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    invoke-direct {v4, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v4, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_1

    .line 357
    :cond_1
    move-object v4, v3

    .line 351
    :goto_1
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    add-int/2addr v2, p3

    .end local v3    # "node":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_0

    .line 361
    :cond_2
    return-void
.end method
