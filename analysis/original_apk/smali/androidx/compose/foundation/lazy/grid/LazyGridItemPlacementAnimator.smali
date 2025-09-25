.class public final Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;
.super Ljava/lang/Object;
.source "LazyGridItemPlacementAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridItemPlacementAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridItemPlacementAnimator.kt\nandroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 7 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n+ 8 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 9 ScatterSet.kt\nandroidx/collection/ScatterSet\n*L\n1#1,368:1\n101#2,2:369\n33#2,6:371\n103#2:377\n33#2,4:403\n38#2:411\n33#2,6:414\n33#2,6:422\n33#2,6:459\n33#2,6:467\n405#3,3:378\n363#3,6:381\n373#3,3:388\n376#3,2:392\n409#3,2:394\n379#3,6:396\n411#3:402\n1810#4:387\n1672#4:391\n1810#4:439\n1672#4:443\n1#5:407\n13579#6:408\n13580#6:410\n12744#6,2:447\n13579#6:473\n13580#6:476\n13579#6:477\n13580#6:479\n86#7:409\n79#7:474\n86#7:475\n79#7:478\n1011#8,2:412\n1002#8,2:420\n1011#8,2:457\n1002#8,2:465\n267#9,4:428\n237#9,7:432\n248#9,3:440\n251#9,2:444\n272#9:446\n273#9:449\n254#9,6:450\n274#9:456\n*S KotlinDebug\n*F\n+ 1 LazyGridItemPlacementAnimator.kt\nandroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator\n*L\n68#1:369,2\n68#1:371,6\n68#1:377\n91#1:403,4\n91#1:411\n138#1:414,6\n155#1:422,6\n206#1:459,6\n232#1:467,6\n89#1:378,3\n89#1:381,6\n89#1:388,3\n89#1:392,2\n89#1:394,2\n89#1:396,6\n89#1:402\n89#1:387\n89#1:391\n169#1:439\n169#1:443\n117#1:408\n117#1:410\n189#1:447,2\n286#1:473\n286#1:476\n297#1:477\n297#1:479\n121#1:409\n289#1:474\n290#1:475\n304#1:478\n137#1:412,2\n154#1:420,2\n205#1:457,2\n231#1:465,2\n169#1:428,4\n169#1:432,7\n169#1:440,3\n169#1:444,2\n169#1:446\n169#1:449\n169#1:450,6\n169#1:456\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0019\u001a\u00020\u0004J\"\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001e\u001a\u00020\tH\u0002JL\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00042\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u00132\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020\u001bJ\u0010\u0010,\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000eH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0012\u001a\u00020\u0013*\u00020\u000e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006-"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;",
        "",
        "()V",
        "firstVisibleIndex",
        "",
        "keyIndexMap",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;",
        "keyToItemInfoMap",
        "Landroidx/collection/MutableScatterMap;",
        "Landroidx/compose/foundation/lazy/grid/ItemInfo;",
        "movingAwayKeys",
        "Landroidx/collection/MutableScatterSet;",
        "movingAwayToEndBound",
        "",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
        "movingAwayToStartBound",
        "movingInFromEndBound",
        "movingInFromStartBound",
        "hasAnimations",
        "",
        "getHasAnimations",
        "(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;)Z",
        "getAnimation",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;",
        "key",
        "placeableIndex",
        "initializeAnimation",
        "",
        "item",
        "mainAxisOffset",
        "itemInfo",
        "onMeasured",
        "consumedScroll",
        "layoutWidth",
        "layoutHeight",
        "positionedItems",
        "itemProvider",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;",
        "spanLayoutProvider",
        "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;",
        "isVertical",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "reset",
        "startAnimationsIfNeeded",
        "foundation_release"
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
.field private firstVisibleIndex:I

.field private keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

.field private final keyToItemInfoMap:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Landroidx/compose/foundation/lazy/grid/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final movingAwayKeys:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final movingAwayToEndBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;"
        }
    .end annotation
.end field

.field private final movingAwayToStartBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;"
        }
    .end annotation
.end field

.field private final movingInFromEndBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;"
        }
    .end annotation
.end field

.field private final movingInFromStartBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Landroidx/collection/ScatterMapKt;->mutableScatterMapOf()Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    .line 41
    sget-object v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->Empty:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap$Empty;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 47
    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    .line 36
    return-void
.end method

.method public static final synthetic access$getKeyIndexMap$p(Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;)Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    .line 36
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    return-object v0
.end method

