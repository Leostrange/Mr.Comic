.class final Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;
.super Landroidx/compose/ui/node/LookaheadDelegate;
.source "InnerNodeCoordinator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/InnerNodeCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LookaheadDelegateImpl"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInnerNodeCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InnerNodeCoordinator.kt\nandroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl\n+ 2 LookaheadDelegate.kt\nandroidx/compose/ui/node/LookaheadDelegate\n+ 3 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,246:1\n221#2,2:247\n223#2:261\n197#3:249\n460#4,11:250\n*S KotlinDebug\n*F\n+ 1 InnerNodeCoordinator.kt\nandroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl\n*L\n74#1:247,2\n74#1:261\n76#1:249\n76#1:250,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0016J\u001a\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0004H\u0016J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0014\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;",
        "Landroidx/compose/ui/node/LookaheadDelegate;",
        "(Landroidx/compose/ui/node/InnerNodeCoordinator;)V",
        "calculateAlignmentLine",
        "",
        "alignmentLine",
        "Landroidx/compose/ui/layout/AlignmentLine;",
        "maxIntrinsicHeight",
        "width",
        "maxIntrinsicWidth",
        "height",
        "measure",
        "Landroidx/compose/ui/layout/Placeable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-BRTryo0",
        "(J)Landroidx/compose/ui/layout/Placeable;",
        "minIntrinsicHeight",
        "minIntrinsicWidth",
        "placeChildren",
        "",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/node/InnerNodeCoordinator;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/InnerNodeCoordinator;)V
    .locals 1
    .param p1, "this$0"    # Landroidx/compose/ui/node/InnerNodeCoordinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;->this$0:Landroidx/compose/ui/node/InnerNodeCoordinator;

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    invoke-direct {p0, v0}, Landroidx/compose/ui/node/LookaheadDelegate;-><init>(Landroidx/compose/ui/node/NodeCoordinator;)V

    return-void
.end method


# virtual methods
.method public calculateAlignmentLine(Landroidx/compose/ui/layout/AlignmentLine;)I
    .locals 5
    .param p1, "alignmentLine"    # Landroidx/compose/ui/layout/AlignmentLine;

    .line 90
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;->getAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->calculateAlignmentLines()Ljava/util/Map;

    move-result-object v0

    .line 90
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 91
    :cond_0
    const/high16 v0, -0x80000000

    :goto_0
    move v1, v0

    .local v1, "it":I
    const/4 v2, 0x0

    .local v2, "$i$a$-also-InnerNodeCoordinator$LookaheadDelegateImpl$calculateAlignmentLine$1":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 92
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;->getCachedAlignmentLinesMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    nop

    .line 91
    .end local v1    # "it":I
    .end local v2    # "$i$a$-also-InnerNodeCoordinator$LookaheadDelegateImpl$calculateAlignmentLine$1":I
    nop

    .line 90
    return v0
.end method

.method public maxIntrinsicHeight(I)I
    .locals 1
    .param p1, "width"    # I

    .line 110
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getIntrinsicsPolicy$ui_release()Landroidx/compose/ui/node/IntrinsicsPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/IntrinsicsPolicy;->maxLookaheadIntrinsicHeight(I)I

    move-result v0

    return v0
.end method

.method public maxIntrinsicWidth(I)I
    .locals 1
    .param p1, "height"    # I

    .line 107
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getIntrinsicsPolicy$ui_release()Landroidx/compose/ui/node/IntrinsicsPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/IntrinsicsPolicy;->maxLookaheadIntrinsicWidth(I)I

    move-result v0

    return v0
.end method

