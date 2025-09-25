.class public final Landroidx/compose/ui/input/pointer/HitPathTracker;
.super Ljava/lang/Object;
.source "HitPathTracker.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHitPathTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HitPathTracker.kt\nandroidx/compose/ui/input/pointer/HitPathTracker\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,554:1\n366#2,12:555\n*S KotlinDebug\n*F\n+ 1 HitPathTracker.kt\nandroidx/compose/ui/input/pointer/HitPathTracker\n*L\n63#1:555,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J&\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0013J\u0006\u0010\u0017\u001a\u00020\nJ\u0006\u0010\u0018\u001a\u00020\nR\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/compose/ui/input/pointer/HitPathTracker;",
        "",
        "rootCoordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;)V",
        "root",
        "Landroidx/compose/ui/input/pointer/NodeParent;",
        "getRoot$ui_release",
        "()Landroidx/compose/ui/input/pointer/NodeParent;",
        "addHitPath",
        "",
        "pointerId",
        "Landroidx/compose/ui/input/pointer/PointerId;",
        "pointerInputNodes",
        "",
        "Landroidx/compose/ui/Modifier$Node;",
        "addHitPath-KNwqfcY",
        "(JLjava/util/List;)V",
        "dispatchChanges",
        "",
        "internalPointerEvent",
        "Landroidx/compose/ui/input/pointer/InternalPointerEvent;",
        "isInBounds",
        "processCancel",
        "removeDetachedPointerInputFilters",
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


# instance fields
.field private final root:Landroidx/compose/ui/input/pointer/NodeParent;

.field private final rootCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroidx/compose/runtime/collection/MutableVector;->$stable:I

    sput v0, Landroidx/compose/ui/input/pointer/HitPathTracker;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 1
    .param p1, "rootCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->rootCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 43
    new-instance v0, Landroidx/compose/ui/input/pointer/NodeParent;

    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/NodeParent;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 40
    return-void
.end method

