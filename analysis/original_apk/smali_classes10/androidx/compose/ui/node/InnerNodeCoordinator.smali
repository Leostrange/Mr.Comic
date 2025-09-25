.class public final Landroidx/compose/ui/node/InnerNodeCoordinator;
.super Landroidx/compose/ui/node/NodeCoordinator;
.source "InnerNodeCoordinator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/InnerNodeCoordinator$Companion;,
        Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInnerNodeCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InnerNodeCoordinator.kt\nandroidx/compose/ui/node/InnerNodeCoordinator\n+ 2 NodeCoordinator.kt\nandroidx/compose/ui/node/NodeCoordinator\n+ 3 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 5 HitTestResult.kt\nandroidx/compose/ui/node/HitTestResult\n*L\n1#1,246:1\n286#2,2:247\n197#3:249\n460#4,11:250\n460#4,11:261\n222#4,11:274\n179#5,2:272\n181#5,2:285\n*S KotlinDebug\n*F\n+ 1 InnerNodeCoordinator.kt\nandroidx/compose/ui/node/InnerNodeCoordinator\n*L\n119#1:247,2\n121#1:249\n121#1:250,11\n172#1:261,11\n208#1:274,11\n205#1:272,2\n205#1:285,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 >2\u00020\u0001:\u0002>?B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J:\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\"\u0010#J\u0010\u0010$\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u0013H\u0016J\u0010\u0010&\u001a\u00020\u00132\u0006\u0010\'\u001a\u00020\u0013H\u0016J\u001a\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008,\u0010-J\u0010\u0010.\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u0013H\u0016J\u0010\u0010/\u001a\u00020\u00132\u0006\u0010\'\u001a\u00020\u0013H\u0016J\u0010\u00100\u001a\u00020\u00172\u0006\u00101\u001a\u000202H\u0016J=\u00103\u001a\u00020\u00172\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u0002072\u0019\u00108\u001a\u0015\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\u0017\u0018\u000109\u00a2\u0006\u0002\u0008;H\u0014\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008<\u0010=R(\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006@TX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0096\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006@"
    }
    d2 = {
        "Landroidx/compose/ui/node/InnerNodeCoordinator;",
        "Landroidx/compose/ui/node/NodeCoordinator;",
        "layoutNode",
        "Landroidx/compose/ui/node/LayoutNode;",
        "(Landroidx/compose/ui/node/LayoutNode;)V",
        "<set-?>",
        "Landroidx/compose/ui/node/LookaheadDelegate;",
        "lookaheadDelegate",
        "getLookaheadDelegate",
        "()Landroidx/compose/ui/node/LookaheadDelegate;",
        "setLookaheadDelegate",
        "(Landroidx/compose/ui/node/LookaheadDelegate;)V",
        "tail",
        "Landroidx/compose/ui/node/TailModifierNode;",
        "getTail$annotations",
        "()V",
        "getTail",
        "()Landroidx/compose/ui/node/TailModifierNode;",
        "calculateAlignmentLine",
        "",
        "alignmentLine",
        "Landroidx/compose/ui/layout/AlignmentLine;",
        "ensureLookaheadDelegateCreated",
        "",
        "hitTestChild",
        "hitTestSource",
        "Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;",
        "pointerPosition",
        "Landroidx/compose/ui/geometry/Offset;",
        "hitTestResult",
        "Landroidx/compose/ui/node/HitTestResult;",
        "isTouchEvent",
        "",
        "isInLayer",
        "hitTestChild-YqVAtuI",
        "(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V",
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
        "performDraw",
        "canvas",
        "Landroidx/compose/ui/graphics/Canvas;",
        "placeAt",
        "position",
        "Landroidx/compose/ui/unit/IntOffset;",
        "zIndex",
        "",
        "layerBlock",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
        "Lkotlin/ExtensionFunctionType;",
        "placeAt-f8xVGno",
        "(JFLkotlin/jvm/functions/Function1;)V",
        "Companion",
        "LookaheadDelegateImpl",
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


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/ui/node/InnerNodeCoordinator$Companion;

.field private static final innerBoundsPaint:Landroidx/compose/ui/graphics/Paint;


# instance fields
.field private lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

.field private final tail:Landroidx/compose/ui/node/TailModifierNode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/compose/ui/node/InnerNodeCoordinator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/InnerNodeCoordinator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/node/InnerNodeCoordinator;->Companion:Landroidx/compose/ui/node/InnerNodeCoordinator$Companion;

    .line 239
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->Paint()Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    move-object v1, v0

    .local v1, "paint":Landroidx/compose/ui/graphics/Paint;
    const/4 v2, 0x0

    .line 240
    .local v2, "$i$a$-also-InnerNodeCoordinator$Companion$innerBoundsPaint$1":I
    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getRed-0d7_KjU()J

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Landroidx/compose/ui/graphics/Paint;->setColor-8_81llA(J)V

    .line 241
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v1, v3}, Landroidx/compose/ui/graphics/Paint;->setStrokeWidth(F)V

    .line 242
    sget-object v3, Landroidx/compose/ui/graphics/PaintingStyle;->Companion:Landroidx/compose/ui/graphics/PaintingStyle$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/PaintingStyle$Companion;->getStroke-TiuSbCo()I

    move-result v3

    invoke-interface {v1, v3}, Landroidx/compose/ui/graphics/Paint;->setStyle-k9PVt8s(I)V

    .line 243
    nop

    .line 239
    .end local v1    # "paint":Landroidx/compose/ui/graphics/Paint;
    .end local v2    # "$i$a$-also-InnerNodeCoordinator$Companion$innerBoundsPaint$1":I
    sput-object v0, Landroidx/compose/ui/node/InnerNodeCoordinator;->innerBoundsPaint:Landroidx/compose/ui/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 2
    .param p1, "layoutNode"    # Landroidx/compose/ui/node/LayoutNode;

    .line 58
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 60
    new-instance v0, Landroidx/compose/ui/node/TailModifierNode;

    invoke-direct {v0}, Landroidx/compose/ui/node/TailModifierNode;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/node/InnerNodeCoordinator;->tail:Landroidx/compose/ui/node/TailModifierNode;

    .line 62
    nop

    .line 64
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getTail()Landroidx/compose/ui/node/TailModifierNode;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/TailModifierNode;->updateCoordinator$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 65
    nop

    .line 68
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getLookaheadRoot$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;

    invoke-direct {v0, p0}, Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;-><init>(Landroidx/compose/ui/node/InnerNodeCoordinator;)V

    check-cast v0, Landroidx/compose/ui/node/LookaheadDelegate;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/compose/ui/node/InnerNodeCoordinator;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    .line 56
    return-void
