.class public final Landroidx/compose/ui/draganddrop/DragAndDropNodeKt;
.super Ljava/lang/Object;
.source "DragAndDropNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDragAndDropNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragAndDropNode.kt\nandroidx/compose/ui/draganddrop/DragAndDropNodeKt\n+ 2 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n*L\n1#1,307:1\n56#2,4:308\n*S KotlinDebug\n*F\n+ 1 DragAndDropNode.kt\nandroidx/compose/ui/draganddrop/DragAndDropNodeKt\n*L\n300#1:308,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a1\u0010\u0000\u001a\u00020\u00012!\u0010\u0002\u001a\u001d\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\u00080\u00032\u0006\u0010\t\u001a\u00020\n\u001a\u001e\u0010\u000b\u001a\u00020\u0008*\u00020\u00012\u0006\u0010\u000c\u001a\u00020\rH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a\u0014\u0010\u0010\u001a\u00020\u0011*\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0004H\u0002\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0012"
    }
    d2 = {
        "DragAndDropModifierNode",
        "Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;",
        "shouldStartDragAndDrop",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/draganddrop/DragAndDropEvent;",
        "Lkotlin/ParameterName;",
        "name",
        "event",
        "",
        "target",
        "Landroidx/compose/ui/draganddrop/DragAndDropTarget;",
        "contains",
        "position",
        "Landroidx/compose/ui/geometry/Offset;",
        "contains-Uv8p0NA",
        "(Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;J)Z",
        "dispatchEntered",
        "",
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


# direct methods
.method public static final DragAndDropModifierNode()Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;
    .locals 2

    .line 74
    new-instance v0, Landroidx/compose/ui/draganddrop/DragAndDropNode;

    sget-object v1, Landroidx/compose/ui/draganddrop/DragAndDropNodeKt$DragAndDropModifierNode$1;->INSTANCE:Landroidx/compose/ui/draganddrop/DragAndDropNodeKt$DragAndDropModifierNode$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1}, Landroidx/compose/ui/draganddrop/DragAndDropNode;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;

    return-object v0
.end method

.method public static final DragAndDropModifierNode(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/draganddrop/DragAndDropTarget;)Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;
    .locals 2
    .param p0, "shouldStartDragAndDrop"    # Lkotlin/jvm/functions/Function1;
    .param p1, "target"    # Landroidx/compose/ui/draganddrop/DragAndDropTarget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/draganddrop/DragAndDropEvent;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/ui/draganddrop/DragAndDropTarget;",
            ")",
            "Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;"
        }
    .end annotation

    .line 90
    new-instance v0, Landroidx/compose/ui/draganddrop/DragAndDropNode;

    new-instance v1, Landroidx/compose/ui/draganddrop/DragAndDropNodeKt$DragAndDropModifierNode$2;

    invoke-direct {v1, p0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropNodeKt$DragAndDropModifierNode$2;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/draganddrop/DragAndDropTarget;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1}, Landroidx/compose/ui/draganddrop/DragAndDropNode;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;

    .line 93
    return-object v0
.end method

.method public static final synthetic access$contains-Uv8p0NA(Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;J)Z
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;
    .param p1, "position"    # J

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/draganddrop/DragAndDropNodeKt;->contains-Uv8p0NA(Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;J)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$dispatchEntered(Landroidx/compose/ui/draganddrop/DragAndDropTarget;Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V
    .locals 0
    .param p0, "$receiver"    # Landroidx/compose/ui/draganddrop/DragAndDropTarget;
    .param p1, "event"    # Landroidx/compose/ui/draganddrop/DragAndDropEvent;

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropNodeKt;->dispatchEntered(Landroidx/compose/ui/draganddrop/DragAndDropTarget;Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V

    return-void
.end method

.method private static final contains-Uv8p0NA(Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;J)Z
    .locals 11
    .param p0, "$this$contains_u2dUv8p0NA"    # Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;
    .param p1, "position"    # J

    .line 296
    invoke-interface {p0}, Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 297
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    .line 298
    .local v0, "currentCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 300
    :cond_1
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 308
    .local v4, "$i$f$component1-impl":I
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v4

    .line 300
    .end local v4    # "$i$f$component1-impl":I
    nop

    .local v4, "width":I
    const/4 v5, 0x0

    .line 311
    .local v5, "$i$f$component2-impl":I
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v2

    .line 300
    .end local v5    # "$i$f$component2-impl":I
    nop

    .line 301
    .local v2, "height":I
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->component1-impl(J)F

    move-result v3

    .local v3, "x1":F
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->component2-impl(J)F

    move-result v5

    .line 302
    .local v5, "y1":F
    int-to-float v6, v4

    add-float/2addr v6, v3

    .line 303
    .local v6, "x2":F
    int-to-float v7, v2

    add-float/2addr v7, v5

    .line 305
    .local v7, "y2":F
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v8

    cmpg-float v9, v3, v8

    const/4 v10, 0x1

    if-gtz v9, :cond_2

    cmpg-float v8, v8, v6

    if-gtz v8, :cond_2

    move v8, v10

    goto :goto_0

    :cond_2
    move v8, v1

    :goto_0
    if-eqz v8, :cond_4

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v8

    cmpg-float v9, v5, v8

    if-gtz v9, :cond_3

    cmpg-float v8, v8, v7

    if-gtz v8, :cond_3

    move v8, v10

    goto :goto_1

    :cond_3
    move v8, v1

    :goto_1
    if-eqz v8, :cond_4

    move v1, v10

    :cond_4
    return v1
.end method

.method private static final dispatchEntered(Landroidx/compose/ui/draganddrop/DragAndDropTarget;Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V
    .locals 2
    .param p0, "$this$dispatchEntered"    # Landroidx/compose/ui/draganddrop/DragAndDropTarget;
    .param p1, "event"    # Landroidx/compose/ui/draganddrop/DragAndDropEvent;

    .line 285
    move-object v0, p0

    .local v0, "$this$dispatchEntered_u24lambda_u240":Landroidx/compose/ui/draganddrop/DragAndDropTarget;
    const/4 v1, 0x0

    .line 287
    .local v1, "$i$a$-run-DragAndDropNodeKt$dispatchEntered$1":I
    invoke-interface {v0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropTarget;->onEntered(Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V

    .line 289
    invoke-interface {v0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropTarget;->onMoved(Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V

    .line 290
    nop

    .line 285
    .end local v0    # "$this$dispatchEntered_u24lambda_u240":Landroidx/compose/ui/draganddrop/DragAndDropTarget;
    .end local v1    # "$i$a$-run-DragAndDropNodeKt$dispatchEntered$1":I
    nop

    .line 290
    return-void
.end method