.method public static synthetic dispatchChanges$default(Landroidx/compose/ui/input/pointer/HitPathTracker;Landroidx/compose/ui/input/pointer/InternalPointerEvent;ZILjava/lang/Object;)Z
    .locals 0

    .line 91
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 93
    const/4 p2, 0x1

    .line 91
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/input/pointer/HitPathTracker;->dispatchChanges(Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final addHitPath-KNwqfcY(JLjava/util/List;)V
    .locals 17
    .param p1, "pointerId"    # J
    .param p3, "pointerInputNodes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/Modifier$Node;",
            ">;)V"
        }
    .end annotation

    .line 58
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iget-object v3, v2, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 59
    .local v3, "parent":Landroidx/compose/ui/input/pointer/NodeParent;
    const/4 v4, 0x1

    .line 60
    .local v4, "merging":Z
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_5

    .line 61
    move-object/from16 v7, p3

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/Modifier$Node;

    .line 62
    .local v8, "pointerInputNode":Landroidx/compose/ui/Modifier$Node;
    if-eqz v4, :cond_4

    .line 63
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/NodeParent;->getChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v9

    .local v9, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v10, 0x0

    .line 555
    .local v10, "$i$f$firstOrNull":I
    nop

    .line 556
    invoke-virtual {v9}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v11

    .line 557
    .local v11, "size$iv":I
    if-lez v11, :cond_2

    .line 558
    const/4 v12, 0x0

    .line 559
    .local v12, "i$iv":I
    invoke-virtual {v9}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v13

    .line 561
    .local v13, "content$iv":[Ljava/lang/Object;
    :goto_1
    aget-object v14, v13, v12

    .line 562
    .local v14, "item$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/input/pointer/Node;

    .local v15, "it":Landroidx/compose/ui/input/pointer/Node;
    const/16 v16, 0x0

    .line 64
    .local v16, "$i$a$-firstOrNull-HitPathTracker$addHitPath$node$1":I
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/Node;->getModifierNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 562
    .end local v15    # "it":Landroidx/compose/ui/input/pointer/Node;
    .end local v16    # "$i$a$-firstOrNull-HitPathTracker$addHitPath$node$1":I
    if-eqz v2, :cond_0

    goto :goto_3

    .line 563
    :cond_0
    nop

    .end local v14    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v12, v12, 0x1

    .line 564
    if-lt v12, v11, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v2, p0

    goto :goto_1

    .line 566
    .end local v12    # "i$iv":I
    .end local v13    # "content$iv":[Ljava/lang/Object;
    :cond_2
    :goto_2
    const/4 v14, 0x0

    .line 63
    .end local v9    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v10    # "$i$f$firstOrNull":I
    .end local v11    # "size$iv":I
    :goto_3
    move-object v2, v14

    check-cast v2, Landroidx/compose/ui/input/pointer/Node;

    .line 66
    .local v2, "node":Landroidx/compose/ui/input/pointer/Node;
    if-eqz v2, :cond_3

    .line 67
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/Node;->markIsIn()V

    .line 68
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/Node;->getPointerIds()Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->add-0FcD4WY(J)Z

    .line 69
    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/input/pointer/NodeParent;

    .line 70
    goto :goto_4

    .line 72
    :cond_3
    const/4 v4, 0x0

    .line 76
    .end local v2    # "node":Landroidx/compose/ui/input/pointer/Node;
    :cond_4
    new-instance v2, Landroidx/compose/ui/input/pointer/Node;

    invoke-direct {v2, v8}, Landroidx/compose/ui/input/pointer/Node;-><init>(Landroidx/compose/ui/Modifier$Node;)V

    move-object v9, v2

    .local v9, "$this$addHitPath_KNwqfcY_u24lambda_u241":Landroidx/compose/ui/input/pointer/Node;
    const/4 v10, 0x0

    .line 77
    .local v10, "$i$a$-apply-HitPathTracker$addHitPath$node$2":I
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/Node;->getPointerIds()Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->add-0FcD4WY(J)Z

    .line 78
    nop

    .line 76
    .end local v9    # "$this$addHitPath_KNwqfcY_u24lambda_u241":Landroidx/compose/ui/input/pointer/Node;
    .end local v10    # "$i$a$-apply-HitPathTracker$addHitPath$node$2":I
    nop

    .line 79
    .restart local v2    # "node":Landroidx/compose/ui/input/pointer/Node;
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/NodeParent;->getChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 80
    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/input/pointer/NodeParent;

    .line 60
    .end local v2    # "node":Landroidx/compose/ui/input/pointer/Node;
    .end local v8    # "pointerInputNode":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_5
    move-object/from16 v7, p3

    .line 82
    .end local v5    # "i":I
    return-void
.end method

.method public final dispatchChanges(Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z
    .locals 5
    .param p1, "internalPointerEvent"    # Landroidx/compose/ui/input/pointer/InternalPointerEvent;
    .param p2, "isInBounds"    # Z

    .line 95
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 96
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->getChanges()Landroidx/collection/LongSparseArray;

    move-result-object v1

    .line 97
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->rootCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 98
    nop

    .line 99
    nop

    .line 95
    invoke-virtual {v0, v1, v2, p1, p2}, Landroidx/compose/ui/input/pointer/NodeParent;->buildCache(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    move-result v0

    .line 101
    .local v0, "changed":Z
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 102
    return v1

    .line 104
    :cond_0
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 105
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->getChanges()Landroidx/collection/LongSparseArray;

    move-result-object v3

    .line 106
    iget-object v4, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->rootCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 107
    nop

    .line 108
    nop

    .line 104
    invoke-virtual {v2, v3, v4, p1, p2}, Landroidx/compose/ui/input/pointer/NodeParent;->dispatchMainEventPass(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    move-result v2

    .line 110
    .local v2, "dispatchHit":Z
    iget-object v3, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    invoke-virtual {v3, p1}, Landroidx/compose/ui/input/pointer/NodeParent;->dispatchFinalEventPass(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 112
    .end local v2    # "dispatchHit":Z
    .local v1, "dispatchHit":Z
    :cond_2
    return v1
.end method

.method public final getRoot$ui_release()Landroidx/compose/ui/input/pointer/NodeParent;
    .locals 1

    .line 43
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    return-object v0
.end method

.method public final processCancel()V
    .locals 1

    .line 122
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/NodeParent;->dispatchCancel()V

    .line 123
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/NodeParent;->clear()V

    .line 124
    return-void
.end method

.method public final removeDetachedPointerInputFilters()V
    .locals 1

    .line 133
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/NodeParent;->removeDetachedPointerInputFilters()V

    .line 134
    return-void
.end method
