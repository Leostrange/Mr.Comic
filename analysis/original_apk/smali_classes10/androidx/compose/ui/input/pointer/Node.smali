.class public final Landroidx/compose/ui/input/pointer/Node;
.super Landroidx/compose/ui/input/pointer/NodeParent;
.source "HitPathTracker.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHitPathTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HitPathTracker.kt\nandroidx/compose/ui/input/pointer/Node\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 4 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 5 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 6 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 7 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 8 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 9 PointerIdArray.kt\nandroidx/compose/ui/input/pointer/util/PointerIdArray\n*L\n1#1,554:1\n500#1,5:558\n507#1:662\n500#1,5:663\n507#1:723\n1208#2:555\n1187#2,2:556\n1208#2:584\n1187#2,2:585\n1208#2:639\n1187#2,2:640\n1208#2:689\n1187#2,2:690\n1208#2:745\n1187#2,2:746\n1208#2:816\n1187#2,2:817\n78#3:563\n78#3:618\n78#3:668\n78#3:724\n78#3:795\n385#4,6:564\n395#4,2:571\n397#4,8:576\n405#4,9:587\n414#4,8:599\n385#4,6:619\n395#4,2:626\n397#4,8:631\n405#4,9:642\n414#4,8:654\n385#4,6:669\n395#4,2:676\n397#4,8:681\n405#4,9:692\n414#4,8:704\n385#4,6:725\n395#4,2:732\n397#4,8:737\n405#4,9:748\n414#4,8:760\n385#4,6:796\n395#4,2:803\n397#4,8:808\n405#4,9:819\n414#4,8:831\n261#5:570\n261#5:625\n261#5:675\n261#5:731\n261#5:802\n234#6,3:573\n237#6,3:596\n234#6,3:628\n237#6,3:651\n234#6,3:678\n237#6,3:701\n234#6,3:734\n237#6,3:757\n234#6,3:805\n237#6,3:828\n460#7,11:607\n460#7,11:712\n460#7,11:784\n33#8,6:768\n116#8,2:775\n33#8,6:777\n118#8:783\n33#8,6:839\n178#9:774\n*S KotlinDebug\n*F\n+ 1 HitPathTracker.kt\nandroidx/compose/ui/input/pointer/Node\n*L\n292#1:558,5\n292#1:662\n330#1:663,5\n330#1:723\n279#1:555\n279#1:556,2\n296#1:584\n296#1:585,2\n316#1:639\n316#1:640,2\n334#1:689\n334#1:690,2\n373#1:745\n373#1:746,2\n519#1:816\n519#1:817,2\n296#1:563\n316#1:618\n334#1:668\n373#1:724\n519#1:795\n296#1:564,6\n296#1:571,2\n296#1:576,8\n296#1:587,9\n296#1:599,8\n316#1:619,6\n316#1:626,2\n316#1:631,8\n316#1:642,9\n316#1:654,8\n334#1:669,6\n334#1:676,2\n334#1:681,8\n334#1:692,9\n334#1:704,8\n373#1:725,6\n373#1:732,2\n373#1:737,8\n373#1:748,9\n373#1:760,8\n519#1:796,6\n519#1:803,2\n519#1:808,8\n519#1:819,9\n519#1:831,8\n296#1:570\n316#1:625\n334#1:675\n373#1:731\n519#1:802\n296#1:573,3\n296#1:596,3\n316#1:628,3\n316#1:651,3\n334#1:678,3\n334#1:701,3\n373#1:734,3\n373#1:757,3\n519#1:805,3\n519#1:828,3\n302#1:607,11\n340#1:712,11\n518#1:784,11\n386#1:768,6\n429#1:775,2\n429#1:777,6\n429#1:783\n535#1:839,6\n417#1:774\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J.\u0010\u001b\u001a\u00020\u00082\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0008H\u0016J\u0010\u0010!\u001a\u00020\"2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010#\u001a\u00020\"H\u0002J\u0008\u0010$\u001a\u00020\"H\u0016J\u0010\u0010%\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0017\u0010&\u001a\u00020\u00082\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\"0(H\u0082\u0008J.\u0010)\u001a\u00020\u00082\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0008H\u0016J\u001a\u0010*\u001a\u00020\u00082\u0008\u0010+\u001a\u0004\u0018\u00010\r2\u0006\u0010,\u001a\u00020\rH\u0002J\u0006\u0010-\u001a\u00020\"J\u0008\u0010.\u001a\u00020/H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Landroidx/compose/ui/input/pointer/Node;",
        "Landroidx/compose/ui/input/pointer/NodeParent;",
        "modifierNode",
        "Landroidx/compose/ui/Modifier$Node;",
        "(Landroidx/compose/ui/Modifier$Node;)V",
        "coordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "hasExited",
        "",
        "isIn",
        "getModifierNode",
        "()Landroidx/compose/ui/Modifier$Node;",
        "pointerEvent",
        "Landroidx/compose/ui/input/pointer/PointerEvent;",
        "pointerIds",
        "Landroidx/compose/ui/input/pointer/util/PointerIdArray;",
        "getPointerIds",
        "()Landroidx/compose/ui/input/pointer/util/PointerIdArray;",
        "relevantChanges",
        "Landroidx/collection/LongSparseArray;",
        "Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "vec",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "",
        "getVec",
        "()Landroidx/compose/runtime/collection/MutableVector;",
        "wasIn",
        "buildCache",
        "changes",
        "parentCoordinates",
        "internalPointerEvent",
        "Landroidx/compose/ui/input/pointer/InternalPointerEvent;",
        "isInBounds",
        "cleanUpHits",
        "",
        "clearCache",
        "dispatchCancel",
        "dispatchFinalEventPass",
        "dispatchIfNeeded",
        "block",
        "Lkotlin/Function0;",
        "dispatchMainEventPass",
        "hasPositionChanged",
        "oldEvent",
        "newEvent",
        "markIsIn",
        "toString",
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


# static fields
.field public static final $stable:I


# instance fields
.field private coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

.field private hasExited:Z

.field private isIn:Z

.field private final modifierNode:Landroidx/compose/ui/Modifier$Node;

.field private pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

.field private final pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

.field private final relevantChanges:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;"
        }
    .end annotation
.end field