.method private final getHasAnimations(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;)Z
    .locals 6
    .param p1, "$this$hasAnimations"    # Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 321
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getPlaceablesCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    move v3, v2

    .local v3, "index":I
    const/4 v4, 0x0

    .line 322
    .local v4, "$i$a$-repeat-LazyGridItemPlacementAnimator$hasAnimations$1":I
    invoke-virtual {p1, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimatorKt;->access$getSpecs(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v0, v5

    .local v0, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;
    const/4 v1, 0x0

    .line 324
    .local v1, "$i$a$-let-LazyGridItemPlacementAnimator$hasAnimations$1$1":I
    const/4 v2, 0x1

    return v2

    .line 326
    .end local v0    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;
    .end local v1    # "$i$a$-let-LazyGridItemPlacementAnimator$hasAnimations$1$1":I
    :cond_0
    nop

    .line 321
    .end local v3    # "index":I
    .end local v4    # "$i$a$-repeat-LazyGridItemPlacementAnimator$hasAnimations$1":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    :cond_1
    return v1
.end method

.method private final initializeAnimation(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;ILandroidx/compose/foundation/lazy/grid/ItemInfo;)V
    .locals 17
    .param p1, "item"    # Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .param p2, "mainAxisOffset"    # I
    .param p3, "itemInfo"    # Landroidx/compose/foundation/lazy/grid/ItemInfo;

    .line 277
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v6

    .line 279
    .local v6, "firstPlaceableOffset":J
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-wide v0, v6

    move/from16 v3, p2

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(JIIILjava/lang/Object;)J

    move-result-wide v0

    goto :goto_0

    .line 282
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-wide v0, v6

    move/from16 v2, p2

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(JIIILjava/lang/Object;)J

    move-result-wide v0

    .line 279
    :goto_0
    nop

    .line 286
    .local v0, "targetFirstPlaceableOffset":J
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v2

    .local v2, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 473
    .local v3, "$i$f$forEach":I
    array-length v4, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v8, v2, v5

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    const/4 v10, 0x0

    .line 287
    .local v10, "$i$a$-forEach-LazyGridItemPlacementAnimator$initializeAnimation$1":I
    if-eqz v9, :cond_1

    .line 289
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v11

    .local v11, "arg0$iv":J
    const/4 v13, 0x0

    .line 474
    .local v13, "$i$f$minus-qkQi6aY":I
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v14

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v15

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v16

    sub-int v15, v15, v16

    invoke-static {v14, v15}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v11

    .line 289
    .end local v11    # "arg0$iv":J
    .end local v13    # "$i$f$minus-qkQi6aY":I
    nop

    .line 288
    nop

    .line 290
    .local v11, "diffToFirstPlaceableOffset":J
    const/4 v13, 0x0

    .line 475
    .local v13, "$i$f$plus-qkQi6aY":I
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v14

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v15

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v16

    add-int v15, v15, v16

    invoke-static {v14, v15}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v13

    .line 290
    .end local v13    # "$i$f$plus-qkQi6aY":I
    invoke-virtual {v9, v13, v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setRawOffset--gyyYBs(J)V

    .line 292
    .end local v11    # "diffToFirstPlaceableOffset":J
    :cond_1
    nop

    .line 473
    .end local v9    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .end local v10    # "$i$a$-forEach-LazyGridItemPlacementAnimator$initializeAnimation$1":I
    nop

    .end local v8    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 476
    :cond_2
    nop

    .line 293
    .end local v2    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$forEach":I
    return-void
.end method

.method static synthetic initializeAnimation$default(Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;ILandroidx/compose/foundation/lazy/grid/ItemInfo;ILjava/lang/Object;)V
    .locals 0

    .line 272
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 275
    iget-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p3, Landroidx/compose/foundation/lazy/grid/ItemInfo;

    .line 272
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->initializeAnimation(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;ILandroidx/compose/foundation/lazy/grid/ItemInfo;)V

    return-void
.end method

.method private final startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;)V
    .locals 17
    .param p1, "item"    # Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroidx/compose/foundation/lazy/grid/ItemInfo;

    .line 297
    .local v1, "itemInfo":Landroidx/compose/foundation/lazy/grid/ItemInfo;
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v2

    .local v2, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 477
    .local v3, "$i$f$forEach":I
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    .local v7, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    const/4 v8, 0x0

    .line 298
    .local v8, "$i$a$-forEach-LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1":I
    if-eqz v7, :cond_1

    .line 299
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v9

    .line 300
    .local v9, "newTarget":J
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->getRawOffset-nOcc-ac()J

    move-result-wide v11

    .line 301
    .local v11, "currentTarget":J
    sget-object v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$Companion;

    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$Companion;->getNotInitialized-nOcc-ac()J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v13

    if-nez v13, :cond_0

    .line 302
    invoke-static {v11, v12, v9, v10}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v13

    if-nez v13, :cond_0

    .line 304
    const/4 v13, 0x0

    .line 478
    .local v13, "$i$f$minus-qkQi6aY":I
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v14

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v15

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v16

    sub-int v15, v15, v16

    invoke-static {v14, v15}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v13

    .line 304
    .end local v13    # "$i$f$minus-qkQi6aY":I
    invoke-virtual {v7, v13, v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->animatePlacementDelta--gyyYBs(J)V

    .line 306
    :cond_0
    invoke-virtual {v7, v9, v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setRawOffset--gyyYBs(J)V

    .line 308
    .end local v9    # "newTarget":J
    .end local v11    # "currentTarget":J
    :cond_1
    nop

    .line 477
    .end local v7    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .end local v8    # "$i$a$-forEach-LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 479
    :cond_2
    nop

    .line 309
    .end local v2    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$forEach":I
    return-void
.end method


# virtual methods
.method public final getAnimation(Ljava/lang/Object;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "placeableIndex"    # I

    .line 312
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 313
    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/ItemInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v0

    if-eqz v0, :cond_1

    aget-object v1, v0, p2

    .line 312
    :cond_1
    :goto_0
    return-object v1
.end method

.method public final onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;ZLkotlinx/coroutines/CoroutineScope;)V
    .locals 49
    .param p1, "consumedScroll"    # I
    .param p2, "layoutWidth"    # I
    .param p3, "layoutHeight"    # I
    .param p4, "positionedItems"    # Ljava/util/List;
    .param p5, "itemProvider"    # Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;
    .param p6, "spanLayoutProvider"    # Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .param p7, "isVertical"    # Z
    .param p8, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;",
            "Z",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    .line 68
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v0, p4

    .local v0, "$this$fastAny$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 369
    .local v1, "$i$f$fastAny":I
    nop

    .line 370
    move-object v2, v0

    .local v2, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 371
    .local v3, "$i$f$fastForEach":I
    nop

    .line 372
    const/4 v4, 0x0

    .local v4, "index$iv$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    const/4 v10, 0x0

    if-ge v4, v5, :cond_1

    .line 373
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 374
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 370
    .local v14, "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    move-object v15, v13

    check-cast v15, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .local v15, "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    const/16 v16, 0x0

    .line 68
    .local v16, "$i$a$-fastAny-LazyGridItemPlacementAnimator$onMeasured$1":I
    invoke-direct {v6, v15}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getHasAnimations(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;)Z

    move-result v15

    .line 370
    .end local v15    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v16    # "$i$a$-fastAny-LazyGridItemPlacementAnimator$onMeasured$1":I
    if-eqz v15, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 374
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    :cond_0
    nop

    .line 372
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 376
    .end local v4    # "index$iv$iv":I
    :cond_1
    nop

    .line 377
    .end local v2    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    move v0, v10

    .line 68
    .end local v0    # "$this$fastAny$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastAny":I
    :goto_1
    if-nez v0, :cond_2

    iget-object v0, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->reset()V

    .line 71
    return-void

    .line 74
    :cond_2
    iget v12, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->firstVisibleIndex:I

    .line 75
    .local v12, "previousFirstVisibleIndex":I
    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v10

    :goto_2
    iput v0, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->firstVisibleIndex:I

    .line 76
    iget-object v13, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 77
    .local v13, "previousKeyToIndexMap":Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v0

    iput-object v0, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 79
    if-eqz p7, :cond_4

    move/from16 v0, p3

    goto :goto_3

    :cond_4
    move/from16 v0, p2

    :goto_3
    move v14, v0

    .line 82
    .local v14, "mainAxisLayoutSize":I
    if-eqz p7, :cond_5

    .line 83
    invoke-static {v10, v7}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v0

    goto :goto_4

    .line 85
    :cond_5
    invoke-static {v7, v10}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v0

    .line 82
    :goto_4
    move-wide v15, v0

    .line 89
    .local v15, "scrollOffset":J
    iget-object v0, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    check-cast v0, Landroidx/collection/ScatterMap;

    .local v0, "this_$iv":Landroidx/collection/ScatterMap;
    const/4 v1, 0x0

    .line 378
    .local v1, "$i$f$forEachKey":I
    iget-object v2, v0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 380
    .local v2, "k$iv":[Ljava/lang/Object;
    move-object v3, v0

    .local v3, "this_$iv$iv":Landroidx/collection/ScatterMap;
    const/4 v4, 0x0

    .line 381
    .local v4, "$i$f$forEachIndexed":I
    iget-object v5, v3, Landroidx/collection/ScatterMap;->metadata:[J

    .line 382
    .local v5, "m$iv$iv":[J
    array-length v10, v5

    add-int/lit8 v10, v10, -0x2

    .line 384
    .local v10, "lastIndex$iv$iv":I
    const/4 v11, 0x0

    .local v11, "i$iv$iv":I
    const-wide/16 v19, 0x80

    const-wide/16 v21, 0xff

    const/16 v23, 0x7

    const-wide v24, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    move/from16 v26, v4

    .end local v4    # "$i$f$forEachIndexed":I
    .local v26, "$i$f$forEachIndexed":I
    if-gt v11, v10, :cond_a

    .line 385
    :goto_5
    aget-wide v27, v5, v11

    .line 386
    .local v27, "slot$iv$iv":J
    move-wide/from16 v29, v27

    .local v29, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v31, 0x0

    .line 387
    .local v31, "$i$f$maskEmptyOrDeleted":I
    move-object/from16 v32, v5

    move-wide/from16 v4, v29

    move-object/from16 v29, v0

    move/from16 v30, v1

    .end local v0    # "this_$iv":Landroidx/collection/ScatterMap;
    .end local v1    # "$i$f$forEachKey":I
    .end local v5    # "m$iv$iv":[J
    .local v4, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v29, "this_$iv":Landroidx/collection/ScatterMap;
    .local v30, "$i$f$forEachKey":I
    .local v32, "m$iv$iv":[J
    not-long v0, v4

    shl-long v0, v0, v23

    and-long/2addr v0, v4

    and-long v0, v0, v24

    .line 386
    .end local v4    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v31    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v0, v0, v24

    if-eqz v0, :cond_9

    .line 388
    sub-int v0, v11, v10

    not-int v0, v0

    ushr-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x8

    rsub-int/lit8 v4, v0, 0x8

    .line 389
    .local v4, "bitCount$iv$iv":I
    const/4 v0, 0x0

    .local v0, "j$iv$iv":I
    :goto_6
    if-ge v0, v4, :cond_8

    .line 390
    and-long v34, v27, v21

    .local v34, "value$iv$iv$iv":J
    const/4 v1, 0x0

    .line 391
    .local v1, "$i$f$isFull":I
    cmp-long v5, v34, v19

    if-gez v5, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    .line 390
    .end local v1    # "$i$f$isFull":I
    .end local v34    # "value$iv$iv$iv":J
    :goto_7
    if-eqz v1, :cond_7

    .line 392
    shl-int/lit8 v1, v11, 0x3

    add-int/2addr v1, v0

    .line 393
    .local v1, "index$iv$iv":I
    move v5, v1

    .local v5, "index$iv":I
    const/16 v31, 0x0

    .line 394
    .local v31, "$i$a$-forEachIndexed-ScatterMap$forEachKey$1$iv":I
    move/from16 v34, v1

    .end local v1    # "index$iv$iv":I
    .local v34, "index$iv$iv":I
    aget-object v1, v2, v5

    .local v1, "it":Ljava/lang/Object;
    const/16 v35, 0x0

    .line 89
    .local v35, "$i$a$-forEachKey-LazyGridItemPlacementAnimator$onMeasured$2":I
    move-object/from16 v36, v2

    .end local v2    # "k$iv":[Ljava/lang/Object;
    .local v36, "k$iv":[Ljava/lang/Object;
    iget-object v2, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v2, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 394
    .end local v1    # "it":Ljava/lang/Object;
    .end local v35    # "$i$a$-forEachKey-LazyGridItemPlacementAnimator$onMeasured$2":I
    nop

    .line 395
    nop

    .line 393
    .end local v5    # "index$iv":I
    .end local v31    # "$i$a$-forEachIndexed-ScatterMap$forEachKey$1$iv":I
    goto :goto_8

    .line 390
    .end local v34    # "index$iv$iv":I
    .end local v36    # "k$iv":[Ljava/lang/Object;
    .restart local v2    # "k$iv":[Ljava/lang/Object;
    :cond_7
    move-object/from16 v36, v2

    .line 396
    .end local v2    # "k$iv":[Ljava/lang/Object;
    .restart local v36    # "k$iv":[Ljava/lang/Object;
    :goto_8
    const/16 v5, 0x8

    shr-long v27, v27, v5

    .line 389
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v36

    goto :goto_6

    .end local v36    # "k$iv":[Ljava/lang/Object;
    .restart local v2    # "k$iv":[Ljava/lang/Object;
    :cond_8
    move-object/from16 v36, v2

    const/16 v5, 0x8

    .line 398
    .end local v0    # "j$iv$iv":I
    .end local v2    # "k$iv":[Ljava/lang/Object;
    .restart local v36    # "k$iv":[Ljava/lang/Object;
    if-ne v4, v5, :cond_c

    goto :goto_9

    .line 386
    .end local v4    # "bitCount$iv$iv":I
    .end local v36    # "k$iv":[Ljava/lang/Object;
    .restart local v2    # "k$iv":[Ljava/lang/Object;
    :cond_9
    move-object/from16 v36, v2

    const/16 v5, 0x8

    .line 384
    .end local v2    # "k$iv":[Ljava/lang/Object;
    .end local v27    # "slot$iv$iv":J
    .restart local v36    # "k$iv":[Ljava/lang/Object;
    :goto_9
    if-eq v11, v10, :cond_b

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v5, v32

    move-object/from16 v2, v36

    goto :goto_5

    .end local v29    # "this_$iv":Landroidx/collection/ScatterMap;
    .end local v30    # "$i$f$forEachKey":I
    .end local v32    # "m$iv$iv":[J
    .end local v36    # "k$iv":[Ljava/lang/Object;
    .local v0, "this_$iv":Landroidx/collection/ScatterMap;
    .local v1, "$i$f$forEachKey":I
    .restart local v2    # "k$iv":[Ljava/lang/Object;
    .local v5, "m$iv$iv":[J
    :cond_a
    move-object/from16 v29, v0

    move/from16 v30, v1

    move-object/from16 v36, v2

    move-object/from16 v32, v5

    const/16 v5, 0x8

    .line 401
    .end local v0    # "this_$iv":Landroidx/collection/ScatterMap;
    .end local v1    # "$i$f$forEachKey":I
    .end local v2    # "k$iv":[Ljava/lang/Object;
    .end local v5    # "m$iv$iv":[J
    .end local v11    # "i$iv$iv":I
    .restart local v29    # "this_$iv":Landroidx/collection/ScatterMap;
    .restart local v30    # "$i$f$forEachKey":I
    .restart local v32    # "m$iv$iv":[J
    .restart local v36    # "k$iv":[Ljava/lang/Object;
    :cond_b
    nop

    .line 402
    .end local v3    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v10    # "lastIndex$iv$iv":I
    .end local v26    # "$i$f$forEachIndexed":I
    .end local v32    # "m$iv$iv":[J
    :cond_c
    nop

    .line 91
    .end local v29    # "this_$iv":Landroidx/collection/ScatterMap;
    .end local v30    # "$i$f$forEachKey":I
    .end local v36    # "k$iv":[Ljava/lang/Object;
    move-object/from16 v0, p4

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 403
    .local v1, "$i$f$fastForEach":I
    nop

    .line 404
    const/4 v2, 0x0

    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_a
    if-ge v2, v3, :cond_15

    .line 405
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 406
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v11, v4

    check-cast v11, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .local v11, "item":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    const/16 v26, 0x0

    .line 93
    .local v26, "$i$a$-fastForEach-LazyGridItemPlacementAnimator$onMeasured$3":I
    iget-object v5, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    .line 94
    invoke-direct {v6, v11}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getHasAnimations(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 95
    iget-object v5, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/ItemInfo;

    .line 97
    .local v5, "itemInfo":Landroidx/compose/foundation/lazy/grid/ItemInfo;
    if-nez v5, :cond_10

    .line 98
    new-instance v10, Landroidx/compose/foundation/lazy/grid/ItemInfo;

    move-object/from16 v28, v0

    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .local v28, "$this$fastForEach$iv":Ljava/util/List;
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getCrossAxisSize()I

    move-result v0

    move/from16 v29, v1

    .end local v1    # "$i$f$fastForEach":I
    .local v29, "$i$f$fastForEach":I
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getCrossAxisOffset()I

    move-result v1

    invoke-direct {v10, v0, v1}, Landroidx/compose/foundation/lazy/grid/ItemInfo;-><init>(II)V

    move-object v0, v10

    .line 99
    .local v0, "newItemInfo":Landroidx/compose/foundation/lazy/grid/ItemInfo;
    move-object/from16 v10, p8

    invoke-virtual {v0, v11, v10}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->updateAnimation(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;Lkotlinx/coroutines/CoroutineScope;)V

    .line 100
    iget-object v1, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    move/from16 v30, v3

    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v13, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v1

    .line 102
    .local v1, "previousIndex":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_e

    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v3

    if-eq v3, v1, :cond_e

    .line 103
    if-ge v1, v12, :cond_d

    .line 105
    iget-object v3, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v32, v4

    goto/16 :goto_e

    .line 107
    :cond_d
    iget-object v3, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v32, v4

    goto/16 :goto_e

    .line 110
    :cond_e
    nop

    .line 111
    nop

    .line 112
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v31

    .line 407
    nop

    .local v31, "it":J
    const/4 v3, 0x0

    .line 112
    .local v3, "$i$a$-let-LazyGridItemPlacementAnimator$onMeasured$3$1":I
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical()Z

    move-result v27

    if-eqz v27, :cond_f

    invoke-static/range {v31 .. v32}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v27

    goto :goto_b

    :cond_f
    invoke-static/range {v31 .. v32}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v27

    :goto_b
    move/from16 v3, v27

    .line 113
    .end local v3    # "$i$a$-let-LazyGridItemPlacementAnimator$onMeasured$3$1":I
    .end local v31    # "it":J
    nop

    .line 110
    invoke-direct {v6, v11, v3, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->initializeAnimation(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;ILandroidx/compose/foundation/lazy/grid/ItemInfo;)V

    move-object/from16 v32, v4

    .end local v0    # "newItemInfo":Landroidx/compose/foundation/lazy/grid/ItemInfo;
    .end local v1    # "previousIndex":I
    goto/16 :goto_e

    .line 117
    .end local v28    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v29    # "$i$f$fastForEach":I
    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    .local v1, "$i$f$fastForEach":I
    :cond_10
    move-object/from16 v10, p8

    move-object/from16 v28, v0

    move/from16 v29, v1

    move/from16 v30, v3

    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    .restart local v28    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v29    # "$i$f$fastForEach":I
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v0

    .local v0, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 408
    .local v1, "$i$f$forEach":I
    array-length v3, v0

    move/from16 v27, v1

    const/4 v1, 0x0

    .end local v1    # "$i$f$forEach":I
    .local v27, "$i$f$forEach":I
    :goto_c
    if-ge v1, v3, :cond_13

    aget-object v31, v0, v1

    .local v31, "element$iv":Ljava/lang/Object;
    move-object/from16 v32, v31

    .local v32, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    const/16 v34, 0x0

    .line 118
    .local v34, "$i$a$-forEach-LazyGridItemPlacementAnimator$onMeasured$3$2":I
    move-object/from16 v35, v0

    move-object/from16 v0, v32

    .end local v32    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .local v0, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .local v35, "$this$forEach$iv":[Ljava/lang/Object;
    if-eqz v0, :cond_11

    .line 119
    move/from16 v36, v3

    move-object/from16 v32, v4

    .end local v4    # "item$iv":Ljava/lang/Object;
    .local v32, "item$iv":Ljava/lang/Object;
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->getRawOffset-nOcc-ac()J

    move-result-wide v3

    sget-object v37, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$Companion;

    invoke-virtual/range {v37 .. v37}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$Companion;->getNotInitialized-nOcc-ac()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v3

    if-nez v3, :cond_12

    .line 121
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->getRawOffset-nOcc-ac()J

    move-result-wide v3

    .local v3, "arg0$iv":J
    const/4 v7, 0x0

    .line 409
    .local v7, "$i$f$plus-qkQi6aY":I
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v8

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v37

    add-int v8, v8, v37

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v37

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v38

    move-wide/from16 v39, v3

    .end local v3    # "arg0$iv":J
    .local v39, "arg0$iv":J
    add-int v3, v37, v38

    invoke-static {v8, v3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v3

    .line 121
    .end local v7    # "$i$f$plus-qkQi6aY":I
    .end local v39    # "arg0$iv":J
    invoke-virtual {v0, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setRawOffset--gyyYBs(J)V

    goto :goto_d

    .line 118
    .end local v32    # "item$iv":Ljava/lang/Object;
    .restart local v4    # "item$iv":Ljava/lang/Object;
    :cond_11
    move/from16 v36, v3

    move-object/from16 v32, v4

    .line 123
    .end local v4    # "item$iv":Ljava/lang/Object;
    .restart local v32    # "item$iv":Ljava/lang/Object;
    :cond_12
    :goto_d
    nop

    .line 408
    .end local v0    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .end local v34    # "$i$a$-forEach-LazyGridItemPlacementAnimator$onMeasured$3$2":I
    nop

    .end local v31    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    move/from16 v7, p1

    move-object/from16 v8, p4

    move-object/from16 v4, v32

    move-object/from16 v0, v35

    move/from16 v3, v36

    goto :goto_c

    .line 410
    .end local v32    # "item$iv":Ljava/lang/Object;
    .end local v35    # "$this$forEach$iv":[Ljava/lang/Object;
    .local v0, "$this$forEach$iv":[Ljava/lang/Object;
    .restart local v4    # "item$iv":Ljava/lang/Object;
    :cond_13
    move-object/from16 v35, v0

    move-object/from16 v32, v4

    .line 124
    .end local v0    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v4    # "item$iv":Ljava/lang/Object;
    .end local v27    # "$i$f$forEach":I
    .restart local v32    # "item$iv":Ljava/lang/Object;
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getCrossAxisSize()I

    move-result v0

    invoke-virtual {v5, v0}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->setCrossAxisSize(I)V

    .line 125
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getCrossAxisOffset()I

    move-result v0

    invoke-virtual {v5, v0}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->setCrossAxisOffset(I)V

    .line 126
    invoke-direct {v6, v11}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;)V

    .end local v5    # "itemInfo":Landroidx/compose/foundation/lazy/grid/ItemInfo;
    goto :goto_e

    .line 130
    .end local v28    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v29    # "$i$f$fastForEach":I
    .end local v32    # "item$iv":Ljava/lang/Object;
    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    .local v1, "$i$f$fastForEach":I
    .restart local v4    # "item$iv":Ljava/lang/Object;
    :cond_14
    move-object/from16 v10, p8

    move-object/from16 v28, v0

    move/from16 v29, v1

    move/from16 v30, v3

    move-object/from16 v32, v4

    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    .end local v4    # "item$iv":Ljava/lang/Object;
    .restart local v28    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v29    # "$i$f$fastForEach":I
    .restart local v32    # "item$iv":Ljava/lang/Object;
    iget-object v0, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :goto_e
    nop

    .line 406
    .end local v11    # "item":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v26    # "$i$a$-fastForEach-LazyGridItemPlacementAnimator$onMeasured$3":I
    nop

    .line 404
    .end local v32    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, p1

    move-object/from16 v8, p4

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v3, v30

    const/16 v5, 0x8

    goto/16 :goto_a

    .end local v28    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v29    # "$i$f$fastForEach":I
    .restart local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v1    # "$i$f$fastForEach":I
    :cond_15
    move-object/from16 v10, p8

    move-object/from16 v28, v0

    move/from16 v29, v1

    .line 411
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    .end local v2    # "index$iv":I
    .restart local v28    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v29    # "$i$f$fastForEach":I
    nop

    .line 134
    .end local v28    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v29    # "$i$f$fastForEach":I
    const/4 v0, 0x0

    .line 135
    .local v0, "accumulatedOffset":I
    const/4 v1, 0x0

    .local v1, "previousLine":I
    const/4 v1, -0x1

    .line 136
    const/4 v2, 0x0

    .line 137
    .local v2, "previousLineMainAxisSize":I
    iget-object v3, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    .local v3, "$this$sortByDescending$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 412
    .local v4, "$i$f$sortByDescending":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_16

    new-instance v5, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$onMeasured$$inlined$sortByDescending$1;

    invoke-direct {v5, v13}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$onMeasured$$inlined$sortByDescending$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    check-cast v5, Ljava/util/Comparator;

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 413
    :cond_16
    nop

    .line 138
    .end local v3    # "$this$sortByDescending$iv":Ljava/util/List;
    .end local v4    # "$i$f$sortByDescending":I
    iget-object v7, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    .local v7, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 414
    .local v8, "$i$f$fastForEach":I
    nop

    .line 415
    const/4 v3, 0x0

    .local v3, "index$iv":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    move v5, v3

    .end local v3    # "index$iv":I
    .local v5, "index$iv":I
    :goto_f
    if-ge v5, v11, :cond_19

    .line 416
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    .line 417
    .local v26, "item$iv":Ljava/lang/Object;
    move-object/from16 v4, v26

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .local v4, "item":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    const/16 v28, 0x0

    .line 139
    .local v28, "$i$a$-fastForEach-LazyGridItemPlacementAnimator$onMeasured$5":I
    if-eqz p7, :cond_17

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getRow()I

    move-result v3

    goto :goto_10

    :cond_17
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getColumn()I

    move-result v3

    .line 140
    .local v3, "line":I
    :goto_10
    move/from16 v29, v5

    const/4 v5, -0x1

    .end local v5    # "index$iv":I
    .local v29, "index$iv":I
    if-eq v3, v5, :cond_18

    if-ne v3, v1, :cond_18

    .line 141
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v30, v0

    move/from16 v31, v1

    move/from16 v32, v2

    goto :goto_11

    .line 143
    :cond_18
    add-int/2addr v0, v2

    .line 144
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize()I

    move-result v2

    .line 145
    move v1, v3

    move/from16 v30, v0

    move/from16 v31, v1

    move/from16 v32, v2

    .line 147
    .end local v0    # "accumulatedOffset":I
    .end local v1    # "previousLine":I
    .end local v2    # "previousLineMainAxisSize":I
    .local v30, "accumulatedOffset":I
    .local v31, "previousLine":I
    .local v32, "previousLineMainAxisSize":I
    :goto_11
    rsub-int/lit8 v0, v30, 0x0

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize()I

    move-result v1

    sub-int v34, v0, v1

    .line 148
    .local v34, "mainAxisOffset":I
    const/4 v5, 0x0

    const/16 v35, 0x4

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, v34

    move/from16 v37, v3

    .end local v3    # "line":I
    .local v37, "line":I
    move-object v3, v5

    move-object v5, v4

    .end local v4    # "item":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .local v5, "item":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    move/from16 v4, v35

    move-object/from16 v33, v7

    move-object v7, v5

    .end local v5    # "item":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .local v7, "item":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .local v33, "$this$fastForEach$iv":Ljava/util/List;
    move-object/from16 v5, v36

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->initializeAnimation$default(Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;ILandroidx/compose/foundation/lazy/grid/ItemInfo;ILjava/lang/Object;)V

    .line 149
    invoke-direct {v6, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;)V

    .line 150
    nop

    .line 417
    .end local v7    # "item":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v28    # "$i$a$-fastForEach-LazyGridItemPlacementAnimator$onMeasured$5":I
    .end local v34    # "mainAxisOffset":I
    .end local v37    # "line":I
    nop

    .line 415
    .end local v26    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v29, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v7, v33

    .end local v29    # "index$iv":I
    .local v5, "index$iv":I
    goto :goto_f

    .end local v30    # "accumulatedOffset":I
    .end local v31    # "previousLine":I
    .end local v32    # "previousLineMainAxisSize":I
    .end local v33    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v0    # "accumulatedOffset":I
    .restart local v1    # "previousLine":I
    .restart local v2    # "previousLineMainAxisSize":I
    .local v7, "$this$fastForEach$iv":Ljava/util/List;
    :cond_19
    move/from16 v29, v5

    move-object/from16 v33, v7

    .line 419
    .end local v5    # "index$iv":I
    .end local v7    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v33    # "$this$fastForEach$iv":Ljava/util/List;
    nop

    .line 151
    .end local v8    # "$i$f$fastForEach":I
    .end local v33    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v0, 0x0

    .line 152
    const/4 v1, -0x1

    .line 153
    const/4 v2, 0x0

    .line 154
    iget-object v3, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    .local v3, "$this$sortBy$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 420
    .local v4, "$i$f$sortBy":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_1a

    new-instance v5, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$onMeasured$$inlined$sortBy$1;

    invoke-direct {v5, v13}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$onMeasured$$inlined$sortBy$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    check-cast v5, Ljava/util/Comparator;

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 421
    :cond_1a
    nop

    .line 155
    .end local v3    # "$this$sortBy$iv":Ljava/util/List;
    .end local v4    # "$i$f$sortBy":I
    iget-object v7, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    .restart local v7    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 422
    .restart local v8    # "$i$f$fastForEach":I
    nop

    .line 423
    const/4 v3, 0x0

    .local v3, "index$iv":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    move v5, v3

    .end local v3    # "index$iv":I
    .restart local v5    # "index$iv":I
    :goto_12
    if-ge v5, v11, :cond_1d

    .line 424
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    .line 425
    .restart local v26    # "item$iv":Ljava/lang/Object;
    move-object/from16 v4, v26

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .local v4, "item":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    const/16 v28, 0x0

    .line 156
    .local v28, "$i$a$-fastForEach-LazyGridItemPlacementAnimator$onMeasured$7":I
    if-eqz p7, :cond_1b

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getRow()I

    move-result v3

    goto :goto_13

    :cond_1b
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getColumn()I

    move-result v3

    .line 157
    .local v3, "line":I
    :goto_13
    move/from16 v29, v5

    const/4 v5, -0x1

    .end local v5    # "index$iv":I
    .restart local v29    # "index$iv":I
    if-eq v3, v5, :cond_1c

    if-ne v3, v1, :cond_1c

    .line 158
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v30, v0

    move/from16 v31, v1

    move/from16 v32, v2

    goto :goto_14

    .line 160
    :cond_1c
    add-int/2addr v0, v2

    .line 161
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize()I

    move-result v2

    .line 162
    move v1, v3

    move/from16 v30, v0

    move/from16 v31, v1

    move/from16 v32, v2

    .line 164
    .end local v0    # "accumulatedOffset":I
    .end local v1    # "previousLine":I
    .end local v2    # "previousLineMainAxisSize":I
    .restart local v30    # "accumulatedOffset":I
    .restart local v31    # "previousLine":I
    .restart local v32    # "previousLineMainAxisSize":I
    :goto_14
    add-int v33, v14, v30

    .line 165
    .local v33, "mainAxisOffset":I
    const/4 v5, 0x0

    const/16 v34, 0x4

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, v33

    move/from16 v36, v3

    .end local v3    # "line":I
    .local v36, "line":I
    move-object v3, v5

    move-object v5, v4

    .end local v4    # "item":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .local v5, "item":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    move/from16 v4, v34

    move-object/from16 v34, v7

    move-object v7, v5

    .end local v5    # "item":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .local v7, "item":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .local v34, "$this$fastForEach$iv":Ljava/util/List;
    move-object/from16 v5, v35

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->initializeAnimation$default(Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;ILandroidx/compose/foundation/lazy/grid/ItemInfo;ILjava/lang/Object;)V

    .line 166
    invoke-direct {v6, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;)V

    .line 167
    nop

    .line 425
    .end local v7    # "item":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v28    # "$i$a$-fastForEach-LazyGridItemPlacementAnimator$onMeasured$7":I
    .end local v33    # "mainAxisOffset":I
    .end local v36    # "line":I
    nop

    .line 423
    .end local v26    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v29, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v7, v34

    .end local v29    # "index$iv":I
    .local v5, "index$iv":I
    goto :goto_12

    .end local v30    # "accumulatedOffset":I
    .end local v31    # "previousLine":I
    .end local v32    # "previousLineMainAxisSize":I
    .end local v34    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v0    # "accumulatedOffset":I
    .restart local v1    # "previousLine":I
    .restart local v2    # "previousLineMainAxisSize":I
    .local v7, "$this$fastForEach$iv":Ljava/util/List;
    :cond_1d
    move/from16 v29, v5

    move-object/from16 v34, v7

    .line 427
    .end local v5    # "index$iv":I
    .end local v7    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v34    # "$this$fastForEach$iv":Ljava/util/List;
    nop

    .line 169
    .end local v8    # "$i$f$fastForEach":I
    .end local v34    # "$this$fastForEach$iv":Ljava/util/List;
    iget-object v3, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    check-cast v3, Landroidx/collection/ScatterSet;

    .local v3, "this_$iv":Landroidx/collection/ScatterSet;
    const/4 v4, 0x0

    .line 428
    .local v4, "$i$f$forEach":I
    nop

    .line 429
    iget-object v5, v3, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 431
    .local v5, "k$iv":[Ljava/lang/Object;
    move-object v7, v3

    .local v7, "this_$iv$iv":Landroidx/collection/ScatterSet;
    const/4 v8, 0x0

    .line 432
    .local v8, "$i$f$forEachIndex":I
    nop

    .line 433
    iget-object v11, v7, Landroidx/collection/ScatterSet;->metadata:[J

    .line 434
    .local v11, "m$iv$iv":[J
    move/from16 v26, v0

    .end local v0    # "accumulatedOffset":I
    .local v26, "accumulatedOffset":I
    array-length v0, v11

    add-int/lit8 v0, v0, -0x2

    .line 436
    .local v0, "lastIndex$iv$iv":I
    move/from16 v28, v1

    .end local v1    # "previousLine":I
    .local v28, "previousLine":I
    const/4 v1, 0x0

    .local v1, "i$iv$iv":I
    if-gt v1, v0, :cond_2a

    .line 437
    :goto_15
    aget-wide v29, v11, v1

    .line 438
    .local v29, "slot$iv$iv":J
    move-wide/from16 v31, v29

    .local v31, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v33, 0x0

    .line 439
    .local v33, "$i$f$maskEmptyOrDeleted":I
    move/from16 v34, v2

    move-object/from16 v35, v3

    move-wide/from16 v2, v31

    move-object/from16 v31, v7

    move/from16 v32, v8

    .end local v3    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v7    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v8    # "$i$f$forEachIndex":I
    .local v2, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v31, "this_$iv$iv":Landroidx/collection/ScatterSet;
    .local v32, "$i$f$forEachIndex":I
    .local v34, "previousLineMainAxisSize":I
    .local v35, "this_$iv":Landroidx/collection/ScatterSet;
    not-long v7, v2

    shl-long v7, v7, v23

    and-long/2addr v7, v2

    and-long v2, v7, v24

    .line 438
    .end local v2    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v33    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v2, v2, v24

    if-eqz v2, :cond_29

    .line 440
    sub-int v2, v1, v0

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x8

    rsub-int/lit8 v2, v2, 0x8

    .line 441
    .local v2, "bitCount$iv$iv":I
    const/4 v7, 0x0

    .local v7, "j$iv$iv":I
    :goto_16
    if-ge v7, v2, :cond_28

    .line 442
    and-long v36, v29, v21

    .local v36, "value$iv$iv$iv":J
    const/4 v8, 0x0

    .line 443
    .local v8, "$i$f$isFull":I
    cmp-long v33, v36, v19

    if-gez v33, :cond_1e

    const/4 v8, 0x1

    goto :goto_17

    :cond_1e
    const/4 v8, 0x0

    .line 442
    .end local v8    # "$i$f$isFull":I
    .end local v36    # "value$iv$iv$iv":J
    :goto_17
    if-eqz v8, :cond_27

    .line 444
    shl-int/lit8 v8, v1, 0x3

    add-int/2addr v8, v7

    .line 445
    .local v8, "index$iv$iv":I
    move/from16 v33, v8

    .local v33, "index$iv":I
    const/16 v36, 0x0

    .line 446
    .local v36, "$i$a$-forEachIndex-ScatterSet$forEach$2$iv":I
    aget-object v3, v5, v33

    .local v3, "key":Ljava/lang/Object;
    const/16 v37, 0x0

    .line 172
    .local v37, "$i$a$-forEach-LazyGridItemPlacementAnimator$onMeasured$8":I
    move/from16 v38, v4

    .end local v4    # "$i$f$forEach":I
    .local v38, "$i$f$forEach":I
    iget-object v4, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v4, v3}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Landroidx/compose/foundation/lazy/grid/ItemInfo;

    .line 173
    .local v4, "itemInfo":Landroidx/compose/foundation/lazy/grid/ItemInfo;
    move-object/from16 v39, v5

    .end local v5    # "k$iv":[Ljava/lang/Object;
    .local v39, "k$iv":[Ljava/lang/Object;
    iget-object v5, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    invoke-interface {v5, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v5

    .line 175
    .local v5, "newIndex":I
    move/from16 v40, v8

    const/4 v8, -0x1

    .end local v8    # "index$iv$iv":I
    .local v40, "index$iv$iv":I
    if-ne v5, v8, :cond_1f

    .line 176
    iget-object v8, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v8, v3}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v42, v4

    move-object/from16 v43, v11

    goto/16 :goto_1c

    .line 178
    :cond_1f
    nop

    .line 179
    nop

    .line 178
    const/16 v43, 0x0

    .line 180
    if-eqz p7, :cond_20

    .line 181
    sget-object v8, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getCrossAxisSize()I

    move-result v10

    invoke-virtual {v8, v10}, Landroidx/compose/ui/unit/Constraints$Companion;->fixedWidth-OenEA2s(I)J

    move-result-wide v41

    move-wide/from16 v44, v41

    goto :goto_18

    .line 183
    :cond_20
    sget-object v8, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getCrossAxisSize()I

    move-result v10

    invoke-virtual {v8, v10}, Landroidx/compose/ui/unit/Constraints$Companion;->fixedHeight-OenEA2s(I)J

    move-result-wide v41

    move-wide/from16 v44, v41

    .line 178
    :goto_18
    const/16 v46, 0x2

    const/16 v47, 0x0

    move-object/from16 v41, p5

    move/from16 v42, v5

    invoke-static/range {v41 .. v47}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getAndMeasure-3p2s80s$default(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;IIJILjava/lang/Object;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v8

    .line 186
    .local v8, "item":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->setNonScrollableItem(Z)V

    .line 189
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v10

    .local v10, "$this$any$iv":[Ljava/lang/Object;
    const/16 v41, 0x0

    .line 447
    .local v41, "$i$f$any":I
    move-object/from16 v42, v4

    .end local v4    # "itemInfo":Landroidx/compose/foundation/lazy/grid/ItemInfo;
    .local v42, "itemInfo":Landroidx/compose/foundation/lazy/grid/ItemInfo;
    array-length v4, v10

    move-object/from16 v43, v11

    const/4 v11, 0x0

    .end local v11    # "m$iv$iv":[J
    .local v43, "m$iv$iv":[J
    :goto_19
    if-ge v11, v4, :cond_24

    aget-object v44, v10, v11

    .local v44, "element$iv":Ljava/lang/Object;
    move-object/from16 v45, v44

    .local v45, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    const/16 v46, 0x0

    .line 189
    .local v46, "$i$a$-any-LazyGridItemPlacementAnimator$onMeasured$8$inProgress$1":I
    if-eqz v45, :cond_21

    move/from16 v47, v4

    invoke-virtual/range {v45 .. v45}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->isPlacementAnimationInProgress()Z

    move-result v4

    move-object/from16 v48, v10

    const/4 v10, 0x1

    .end local v10    # "$this$any$iv":[Ljava/lang/Object;
    .local v48, "$this$any$iv":[Ljava/lang/Object;
    if-ne v4, v10, :cond_22

    const/4 v4, 0x1

    goto :goto_1a

    .end local v48    # "$this$any$iv":[Ljava/lang/Object;
    .restart local v10    # "$this$any$iv":[Ljava/lang/Object;
    :cond_21
    move/from16 v47, v4

    move-object/from16 v48, v10

    .end local v10    # "$this$any$iv":[Ljava/lang/Object;
    .restart local v48    # "$this$any$iv":[Ljava/lang/Object;
    :cond_22
    const/4 v4, 0x0

    .line 447
    .end local v45    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .end local v46    # "$i$a$-any-LazyGridItemPlacementAnimator$onMeasured$8$inProgress$1":I
    :goto_1a
    if-eqz v4, :cond_23

    const/4 v4, 0x1

    goto :goto_1b

    .end local v44    # "element$iv":Ljava/lang/Object;
    :cond_23
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v47

    move-object/from16 v10, v48

    goto :goto_19

    .line 448
    .end local v48    # "$this$any$iv":[Ljava/lang/Object;
    .restart local v10    # "$this$any$iv":[Ljava/lang/Object;
    :cond_24
    move-object/from16 v48, v10

    .end local v10    # "$this$any$iv":[Ljava/lang/Object;
    .restart local v48    # "$this$any$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 189
    .end local v41    # "$i$f$any":I
    .end local v48    # "$this$any$iv":[Ljava/lang/Object;
    :goto_1b
    nop

    .line 188
    nop

    .line 190
    .local v4, "inProgress":Z
    if-nez v4, :cond_25

    invoke-interface {v13, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v10

    if-ne v5, v10, :cond_25

    .line 191
    iget-object v10, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v10, v3}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 193
    :cond_25
    iget v10, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->firstVisibleIndex:I

    if-ge v5, v10, :cond_26

    .line 194
    iget-object v10, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 196
    :cond_26
    iget-object v10, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    .end local v4    # "inProgress":Z
    .end local v8    # "item":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    :goto_1c
    nop

    .line 446
    .end local v3    # "key":Ljava/lang/Object;
    .end local v5    # "newIndex":I
    .end local v37    # "$i$a$-forEach-LazyGridItemPlacementAnimator$onMeasured$8":I
    .end local v42    # "itemInfo":Landroidx/compose/foundation/lazy/grid/ItemInfo;
    nop

    .line 449
    nop

    .line 445
    .end local v33    # "index$iv":I
    .end local v36    # "$i$a$-forEachIndex-ScatterSet$forEach$2$iv":I
    goto :goto_1d

    .line 442
    .end local v38    # "$i$f$forEach":I
    .end local v39    # "k$iv":[Ljava/lang/Object;
    .end local v40    # "index$iv$iv":I
    .end local v43    # "m$iv$iv":[J
    .local v4, "$i$f$forEach":I
    .local v5, "k$iv":[Ljava/lang/Object;
    .restart local v11    # "m$iv$iv":[J
    :cond_27
    move/from16 v38, v4

    move-object/from16 v39, v5

    move-object/from16 v43, v11

    .line 450
    .end local v4    # "$i$f$forEach":I
    .end local v5    # "k$iv":[Ljava/lang/Object;
    .end local v11    # "m$iv$iv":[J
    .restart local v38    # "$i$f$forEach":I
    .restart local v39    # "k$iv":[Ljava/lang/Object;
    .restart local v43    # "m$iv$iv":[J
    :goto_1d
    const/16 v3, 0x8

    shr-long v29, v29, v3

    .line 441
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v10, p8

    move/from16 v4, v38

    move-object/from16 v5, v39

    move-object/from16 v11, v43

    goto/16 :goto_16

    .end local v38    # "$i$f$forEach":I
    .end local v39    # "k$iv":[Ljava/lang/Object;
    .end local v43    # "m$iv$iv":[J
    .restart local v4    # "$i$f$forEach":I
    .restart local v5    # "k$iv":[Ljava/lang/Object;
    .restart local v11    # "m$iv$iv":[J
    :cond_28
    move/from16 v38, v4

    move-object/from16 v39, v5

    move-object/from16 v43, v11

    .line 452
    .end local v4    # "$i$f$forEach":I
    .end local v5    # "k$iv":[Ljava/lang/Object;
    .end local v7    # "j$iv$iv":I
    .end local v11    # "m$iv$iv":[J
    .restart local v38    # "$i$f$forEach":I
    .restart local v39    # "k$iv":[Ljava/lang/Object;
    .restart local v43    # "m$iv$iv":[J
    if-ne v2, v3, :cond_2c

    goto :goto_1e

    .line 438
    .end local v2    # "bitCount$iv$iv":I
    .end local v38    # "$i$f$forEach":I
    .end local v39    # "k$iv":[Ljava/lang/Object;
    .end local v43    # "m$iv$iv":[J
    .restart local v4    # "$i$f$forEach":I
    .restart local v5    # "k$iv":[Ljava/lang/Object;
    .restart local v11    # "m$iv$iv":[J
    :cond_29
    move/from16 v38, v4

    move-object/from16 v39, v5

    move-object/from16 v43, v11

    const/16 v3, 0x8

    .line 436
    .end local v4    # "$i$f$forEach":I
    .end local v5    # "k$iv":[Ljava/lang/Object;
    .end local v11    # "m$iv$iv":[J
    .end local v29    # "slot$iv$iv":J
    .restart local v38    # "$i$f$forEach":I
    .restart local v39    # "k$iv":[Ljava/lang/Object;
    .restart local v43    # "m$iv$iv":[J
    :goto_1e
    if-eq v1, v0, :cond_2b

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v10, p8

    move-object/from16 v7, v31

    move/from16 v8, v32

    move/from16 v2, v34

    move-object/from16 v3, v35

    move/from16 v4, v38

    move-object/from16 v5, v39

    move-object/from16 v11, v43

    goto/16 :goto_15

    .end local v31    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v32    # "$i$f$forEachIndex":I
    .end local v34    # "previousLineMainAxisSize":I
    .end local v35    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v38    # "$i$f$forEach":I
    .end local v39    # "k$iv":[Ljava/lang/Object;
    .end local v43    # "m$iv$iv":[J
    .local v2, "previousLineMainAxisSize":I
    .local v3, "this_$iv":Landroidx/collection/ScatterSet;
    .restart local v4    # "$i$f$forEach":I
    .restart local v5    # "k$iv":[Ljava/lang/Object;
    .local v7, "this_$iv$iv":Landroidx/collection/ScatterSet;
    .local v8, "$i$f$forEachIndex":I
    .restart local v11    # "m$iv$iv":[J
    :cond_2a
    move/from16 v34, v2

    move-object/from16 v35, v3

    move/from16 v38, v4

    move-object/from16 v39, v5

    move-object/from16 v31, v7

    move/from16 v32, v8

    move-object/from16 v43, v11

    .line 455
    .end local v1    # "i$iv$iv":I
    .end local v2    # "previousLineMainAxisSize":I
    .end local v3    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v4    # "$i$f$forEach":I
    .end local v5    # "k$iv":[Ljava/lang/Object;
    .end local v7    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v8    # "$i$f$forEachIndex":I
    .end local v11    # "m$iv$iv":[J
    .restart local v31    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .restart local v32    # "$i$f$forEachIndex":I
    .restart local v34    # "previousLineMainAxisSize":I
    .restart local v35    # "this_$iv":Landroidx/collection/ScatterSet;
    .restart local v38    # "$i$f$forEach":I
    .restart local v39    # "k$iv":[Ljava/lang/Object;
    .restart local v43    # "m$iv$iv":[J
    :cond_2b
    nop

    .line 456
    .end local v0    # "lastIndex$iv$iv":I
    .end local v31    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v32    # "$i$f$forEachIndex":I
    .end local v43    # "m$iv$iv":[J
    :cond_2c
    nop

    .line 202
    .end local v35    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v38    # "$i$f$forEach":I
    .end local v39    # "k$iv":[Ljava/lang/Object;
    const/4 v0, 0x0

    .line 203
    .end local v26    # "accumulatedOffset":I
    .local v0, "accumulatedOffset":I
    const/4 v1, -0x1

    .line 204
    .end local v28    # "previousLine":I
    .local v1, "previousLine":I
    const/4 v2, 0x0

    .line 205
    .end local v34    # "previousLineMainAxisSize":I
    .restart local v2    # "previousLineMainAxisSize":I
    iget-object v3, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    .local v3, "$this$sortByDescending$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 457
    .local v4, "$i$f$sortByDescending":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_2d

    new-instance v5, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$onMeasured$$inlined$sortByDescending$2;

    invoke-direct {v5, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$onMeasured$$inlined$sortByDescending$2;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;)V

    check-cast v5, Ljava/util/Comparator;

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 458
    :cond_2d
    nop

    .line 206
    .end local v3    # "$this$sortByDescending$iv":Ljava/util/List;
    .end local v4    # "$i$f$sortByDescending":I
    iget-object v3, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    .local v3, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 459
    .local v4, "$i$f$fastForEach":I
    nop

    .line 460
    const/4 v5, 0x0

    .local v5, "index$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    :goto_1f
    if-ge v5, v7, :cond_2f

    .line 461
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 462
    .local v8, "item$iv":Ljava/lang/Object;
    move-object v10, v8

    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .local v10, "item":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    const/4 v11, 0x0

    .line 207
    .local v11, "$i$a$-fastForEach-LazyGridItemPlacementAnimator$onMeasured$10":I
    move-object/from16 v17, v3

    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .local v17, "$this$fastForEach$iv":Ljava/util/List;
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v3

    invoke-virtual {v9, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineIndexOfItem(I)I

    move-result v3

    .line 208
    .local v3, "line":I
    move/from16 v19, v4

    const/4 v4, -0x1

    .end local v4    # "$i$f$fastForEach":I
    .local v19, "$i$f$fastForEach":I
    if-eq v3, v4, :cond_2e

    if-ne v3, v1, :cond_2e

    .line 209
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_20

    .line 211
    :cond_2e
    add-int/2addr v0, v2

    .line 212
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize()I

    move-result v2

    .line 213
    move v1, v3

    .line 215
    :goto_20
    rsub-int/lit8 v4, v0, 0x0

    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize()I

    move-result v20

    sub-int v4, v4, v20

    .line 217
    .local v4, "mainAxisOffset":I
    move/from16 v20, v0

    .end local v0    # "accumulatedOffset":I
    .local v20, "accumulatedOffset":I
    iget-object v0, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    move/from16 v21, v1

    .end local v1    # "previousLine":I
    .local v21, "previousLine":I
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroidx/compose/foundation/lazy/grid/ItemInfo;

    .line 219
    .local v0, "itemInfo":Landroidx/compose/foundation/lazy/grid/ItemInfo;
    nop

    .line 220
    nop

    .line 221
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getCrossAxisOffset()I

    move-result v30

    .line 222
    nop

    .line 223
    nop

    .line 219
    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x30

    const/16 v36, 0x0

    move-object/from16 v28, v10

    move/from16 v29, v4

    move/from16 v31, p2

    move/from16 v32, p3

    invoke-static/range {v28 .. v36}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position$default(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;IIIIIIILjava/lang/Object;)V

    .line 225
    move-object/from16 v1, p4

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-direct {v6, v10}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;)V

    .line 227
    nop

    .line 462
    .end local v0    # "itemInfo":Landroidx/compose/foundation/lazy/grid/ItemInfo;
    .end local v3    # "line":I
    .end local v4    # "mainAxisOffset":I
    .end local v10    # "item":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v11    # "$i$a$-fastForEach-LazyGridItemPlacementAnimator$onMeasured$10":I
    nop

    .line 460
    .end local v8    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v17

    move/from16 v4, v19

    move/from16 v0, v20

    move/from16 v1, v21

    goto :goto_1f

    .end local v17    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v19    # "$i$f$fastForEach":I
    .end local v20    # "accumulatedOffset":I
    .end local v21    # "previousLine":I
    .local v0, "accumulatedOffset":I
    .restart local v1    # "previousLine":I
    .local v3, "$this$fastForEach$iv":Ljava/util/List;
    .local v4, "$i$f$fastForEach":I
    :cond_2f
    move-object/from16 v17, v3

    move/from16 v19, v4

    move-object/from16 v3, p4

    .line 464
    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    .end local v5    # "index$iv":I
    .restart local v17    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v19    # "$i$f$fastForEach":I
    nop

    .line 228
    .end local v17    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v19    # "$i$f$fastForEach":I
    const/4 v0, 0x0

    .line 229
    const/4 v1, -0x1

    .line 230
    const/4 v2, 0x0

    .line 231
    iget-object v4, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    .local v4, "$this$sortBy$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 465
    .local v5, "$i$f$sortBy":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_30

    new-instance v7, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$onMeasured$$inlined$sortBy$2;

    invoke-direct {v7, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$onMeasured$$inlined$sortBy$2;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;)V

    check-cast v7, Ljava/util/Comparator;

    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 466
    :cond_30
    nop

    .line 232
    .end local v4    # "$this$sortBy$iv":Ljava/util/List;
    .end local v5    # "$i$f$sortBy":I
    iget-object v4, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    .local v4, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 467
    .local v5, "$i$f$fastForEach":I
    nop

    .line 468
    const/4 v7, 0x0

    .local v7, "index$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    :goto_21
    if-ge v7, v8, :cond_32

    .line 469
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 470
    .local v10, "item$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .local v11, "item":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    const/16 v26, 0x0

    .line 233
    .local v26, "$i$a$-fastForEach-LazyGridItemPlacementAnimator$onMeasured$12":I
    move-object/from16 v28, v4

    .end local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .local v28, "$this$fastForEach$iv":Ljava/util/List;
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v4

    invoke-virtual {v9, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineIndexOfItem(I)I

    move-result v4

    .line 234
    .local v4, "line":I
    move/from16 v29, v5

    const/4 v5, -0x1

    .end local v5    # "$i$f$fastForEach":I
    .local v29, "$i$f$fastForEach":I
    if-eq v4, v5, :cond_31

    if-ne v4, v1, :cond_31

    .line 235
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_22

    .line 237
    :cond_31
    add-int/2addr v0, v2

    .line 238
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize()I

    move-result v2

    .line 239
    move v1, v4

    .line 241
    :goto_22
    add-int v5, v14, v0

    .line 243
    .local v5, "mainAxisOffset":I
    move/from16 v30, v0

    .end local v0    # "accumulatedOffset":I
    .restart local v30    # "accumulatedOffset":I
    iget-object v0, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    move/from16 v31, v1

    .end local v1    # "previousLine":I
    .local v31, "previousLine":I
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroidx/compose/foundation/lazy/grid/ItemInfo;

    .line 244
    .local v0, "itemInfo":Landroidx/compose/foundation/lazy/grid/ItemInfo;
    nop

    .line 245
    nop

    .line 246
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getCrossAxisOffset()I

    move-result v19

    .line 247
    nop

    .line 248
    nop

    .line 244
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x30

    const/16 v25, 0x0

    move-object/from16 v17, v11

    move/from16 v18, v5

    move/from16 v20, p2

    move/from16 v21, p3

    invoke-static/range {v17 .. v25}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position$default(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;IIIIIIILjava/lang/Object;)V

    .line 251
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-direct {v6, v11}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;)V

    .line 253
    nop

    .line 470
    .end local v0    # "itemInfo":Landroidx/compose/foundation/lazy/grid/ItemInfo;
    .end local v4    # "line":I
    .end local v5    # "mainAxisOffset":I
    .end local v11    # "item":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v26    # "$i$a$-fastForEach-LazyGridItemPlacementAnimator$onMeasured$12":I
    nop

    .line 468
    .end local v10    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v28

    move/from16 v5, v29

    move/from16 v0, v30

    move/from16 v1, v31

    goto :goto_21

    .end local v28    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v29    # "$i$f$fastForEach":I
    .end local v30    # "accumulatedOffset":I
    .end local v31    # "previousLine":I
    .local v0, "accumulatedOffset":I
    .restart local v1    # "previousLine":I
    .local v4, "$this$fastForEach$iv":Ljava/util/List;
    .local v5, "$i$f$fastForEach":I
    :cond_32
    move-object/from16 v28, v4

    .line 472
    .end local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v7    # "index$iv":I
    .restart local v28    # "$this$fastForEach$iv":Ljava/util/List;
    nop

    .line 255
    .end local v5    # "$i$f$fastForEach":I
    .end local v28    # "$this$fastForEach$iv":Ljava/util/List;
    iget-object v4, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 256
    iget-object v4, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 257
    iget-object v4, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 258
    iget-object v4, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 259
    iget-object v4, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v4}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 260
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 267
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 268
    sget-object v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->Empty:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap$Empty;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 269
    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->firstVisibleIndex:I

    .line 270
    return-void
.end method