.method public measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;
    .locals 16
    .param p1, "constraints"    # J

    .line 74
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    check-cast v2, Landroidx/compose/ui/node/LookaheadDelegate;

    .local v2, "this_$iv":Landroidx/compose/ui/node/LookaheadDelegate;
    const/4 v3, 0x0

    .line 247
    .local v3, "$i$f$performingMeasure-K40F9xA":I
    invoke-static {v2, v0, v1}, Landroidx/compose/ui/node/LookaheadDelegate;->access$setMeasurementConstraints-BRTryo0(Landroidx/compose/ui/node/LookaheadDelegate;J)V

    .line 248
    const/4 v4, 0x0

    .line 76
    .local v4, "$i$a$-performingMeasure-K40F9xA-InnerNodeCoordinator$LookaheadDelegateImpl$measure$1":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v5

    .local v5, "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v6, 0x0

    .line 249
    .local v6, "$i$f$forEachChild":I
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v7

    .local v7, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v8, 0x0

    .line 250
    .local v8, "$i$f$forEach":I
    nop

    .line 251
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v9

    .line 252
    .local v9, "size$iv$iv":I
    if-lez v9, :cond_1

    .line 253
    const/4 v10, 0x0

    .line 254
    .local v10, "i$iv$iv":I
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v11

    .line 256
    .local v11, "content$iv$iv":[Ljava/lang/Object;
    :cond_0
    aget-object v12, v11, v10

    check-cast v12, Landroidx/compose/ui/node/LayoutNode;

    .local v12, "it":Landroidx/compose/ui/node/LayoutNode;
    const/4 v13, 0x0

    .line 77
    .local v13, "$i$a$-forEachChild-InnerNodeCoordinator$LookaheadDelegateImpl$measure$1$1":I
    invoke-virtual {v12}, Landroidx/compose/ui/node/LayoutNode;->getLookaheadPassDelegate$ui_release()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    sget-object v15, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 77
    invoke-virtual {v14, v15}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->setMeasuredByParent$ui_release(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V

    .line 79
    nop

    .line 256
    .end local v12    # "it":Landroidx/compose/ui/node/LayoutNode;
    .end local v13    # "$i$a$-forEachChild-InnerNodeCoordinator$LookaheadDelegateImpl$measure$1$1":I
    nop

    .line 257
    add-int/lit8 v10, v10, 0x1

    .line 258
    if-lt v10, v9, :cond_0

    .line 260
    .end local v10    # "i$iv$iv":I
    .end local v11    # "content$iv$iv":[Ljava/lang/Object;
    :cond_1
    nop

    .line 249
    .end local v7    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v8    # "$i$f$forEach":I
    .end local v9    # "size$iv$iv":I
    nop

    .line 80
    .end local v5    # "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v6    # "$i$f$forEachChild":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePolicy()Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    .local v5, "$this$measure_BRTryo0_u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/layout/MeasurePolicy;
    const/4 v6, 0x0

    .line 81
    .local v6, "$i$a$-with-InnerNodeCoordinator$LookaheadDelegateImpl$measure$1$measureResult$1":I
    move-object/from16 v7, p0

    check-cast v7, Landroidx/compose/ui/layout/MeasureScope;

    .line 82
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/node/LayoutNode;->getChildLookaheadMeasurables$ui_release()Ljava/util/List;

    move-result-object v8

    .line 83
    nop

    .line 81
    invoke-interface {v5, v7, v8, v0, v1}, Landroidx/compose/ui/layout/MeasurePolicy;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v5

    .line 80
    .end local v5    # "$this$measure_BRTryo0_u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v6    # "$i$a$-with-InnerNodeCoordinator$LookaheadDelegateImpl$measure$1$measureResult$1":I
    nop

    .line 86
    .local v5, "measureResult":Landroidx/compose/ui/layout/MeasureResult;
    nop

    .line 248
    .end local v4    # "$i$a$-performingMeasure-K40F9xA-InnerNodeCoordinator$LookaheadDelegateImpl$measure$1":I
    .end local v5    # "measureResult":Landroidx/compose/ui/layout/MeasureResult;
    invoke-static {v2, v5}, Landroidx/compose/ui/node/LookaheadDelegate;->access$set_measureResult(Landroidx/compose/ui/node/LookaheadDelegate;Landroidx/compose/ui/layout/MeasureResult;)V

    .line 261
    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    .line 87
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/LookaheadDelegate;
    .end local v3    # "$i$f$performingMeasure-K40F9xA":I
    return-object v2
.end method

.method public minIntrinsicHeight(I)I
    .locals 1
    .param p1, "width"    # I

    .line 104
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getIntrinsicsPolicy$ui_release()Landroidx/compose/ui/node/IntrinsicsPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/IntrinsicsPolicy;->minLookaheadIntrinsicHeight(I)I

    move-result v0

    return v0
.end method

.method public minIntrinsicWidth(I)I
    .locals 1
    .param p1, "height"    # I

    .line 101
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getIntrinsicsPolicy$ui_release()Landroidx/compose/ui/node/IntrinsicsPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/IntrinsicsPolicy;->minLookaheadIntrinsicWidth(I)I

    move-result v0

    return v0
.end method

.method protected placeChildren()V
    .locals 1

    .line 97
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLookaheadPassDelegate$ui_release()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->onNodePlaced$ui_release()V

    .line 98
    return-void
.end method