.field private final vec:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private wasIn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/input/pointer/Node;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/Modifier$Node;)V
    .locals 6
    .param p1, "modifierNode"    # Landroidx/compose/ui/Modifier$Node;

    .line 257
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/NodeParent;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    .line 262
    new-instance v0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    .line 272
    new-instance v0, Landroidx/collection/LongSparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/collection/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 277
    iput-boolean v0, p0, Landroidx/compose/ui/input/pointer/Node;->hasExited:Z

    .line 279
    const/4 v0, 0x0

    .line 555
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 556
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv":I
    const/4 v2, 0x0

    .line 557
    .local v2, "$i$f$MutableVector":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v4, v1, [Ljava/lang/Long;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 555
    .end local v1    # "capacity$iv$iv":I
    .end local v2    # "$i$f$MutableVector":I
    nop

    .line 279
    .end local v0    # "$i$f$mutableVectorOf":I
    iput-object v3, p0, Landroidx/compose/ui/input/pointer/Node;->vec:Landroidx/compose/runtime/collection/MutableVector;

    .line 257
    return-void
.end method

.method private final clearCache()V
    .locals 1

    .line 487
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 489
    return-void
.end method

.method private final dispatchIfNeeded(Lkotlin/jvm/functions/Function0;)Z
    .locals 3
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 500
    .local v0, "$i$f$dispatchIfNeeded":I
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 502
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 504
    :cond_1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 507
    const/4 v1, 0x1

    return v1
.end method

.method private final hasPositionChanged(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEvent;)Z
    .locals 9
    .param p1, "oldEvent"    # Landroidx/compose/ui/input/pointer/PointerEvent;
    .param p2, "newEvent"    # Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 467
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 470
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 471
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 472
    .local v3, "old":Landroidx/compose/ui/input/pointer/PointerInputChange;
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 473
    .local v4, "current":Landroidx/compose/ui/input/pointer/PointerInputChange;
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v5

    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v5

    if-nez v5, :cond_1

    .line 474
    return v0

    .line 470
    .end local v3    # "old":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v4    # "current":Landroidx/compose/ui/input/pointer/PointerInputChange;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 477
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 468
    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public buildCache(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z
    .locals 40
    .param p1, "changes"    # Landroidx/collection/LongSparseArray;
    .param p2, "parentCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .param p3, "internalPointerEvent"    # Landroidx/compose/ui/input/pointer/InternalPointerEvent;
    .param p4, "isInBounds"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/input/pointer/InternalPointerEvent;",
            "Z)Z"
        }
    .end annotation

    .line 363
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 364
    nop

    .line 365
    nop

    .line 366
    nop

    .line 367
    nop

    .line 363
    invoke-super/range {p0 .. p4}, Landroidx/compose/ui/input/pointer/NodeParent;->buildCache(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    move-result v4

    .line 362
    nop

    .line 371
    .local v4, "childChanged":Z
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    return v6

    .line 373
    :cond_0
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    const/4 v7, 0x0

    .line 724
    .local v7, "$i$f$getPointerInput-OLwlOKw":I
    const/16 v8, 0x10

    invoke-static {v8}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v7

    .line 373
    .end local v7    # "$i$f$getPointerInput-OLwlOKw":I
    nop

    .local v5, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .local v7, "kind$iv":I
    const/4 v8, 0x0

    .line 725
    .local v8, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v9, 0x0

    .line 726
    .local v9, "stack$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .local v10, "node$iv":Ljava/lang/Object;
    move-object v10, v5

    .line 727
    :goto_0
    const/4 v11, 0x0

    if-eqz v10, :cond_d

    .line 728
    instance-of v12, v10, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v12, :cond_1

    .line 729
    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/node/PointerInputModifierNode;

    .local v11, "it":Landroidx/compose/ui/node/PointerInputModifierNode;
    const/4 v12, 0x0

    .line 374
    .local v12, "$i$a$-dispatchForKind-6rFNWt0-Node$buildCache$1":I
    invoke-static {v11}, Landroidx/compose/ui/node/PointerInputModifierNodeKt;->getLayoutCoordinates(Landroidx/compose/ui/node/PointerInputModifierNode;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v13

    iput-object v13, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 375
    nop

    .line 729
    .end local v11    # "it":Landroidx/compose/ui/node/PointerInputModifierNode;
    .end local v12    # "$i$a$-dispatchForKind-6rFNWt0-Node$buildCache$1":I
    move-object/from16 v21, v5

    move/from16 v22, v7

    goto/16 :goto_6

    .line 730
    :cond_1
    move-object v12, v10

    .local v12, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 731
    .local v13, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v14

    and-int/2addr v14, v7

    if-eqz v14, :cond_2

    move v12, v6

    goto :goto_1

    :cond_2
    move v12, v11

    .line 730
    .end local v12    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_1
    if-eqz v12, :cond_b

    instance-of v12, v10, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v12, :cond_b

    .line 732
    const/4 v12, 0x0

    .line 733
    .local v12, "count$iv":I
    move-object v13, v10

    check-cast v13, Landroidx/compose/ui/node/DelegatingNode;

    .local v13, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v14, 0x0

    .line 734
    .local v14, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v13}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    .line 735
    .local v15, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v15, :cond_a

    .line 736
    move-object/from16 v16, v15

    .local v16, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 737
    .local v17, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    move-object/from16 v18, v16

    .local v18, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v19, 0x0

    .line 731
    .local v19, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v20

    and-int v20, v20, v7

    if-eqz v20, :cond_3

    move/from16 v18, v6

    goto :goto_3

    :cond_3
    move/from16 v18, v11

    .line 737
    .end local v18    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_3
    if-eqz v18, :cond_9

    .line 738
    add-int/lit8 v12, v12, 0x1

    .line 739
    if-ne v12, v6, :cond_4

    .line 740
    move-object/from16 v10, v16

    move-object/from16 v21, v5

    move/from16 v22, v7

    move-object/from16 v6, v16

    goto :goto_5

    .line 744
    :cond_4
    if-nez v9, :cond_5

    const/16 v18, 0x0

    .line 745
    .local v18, "$i$f$mutableVectorOf":I
    nop

    .line 746
    const/16 v6, 0x10

    .local v6, "capacity$iv$iv$iv":I
    const/16 v20, 0x0

    .line 747
    .local v20, "$i$f$MutableVector":I
    move-object/from16 v21, v5

    .end local v5    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .local v21, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v22, v7

    .end local v7    # "kind$iv":I
    .local v22, "kind$iv":I
    new-array v7, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v5, v7, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 745
    .end local v6    # "capacity$iv$iv$iv":I
    .end local v20    # "$i$f$MutableVector":I
    goto :goto_4

    .line 744
    .end local v18    # "$i$f$mutableVectorOf":I
    .end local v21    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "kind$iv":I
    .restart local v5    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v7    # "kind$iv":I
    :cond_5
    move-object/from16 v21, v5

    move/from16 v22, v7

    .end local v5    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v7    # "kind$iv":I
    .restart local v21    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v22    # "kind$iv":I
    move-object v5, v9

    :goto_4
    move-object v9, v5

    .line 748
    move-object v5, v10

    .line 749
    .local v5, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v5, :cond_7

    .line 750
    if-eqz v9, :cond_6

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 751
    :cond_6
    const/4 v6, 0x0

    move-object v10, v6

    .line 753
    :cond_7
    if-eqz v9, :cond_8

    move-object/from16 v6, v16

    .end local v16    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .local v6, "next$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .end local v6    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v16    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_8
    move-object/from16 v6, v16

    .end local v16    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v6    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    goto :goto_5

    .line 737
    .end local v6    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v21    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "kind$iv":I
    .local v5, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v7    # "kind$iv":I
    .restart local v16    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v21, v5

    move/from16 v22, v7

    move-object/from16 v6, v16

    .line 756
    .end local v5    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v7    # "kind$iv":I
    .end local v16    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v6    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v21    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v22    # "kind$iv":I
    :goto_5
    nop

    .line 736
    .end local v6    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 757
    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    move-object/from16 v5, v21

    move/from16 v7, v22

    const/4 v6, 0x1

    goto :goto_2

    .line 759
    .end local v21    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "kind$iv":I
    .restart local v5    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v7    # "kind$iv":I
    :cond_a
    move-object/from16 v21, v5

    move/from16 v22, v7

    .line 760
    .end local v5    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v7    # "kind$iv":I
    .end local v13    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v14    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v15    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v21    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v22    # "kind$iv":I
    const/4 v5, 0x1

    if-ne v12, v5, :cond_c

    .line 762
    move-object/from16 v5, v21

    move/from16 v7, v22

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 730
    .end local v12    # "count$iv":I
    .end local v21    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "kind$iv":I
    .restart local v5    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v7    # "kind$iv":I
    :cond_b
    move-object/from16 v21, v5

    move/from16 v22, v7

    .line 765
    .end local v5    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v7    # "kind$iv":I
    .restart local v21    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v22    # "kind$iv":I
    :cond_c
    :goto_6
    invoke-static {v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move-object/from16 v5, v21

    move/from16 v7, v22

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 767
    .end local v21    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "kind$iv":I
    .restart local v5    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v7    # "kind$iv":I
    :cond_d
    move-object/from16 v21, v5

    move/from16 v22, v7

    .line 378
    .end local v5    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v7    # "kind$iv":I
    .end local v8    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v9    # "stack$iv":Ljava/lang/Object;
    .end local v10    # "node$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "j":I
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v6

    :goto_7
    if-ge v5, v6, :cond_10

    .line 379
    invoke-virtual {v1, v5}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    .line 380
    .local v7, "keyValue":J
    invoke-virtual {v1, v5}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 382
    .local v9, "change":Landroidx/compose/ui/input/pointer/PointerInputChange;
    iget-object v10, v0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-virtual {v10, v7, v8}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->contains(J)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 385
    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getHistorical()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 386
    .local v10, "historical":Ljava/util/ArrayList;
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getHistorical()Ljava/util/List;

    move-result-object v12

    .local v12, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v13, 0x0

    .line 768
    .local v13, "$i$f$fastForEach":I
    nop

    .line 769
    const/4 v14, 0x0

    .local v14, "index$iv":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    :goto_8
    if-ge v14, v15, :cond_e

    .line 770
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 771
    .local v16, "item$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    check-cast v17, Landroidx/compose/ui/input/pointer/HistoricalChange;

    .local v17, "it":Landroidx/compose/ui/input/pointer/HistoricalChange;
    const/16 v18, 0x0

    .line 387
    .local v18, "$i$a$-fastForEach-Node$buildCache$2":I
    nop

    .line 388
    new-instance v11, Landroidx/compose/ui/input/pointer/HistoricalChange;

    .line 389
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/input/pointer/HistoricalChange;->getUptimeMillis()J

    move-result-wide v21

    .line 390
    move/from16 v39, v6

    iget-object v6, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v28, v12

    move/from16 v29, v13

    .end local v12    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v13    # "$i$f$fastForEach":I
    .local v28, "$this$fastForEach$iv":Ljava/util/List;
    .local v29, "$i$f$fastForEach":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/input/pointer/HistoricalChange;->getPosition-F1C5BW0()J

    move-result-wide v12

    invoke-interface {v6, v2, v12, v13}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v23

    .line 391
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/input/pointer/HistoricalChange;->getOriginalEventPosition-F1C5BW0$ui_release()J

    move-result-wide v25

    const/16 v27, 0x0

    .line 388
    move-object/from16 v20, v11

    invoke-direct/range {v20 .. v27}, Landroidx/compose/ui/input/pointer/HistoricalChange;-><init>(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 387
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    nop

    .line 771
    .end local v17    # "it":Landroidx/compose/ui/input/pointer/HistoricalChange;
    .end local v18    # "$i$a$-fastForEach-Node$buildCache$2":I
    nop

    .line 769
    .end local v16    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v12, v28

    move/from16 v13, v29

    move/from16 v6, v39

    const/4 v11, 0x0

    goto :goto_8

    .end local v28    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v29    # "$i$f$fastForEach":I
    .restart local v12    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v13    # "$i$f$fastForEach":I
    :cond_e
    move/from16 v39, v6

    move-object/from16 v28, v12

    move/from16 v29, v13

    .line 773
    .end local v12    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v13    # "$i$f$fastForEach":I
    .end local v14    # "index$iv":I
    .restart local v28    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v29    # "$i$f$fastForEach":I
    nop

    .line 396
    .end local v28    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v29    # "$i$f$fastForEach":I
    iget-object v6, v0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    .line 397
    iget-object v11, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 398
    nop

    .line 399
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPosition-F1C5BW0()J

    move-result-wide v12

    .line 397
    invoke-interface {v11, v2, v12, v13}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v30

    .line 401
    iget-object v11, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 402
    nop

    .line 403
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v12

    .line 401
    invoke-interface {v11, v2, v12, v13}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v25

    .line 396
    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    .line 401
    nop

    .line 396
    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    .line 397
    nop

    .line 396
    const/16 v32, 0x0

    const/16 v33, 0x0

    .line 405
    move-object/from16 v34, v10

    check-cast v34, Ljava/util/List;

    .line 396
    const-wide/16 v35, 0x0

    const/16 v37, 0x2db

    const/16 v38, 0x0

    move-object/from16 v20, v9

    invoke-static/range {v20 .. v38}, Landroidx/compose/ui/input/pointer/PointerInputChange;->copy-OHpmEuE$default(Landroidx/compose/ui/input/pointer/PointerInputChange;JJJZJJZILjava/util/List;JILjava/lang/Object;)Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-result-object v11

    invoke-virtual {v6, v7, v8, v11}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_9

    .line 382
    .end local v10    # "historical":Ljava/util/ArrayList;
    :cond_f
    move/from16 v39, v6

    .line 378
    .end local v7    # "keyValue":J
    .end local v9    # "change":Landroidx/compose/ui/input/pointer/PointerInputChange;
    :goto_9
    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v39

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 410
    .end local v5    # "j":I
    :cond_10
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 411
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->clear()V

    .line 412
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/Node;->getChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 413
    const/4 v5, 0x1

    return v5

    .line 417
    :cond_11
    const/4 v5, 0x1

    iget-object v6, v0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    .local v6, "this_$iv":Landroidx/compose/ui/input/pointer/util/PointerIdArray;
    const/4 v7, 0x0

    .line 774
    .local v7, "$i$f$getLastIndex":I
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->getSize()I

    move-result v8

    sub-int/2addr v8, v5

    .line 417
    .end local v6    # "this_$iv":Landroidx/compose/ui/input/pointer/util/PointerIdArray;
    .end local v7    # "$i$f$getLastIndex":I
    move v5, v8

    .local v5, "i":I
    :goto_a
    const/4 v6, -0x1

    if-ge v6, v5, :cond_13

    .line 418
    iget-object v6, v0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-virtual {v6, v5}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->get-_I2yYro(I)J

    move-result-wide v6

    .line 419
    .local v6, "pointerId":J
    invoke-virtual {v1, v6, v7}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v8

    if-nez v8, :cond_12

    .line 420
    iget-object v8, v0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-virtual {v8, v5}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->removeAt(I)Z

    .line 417
    .end local v6    # "pointerId":J
    :cond_12
    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    .line 424
    .end local v5    # "i":I
    :cond_13
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 425
    .local v5, "changesList":Ljava/util/ArrayList;
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, v0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7}, Landroidx/collection/LongSparseArray;->size()I

    move-result v7

    :goto_b
    if-ge v6, v7, :cond_14

    .line 426
    iget-object v8, v0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v6}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 428
    .end local v6    # "i":I
    :cond_14
    new-instance v6, Landroidx/compose/ui/input/pointer/PointerEvent;

    move-object v7, v5

    check-cast v7, Ljava/util/List;

    invoke-direct {v6, v7, v3}, Landroidx/compose/ui/input/pointer/PointerEvent;-><init>(Ljava/util/List;Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    .line 429
    .local v6, "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v7

    .local v7, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 775
    .local v8, "$i$f$fastFirstOrNull":I
    nop

    .line 776
    move-object v9, v7

    .local v9, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 777
    .local v10, "$i$f$fastForEach":I
    nop

    .line 778
    const/4 v11, 0x0

    .local v11, "index$iv$iv":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    :goto_c
    if-ge v11, v12, :cond_16

    .line 779
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 780
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 776
    .local v15, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v16, v14

    check-cast v16, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v16, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v17, 0x0

    .line 430
    .local v17, "$i$a$-fastFirstOrNull-Node$buildCache$enterExitChange$1":I
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->issuesEnterExitEvent-0FcD4WY(J)Z

    move-result v1

    .line 776
    .end local v16    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v17    # "$i$a$-fastFirstOrNull-Node$buildCache$enterExitChange$1":I
    if-eqz v1, :cond_15

    goto :goto_d

    .line 780
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_15
    nop

    .line 778
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_c

    .line 782
    .end local v11    # "index$iv$iv":I
    :cond_16
    nop

    .line 783
    .end local v9    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastForEach":I
    const/4 v14, 0x0

    .line 429
    .end local v7    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastFirstOrNull":I
    :goto_d
    move-object v1, v14

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 432
    .local v1, "enterExitChange":Landroidx/compose/ui/input/pointer/PointerInputChange;
    if-eqz v1, :cond_1f

    .line 433
    if-nez p4, :cond_17

    .line 434
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    const/4 v10, 0x1

    goto :goto_f

    .line 435
    :cond_17
    const/4 v2, 0x0

    iget-boolean v7, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    if-nez v7, :cond_1a

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v7

    if-nez v7, :cond_19

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPressed()Z

    move-result v7

    if-eqz v7, :cond_18

    goto :goto_e

    :cond_18
    const/4 v10, 0x1

    goto :goto_f

    .line 437
    :cond_19
    :goto_e
    iget-object v7, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v7}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v7

    .line 439
    .local v7, "size":J
    invoke-static {v1, v7, v8}, Landroidx/compose/ui/input/pointer/PointerEventKt;->isOutOfBounds-O0kMr_c(Landroidx/compose/ui/input/pointer/PointerInputChange;J)Z

    move-result v9

    const/4 v10, 0x1

    xor-int/2addr v9, v10

    iput-boolean v9, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    goto :goto_f

    .line 435
    .end local v7    # "size":J
    :cond_1a
    const/4 v10, 0x1

    .line 441
    :goto_f
    iget-boolean v7, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    iget-boolean v8, v0, Landroidx/compose/ui/input/pointer/Node;->wasIn:Z

    if-eq v7, v8, :cond_1d

    .line 443
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result v7

    sget-object v8, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getMove-7fucELk()I

    move-result v8

    invoke-static {v7, v8}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 444
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result v7

    sget-object v8, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getEnter-7fucELk()I

    move-result v8

    invoke-static {v7, v8}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 445
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result v7

    sget-object v8, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getExit-7fucELk()I

    move-result v8

    invoke-static {v7, v8}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 448
    :cond_1b
    iget-boolean v7, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    if-eqz v7, :cond_1c

    .line 449
    sget-object v7, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getEnter-7fucELk()I

    move-result v7

    goto :goto_10

    .line 451
    :cond_1c
    sget-object v7, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getExit-7fucELk()I

    move-result v7

    .line 448
    :goto_10
    invoke-virtual {v6, v7}, Landroidx/compose/ui/input/pointer/PointerEvent;->setType-EhbLWgg$ui_release(I)V

    goto :goto_11

    .line 453
    :cond_1d
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result v7

    sget-object v8, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getEnter-7fucELk()I

    move-result v8

    invoke-static {v7, v8}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_1e

    iget-boolean v7, v0, Landroidx/compose/ui/input/pointer/Node;->wasIn:Z

    if-eqz v7, :cond_1e

    iget-boolean v7, v0, Landroidx/compose/ui/input/pointer/Node;->hasExited:Z

    if-nez v7, :cond_1e

    .line 454
    sget-object v7, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getMove-7fucELk()I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/compose/ui/input/pointer/PointerEvent;->setType-EhbLWgg$ui_release(I)V

    goto :goto_11

    .line 455
    :cond_1e
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result v7

    sget-object v8, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getExit-7fucELk()I

    move-result v8

    invoke-static {v7, v8}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_20

    iget-boolean v7, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    if-eqz v7, :cond_20

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v7

    if-eqz v7, :cond_20

    .line 456
    sget-object v7, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getMove-7fucELk()I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/compose/ui/input/pointer/PointerEvent;->setType-EhbLWgg$ui_release(I)V

    goto :goto_11

    .line 432
    :cond_1f
    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 460
    :cond_20
    :goto_11
    if-nez v4, :cond_21

    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result v7

    sget-object v8, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getMove-7fucELk()I

    move-result v8

    invoke-static {v7, v8}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 461
    iget-object v7, v0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-direct {v0, v7, v6}, Landroidx/compose/ui/input/pointer/Node;->hasPositionChanged(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEvent;)Z

    move-result v7

    if-eqz v7, :cond_22

    :cond_21
    move v2, v10

    .line 460
    :cond_22
    nop

    .line 462
    .local v2, "changed":Z
    iput-object v6, v0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 463
    return v2
.end method

.method public cleanUpHits(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V
    .locals 12
    .param p1, "internalPointerEvent"    # Landroidx/compose/ui/input/pointer/InternalPointerEvent;

    .line 529
    invoke-super {p0, p1}, Landroidx/compose/ui/input/pointer/NodeParent;->cleanUpHits(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    .line 531
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    if-nez v0, :cond_0

    return-void

    .line 533
    .local v0, "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    :cond_0
    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    iput-boolean v1, p0, Landroidx/compose/ui/input/pointer/Node;->wasIn:Z

    .line 535
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 839
    .local v2, "$i$f$fastForEach":I
    nop

    .line 840
    const/4 v3, 0x0

    .local v3, "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    const/4 v5, 0x0

    if-ge v3, v4, :cond_4

    .line 841
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 842
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v7, "change":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v8, 0x0

    .line 538
    .local v8, "$i$a$-fastForEach-Node$cleanUpHits$1":I
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v9

    if-nez v9, :cond_2

    .line 539
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v9

    invoke-virtual {p1, v9, v10}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->issuesEnterExitEvent-0FcD4WY(J)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    if-nez v9, :cond_2

    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 538
    :goto_1
    nop

    .line 540
    .local v5, "remove":Z
    if-eqz v5, :cond_3

    .line 541
    iget-object v9, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->remove-0FcD4WY(J)Z

    .line 543
    :cond_3
    nop

    .line 842
    .end local v5    # "remove":Z
    .end local v7    # "change":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v8    # "$i$a$-fastForEach-Node$cleanUpHits$1":I
    nop

    .line 840
    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 844
    .end local v3    # "index$iv":I
    :cond_4
    nop

    .line 545
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    iput-boolean v5, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 546
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result v1

    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getExit-7fucELk()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/compose/ui/input/pointer/Node;->hasExited:Z

    .line 547
    return-void
.end method

.method public dispatchCancel()V
    .locals 17

    .line 518
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/Node;->getChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 784
    .local v1, "$i$f$forEach":I
    nop

    .line 785
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    .line 786
    .local v2, "size$iv":I
    const/4 v3, 0x1

    if-lez v2, :cond_1

    .line 787
    const/4 v4, 0x0

    .line 788
    .local v4, "i$iv":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v5

    .line 790
    .local v5, "content$iv":[Ljava/lang/Object;
    :cond_0
    aget-object v6, v5, v4

    check-cast v6, Landroidx/compose/ui/input/pointer/Node;

    .local v6, "it":Landroidx/compose/ui/input/pointer/Node;
    const/4 v7, 0x0

    .line 518
    .local v7, "$i$a$-forEach-Node$dispatchCancel$1":I
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/Node;->dispatchCancel()V

    .line 790
    .end local v6    # "it":Landroidx/compose/ui/input/pointer/Node;
    .end local v7    # "$i$a$-forEach-Node$dispatchCancel$1":I
    nop

    .line 791
    add-int/2addr v4, v3

    .line 792
    if-lt v4, v2, :cond_0

    .line 794
    .end local v4    # "i$iv":I
    .end local v5    # "content$iv":[Ljava/lang/Object;
    :cond_1
    nop

    .line 519
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$f$forEach":I
    .end local v2    # "size$iv":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    const/4 v2, 0x0

    .line 795
    .local v2, "$i$f$getPointerInput-OLwlOKw":I
    const/16 v4, 0x10

    invoke-static {v4}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 519
    .end local v2    # "$i$f$getPointerInput-OLwlOKw":I
    nop

    .local v1, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "kind$iv":I
    const/4 v4, 0x0

    .line 796
    .local v4, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v5, 0x0

    .line 797
    .local v5, "stack$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "node$iv":Ljava/lang/Object;
    move-object v6, v1

    .line 798
    :goto_0
    if-eqz v6, :cond_d

    .line 799
    instance-of v7, v6, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v7, :cond_2

    .line 800
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/node/PointerInputModifierNode;

    .local v7, "it":Landroidx/compose/ui/node/PointerInputModifierNode;
    const/4 v8, 0x0

    .line 520
    .local v8, "$i$a$-dispatchForKind-6rFNWt0-Node$dispatchCancel$2":I
    invoke-interface {v7}, Landroidx/compose/ui/node/PointerInputModifierNode;->onCancelPointerInput()V

    .line 521
    nop

    .line 800
    .end local v7    # "it":Landroidx/compose/ui/node/PointerInputModifierNode;
    .end local v8    # "$i$a$-dispatchForKind-6rFNWt0-Node$dispatchCancel$2":I
    move v0, v3

    goto/16 :goto_6

    .line 801
    :cond_2
    move-object v7, v6

    .local v7, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v8, 0x0

    .line 802
    .local v8, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v2

    const/4 v10, 0x0

    if-eqz v9, :cond_3

    move v7, v3

    goto :goto_1

    :cond_3
    move v7, v10

    .line 801
    .end local v7    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v8    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_1
    if-eqz v7, :cond_b

    instance-of v7, v6, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_b

    .line 803
    const/4 v7, 0x0

    .line 804
    .local v7, "count$iv":I
    move-object v8, v6

    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .local v8, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v9, 0x0

    .line 805
    .local v9, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v8}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    .line 806
    .local v11, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v11, :cond_a

    .line 807
    move-object v12, v11

    .local v12, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 808
    .local v13, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    move-object v14, v12

    .local v14, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 802
    .local v15, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v14}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v16

    and-int v16, v16, v2

    if-eqz v16, :cond_4

    move v14, v3

    goto :goto_3

    :cond_4
    move v14, v10

    .line 808
    .end local v14    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_3
    if-eqz v14, :cond_9

    .line 809
    add-int/lit8 v7, v7, 0x1

    .line 810
    if-ne v7, v3, :cond_5

    .line 811
    move-object v6, v12

    goto :goto_5

    .line 815
    :cond_5
    if-nez v5, :cond_6

    const/4 v14, 0x0

    .line 816
    .local v14, "$i$f$mutableVectorOf":I
    nop

    .line 817
    const/16 v15, 0x10

    .local v15, "capacity$iv$iv$iv":I
    const/16 v16, 0x0

    .line 818
    .local v16, "$i$f$MutableVector":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v0, v15, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v0, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 816
    .end local v15    # "capacity$iv$iv$iv":I
    .end local v16    # "$i$f$MutableVector":I
    goto :goto_4

    .line 815
    .end local v14    # "$i$f$mutableVectorOf":I
    :cond_6
    move-object v3, v5

    :goto_4
    move-object v5, v3

    .line 819
    move-object v0, v6

    .line 820
    .local v0, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_8

    .line 821
    if-eqz v5, :cond_7

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 822
    :cond_7
    const/4 v3, 0x0

    move-object v6, v3

    .line 824
    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 827
    .end local v0    # "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    :goto_5
    nop

    .line 807
    .end local v12    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 828
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    const/4 v3, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    .line 830
    :cond_a
    nop

    .line 831
    .end local v8    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v9    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v11    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v0, 0x1

    if-ne v7, v0, :cond_c

    .line 833
    move v3, v0

    move-object/from16 v0, p0

    goto :goto_0

    .line 801
    .end local v7    # "count$iv":I
    :cond_b
    move v0, v3

    .line 836
    :cond_c
    :goto_6
    invoke-static {v5}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    move v3, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 838
    :cond_d
    nop

    .line 522
    .end local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "kind$iv":I
    .end local v4    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v5    # "stack$iv":Ljava/lang/Object;
    .end local v6    # "node$iv":Ljava/lang/Object;
    return-void
.end method

.method public dispatchFinalEventPass(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)Z
    .locals 25
    .param p1, "internalPointerEvent"    # Landroidx/compose/ui/input/pointer/InternalPointerEvent;

    .line 330
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    .local v1, "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    const/4 v2, 0x0

    .line 663
    .local v2, "$i$f$dispatchIfNeeded":I
    iget-object v3, v1, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object/from16 v12, p1

    goto/16 :goto_9

    .line 665
    :cond_0
    iget-object v3, v1, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v12, p1

    goto/16 :goto_9

    .line 667
    :cond_1
    const/4 v3, 0x0

    .line 331
    .local v3, "$i$a$-dispatchIfNeeded-Node$dispatchFinalEventPass$result$1":I
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 332
    .local v5, "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    iget-object v6, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v6

    .line 334
    .local v6, "size":J
    iget-object v8, v0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    const/4 v9, 0x0

    .line 668
    .local v9, "$i$f$getPointerInput-OLwlOKw":I
    const/16 v10, 0x10

    invoke-static {v10}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v9

    .line 334
    .end local v9    # "$i$f$getPointerInput-OLwlOKw":I
    nop

    .local v8, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .local v9, "kind$iv":I
    const/4 v10, 0x0

    .line 669
    .local v10, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v11, 0x0

    .line 670
    .local v11, "stack$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .local v12, "node$iv":Ljava/lang/Object;
    move-object v12, v8

    .line 671
    :goto_0
    const/4 v13, 0x1

    if-eqz v12, :cond_e

    .line 672
    instance-of v14, v12, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v14, :cond_2

    .line 673
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/node/PointerInputModifierNode;

    .local v13, "it":Landroidx/compose/ui/node/PointerInputModifierNode;
    const/4 v14, 0x0

    .line 335
    .local v14, "$i$a$-dispatchForKind-6rFNWt0-Node$dispatchFinalEventPass$result$1$1":I
    sget-object v15, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v13, v5, v15, v6, v7}, Landroidx/compose/ui/node/PointerInputModifierNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 336
    nop

    .line 673
    .end local v13    # "it":Landroidx/compose/ui/node/PointerInputModifierNode;
    .end local v14    # "$i$a$-dispatchForKind-6rFNWt0-Node$dispatchFinalEventPass$result$1$1":I
    move-object/from16 v23, v1

    move/from16 v24, v2

    goto/16 :goto_6

    .line 674
    :cond_2
    move-object v14, v12

    .local v14, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 675
    .local v15, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v14}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v16

    and-int v16, v16, v9

    if-eqz v16, :cond_3

    move v14, v13

    goto :goto_1

    :cond_3
    move v14, v4

    .line 674
    .end local v14    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_1
    if-eqz v14, :cond_c

    instance-of v14, v12, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v14, :cond_c

    .line 676
    const/4 v14, 0x0

    .line 677
    .local v14, "count$iv":I
    move-object v15, v12

    check-cast v15, Landroidx/compose/ui/node/DelegatingNode;

    .local v15, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v16, 0x0

    .line 678
    .local v16, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v15}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v17

    .line 679
    .local v17, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v17, :cond_b

    .line 680
    move-object/from16 v18, v17

    .local v18, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v19, 0x0

    .line 681
    .local v19, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    move-object/from16 v20, v18

    .local v20, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v21, 0x0

    .line 675
    .local v21, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v22

    and-int v22, v22, v9

    if-eqz v22, :cond_4

    move/from16 v20, v13

    goto :goto_3

    :cond_4
    move/from16 v20, v4

    .line 681
    .end local v20    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v21    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_3
    if-eqz v20, :cond_a

    .line 682
    add-int/lit8 v14, v14, 0x1

    .line 683
    if-ne v14, v13, :cond_5

    .line 684
    move-object/from16 v12, v18

    move-object/from16 v23, v1

    move/from16 v24, v2

    move-object/from16 v2, v18

    goto :goto_5

    .line 688
    :cond_5
    if-nez v11, :cond_6

    const/16 v20, 0x0

    .line 689
    .local v20, "$i$f$mutableVectorOf":I
    nop

    .line 690
    const/16 v13, 0x10

    .local v13, "capacity$iv$iv$iv":I
    const/16 v22, 0x0

    .line 691
    .local v22, "$i$f$MutableVector":I
    move-object/from16 v23, v1

    .end local v1    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .local v23, "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v24, v2

    .end local v2    # "$i$f$dispatchIfNeeded":I
    .local v24, "$i$f$dispatchIfNeeded":I
    new-array v2, v13, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v1, v2, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 689
    .end local v13    # "capacity$iv$iv$iv":I
    .end local v22    # "$i$f$MutableVector":I
    goto :goto_4

    .line 688
    .end local v20    # "$i$f$mutableVectorOf":I
    .end local v23    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .end local v24    # "$i$f$dispatchIfNeeded":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .restart local v2    # "$i$f$dispatchIfNeeded":I
    :cond_6
    move-object/from16 v23, v1

    move/from16 v24, v2

    .end local v1    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .end local v2    # "$i$f$dispatchIfNeeded":I
    .restart local v23    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .restart local v24    # "$i$f$dispatchIfNeeded":I
    move-object v1, v11

    :goto_4
    move-object v11, v1

    .line 692
    move-object v1, v12

    .line 693
    .local v1, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_8

    .line 694
    if-eqz v11, :cond_7

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 695
    :cond_7
    const/4 v2, 0x0

    move-object v12, v2

    .line 697
    :cond_8
    if-eqz v11, :cond_9

    move-object/from16 v2, v18

    .end local v18    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .end local v2    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v18    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v2, v18

    .end local v18    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    goto :goto_5

    .line 681
    .end local v23    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .end local v24    # "$i$f$dispatchIfNeeded":I
    .local v1, "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .local v2, "$i$f$dispatchIfNeeded":I
    .restart local v18    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move-object/from16 v23, v1

    move/from16 v24, v2

    move-object/from16 v2, v18

    .line 700
    .end local v1    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .end local v18    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .restart local v24    # "$i$f$dispatchIfNeeded":I
    :goto_5
    nop

    .line 680
    .end local v2    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 701
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    const/4 v13, 0x1

    goto :goto_2

    .line 703
    .end local v23    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .end local v24    # "$i$f$dispatchIfNeeded":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .local v2, "$i$f$dispatchIfNeeded":I
    :cond_b
    move-object/from16 v23, v1

    move/from16 v24, v2

    .line 704
    .end local v1    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .end local v2    # "$i$f$dispatchIfNeeded":I
    .end local v15    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v16    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v17    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .restart local v24    # "$i$f$dispatchIfNeeded":I
    const/4 v1, 0x1

    if-ne v14, v1, :cond_d

    .line 706
    move-object/from16 v1, v23

    move/from16 v2, v24

    goto/16 :goto_0

    .line 674
    .end local v14    # "count$iv":I
    .end local v23    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .end local v24    # "$i$f$dispatchIfNeeded":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .restart local v2    # "$i$f$dispatchIfNeeded":I
    :cond_c
    move-object/from16 v23, v1

    move/from16 v24, v2

    .line 709
    .end local v1    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .end local v2    # "$i$f$dispatchIfNeeded":I
    .restart local v23    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .restart local v24    # "$i$f$dispatchIfNeeded":I
    :cond_d
    :goto_6
    invoke-static {v11}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    move-object/from16 v1, v23

    move/from16 v2, v24

    goto/16 :goto_0

    .line 711
    .end local v23    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .end local v24    # "$i$f$dispatchIfNeeded":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .restart local v2    # "$i$f$dispatchIfNeeded":I
    :cond_e
    move-object/from16 v23, v1

    move/from16 v24, v2

    .line 339
    .end local v1    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .end local v2    # "$i$f$dispatchIfNeeded":I
    .end local v8    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "kind$iv":I
    .end local v10    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v11    # "stack$iv":Ljava/lang/Object;
    .end local v12    # "node$iv":Ljava/lang/Object;
    .restart local v23    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .restart local v24    # "$i$f$dispatchIfNeeded":I
    iget-object v1, v0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 340
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/Node;->getChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v1

    .local v1, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v2, 0x0

    .line 712
    .local v2, "$i$f$forEach":I
    nop

    .line 713
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v4

    .line 714
    .local v4, "size$iv":I
    if-lez v4, :cond_10

    .line 715
    const/4 v8, 0x0

    .line 716
    .local v8, "i$iv":I
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v9

    .line 718
    .local v9, "content$iv":[Ljava/lang/Object;
    :cond_f
    aget-object v10, v9, v8

    check-cast v10, Landroidx/compose/ui/input/pointer/Node;

    .local v10, "it":Landroidx/compose/ui/input/pointer/Node;
    const/4 v11, 0x0

    .line 340
    .local v11, "$i$a$-forEach-Node$dispatchFinalEventPass$result$1$2":I
    move-object/from16 v12, p1

    invoke-virtual {v10, v12}, Landroidx/compose/ui/input/pointer/Node;->dispatchFinalEventPass(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)Z

    .line 718
    .end local v10    # "it":Landroidx/compose/ui/input/pointer/Node;
    .end local v11    # "$i$a$-forEach-Node$dispatchFinalEventPass$result$1$2":I
    nop

    .line 719
    const/4 v10, 0x1

    add-int/2addr v8, v10

    .line 720
    if-lt v8, v4, :cond_f

    goto :goto_7

    .line 714
    .end local v8    # "i$iv":I
    .end local v9    # "content$iv":[Ljava/lang/Object;
    :cond_10
    move-object/from16 v12, p1

    const/4 v10, 0x1

    .line 722
    :goto_7
    goto :goto_8

    .line 339
    .end local v1    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v2    # "$i$f$forEach":I
    .end local v4    # "size$iv":I
    :cond_11
    move-object/from16 v12, p1

    const/4 v10, 0x1

    .line 342
    :goto_8
    nop

    .line 667
    .end local v3    # "$i$a$-dispatchIfNeeded-Node$dispatchFinalEventPass$result$1":I
    .end local v5    # "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    .end local v6    # "size":J
    nop

    .line 723
    move v4, v10

    .line 330
    .end local v23    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .end local v24    # "$i$f$dispatchIfNeeded":I
    :goto_9
    move v1, v4

    .line 343
    .local v1, "result":Z
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/input/pointer/Node;->cleanUpHits(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    .line 344
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/Node;->clearCache()V

    .line 345
    return v1
.end method

.method public dispatchMainEventPass(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z
    .locals 27
    .param p1, "changes"    # Landroidx/collection/LongSparseArray;
    .param p2, "parentCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .param p3, "internalPointerEvent"    # Landroidx/compose/ui/input/pointer/InternalPointerEvent;
    .param p4, "isInBounds"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/input/pointer/InternalPointerEvent;",
            "Z)Z"
        }
    .end annotation

    .line 292
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    .local v1, "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    const/4 v2, 0x0

    .line 558
    .local v2, "$i$f$dispatchIfNeeded":I
    iget-object v3, v1, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object/from16 v15, p3

    move v1, v4

    move/from16 v4, p4

    goto/16 :goto_12

    .line 560
    :cond_0
    iget-object v3, v1, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v15, p3

    move v1, v4

    move/from16 v4, p4

    goto/16 :goto_12

    .line 562
    :cond_1
    const/4 v3, 0x0

    .line 293
    .local v3, "$i$a$-dispatchIfNeeded-Node$dispatchMainEventPass$1":I
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 294
    .local v5, "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    iget-object v6, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v6

    .line 296
    .local v6, "size":J
    iget-object v8, v0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    const/4 v9, 0x0

    .line 563
    .local v9, "$i$f$getPointerInput-OLwlOKw":I
    const/16 v10, 0x10

    invoke-static {v10}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v9

    .line 296
    .end local v9    # "$i$f$getPointerInput-OLwlOKw":I
    nop

    .local v8, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .local v9, "kind$iv":I
    const/4 v11, 0x0

    .line 564
    .local v11, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v12, 0x0

    .line 565
    .local v12, "stack$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .local v13, "node$iv":Ljava/lang/Object;
    move-object v13, v8

    .line 566
    :goto_0
    const/4 v14, 0x1

    if-eqz v13, :cond_e

    .line 567
    instance-of v15, v13, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v15, :cond_2

    .line 568
    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/node/PointerInputModifierNode;

    .local v14, "it":Landroidx/compose/ui/node/PointerInputModifierNode;
    const/4 v15, 0x0

    .line 297
    .local v15, "$i$a$-dispatchForKind-6rFNWt0-Node$dispatchMainEventPass$1$1":I
    sget-object v10, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v14, v5, v10, v6, v7}, Landroidx/compose/ui/node/PointerInputModifierNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 298
    nop

    .line 568
    .end local v14    # "it":Landroidx/compose/ui/node/PointerInputModifierNode;
    .end local v15    # "$i$a$-dispatchForKind-6rFNWt0-Node$dispatchMainEventPass$1$1":I
    move-object/from16 v24, v1

    move/from16 v25, v2

    goto/16 :goto_6

    .line 569
    :cond_2
    move-object v10, v13

    .local v10, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 570
    .local v15, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v17

    and-int v17, v17, v9

    if-eqz v17, :cond_3

    move v10, v14

    goto :goto_1

    :cond_3
    move v10, v4

    .line 569
    .end local v10    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_1
    if-eqz v10, :cond_c

    instance-of v10, v13, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v10, :cond_c

    .line 571
    const/4 v10, 0x0

    .line 572
    .local v10, "count$iv":I
    move-object v15, v13

    check-cast v15, Landroidx/compose/ui/node/DelegatingNode;

    .local v15, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v17, 0x0

    .line 573
    .local v17, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v15}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v18

    .line 574
    .local v18, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v18, :cond_b

    .line 575
    move-object/from16 v19, v18

    .local v19, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 576
    .local v20, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    move-object/from16 v21, v19

    .local v21, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 570
    .local v22, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v23

    and-int v23, v23, v9

    if-eqz v23, :cond_4

    move/from16 v21, v14

    goto :goto_3

    :cond_4
    move/from16 v21, v4

    .line 576
    .end local v21    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_3
    if-eqz v21, :cond_a

    .line 577
    add-int/lit8 v10, v10, 0x1

    .line 578
    if-ne v10, v14, :cond_5

    .line 579
    move-object/from16 v13, v19

    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object/from16 v2, v19

    goto :goto_5

    .line 583
    :cond_5
    if-nez v12, :cond_6

    const/16 v21, 0x0

    .line 584
    .local v21, "$i$f$mutableVectorOf":I
    nop

    .line 585
    const/16 v14, 0x10

    .local v14, "capacity$iv$iv$iv":I
    const/16 v23, 0x0

    .line 586
    .local v23, "$i$f$MutableVector":I
    move-object/from16 v24, v1

    .end local v1    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .local v24, "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v25, v2

    .end local v2    # "$i$f$dispatchIfNeeded":I
    .local v25, "$i$f$dispatchIfNeeded":I
    new-array v2, v14, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v1, v2, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 584
    .end local v14    # "capacity$iv$iv$iv":I
    .end local v23    # "$i$f$MutableVector":I
    goto :goto_4

    .line 583
    .end local v21    # "$i$f$mutableVectorOf":I
    .end local v24    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .end local v25    # "$i$f$dispatchIfNeeded":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .restart local v2    # "$i$f$dispatchIfNeeded":I
    :cond_6
    move-object/from16 v24, v1

    move/from16 v25, v2

    .end local v1    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .end local v2    # "$i$f$dispatchIfNeeded":I
    .restart local v24    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .restart local v25    # "$i$f$dispatchIfNeeded":I
    move-object v1, v12

    :goto_4
    move-object v12, v1

    .line 587
    move-object v1, v13

    .line 588
    .local v1, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_8

    .line 589
    if-eqz v12, :cond_7

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 590
    :cond_7
    const/4 v2, 0x0

    move-object v13, v2

    .line 592
    :cond_8
    if-eqz v12, :cond_9

    move-object/from16 v2, v19

    .end local v19    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .end local v2    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v2, v19

    .end local v19    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    goto :goto_5

    .line 576
    .end local v24    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .end local v25    # "$i$f$dispatchIfNeeded":I
    .local v1, "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .local v2, "$i$f$dispatchIfNeeded":I
    .restart local v19    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object/from16 v2, v19

    .line 595
    .end local v1    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .end local v19    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .restart local v25    # "$i$f$dispatchIfNeeded":I
    :goto_5
    nop

    .line 575
    .end local v2    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 596
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v18

    move-object/from16 v1, v24

    move/from16 v2, v25

    const/4 v14, 0x1

    goto :goto_2

    .line 598
    .end local v24    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .end local v25    # "$i$f$dispatchIfNeeded":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .local v2, "$i$f$dispatchIfNeeded":I
    :cond_b
    move-object/from16 v24, v1

    move/from16 v25, v2

    .line 599
    .end local v1    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .end local v2    # "$i$f$dispatchIfNeeded":I
    .end local v15    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v17    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v18    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .restart local v25    # "$i$f$dispatchIfNeeded":I
    const/4 v1, 0x1

    if-ne v10, v1, :cond_d

    .line 601
    move-object/from16 v1, v24

    move/from16 v2, v25

    const/16 v10, 0x10

    goto/16 :goto_0

    .line 569
    .end local v10    # "count$iv":I
    .end local v24    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .end local v25    # "$i$f$dispatchIfNeeded":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .restart local v2    # "$i$f$dispatchIfNeeded":I
    :cond_c
    move-object/from16 v24, v1

    move/from16 v25, v2

    .line 604
    .end local v1    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .end local v2    # "$i$f$dispatchIfNeeded":I
    .restart local v24    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .restart local v25    # "$i$f$dispatchIfNeeded":I
    :cond_d
    :goto_6
    invoke-static {v12}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    move-object/from16 v1, v24

    move/from16 v2, v25

    const/16 v10, 0x10

    goto/16 :goto_0

    .line 606
    .end local v24    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .end local v25    # "$i$f$dispatchIfNeeded":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .restart local v2    # "$i$f$dispatchIfNeeded":I
    :cond_e
    move-object/from16 v24, v1

    move/from16 v25, v2

    .line 301
    .end local v1    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .end local v2    # "$i$f$dispatchIfNeeded":I
    .end local v8    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "kind$iv":I
    .end local v11    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v12    # "stack$iv":Ljava/lang/Object;
    .end local v13    # "node$iv":Ljava/lang/Object;
    .restart local v24    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .restart local v25    # "$i$f$dispatchIfNeeded":I
    iget-object v1, v0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 302
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/Node;->getChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v1

    .local v1, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v2, 0x0

    .line 607
    .local v2, "$i$f$forEach":I
    nop

    .line 608
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v8

    .line 609
    .local v8, "size$iv":I
    if-lez v8, :cond_10

    .line 610
    const/4 v9, 0x0

    .line 611
    .local v9, "i$iv":I
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v10

    .line 613
    .local v10, "content$iv":[Ljava/lang/Object;
    :goto_7
    aget-object v11, v10, v9

    check-cast v11, Landroidx/compose/ui/input/pointer/Node;

    .local v11, "it":Landroidx/compose/ui/input/pointer/Node;
    const/4 v12, 0x0

    .line 303
    .local v12, "$i$a$-forEach-Node$dispatchMainEventPass$1$2":I
    nop

    .line 306
    iget-object v13, v0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    .line 307
    iget-object v14, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 308
    nop

    .line 309
    nop

    .line 303
    move-object/from16 v15, p3

    move/from16 v4, p4

    invoke-virtual {v11, v13, v14, v15, v4}, Landroidx/compose/ui/input/pointer/Node;->dispatchMainEventPass(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    .line 311
    nop

    .line 613
    .end local v11    # "it":Landroidx/compose/ui/input/pointer/Node;
    .end local v12    # "$i$a$-forEach-Node$dispatchMainEventPass$1$2":I
    nop

    .line 614
    const/4 v11, 0x1

    add-int/2addr v9, v11

    .line 615
    if-lt v9, v8, :cond_f

    goto :goto_8

    :cond_f
    const/4 v4, 0x0

    goto :goto_7

    .line 609
    .end local v9    # "i$iv":I
    .end local v10    # "content$iv":[Ljava/lang/Object;
    :cond_10
    move-object/from16 v15, p3

    move/from16 v4, p4

    .line 617
    :goto_8
    goto :goto_9

    .line 301
    .end local v1    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v2    # "$i$f$forEach":I
    .end local v8    # "size$iv":I
    :cond_11
    move-object/from16 v15, p3

    move/from16 v4, p4

    .line 314
    :goto_9
    iget-object v1, v0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 316
    iget-object v1, v0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    const/4 v2, 0x0

    .line 618
    .local v2, "$i$f$getPointerInput-OLwlOKw":I
    const/16 v8, 0x10

    invoke-static {v8}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 316
    .end local v2    # "$i$f$getPointerInput-OLwlOKw":I
    nop

    .local v1, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "kind$iv":I
    const/4 v8, 0x0

    .line 619
    .local v8, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v9, 0x0

    .line 620
    .local v9, "stack$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .local v10, "node$iv":Ljava/lang/Object;
    move-object v10, v1

    .line 621
    :goto_a
    if-eqz v10, :cond_1e

    .line 622
    instance-of v11, v10, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v11, :cond_12

    .line 623
    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/node/PointerInputModifierNode;

    .local v11, "it":Landroidx/compose/ui/node/PointerInputModifierNode;
    const/4 v12, 0x0

    .line 317
    .local v12, "$i$a$-dispatchForKind-6rFNWt0-Node$dispatchMainEventPass$1$3":I
    sget-object v13, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v11, v5, v13, v6, v7}, Landroidx/compose/ui/node/PointerInputModifierNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 318
    nop

    .line 623
    .end local v11    # "it":Landroidx/compose/ui/node/PointerInputModifierNode;
    .end local v12    # "$i$a$-dispatchForKind-6rFNWt0-Node$dispatchMainEventPass$1$3":I
    move-object/from16 v21, v1

    move/from16 v23, v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    goto/16 :goto_10

    .line 624
    :cond_12
    move-object v11, v10

    .local v11, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 625
    .local v12, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int/2addr v13, v2

    if-eqz v13, :cond_13

    const/4 v11, 0x1

    goto :goto_b

    :cond_13
    const/4 v11, 0x0

    .line 624
    .end local v11    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_b
    if-eqz v11, :cond_1c

    instance-of v11, v10, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v11, :cond_1c

    .line 626
    const/4 v11, 0x0

    .line 627
    .local v11, "count$iv":I
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/node/DelegatingNode;

    .local v12, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v13, 0x0

    .line 628
    .local v13, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v12}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    .line 629
    .local v14, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_c
    if-eqz v14, :cond_1b

    .line 630
    move-object/from16 v16, v14

    .local v16, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 631
    .local v18, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    move-object/from16 v19, v16

    .local v19, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 625
    .local v20, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v21

    and-int v21, v21, v2

    if-eqz v21, :cond_14

    const/16 v19, 0x1

    goto :goto_d

    :cond_14
    const/16 v19, 0x0

    .line 631
    .end local v19    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_d
    if-eqz v19, :cond_1a

    .line 632
    add-int/lit8 v11, v11, 0x1

    .line 633
    const/4 v0, 0x1

    if-ne v11, v0, :cond_15

    .line 634
    move-object/from16 v10, v16

    move-object/from16 v21, v1

    move/from16 v23, v2

    move-object/from16 v2, v16

    const/4 v0, 0x0

    goto :goto_f

    .line 638
    :cond_15
    if-nez v9, :cond_16

    const/4 v0, 0x0

    .line 639
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 640
    move/from16 v19, v0

    .end local v0    # "$i$f$mutableVectorOf":I
    .local v19, "$i$f$mutableVectorOf":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv":I
    const/16 v20, 0x0

    .line 641
    .local v20, "$i$f$MutableVector":I
    move-object/from16 v21, v1

    .end local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .local v21, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v23, v2

    .end local v2    # "kind$iv":I
    .local v23, "kind$iv":I
    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v26, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv":I
    .local v26, "capacity$iv$iv$iv":I
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 639
    .end local v20    # "$i$f$MutableVector":I
    .end local v26    # "capacity$iv$iv$iv":I
    goto :goto_e

    .line 638
    .end local v19    # "$i$f$mutableVectorOf":I
    .end local v21    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "kind$iv":I
    .restart local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "kind$iv":I
    :cond_16
    move-object/from16 v21, v1

    move/from16 v23, v2

    const/4 v0, 0x0

    .end local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "kind$iv":I
    .restart local v21    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "kind$iv":I
    move-object v1, v9

    :goto_e
    move-object v9, v1

    .line 642
    move-object v1, v10

    .line 643
    .local v1, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_18

    .line 644
    if-eqz v9, :cond_17

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_17
    const/4 v2, 0x0

    move-object v10, v2

    .line 647
    :cond_18
    if-eqz v9, :cond_19

    move-object/from16 v2, v16

    .end local v16    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .end local v2    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v16    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_19
    move-object/from16 v2, v16

    .end local v16    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    goto :goto_f

    .line 631
    .end local v21    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "kind$iv":I
    .local v1, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "kind$iv":I
    .restart local v16    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_1a
    move-object/from16 v21, v1

    move/from16 v23, v2

    move-object/from16 v2, v16

    const/4 v0, 0x0

    .line 650
    .end local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v21    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "kind$iv":I
    :goto_f
    nop

    .line 630
    .end local v2    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 651
    invoke-virtual {v14}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v23

    goto :goto_c

    .line 653
    .end local v21    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "kind$iv":I
    .restart local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "kind$iv":I
    :cond_1b
    move-object/from16 v21, v1

    move/from16 v23, v2

    const/4 v0, 0x0

    .line 654
    .end local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "kind$iv":I
    .end local v12    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v13    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v14    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v21    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "kind$iv":I
    const/4 v1, 0x1

    if-ne v11, v1, :cond_1d

    .line 656
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v23

    goto/16 :goto_a

    .line 624
    .end local v11    # "count$iv":I
    .end local v21    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "kind$iv":I
    .restart local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "kind$iv":I
    :cond_1c
    move-object/from16 v21, v1

    move/from16 v23, v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 659
    .end local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "kind$iv":I
    .restart local v21    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "kind$iv":I
    :cond_1d
    :goto_10
    invoke-static {v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v23

    goto/16 :goto_a

    .line 661
    .end local v21    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "kind$iv":I
    .restart local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "kind$iv":I
    :cond_1e
    move-object/from16 v21, v1

    move/from16 v23, v2

    const/4 v1, 0x1

    .end local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "kind$iv":I
    .restart local v21    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "kind$iv":I
    goto :goto_11

    .line 314
    .end local v8    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v9    # "stack$iv":Ljava/lang/Object;
    .end local v10    # "node$iv":Ljava/lang/Object;
    .end local v21    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "kind$iv":I
    :cond_1f
    const/4 v1, 0x1

    .line 320
    :goto_11
    nop

    .line 562
    .end local v3    # "$i$a$-dispatchIfNeeded-Node$dispatchMainEventPass$1":I
    .end local v5    # "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    .end local v6    # "size":J
    nop

    .line 662
    nop

    .line 292
    .end local v24    # "this_$iv":Landroidx/compose/ui/input/pointer/Node;
    .end local v25    # "$i$f$dispatchIfNeeded":I
    :goto_12
    return v1
.end method

.method public final getModifierNode()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 257
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    return-object v0
.end method

.method public final getPointerIds()Landroidx/compose/ui/input/pointer/util/PointerIdArray;
    .locals 1

    .line 262
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    return-object v0
.end method

.method public final getVec()Landroidx/compose/runtime/collection/MutableVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->vec:Landroidx/compose/runtime/collection/MutableVector;

    return-object v0
.end method

.method public final markIsIn()V
    .locals 1

    .line 525
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 526
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Node(pointerInputFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", children="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/Node;->getChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pointerIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 551
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
