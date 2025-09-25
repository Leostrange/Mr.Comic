.class public final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;
.super Ljava/lang/Object;
.source "LazyStaggeredGridItemPlacementAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyStaggeredGridItemPlacementAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyStaggeredGridItemPlacementAnimator.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 7 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n+ 8 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 9 ScatterSet.kt\nandroidx/collection/ScatterSet\n*L\n1#1,329:1\n101#2,2:330\n33#2,6:332\n103#2:338\n33#2,4:364\n38#2:372\n33#2,6:375\n33#2,6:383\n33#2,6:420\n33#2,6:428\n405#3,3:339\n363#3,6:342\n373#3,3:349\n376#3,2:353\n409#3,2:355\n379#3,6:357\n411#3:363\n1810#4:348\n1672#4:352\n1810#4:400\n1672#4:404\n1#5:368\n13579#6:369\n13580#6:371\n12744#6,2:408\n13579#6:434\n13580#6:437\n13579#6:438\n13580#6:440\n86#7:370\n79#7:435\n86#7:436\n79#7:439\n1011#8,2:373\n1002#8,2:381\n1011#8,2:418\n1002#8,2:426\n267#9,4:389\n237#9,7:393\n248#9,3:401\n251#9,2:405\n272#9:407\n273#9:410\n254#9,6:411\n274#9:417\n*S KotlinDebug\n*F\n+ 1 LazyStaggeredGridItemPlacementAnimator.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator\n*L\n68#1:330,2\n68#1:332,6\n68#1:338\n91#1:364,4\n91#1:372\n138#1:375,6\n148#1:383,6\n188#1:420,6\n201#1:428,6\n89#1:339,3\n89#1:342,6\n89#1:349,3\n89#1:353,2\n89#1:355,2\n89#1:357,6\n89#1:363\n89#1:348\n89#1:352\n157#1:400\n157#1:404\n117#1:369\n117#1:371\n173#1:408,2\n243#1:434\n243#1:437\n254#1:438\n254#1:440\n121#1:370\n246#1:435\n247#1:436\n261#1:439\n137#1:373,2\n147#1:381,2\n187#1:418,2\n200#1:426,2\n157#1:389,4\n157#1:393,7\n157#1:401,3\n157#1:405,2\n157#1:407\n157#1:410\n157#1:411,6\n157#1:417\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0019\u001a\u00020\u0004J\"\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001e\u001a\u00020\tH\u0002JL\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00042\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00132\u0006\u0010\'\u001a\u00020\u00042\u0006\u0010(\u001a\u00020)J\u0006\u0010*\u001a\u00020\u001bJ\u0010\u0010+\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000eH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0012\u001a\u00020\u0013*\u00020\u000e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006,"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;",
        "",
        "()V",
        "firstVisibleIndex",
        "",
        "keyIndexMap",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;",
        "keyToItemInfoMap",
        "Landroidx/collection/MutableScatterMap;",
        "Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;",
        "movingAwayKeys",
        "Landroidx/collection/MutableScatterSet;",
        "movingAwayToEndBound",
        "",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
        "movingAwayToStartBound",
        "movingInFromEndBound",
        "movingInFromStartBound",
        "hasAnimations",
        "",
        "getHasAnimations",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;)Z",
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
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;",
        "isVertical",
        "laneCount",
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
            "Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;",
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
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
            ">;"
        }
    .end annotation
.end field

.field private final movingAwayToStartBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
            ">;"
        }
    .end annotation
.end field

.field private final movingInFromEndBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
            ">;"
        }
    .end annotation
.end field

.field private final movingInFromStartBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Landroidx/collection/ScatterMapKt;->mutableScatterMapOf()Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    .line 41
    sget-object v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->Empty:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap$Empty;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 47
    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    .line 36
    return-void
.end method

.method public static final synthetic access$getKeyIndexMap$p(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;)Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;

    .line 36
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    return-object v0
.end method