.end method

.method public static final synthetic access$getInnerBoundsPaint$cp()Landroidx/compose/ui/graphics/Paint;
    .locals 1

    .line 56
    sget-object v0, Landroidx/compose/ui/node/InnerNodeCoordinator;->innerBoundsPaint:Landroidx/compose/ui/graphics/Paint;

    return-object v0
.end method

.method public static synthetic getTail$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public calculateAlignmentLine(Landroidx/compose/ui/layout/AlignmentLine;)I
    .locals 1
    .param p1, "alignmentLine"    # Landroidx/compose/ui/layout/AlignmentLine;

    .line 164
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LookaheadDelegate;->calculateAlignmentLine(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v0

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->calculateAlignmentLines()Ljava/util/Map;

    move-result-object v0

    .line 165
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 164
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 167
    :cond_1
    const/high16 v0, -0x80000000

    .line 164
    :goto_0
    return v0
.end method

.method public ensureLookaheadDelegateCreated()V
    .locals 1

    .line 114
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;

    invoke-direct {v0, p0}, Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;-><init>(Landroidx/compose/ui/node/InnerNodeCoordinator;)V

    check-cast v0, Landroidx/compose/ui/node/LookaheadDelegate;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->setLookaheadDelegate(Landroidx/compose/ui/node/LookaheadDelegate;)V

    .line 117
    :cond_0
    return-void
.end method

.method public getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/compose/ui/node/InnerNodeCoordinator;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    return-object v0
.end method

.method public bridge synthetic getTail()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 56
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getTail()Landroidx/compose/ui/node/TailModifierNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    return-object v0
.end method

.method public getTail()Landroidx/compose/ui/node/TailModifierNode;
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/compose/ui/node/InnerNodeCoordinator;->tail:Landroidx/compose/ui/node/TailModifierNode;

    return-object v0
.end method

.method public hitTestChild-YqVAtuI(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 25
    .param p1, "hitTestSource"    # Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .param p2, "pointerPosition"    # J
    .param p4, "hitTestResult"    # Landroidx/compose/ui/node/HitTestResult;
    .param p5, "isTouchEvent"    # Z
    .param p6, "isInLayer"    # Z

    .line 190
    move-object/from16 v0, p0

    move-wide/from16 v8, p2

    const/4 v1, 0x0

    .local v1, "inLayer":Z
    move/from16 v1, p6

    .line 191
    const/4 v2, 0x0

    .line 193
    .local v2, "hitTestChildren":Z
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    move-object/from16 v10, p1

    invoke-interface {v10, v3}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->shouldHitTestChildren(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v3

    const/4 v12, 0x1

    if-eqz v3, :cond_2

    .line 194
    invoke-virtual {v0, v8, v9}, Landroidx/compose/ui/node/InnerNodeCoordinator;->withinLayerBounds-k-4lQ0M(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    const/4 v2, 0x1

    move v13, v1

    move v14, v2

    goto :goto_1

    .line 196
    :cond_0
    if-eqz p5, :cond_2

    .line 197
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getMinimumTouchTargetSize-NH-jbRc()J

    move-result-wide v3

    invoke-virtual {v0, v8, v9, v3, v4}, Landroidx/compose/ui/node/InnerNodeCoordinator;->distanceInMinimumTouchTarget-tz77jQw(JJ)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v12

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 199
    const/4 v1, 0x0

    .line 200
    const/4 v2, 0x1

    move v13, v1

    move v14, v2

    goto :goto_1

    .line 204
    :cond_2
    move v13, v1

    move v14, v2

    .end local v1    # "inLayer":Z
    .end local v2    # "hitTestChildren":Z
    .local v13, "inLayer":Z
    .local v14, "hitTestChildren":Z
    :goto_1
    if-eqz v14, :cond_a

    .line 205
    move-object/from16 v15, p4

    .local v15, "this_$iv":Landroidx/compose/ui/node/HitTestResult;
    const/16 v16, 0x0

    .line 272
    .local v16, "$i$f$siblingHits":I
    invoke-static {v15}, Landroidx/compose/ui/node/HitTestResult;->access$getHitDepth$p(Landroidx/compose/ui/node/HitTestResult;)I

    move-result v7

    .line 273
    .local v7, "depth$iv":I
    const/16 v17, 0x0

    .line 208
    .local v17, "$i$a$-siblingHits-InnerNodeCoordinator$hitTestChild$1":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getZSortedChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v18

    .local v18, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/16 v19, 0x0

    .line 274
    .local v19, "$i$f$reversedAny":I
    nop

    .line 275
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v20

    .line 276
    .local v20, "size$iv":I
    if-lez v20, :cond_8

    .line 277
    add-int/lit8 v1, v20, -0x1

    .line 278
    .local v1, "i$iv":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v1

    .line 280
    .end local v1    # "i$iv":I
    .local v21, "content$iv":[Ljava/lang/Object;
    .local v22, "i$iv":I
    :goto_2
    aget-object v1, v21, v22

    move-object/from16 v23, v1

    check-cast v23, Landroidx/compose/ui/node/LayoutNode;

    .local v23, "child":Landroidx/compose/ui/node/LayoutNode;
    const/16 v24, 0x0

    .line 209
    .local v24, "$i$a$-reversedAny-InnerNodeCoordinator$hitTestChild$1$1":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 210
    nop

    .line 211
    nop

    .line 212
    nop

    .line 213
    nop

    .line 214
    nop

    .line 215
    nop

    .line 210
    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move v11, v7

    .end local v7    # "depth$iv":I
    .local v11, "depth$iv":I
    move v7, v13

    invoke-interface/range {v1 .. v7}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->childHitTest-YqVAtuI(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 217
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/node/HitTestResult;->hasHit()Z

    move-result v1

    .line 218
    .local v1, "wasHit":Z
    const/4 v2, 0x0

    .line 219
    .local v2, "continueHitTest":Z
    if-nez v1, :cond_3

    .line 220
    const/4 v2, 0x1

    goto :goto_3

    .line 222
    :cond_3
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeCoordinator;->shouldSharePointerInputWithSiblings()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 224
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/node/HitTestResult;->acceptHits()V

    .line 225
    const/4 v2, 0x1

    goto :goto_3

    .line 227
    :cond_4
    const/4 v2, 0x0

    .line 229
    :goto_3
    if-nez v2, :cond_5

    move v1, v12

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    .end local v1    # "wasHit":Z
    .end local v2    # "continueHitTest":Z
    goto :goto_4

    .line 231
    .end local v11    # "depth$iv":I
    .restart local v7    # "depth$iv":I
    :cond_6
    move v11, v7

    .end local v7    # "depth$iv":I
    .restart local v11    # "depth$iv":I
    const/4 v1, 0x0

    .line 209
    :goto_4
    nop

    .line 280
    .end local v23    # "child":Landroidx/compose/ui/node/LayoutNode;
    .end local v24    # "$i$a$-reversedAny-InnerNodeCoordinator$hitTestChild$1$1":I
    if-nez v1, :cond_9

    .line 281
    add-int/lit8 v22, v22, -0x1

    .line 282
    if-gez v22, :cond_7

    goto :goto_5

    :cond_7
    move v7, v11

    goto :goto_2

    .line 276
    .end local v11    # "depth$iv":I
    .end local v21    # "content$iv":[Ljava/lang/Object;
    .end local v22    # "i$iv":I
    .restart local v7    # "depth$iv":I
    :cond_8
    move v11, v7

    .line 284
    .end local v7    # "depth$iv":I
    .restart local v11    # "depth$iv":I
    :goto_5
    nop

    .line 234
    .end local v18    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v19    # "$i$f$reversedAny":I
    .end local v20    # "size$iv":I
    :cond_9
    nop

    .line 273
    .end local v17    # "$i$a$-siblingHits-InnerNodeCoordinator$hitTestChild$1":I
    nop

    .line 285
    invoke-static {v15, v11}, Landroidx/compose/ui/node/HitTestResult;->access$setHitDepth$p(Landroidx/compose/ui/node/HitTestResult;I)V

    .line 286
    nop

    .line 236
    .end local v11    # "depth$iv":I
    .end local v15    # "this_$iv":Landroidx/compose/ui/node/HitTestResult;
    .end local v16    # "$i$f$siblingHits":I
    :cond_a
    return-void
.end method

.method public maxIntrinsicHeight(I)I
    .locals 1
    .param p1, "width"    # I

    .line 142
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getIntrinsicsPolicy$ui_release()Landroidx/compose/ui/node/IntrinsicsPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/IntrinsicsPolicy;->maxIntrinsicHeight(I)I

    move-result v0

    return v0
.end method

.method public maxIntrinsicWidth(I)I
    .locals 1
    .param p1, "height"    # I

    .line 139
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getIntrinsicsPolicy$ui_release()Landroidx/compose/ui/node/IntrinsicsPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/IntrinsicsPolicy;->maxIntrinsicWidth(I)I

    move-result v0

    return v0
.end method

.method public measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;
    .locals 17
    .param p1, "constraints"    # J

    .line 119
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/node/NodeCoordinator;

    .local v3, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    const/4 v4, 0x0

    .line 247
    .local v4, "$i$f$performingMeasure-K40F9xA":I
    invoke-static {v3, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->access$setMeasurementConstraints-BRTryo0(Landroidx/compose/ui/node/NodeCoordinator;J)V

    .line 248
    const/4 v5, 0x0

    .line 121
    .local v5, "$i$a$-performingMeasure-K40F9xA-InnerNodeCoordinator$measure$1":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v6

    .local v6, "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v7, 0x0

    .line 249
    .local v7, "$i$f$forEachChild":I
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v8

    .local v8, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v9, 0x0

    .line 250
    .local v9, "$i$f$forEach":I
    nop

    .line 251
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v10

    .line 252
    .local v10, "size$iv$iv":I
    if-lez v10, :cond_1

    .line 253
    const/4 v11, 0x0

    .line 254
    .local v11, "i$iv$iv":I
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v12

    .line 256
    .local v12, "content$iv$iv":[Ljava/lang/Object;
    :goto_0
    aget-object v13, v12, v11

    check-cast v13, Landroidx/compose/ui/node/LayoutNode;

    .local v13, "it":Landroidx/compose/ui/node/LayoutNode;
    const/4 v14, 0x0

    .line 122
    .local v14, "$i$a$-forEachChild-InnerNodeCoordinator$measure$1$1":I
    invoke-virtual {v13}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePassDelegate$ui_release()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v15

    move-object/from16 v16, v3

    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .local v16, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    sget-object v3, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    invoke-virtual {v15, v3}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->setMeasuredByParent$ui_release(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V

    .line 123
    nop

    .line 256
    .end local v13    # "it":Landroidx/compose/ui/node/LayoutNode;
    .end local v14    # "$i$a$-forEachChild-InnerNodeCoordinator$measure$1$1":I
    nop

    .line 257
    add-int/lit8 v11, v11, 0x1

    .line 258
    if-lt v11, v10, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v3, v16

    goto :goto_0

    .line 252
    .end local v11    # "i$iv$iv":I
    .end local v12    # "content$iv$iv":[Ljava/lang/Object;
    .end local v16    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v3    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_1
    move-object/from16 v16, v3

    .line 260
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v16    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_1
    nop

    .line 249
    .end local v8    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v9    # "$i$f$forEach":I
    .end local v10    # "size$iv$iv":I
    nop

    .line 125
    .end local v6    # "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v7    # "$i$f$forEachChild":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePolicy()Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    .local v3, "$this$measure_BRTryo0_u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/layout/MeasurePolicy;
    const/4 v6, 0x0

    .line 126
    .local v6, "$i$a$-with-InnerNodeCoordinator$measure$1$2":I
    move-object v7, v0

    check-cast v7, Landroidx/compose/ui/layout/MeasureScope;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/node/LayoutNode;->getChildMeasurables$ui_release()Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v7, v8, v1, v2}, Landroidx/compose/ui/layout/MeasurePolicy;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v3

    .line 125
    .end local v3    # "$this$measure_BRTryo0_u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v6    # "$i$a$-with-InnerNodeCoordinator$measure$1$2":I
    invoke-virtual {v0, v3}, Landroidx/compose/ui/node/InnerNodeCoordinator;->setMeasureResult$ui_release(Landroidx/compose/ui/layout/MeasureResult;)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->onMeasured()V

    .line 129
    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    .line 248
    .end local v5    # "$i$a$-performingMeasure-K40F9xA-InnerNodeCoordinator$measure$1":I
    nop

    .line 130
    .end local v4    # "$i$f$performingMeasure-K40F9xA":I
    .end local v16    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    return-object v3
.end method

.method public minIntrinsicHeight(I)I
    .locals 1
    .param p1, "width"    # I

    .line 136
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getIntrinsicsPolicy$ui_release()Landroidx/compose/ui/node/IntrinsicsPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/IntrinsicsPolicy;->minIntrinsicHeight(I)I

    move-result v0

    return v0
.end method

.method public minIntrinsicWidth(I)I
    .locals 1
    .param p1, "height"    # I

    .line 133
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getIntrinsicsPolicy$ui_release()Landroidx/compose/ui/node/IntrinsicsPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/IntrinsicsPolicy;->minIntrinsicWidth(I)I

    move-result v0

    return v0
.end method

.method public performDraw(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroidx/compose/ui/graphics/Canvas;

    .line 171
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    .line 172
    .local v0, "owner":Landroidx/compose/ui/node/Owner;
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getZSortedChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v1

    .local v1, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v2, 0x0

    .line 261
    .local v2, "$i$f$forEach":I
    nop

    .line 262
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v3

    .line 263
    .local v3, "size$iv":I
    if-lez v3, :cond_2

    .line 264
    const/4 v4, 0x0

    .line 265
    .local v4, "i$iv":I
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v5

    .line 267
    .local v5, "content$iv":[Ljava/lang/Object;
    :cond_0
    aget-object v6, v5, v4

    check-cast v6, Landroidx/compose/ui/node/LayoutNode;

    .local v6, "child":Landroidx/compose/ui/node/LayoutNode;
    const/4 v7, 0x0

    .line 173
    .local v7, "$i$a$-forEach-InnerNodeCoordinator$performDraw$1":I
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 174
    invoke-virtual {v6, p1}, Landroidx/compose/ui/node/LayoutNode;->draw$ui_release(Landroidx/compose/ui/graphics/Canvas;)V

    .line 176
    :cond_1
    nop

    .line 267
    .end local v6    # "child":Landroidx/compose/ui/node/LayoutNode;
    .end local v7    # "$i$a$-forEach-InnerNodeCoordinator$performDraw$1":I
    nop

    .line 268
    add-int/lit8 v4, v4, 0x1

    .line 269
    if-lt v4, v3, :cond_0

    .line 271
    .end local v4    # "i$iv":I
    .end local v5    # "content$iv":[Ljava/lang/Object;
    :cond_2
    nop

    .line 177
    .end local v1    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v2    # "$i$f$forEach":I
    .end local v3    # "size$iv":I
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getShowLayoutBounds()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 178
    sget-object v1, Landroidx/compose/ui/node/InnerNodeCoordinator;->innerBoundsPaint:Landroidx/compose/ui/graphics/Paint;

    invoke-virtual {p0, p1, v1}, Landroidx/compose/ui/node/InnerNodeCoordinator;->drawBorder(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Paint;)V

    .line 180
    :cond_3
    return-void
.end method

.method protected placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "zIndex"    # F
    .param p4, "layerBlock"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    .line 156
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->isShallowPlacing$ui_release()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->onPlaced()V

    .line 160
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePassDelegate$ui_release()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->onNodePlaced$ui_release()V

    .line 161
    return-void
.end method

.method protected setLookaheadDelegate(Landroidx/compose/ui/node/LookaheadDelegate;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/node/LookaheadDelegate;

    .line 67
    iput-object p1, p0, Landroidx/compose/ui/node/InnerNodeCoordinator;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    .line 68
    return-void
.end method