.method private final getHasAnimations(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;)Z
    .locals 6
    .param p1, "$this$hasAnimations"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 278
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getPlaceablesCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    move v3, v2

    .local v3, "index":I
    const/4 v4, 0x0

    .line 279
    .local v4, "$i$a$-repeat-LazyStaggeredGridItemPlacementAnimator$hasAnimations$1":I
    invoke-virtual {p1, v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimatorKt;->access$getSpecs(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v0, v5

    .local v0, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;
    const/4 v1, 0x0

    .line 281
    .local v1, "$i$a$-let-LazyStaggeredGridItemPlacementAnimator$hasAnimations$1$1":I
    const/4 v2, 0x1

    return v2

    .line 283
    .end local v0    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;
    .end local v1    # "$i$a$-let-LazyStaggeredGridItemPlacementAnimator$hasAnimations$1$1":I
    :cond_0
    nop

    .line 278
    .end local v3    # "index":I
    .end local v4    # "$i$a$-repeat-LazyStaggeredGridItemPlacementAnimator$hasAnimations$1":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    :cond_1
    return v1
.end method

.method private final initializeAnimation(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;ILandroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;)V
    .locals 17
    .param p1, "item"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .param p2, "mainAxisOffset"    # I
    .param p3, "itemInfo"    # Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v6

    .line 236
    .local v6, "firstPlaceableOffset":J
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-wide v0, v6

    move/from16 v3, p2

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(JIIILjava/lang/Object;)J

    move-result-wide v0

    goto :goto_0

    .line 239
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-wide v0, v6

    move/from16 v2, p2

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(JIIILjava/lang/Object;)J

    move-result-wide v0

    .line 236
    :goto_0
    nop

    .line 243
    .local v0, "targetFirstPlaceableOffset":J
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v2

    .local v2, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 434
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

    .line 244
    .local v10, "$i$a$-forEach-LazyStaggeredGridItemPlacementAnimator$initializeAnimation$1":I
    if-eqz v9, :cond_1

    .line 246
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v11

    .local v11, "arg0$iv":J
    const/4 v13, 0x0

    .line 435
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

    .line 246
    .end local v11    # "arg0$iv":J
    .end local v13    # "$i$f$minus-qkQi6aY":I
    nop

    .line 245
    nop

    .line 247
    .local v11, "diffToFirstPlaceableOffset":J
    const/4 v13, 0x0

    .line 436
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

    .line 247
    .end local v13    # "$i$f$plus-qkQi6aY":I
    invoke-virtual {v9, v13, v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setRawOffset--gyyYBs(J)V

    .line 249
    .end local v11    # "diffToFirstPlaceableOffset":J
    :cond_1
    nop

    .line 434
    .end local v9    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .end local v10    # "$i$a$-forEach-LazyStaggeredGridItemPlacementAnimator$initializeAnimation$1":I
    nop

    .end local v8    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 437
    :cond_2
    nop

    .line 250
    .end local v2    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$forEach":I
    return-void
.end method

.method static synthetic initializeAnimation$default(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;ILandroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;ILjava/lang/Object;)V
    .locals 0

    .line 229
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 232
    iget-object p3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p3, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;

    .line 229
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->initializeAnimation(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;ILandroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;)V

    return-void
.end method

.method private final startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;)V
    .locals 17
    .param p1, "item"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;

    .line 254
    .local v1, "itemInfo":Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v2

    .local v2, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 438
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

    .line 255
    .local v8, "$i$a$-forEach-LazyStaggeredGridItemPlacementAnimator$startAnimationsIfNeeded$1":I
    if-eqz v7, :cond_1

    .line 256
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v9

    .line 257
    .local v9, "newTarget":J
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->getRawOffset-nOcc-ac()J

    move-result-wide v11

    .line 258
    .local v11, "currentTarget":J
    sget-object v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$Companion;

    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$Companion;->getNotInitialized-nOcc-ac()J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v13

    if-nez v13, :cond_0

    .line 259
    invoke-static {v11, v12, v9, v10}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v13

    if-nez v13, :cond_0

    .line 261
    const/4 v13, 0x0

    .line 439
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

    .line 261
    .end local v13    # "$i$f$minus-qkQi6aY":I
    invoke-virtual {v7, v13, v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->animatePlacementDelta--gyyYBs(J)V

    .line 263
    :cond_0
    invoke-virtual {v7, v9, v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setRawOffset--gyyYBs(J)V

    .line 265
    .end local v9    # "newTarget":J
    .end local v11    # "currentTarget":J
    :cond_1
    nop

    .line 438
    .end local v7    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .end local v8    # "$i$a$-forEach-LazyStaggeredGridItemPlacementAnimator$startAnimationsIfNeeded$1":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 440
    :cond_2
    nop

    .line 266
    .end local v2    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$forEach":I
    return-void
.end method


# virtual methods
.method public final getAnimation(Ljava/lang/Object;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "placeableIndex"    # I

    .line 269
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 270
    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v0

    if-eqz v0, :cond_1

    aget-object v1, v0, p2

    .line 269
    :cond_1
    :goto_0
    return-object v1
.end method

.method public final onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;ZILkotlinx/coroutines/CoroutineScope;)V
    .locals 46
    .param p1, "consumedScroll"    # I
    .param p2, "layoutWidth"    # I
    .param p3, "layoutHeight"    # I
    .param p4, "positionedItems"    # Ljava/util/List;
    .param p5, "itemProvider"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;
    .param p6, "isVertical"    # Z
    .param p7, "laneCount"    # I
    .param p8, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
            ">;",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;",
            "ZI",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    .line 68
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p4

    move/from16 v9, p7

    move-object/from16 v0, p4

    .local v0, "$this$fastAny$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 330
    .local v1, "$i$f$fastAny":I
    nop

    .line 331
    move-object v2, v0

    .local v2, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 332
    .local v3, "$i$f$fastForEach":I
    nop

    .line 333
    const/4 v4, 0x0

    .local v4, "index$iv$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    const/4 v10, 0x0

    if-ge v4, v5, :cond_1

    .line 334
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 335
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 331
    .local v14, "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    move-object v15, v13

    check-cast v15, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .local v15, "it":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    const/16 v16, 0x0

    .line 68
    .local v16, "$i$a$-fastAny-LazyStaggeredGridItemPlacementAnimator$onMeasured$1":I
    invoke-direct {v6, v15}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->getHasAnimations(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;)Z

    move-result v15

    .line 331
    .end local v15    # "it":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .end local v16    # "$i$a$-fastAny-LazyStaggeredGridItemPlacementAnimator$onMeasured$1":I
    if-eqz v15, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 335
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    :cond_0
    nop

    .line 333
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 337
    .end local v4    # "index$iv$iv":I
    :cond_1
    nop

    .line 338
    .end local v2    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    move v0, v10

    .line 68
    .end local v0    # "$this$fastAny$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastAny":I
    :goto_1
    if-nez v0, :cond_2

    iget-object v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->reset()V

    .line 71
    return-void

    .line 74
    :cond_2
    iget v12, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->firstVisibleIndex:I

    .line 75
    .local v12, "previousFirstVisibleIndex":I
    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getIndex()I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v10

    :goto_2
    iput v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->firstVisibleIndex:I

    .line 76
    iget-object v13, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 77
    .local v13, "previousKeyToIndexMap":Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v0

    iput-object v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 79
    if-eqz p6, :cond_4

    move/from16 v0, p3

    goto :goto_3

    :cond_4
    move/from16 v0, p2

    :goto_3
    move v14, v0

    .line 82
    .local v14, "mainAxisLayoutSize":I
    if-eqz p6, :cond_5

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
    iget-object v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    check-cast v0, Landroidx/collection/ScatterMap;

    .local v0, "this_$iv":Landroidx/collection/ScatterMap;
    const/4 v1, 0x0

    .line 339
    .local v1, "$i$f$forEachKey":I
    iget-object v2, v0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 341
    .local v2, "k$iv":[Ljava/lang/Object;
    move-object v3, v0

    .local v3, "this_$iv$iv":Landroidx/collection/ScatterMap;
    const/4 v4, 0x0

    .line 342
    .local v4, "$i$f$forEachIndexed":I
    iget-object v5, v3, Landroidx/collection/ScatterMap;->metadata:[J

    .line 343
    .local v5, "m$iv$iv":[J
    array-length v11, v5

    add-int/lit8 v11, v11, -0x2

    .line 345
    .local v11, "lastIndex$iv$iv":I
    const/4 v10, 0x0

    .local v10, "i$iv$iv":I
    const-wide/16 v19, 0x80

    const-wide/16 v21, 0xff

    const/16 v23, 0x7

    const-wide v24, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    move/from16 v26, v4

    .end local v4    # "$i$f$forEachIndexed":I
    .local v26, "$i$f$forEachIndexed":I
    if-gt v10, v11, :cond_a

    .line 346
    :goto_5
    aget-wide v27, v5, v10

    .line 347
    .local v27, "slot$iv$iv":J
    move-wide/from16 v29, v27

    .local v29, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v31, 0x0

    .line 348
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

    .line 347
    .end local v4    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v31    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v0, v0, v24

    if-eqz v0, :cond_9

    .line 349
    sub-int v0, v10, v11

    not-int v0, v0

    ushr-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x8

    rsub-int/lit8 v4, v0, 0x8

    .line 350
    .local v4, "bitCount$iv$iv":I
    const/4 v0, 0x0

    .local v0, "j$iv$iv":I
    :goto_6
    if-ge v0, v4, :cond_8

    .line 351
    and-long v34, v27, v21

    .local v34, "value$iv$iv$iv":J
    const/4 v1, 0x0

    .line 352
    .local v1, "$i$f$isFull":I
    cmp-long v5, v34, v19

    if-gez v5, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    .line 351
    .end local v1    # "$i$f$isFull":I
    .end local v34    # "value$iv$iv$iv":J
    :goto_7
    if-eqz v1, :cond_7

    .line 353
    shl-int/lit8 v1, v10, 0x3

    add-int/2addr v1, v0

    .line 354
    .local v1, "index$iv$iv":I
    move v5, v1

    .local v5, "index$iv":I
    const/16 v31, 0x0

    .line 355
    .local v31, "$i$a$-forEachIndexed-ScatterMap$forEachKey$1$iv":I
    move/from16 v34, v1

    .end local v1    # "index$iv$iv":I
    .local v34, "index$iv$iv":I
    aget-object v1, v2, v5

    .local v1, "it":Ljava/lang/Object;
    const/16 v35, 0x0

    .line 89
    .local v35, "$i$a$-forEachKey-LazyStaggeredGridItemPlacementAnimator$onMeasured$2":I
    move-object/from16 v36, v2

    .end local v2    # "k$iv":[Ljava/lang/Object;
    .local v36, "k$iv":[Ljava/lang/Object;
    iget-object v2, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v2, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 355
    .end local v1    # "it":Ljava/lang/Object;
    .end local v35    # "$i$a$-forEachKey-LazyStaggeredGridItemPlacementAnimator$onMeasured$2":I
    nop

    .line 356
    nop

    .line 354
    .end local v5    # "index$iv":I
    .end local v31    # "$i$a$-forEachIndexed-ScatterMap$forEachKey$1$iv":I
    goto :goto_8

    .line 351
    .end local v34    # "index$iv$iv":I
    .end local v36    # "k$iv":[Ljava/lang/Object;
    .restart local v2    # "k$iv":[Ljava/lang/Object;
    :cond_7
    move-object/from16 v36, v2

    .line 357
    .end local v2    # "k$iv":[Ljava/lang/Object;
    .restart local v36    # "k$iv":[Ljava/lang/Object;
    :goto_8
    const/16 v5, 0x8

    shr-long v27, v27, v5

    .line 350
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v36

    goto :goto_6

    .end local v36    # "k$iv":[Ljava/lang/Object;
    .restart local v2    # "k$iv":[Ljava/lang/Object;
    :cond_8
    move-object/from16 v36, v2

    const/16 v5, 0x8

    .line 359
    .end local v0    # "j$iv$iv":I
    .end local v2    # "k$iv":[Ljava/lang/Object;
    .restart local v36    # "k$iv":[Ljava/lang/Object;
    if-ne v4, v5, :cond_c

    goto :goto_9

    .line 347
    .end local v4    # "bitCount$iv$iv":I
    .end local v36    # "k$iv":[Ljava/lang/Object;
    .restart local v2    # "k$iv":[Ljava/lang/Object;
    :cond_9
    move-object/from16 v36, v2

    const/16 v5, 0x8

    .line 345
    .end local v2    # "k$iv":[Ljava/lang/Object;
    .end local v27    # "slot$iv$iv":J
    .restart local v36    # "k$iv":[Ljava/lang/Object;
    :goto_9
    if-eq v10, v11, :cond_b

    add-int/lit8 v10, v10, 0x1

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

    .line 362
    .end local v0    # "this_$iv":Landroidx/collection/ScatterMap;
    .end local v1    # "$i$f$forEachKey":I
    .end local v2    # "k$iv":[Ljava/lang/Object;
    .end local v5    # "m$iv$iv":[J
    .end local v10    # "i$iv$iv":I
    .restart local v29    # "this_$iv":Landroidx/collection/ScatterMap;
    .restart local v30    # "$i$f$forEachKey":I
    .restart local v32    # "m$iv$iv":[J
    .restart local v36    # "k$iv":[Ljava/lang/Object;
    :cond_b
    nop

    .line 363
    .end local v3    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v11    # "lastIndex$iv$iv":I
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

    .line 364
    .local v1, "$i$f$fastForEach":I
    nop

    .line 365
    const/4 v2, 0x0

    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_a
    if-ge v2, v3, :cond_15

    .line 366
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 367
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v11, v4

    check-cast v11, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .local v11, "item":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    const/16 v26, 0x0

    .line 93
    .local v26, "$i$a$-fastForEach-LazyStaggeredGridItemPlacementAnimator$onMeasured$3":I
    iget-object v5, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    .line 94
    invoke-direct {v6, v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->getHasAnimations(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 95
    iget-object v5, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;

    .line 97
    .local v5, "itemInfo":Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;
    if-nez v5, :cond_10

    .line 98
    new-instance v10, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;

    move-object/from16 v28, v0

    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .local v28, "$this$fastForEach$iv":Ljava/util/List;
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getLane()I

    move-result v0

    move/from16 v29, v1

    .end local v1    # "$i$f$fastForEach":I
    .local v29, "$i$f$fastForEach":I
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getSpan()I

    move-result v1

    move/from16 v30, v3

    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getCrossAxisOffset()I

    move-result v3

    invoke-direct {v10, v0, v1, v3}, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;-><init>(III)V

    move-object v0, v10

    .line 99
    .local v0, "newItemInfo":Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;
    move-object/from16 v10, p8

    invoke-virtual {v0, v11, v10}, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->updateAnimation(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;Lkotlinx/coroutines/CoroutineScope;)V

    .line 100
    iget-object v1, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v13, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v1

    .line 102
    .local v1, "previousIndex":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_e

    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getIndex()I

    move-result v3

    if-eq v3, v1, :cond_e

    .line 103
    if-ge v1, v12, :cond_d

    .line 105
    iget-object v3, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v32, v4

    goto/16 :goto_e

    .line 107
    :cond_d
    iget-object v3, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v32, v4

    goto/16 :goto_e

    .line 110
    :cond_e
    nop

    .line 111
    nop

    .line 112
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v31

    .line 368
    nop

    .local v31, "it":J
    const/4 v3, 0x0

    .line 112
    .local v3, "$i$a$-let-LazyStaggeredGridItemPlacementAnimator$onMeasured$3$1":I
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical()Z

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
    .end local v3    # "$i$a$-let-LazyStaggeredGridItemPlacementAnimator$onMeasured$3$1":I
    .end local v31    # "it":J
    nop

    .line 110
    invoke-direct {v6, v11, v3, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->initializeAnimation(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;ILandroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;)V

    move-object/from16 v32, v4

    .end local v0    # "newItemInfo":Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;
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
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v0

    .local v0, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 369
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
    .local v34, "$i$a$-forEach-LazyStaggeredGridItemPlacementAnimator$onMeasured$3$2":I
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

    .line 370
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

    .line 369
    .end local v0    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .end local v34    # "$i$a$-forEach-LazyStaggeredGridItemPlacementAnimator$onMeasured$3$2":I
    nop

    .end local v31    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    move/from16 v7, p1

    move-object/from16 v8, p4

    move-object/from16 v4, v32

    move-object/from16 v0, v35

    move/from16 v3, v36

    goto :goto_c

    .line 371
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
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getLane()I

    move-result v0

    invoke-virtual {v5, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->setLane(I)V

    .line 125
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getSpan()I

    move-result v0

    invoke-virtual {v5, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->setSpan(I)V

    .line 126
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getCrossAxisOffset()I

    move-result v0

    invoke-virtual {v5, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->setCrossAxisOffset(I)V

    .line 127
    invoke-direct {v6, v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;)V

    .end local v5    # "itemInfo":Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;
    goto :goto_e

    .line 131
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
    iget-object v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :goto_e
    nop

    .line 367
    .end local v11    # "item":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .end local v26    # "$i$a$-fastForEach-LazyStaggeredGridItemPlacementAnimator$onMeasured$3":I
    nop

    .line 365
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

    .line 372
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    .end local v2    # "index$iv":I
    .restart local v28    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v29    # "$i$f$fastForEach":I
    nop

    .line 135
    .end local v28    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v29    # "$i$f$fastForEach":I
    new-array v0, v9, [I

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v9, :cond_16

    const/4 v2, 0x0

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_16
    move-object v7, v0

    .line 136
    .local v7, "accumulatedOffsetPerLane":[I
    iget-object v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_19

    .line 137
    iget-object v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    .local v0, "$this$sortByDescending$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 373
    .local v2, "$i$f$sortByDescending":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_17

    new-instance v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator$onMeasured$$inlined$sortByDescending$1;

    invoke-direct {v1, v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator$onMeasured$$inlined$sortByDescending$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 374
    :cond_17
    nop

    .line 138
    .end local v0    # "$this$sortByDescending$iv":Ljava/util/List;
    .end local v2    # "$i$f$sortByDescending":I
    iget-object v8, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    .local v8, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v11, 0x0

    .line 375
    .local v11, "$i$f$fastForEach":I
    nop

    .line 376
    const/4 v0, 0x0

    .local v0, "index$iv":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    move v4, v0

    .end local v0    # "index$iv":I
    .local v4, "index$iv":I
    :goto_10
    if-ge v4, v5, :cond_18

    .line 377
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    .line 378
    .local v26, "item$iv":Ljava/lang/Object;
    move-object/from16 v3, v26

    check-cast v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .local v3, "item":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    const/16 v28, 0x0

    .line 139
    .local v28, "$i$a$-fastForEach-LazyStaggeredGridItemPlacementAnimator$onMeasured$5":I
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getLane()I

    move-result v0

    aget v1, v7, v0

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getMainAxisSize()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v7, v0

    .line 140
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getLane()I

    move-result v0

    aget v0, v7, v0

    const/4 v1, 0x0

    rsub-int/lit8 v29, v0, 0x0

    .line 141
    .local v29, "mainAxisOffset":I
    const/16 v30, 0x0

    const/16 v31, 0x4

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move/from16 v2, v29

    move-object/from16 v41, v3

    .end local v3    # "item":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .local v41, "item":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    move-object/from16 v3, v30

    move/from16 v30, v4

    .end local v4    # "index$iv":I
    .local v30, "index$iv":I
    move/from16 v4, v31

    move/from16 v31, v5

    move-object/from16 v5, v32

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->initializeAnimation$default(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;ILandroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;ILjava/lang/Object;)V

    .line 142
    move-object/from16 v0, v41

    .end local v41    # "item":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .local v0, "item":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    invoke-direct {v6, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;)V

    .line 143
    nop

    .line 378
    .end local v0    # "item":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .end local v28    # "$i$a$-fastForEach-LazyStaggeredGridItemPlacementAnimator$onMeasured$5":I
    .end local v29    # "mainAxisOffset":I
    nop

    .line 376
    .end local v26    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v30, 0x1

    move/from16 v5, v31

    .end local v30    # "index$iv":I
    .restart local v4    # "index$iv":I
    goto :goto_10

    :cond_18
    move/from16 v30, v4

    .line 380
    .end local v4    # "index$iv":I
    nop

    .line 144
    .end local v8    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v11    # "$i$f$fastForEach":I
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x6

    const/16 v39, 0x0

    move-object/from16 v34, v7

    invoke-static/range {v34 .. v39}, Lkotlin/collections/ArraysKt;->fill$default([IIIIILjava/lang/Object;)V

    .line 146
    :cond_19
    iget-object v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1c

    .line 147
    iget-object v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    .local v0, "$this$sortBy$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 381
    .local v2, "$i$f$sortBy":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_1a

    new-instance v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator$onMeasured$$inlined$sortBy$1;

    invoke-direct {v1, v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator$onMeasured$$inlined$sortBy$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 382
    :cond_1a
    nop

    .line 148
    .end local v0    # "$this$sortBy$iv":Ljava/util/List;
    .end local v2    # "$i$f$sortBy":I
    iget-object v8, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    .restart local v8    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v11, 0x0

    .line 383
    .restart local v11    # "$i$f$fastForEach":I
    nop

    .line 384
    const/4 v0, 0x0

    .local v0, "index$iv":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    move v4, v0

    .end local v0    # "index$iv":I
    .restart local v4    # "index$iv":I
    :goto_11
    if-ge v4, v5, :cond_1b

    .line 385
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    .line 386
    .restart local v26    # "item$iv":Ljava/lang/Object;
    move-object/from16 v3, v26

    check-cast v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .restart local v3    # "item":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    const/16 v28, 0x0

    .line 149
    .local v28, "$i$a$-fastForEach-LazyStaggeredGridItemPlacementAnimator$onMeasured$7":I
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getLane()I

    move-result v0

    aget v0, v7, v0

    add-int v29, v14, v0

    .line 150
    .restart local v29    # "mainAxisOffset":I
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getLane()I

    move-result v0

    aget v1, v7, v0

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getMainAxisSize()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v7, v0

    .line 151
    const/16 v30, 0x0

    const/16 v31, 0x4

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move/from16 v2, v29

    move-object/from16 v42, v3

    .end local v3    # "item":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .local v42, "item":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    move-object/from16 v3, v30

    move/from16 v30, v4

    .end local v4    # "index$iv":I
    .restart local v30    # "index$iv":I
    move/from16 v4, v31

    move/from16 v31, v5

    move-object/from16 v5, v32

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->initializeAnimation$default(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;ILandroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;ILjava/lang/Object;)V

    .line 152
    move-object/from16 v0, v42

    .end local v42    # "item":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .local v0, "item":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    invoke-direct {v6, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;)V

    .line 153
    nop

    .line 386
    .end local v0    # "item":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .end local v28    # "$i$a$-fastForEach-LazyStaggeredGridItemPlacementAnimator$onMeasured$7":I
    .end local v29    # "mainAxisOffset":I
    nop

    .line 384
    .end local v26    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v30, 0x1

    move/from16 v5, v31

    .end local v30    # "index$iv":I
    .restart local v4    # "index$iv":I
    goto :goto_11

    :cond_1b
    move/from16 v30, v4

    .line 388
    .end local v4    # "index$iv":I
    nop

    .line 154
    .end local v8    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v11    # "$i$f$fastForEach":I
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x6

    const/16 v39, 0x0

    move-object/from16 v34, v7

    invoke-static/range {v34 .. v39}, Lkotlin/collections/ArraysKt;->fill$default([IIIIILjava/lang/Object;)V

    .line 157
    :cond_1c
    iget-object v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    check-cast v0, Landroidx/collection/ScatterSet;

    .local v0, "this_$iv":Landroidx/collection/ScatterSet;
    const/4 v1, 0x0

    .line 389
    .local v1, "$i$f$forEach":I
    nop

    .line 390
    iget-object v2, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 392
    .local v2, "k$iv":[Ljava/lang/Object;
    move-object v3, v0

    .local v3, "this_$iv$iv":Landroidx/collection/ScatterSet;
    const/4 v4, 0x0

    .line 393
    .local v4, "$i$f$forEachIndex":I
    nop

    .line 394
    iget-object v5, v3, Landroidx/collection/ScatterSet;->metadata:[J

    .line 395
    .local v5, "m$iv$iv":[J
    array-length v8, v5

    add-int/lit8 v8, v8, -0x2

    .line 397
    .local v8, "lastIndex$iv$iv":I
    const/4 v11, 0x0

    .local v11, "i$iv$iv":I
    if-gt v11, v8, :cond_28

    .line 398
    :goto_12
    aget-wide v28, v5, v11

    .line 399
    .local v28, "slot$iv$iv":J
    move-wide/from16 v30, v28

    .local v30, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v26, 0x0

    .line 400
    .local v26, "$i$f$maskEmptyOrDeleted":I
    move-object/from16 v32, v0

    move/from16 v33, v1

    move-wide/from16 v0, v30

    move-object/from16 v30, v3

    move/from16 v31, v4

    .end local v1    # "$i$f$forEach":I
    .end local v3    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v4    # "$i$f$forEachIndex":I
    .local v0, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v30, "this_$iv$iv":Landroidx/collection/ScatterSet;
    .local v31, "$i$f$forEachIndex":I
    .local v32, "this_$iv":Landroidx/collection/ScatterSet;
    .local v33, "$i$f$forEach":I
    not-long v3, v0

    shl-long v3, v3, v23

    and-long/2addr v3, v0

    and-long v0, v3, v24

    .line 399
    .end local v0    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v26    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v0, v0, v24

    if-eqz v0, :cond_27

    .line 401
    sub-int v0, v11, v8

    not-int v0, v0

    ushr-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x8

    rsub-int/lit8 v4, v0, 0x8

    .line 402
    .local v4, "bitCount$iv$iv":I
    const/4 v0, 0x0

    .local v0, "j$iv$iv":I
    :goto_13
    if-ge v0, v4, :cond_26

    .line 403
    and-long v34, v28, v21

    .local v34, "value$iv$iv$iv":J
    const/4 v3, 0x0

    .line 404
    .local v3, "$i$f$isFull":I
    cmp-long v26, v34, v19

    if-gez v26, :cond_1d

    const/4 v3, 0x1

    goto :goto_14

    :cond_1d
    const/4 v3, 0x0

    .line 403
    .end local v3    # "$i$f$isFull":I
    .end local v34    # "value$iv$iv$iv":J
    :goto_14
    if-eqz v3, :cond_25

    .line 405
    shl-int/lit8 v3, v11, 0x3

    add-int/2addr v3, v0

    .line 406
    .local v3, "index$iv$iv":I
    move/from16 v26, v3

    .local v26, "index$iv":I
    const/16 v34, 0x0

    .line 407
    .local v34, "$i$a$-forEachIndex-ScatterSet$forEach$2$iv":I
    aget-object v1, v2, v26

    .local v1, "key":Ljava/lang/Object;
    const/16 v35, 0x0

    .line 160
    .local v35, "$i$a$-forEach-LazyStaggeredGridItemPlacementAnimator$onMeasured$8":I
    move-object/from16 v36, v2

    .end local v2    # "k$iv":[Ljava/lang/Object;
    .restart local v36    # "k$iv":[Ljava/lang/Object;
    iget-object v2, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v2, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;

    .line 161
    .local v2, "itemInfo":Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;
    move/from16 v37, v3

    .end local v3    # "index$iv$iv":I
    .local v37, "index$iv$iv":I
    iget-object v3, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    invoke-interface {v3, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v3

    .line 163
    .local v3, "newIndex":I
    move-object/from16 v38, v5

    const/4 v5, -0x1

    .end local v5    # "m$iv$iv":[J
    .local v38, "m$iv$iv":[J
    if-ne v3, v5, :cond_1e

    .line 164
    iget-object v5, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v5, v1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v40, v2

    goto/16 :goto_18

    .line 166
    :cond_1e
    nop

    .line 167
    nop

    .line 168
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->getLane()I

    move-result v5

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->getSpan()I

    move-result v9

    invoke-static {v5, v9}, Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;->constructor-impl(II)J

    move-result-wide v9

    .line 166
    move-object/from16 v5, p5

    invoke-virtual {v5, v3, v9, v10}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->getAndMeasure-jy6DScQ(IJ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    move-result-object v9

    .line 170
    .local v9, "item":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->setNonScrollableItem(Z)V

    .line 173
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v10

    .local v10, "$this$any$iv":[Ljava/lang/Object;
    const/16 v39, 0x0

    .line 408
    .local v39, "$i$f$any":I
    move-object/from16 v40, v2

    .end local v2    # "itemInfo":Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;
    .local v40, "itemInfo":Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;
    array-length v2, v10

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v2, :cond_22

    aget-object v41, v10, v5

    .local v41, "element$iv":Ljava/lang/Object;
    move-object/from16 v42, v41

    .local v42, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    const/16 v43, 0x0

    .line 173
    .local v43, "$i$a$-any-LazyStaggeredGridItemPlacementAnimator$onMeasured$8$inProgress$1":I
    if-eqz v42, :cond_1f

    move/from16 v44, v2

    invoke-virtual/range {v42 .. v42}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->isPlacementAnimationInProgress()Z

    move-result v2

    move-object/from16 v45, v10

    const/4 v10, 0x1

    .end local v10    # "$this$any$iv":[Ljava/lang/Object;
    .local v45, "$this$any$iv":[Ljava/lang/Object;
    if-ne v2, v10, :cond_20

    const/4 v2, 0x1

    goto :goto_16

    .end local v45    # "$this$any$iv":[Ljava/lang/Object;
    .restart local v10    # "$this$any$iv":[Ljava/lang/Object;
    :cond_1f
    move/from16 v44, v2

    move-object/from16 v45, v10

    .end local v10    # "$this$any$iv":[Ljava/lang/Object;
    .restart local v45    # "$this$any$iv":[Ljava/lang/Object;
    :cond_20
    const/4 v2, 0x0

    .line 408
    .end local v42    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .end local v43    # "$i$a$-any-LazyStaggeredGridItemPlacementAnimator$onMeasured$8$inProgress$1":I
    :goto_16
    if-eqz v2, :cond_21

    const/4 v2, 0x1

    goto :goto_17

    .end local v41    # "element$iv":Ljava/lang/Object;
    :cond_21
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v44

    move-object/from16 v10, v45

    goto :goto_15

    .line 409
    .end local v45    # "$this$any$iv":[Ljava/lang/Object;
    .restart local v10    # "$this$any$iv":[Ljava/lang/Object;
    :cond_22
    move-object/from16 v45, v10

    .end local v10    # "$this$any$iv":[Ljava/lang/Object;
    .restart local v45    # "$this$any$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 173
    .end local v39    # "$i$f$any":I
    .end local v45    # "$this$any$iv":[Ljava/lang/Object;
    :goto_17
    nop

    .line 172
    nop

    .line 174
    .local v2, "inProgress":Z
    if-nez v2, :cond_23

    invoke-interface {v13, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v5

    if-ne v3, v5, :cond_23

    .line 175
    iget-object v5, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v5, v1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 177
    :cond_23
    iget v5, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->firstVisibleIndex:I

    if-ge v3, v5, :cond_24

    .line 178
    iget-object v5, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 180
    :cond_24
    iget-object v5, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v2    # "inProgress":Z
    .end local v9    # "item":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    :goto_18
    nop

    .line 407
    .end local v1    # "key":Ljava/lang/Object;
    .end local v3    # "newIndex":I
    .end local v35    # "$i$a$-forEach-LazyStaggeredGridItemPlacementAnimator$onMeasured$8":I
    .end local v40    # "itemInfo":Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;
    nop

    .line 410
    nop

    .line 406
    .end local v26    # "index$iv":I
    .end local v34    # "$i$a$-forEachIndex-ScatterSet$forEach$2$iv":I
    goto :goto_19

    .line 403
    .end local v36    # "k$iv":[Ljava/lang/Object;
    .end local v37    # "index$iv$iv":I
    .end local v38    # "m$iv$iv":[J
    .local v2, "k$iv":[Ljava/lang/Object;
    .restart local v5    # "m$iv$iv":[J
    :cond_25
    move-object/from16 v36, v2

    move-object/from16 v38, v5

    .line 411
    .end local v2    # "k$iv":[Ljava/lang/Object;
    .end local v5    # "m$iv$iv":[J
    .restart local v36    # "k$iv":[Ljava/lang/Object;
    .restart local v38    # "m$iv$iv":[J
    :goto_19
    const/16 v1, 0x8

    shr-long v28, v28, v1

    .line 402
    add-int/lit8 v0, v0, 0x1

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v2, v36

    move-object/from16 v5, v38

    goto/16 :goto_13

    .end local v36    # "k$iv":[Ljava/lang/Object;
    .end local v38    # "m$iv$iv":[J
    .restart local v2    # "k$iv":[Ljava/lang/Object;
    .restart local v5    # "m$iv$iv":[J
    :cond_26
    move-object/from16 v36, v2

    move-object/from16 v38, v5

    .line 413
    .end local v0    # "j$iv$iv":I
    .end local v2    # "k$iv":[Ljava/lang/Object;
    .end local v5    # "m$iv$iv":[J
    .restart local v36    # "k$iv":[Ljava/lang/Object;
    .restart local v38    # "m$iv$iv":[J
    if-ne v4, v1, :cond_2a

    goto :goto_1a

    .line 399
    .end local v4    # "bitCount$iv$iv":I
    .end local v36    # "k$iv":[Ljava/lang/Object;
    .end local v38    # "m$iv$iv":[J
    .restart local v2    # "k$iv":[Ljava/lang/Object;
    .restart local v5    # "m$iv$iv":[J
    :cond_27
    move-object/from16 v36, v2

    move-object/from16 v38, v5

    const/16 v1, 0x8

    .line 397
    .end local v2    # "k$iv":[Ljava/lang/Object;
    .end local v5    # "m$iv$iv":[J
    .end local v28    # "slot$iv$iv":J
    .restart local v36    # "k$iv":[Ljava/lang/Object;
    .restart local v38    # "m$iv$iv":[J
    :goto_1a
    if-eq v11, v8, :cond_29

    add-int/lit8 v11, v11, 0x1

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v3, v30

    move/from16 v4, v31

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v36

    move-object/from16 v5, v38

    goto/16 :goto_12

    .end local v30    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v31    # "$i$f$forEachIndex":I
    .end local v32    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v33    # "$i$f$forEach":I
    .end local v36    # "k$iv":[Ljava/lang/Object;
    .end local v38    # "m$iv$iv":[J
    .local v0, "this_$iv":Landroidx/collection/ScatterSet;
    .local v1, "$i$f$forEach":I
    .restart local v2    # "k$iv":[Ljava/lang/Object;
    .local v3, "this_$iv$iv":Landroidx/collection/ScatterSet;
    .local v4, "$i$f$forEachIndex":I
    .restart local v5    # "m$iv$iv":[J
    :cond_28
    move-object/from16 v32, v0

    move/from16 v33, v1

    move-object/from16 v36, v2

    move-object/from16 v30, v3

    move/from16 v31, v4

    move-object/from16 v38, v5

    .line 416
    .end local v0    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v1    # "$i$f$forEach":I
    .end local v2    # "k$iv":[Ljava/lang/Object;
    .end local v3    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v4    # "$i$f$forEachIndex":I
    .end local v5    # "m$iv$iv":[J
    .end local v11    # "i$iv$iv":I
    .restart local v30    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .restart local v31    # "$i$f$forEachIndex":I
    .restart local v32    # "this_$iv":Landroidx/collection/ScatterSet;
    .restart local v33    # "$i$f$forEach":I
    .restart local v36    # "k$iv":[Ljava/lang/Object;
    .restart local v38    # "m$iv$iv":[J
    :cond_29
    nop

    .line 417
    .end local v8    # "lastIndex$iv$iv":I
    .end local v30    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v31    # "$i$f$forEachIndex":I
    .end local v38    # "m$iv$iv":[J
    :cond_2a
    nop

    .line 186
    .end local v32    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v33    # "$i$f$forEach":I
    .end local v36    # "k$iv":[Ljava/lang/Object;
    iget-object v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2d

    .line 187
    iget-object v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    .local v0, "$this$sortByDescending$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 418
    .local v2, "$i$f$sortByDescending":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_2b

    new-instance v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator$onMeasured$$inlined$sortByDescending$2;

    invoke-direct {v1, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator$onMeasured$$inlined$sortByDescending$2;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;)V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 419
    :cond_2b
    nop

    .line 188
    .end local v0    # "$this$sortByDescending$iv":Ljava/util/List;
    .end local v2    # "$i$f$sortByDescending":I
    iget-object v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 420
    .local v1, "$i$f$fastForEach":I
    nop

    .line 421
    const/4 v2, 0x0

    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_1b
    if-ge v2, v3, :cond_2c

    .line 422
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 423
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .local v5, "item":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    const/4 v8, 0x0

    .line 189
    .local v8, "$i$a$-fastForEach-LazyStaggeredGridItemPlacementAnimator$onMeasured$10":I
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getLane()I

    move-result v9

    aget v10, v7, v9

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getMainAxisSize()I

    move-result v11

    add-int/2addr v10, v11

    aput v10, v7, v9

    .line 190
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getLane()I

    move-result v9

    aget v9, v7, v9

    const/4 v10, 0x0

    rsub-int/lit8 v9, v9, 0x0

    .line 192
    .local v9, "mainAxisOffset":I
    iget-object v11, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v10, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;

    .line 193
    .local v10, "itemInfo":Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->getCrossAxisOffset()I

    move-result v11

    invoke-virtual {v5, v9, v11, v14}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->position(III)V

    .line 194
    move-object/from16 v11, p4

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-direct {v6, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;)V

    .line 196
    nop

    .line 423
    .end local v5    # "item":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .end local v8    # "$i$a$-fastForEach-LazyStaggeredGridItemPlacementAnimator$onMeasured$10":I
    .end local v9    # "mainAxisOffset":I
    .end local v10    # "itemInfo":Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;
    nop

    .line 421
    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2c
    move-object/from16 v11, p4

    .line 425
    .end local v2    # "index$iv":I
    nop

    .line 197
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x6

    const/16 v39, 0x0

    move-object/from16 v34, v7

    invoke-static/range {v34 .. v39}, Lkotlin/collections/ArraysKt;->fill$default([IIIIILjava/lang/Object;)V

    goto :goto_1c

    .line 186
    :cond_2d
    move-object/from16 v11, p4

    .line 199
    :goto_1c
    iget-object v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_30

    .line 200
    iget-object v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    .local v0, "$this$sortBy$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 426
    .local v2, "$i$f$sortBy":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_2e

    new-instance v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator$onMeasured$$inlined$sortBy$2;

    invoke-direct {v1, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator$onMeasured$$inlined$sortBy$2;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;)V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 427
    :cond_2e
    nop

    .line 201
    .end local v0    # "$this$sortBy$iv":Ljava/util/List;
    .end local v2    # "$i$f$sortBy":I
    iget-object v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 428
    .restart local v1    # "$i$f$fastForEach":I
    nop

    .line 429
    const/4 v2, 0x0

    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_1d
    if-ge v2, v3, :cond_2f

    .line 430
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 431
    .restart local v4    # "item$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .restart local v5    # "item":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    const/4 v8, 0x0

    .line 202
    .local v8, "$i$a$-fastForEach-LazyStaggeredGridItemPlacementAnimator$onMeasured$12":I
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getLane()I

    move-result v9

    aget v9, v7, v9

    add-int/2addr v9, v14

    .line 203
    .restart local v9    # "mainAxisOffset":I
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getLane()I

    move-result v10

    aget v17, v7, v10

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getMainAxisSize()I

    move-result v18

    add-int v17, v17, v18

    aput v17, v7, v10

    .line 205
    iget-object v10, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    move-object/from16 v17, v0

    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .local v17, "$this$fastForEach$iv":Ljava/util/List;
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;

    .line 206
    .local v0, "itemInfo":Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->getCrossAxisOffset()I

    move-result v10

    invoke-virtual {v5, v9, v10, v14}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->position(III)V

    .line 207
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-direct {v6, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;)V

    .line 209
    nop

    .line 431
    .end local v0    # "itemInfo":Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;
    .end local v5    # "item":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .end local v8    # "$i$a$-fastForEach-LazyStaggeredGridItemPlacementAnimator$onMeasured$12":I
    .end local v9    # "mainAxisOffset":I
    nop

    .line 429
    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v17

    goto :goto_1d

    .end local v17    # "$this$fastForEach$iv":Ljava/util/List;
    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    :cond_2f
    move-object/from16 v17, v0

    .line 433
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "index$iv":I
    .restart local v17    # "$this$fastForEach$iv":Ljava/util/List;
    nop

    .line 212
    .end local v1    # "$i$f$fastForEach":I
    .end local v17    # "$this$fastForEach$iv":Ljava/util/List;
    :cond_30
    iget-object v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    iget-object v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 214
    iget-object v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 215
    iget-object v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 216
    iget-object v0, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 217
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 224
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 225
    sget-object v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->Empty:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap$Empty;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 226
    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->firstVisibleIndex:I

    .line 227
    return-void
.end method
