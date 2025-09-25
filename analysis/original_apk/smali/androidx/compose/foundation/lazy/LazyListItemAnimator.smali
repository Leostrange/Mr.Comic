.class public final Landroidx/compose/foundation/lazy/LazyListItemAnimator;
.super Ljava/lang/Object;
.source "LazyListItemAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListItemAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListItemAnimator.kt\nandroidx/compose/foundation/lazy/LazyListItemAnimator\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,331:1\n101#2,2:332\n33#2,6:334\n103#2:340\n33#2,4:341\n38#2:351\n33#2,6:354\n33#2,6:362\n33#2,6:374\n33#2,6:382\n1#3:345\n13579#4,2:346\n13579#4:348\n13580#4:350\n12744#4,2:369\n13644#4,2:388\n13646#4:392\n13644#4,2:393\n13646#4:396\n86#5:349\n79#5:390\n86#5:391\n79#5:395\n1011#6,2:352\n1002#6,2:360\n1855#6:368\n1856#6:371\n1011#6,2:372\n1002#6,2:380\n*S KotlinDebug\n*F\n+ 1 LazyListItemAnimator.kt\nandroidx/compose/foundation/lazy/LazyListItemAnimator\n*L\n72#1:332,2\n72#1:334,6\n72#1:340\n97#1:341,4\n97#1:351\n149#1:354,6\n157#1:362,6\n193#1:374,6\n208#1:382,6\n122#1:346,2\n130#1:348\n130#1:350\n178#1:369,2\n257#1:388,2\n257#1:392\n268#1:393,2\n268#1:396\n134#1:349\n260#1:390\n261#1:391\n275#1:395\n148#1:352,2\n156#1:360,2\n165#1:368\n165#1:371\n192#1:372,2\n207#1:380,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001:\u0001.B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u0004J\"\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001f\u001a\u00020\tH\u0002JT\u0010 \u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u00042\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u00142\u0006\u0010(\u001a\u00020\u00142\u0006\u0010)\u001a\u00020\u00142\u0006\u0010*\u001a\u00020+J\u0006\u0010,\u001a\u00020\u001cJ\u0010\u0010-\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u00010\u000bj\u0008\u0012\u0004\u0012\u00020\u0001`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0013\u001a\u00020\u0014*\u00020\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006/"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/LazyListItemAnimator;",
        "",
        "()V",
        "firstVisibleIndex",
        "",
        "keyIndexMap",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;",
        "keyToItemInfoMap",
        "",
        "Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;",
        "movingAwayKeys",
        "Ljava/util/LinkedHashSet;",
        "Lkotlin/collections/LinkedHashSet;",
        "movingAwayToEndBound",
        "",
        "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
        "movingAwayToStartBound",
        "movingInFromEndBound",
        "movingInFromStartBound",
        "hasAnimations",
        "",
        "getHasAnimations",
        "(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)Z",
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
        "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
        "isVertical",
        "isLookingAhead",
        "hasLookaheadOccurred",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "reset",
        "startPlacementAnimationsIfNeeded",
        "ItemInfo",
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

.field private final keyToItemInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final movingAwayKeys:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final movingAwayToEndBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation
.end field

.field private final movingAwayToStartBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation
.end field

.field private final movingInFromEndBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation
.end field

.field private final movingInFromStartBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    .line 35
    return-void
.end method

.method private final getHasAnimations(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)Z
    .locals 6
    .param p1, "$this$hasAnimations"    # Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 287
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getPlaceablesCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    move v3, v2

    .local v3, "index":I
    const/4 v4, 0x0

    .line 288
    .local v4, "$i$a$-repeat-LazyListItemAnimator$hasAnimations$1":I
    invoke-virtual {p1, v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/foundation/lazy/LazyListItemAnimatorKt;->access$getSpecs(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v0, v5

    .local v0, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;
    const/4 v1, 0x0

    .line 290
    .local v1, "$i$a$-let-LazyListItemAnimator$hasAnimations$1$1":I
    const/4 v2, 0x1

    return v2

    .line 292
    .end local v0    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;
    .end local v1    # "$i$a$-let-LazyListItemAnimator$hasAnimations$1$1":I
    :cond_0
    nop

    .line 287
    .end local v3    # "index":I
    .end local v4    # "$i$a$-repeat-LazyListItemAnimator$hasAnimations$1":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    :cond_1
    return v1
.end method

.method private final initializeAnimation(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;ILandroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;)V
    .locals 20
    .param p1, "item"    # Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .param p2, "mainAxisOffset"    # I
    .param p3, "itemInfo"    # Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;

    .line 248
    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v8

    .line 250
    .local v8, "firstPlaceableOffset":J
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-wide v2, v8

    move/from16 v5, p2

    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(JIIILjava/lang/Object;)J

    move-result-wide v2

    goto :goto_0

    .line 253
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-wide v2, v8

    move/from16 v4, p2

    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(JIIILjava/lang/Object;)J

    move-result-wide v2

    .line 250
    :goto_0
    nop

    .line 257
    .local v2, "targetFirstPlaceableOffset":J
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v4

    .local v4, "$this$forEachIndexed$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 388
    .local v5, "$i$f$forEachIndexed":I
    const/4 v6, 0x0

    .line 389
    .local v6, "index$iv":I
    array-length v7, v4

    :goto_1
    if-ge v1, v7, :cond_2

    aget-object v10, v4, v1

    .local v10, "item$iv":Ljava/lang/Object;
    add-int/lit8 v11, v6, 0x1

    .local v6, "placeableIndex":I
    .local v11, "index$iv":I
    move-object v12, v10

    .local v12, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    const/4 v13, 0x0

    .line 258
    .local v13, "$i$a$-forEachIndexed-LazyListItemAnimator$initializeAnimation$1":I
    if-eqz v12, :cond_1

    .line 260
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v14

    .local v14, "arg0$iv":J
    const/16 v16, 0x0

    .line 390
    .local v16, "$i$f$minus-qkQi6aY":I
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v17

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v18

    sub-int v0, v17, v18

    invoke-static {v14, v15}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v17

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v18

    move-object/from16 v19, v4

    .end local v4    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .local v19, "$this$forEachIndexed$iv":[Ljava/lang/Object;
    sub-int v4, v17, v18

    invoke-static {v0, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v14

    .line 260
    .end local v14    # "arg0$iv":J
    .end local v16    # "$i$f$minus-qkQi6aY":I
    nop

    .line 259
    nop

    .line 261
    .local v14, "diffToFirstPlaceableOffset":J
    const/4 v0, 0x0

    .line 391
    .local v0, "$i$f$plus-qkQi6aY":I
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    invoke-static {v14, v15}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v16

    add-int v4, v4, v16

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v16

    invoke-static {v14, v15}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v17

    move/from16 v18, v0

    .end local v0    # "$i$f$plus-qkQi6aY":I
    .local v18, "$i$f$plus-qkQi6aY":I
    add-int v0, v16, v17

    move-wide/from16 v16, v2

    .end local v2    # "targetFirstPlaceableOffset":J
    .local v16, "targetFirstPlaceableOffset":J
    invoke-static {v4, v0}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v2

    .line 261
    .end local v18    # "$i$f$plus-qkQi6aY":I
    invoke-virtual {v12, v2, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setRawOffset--gyyYBs(J)V

    goto :goto_2

    .line 258
    .end local v14    # "diffToFirstPlaceableOffset":J
    .end local v16    # "targetFirstPlaceableOffset":J
    .end local v19    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .restart local v2    # "targetFirstPlaceableOffset":J
    .restart local v4    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    :cond_1
    move-wide/from16 v16, v2

    move-object/from16 v19, v4

    .line 263
    .end local v2    # "targetFirstPlaceableOffset":J
    .end local v4    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .restart local v16    # "targetFirstPlaceableOffset":J
    .restart local v19    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    :goto_2
    nop

    .line 389
    .end local v6    # "placeableIndex":I
    .end local v12    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .end local v13    # "$i$a$-forEachIndexed-LazyListItemAnimator$initializeAnimation$1":I
    nop

    .end local v10    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p1

    move v6, v11

    move-wide/from16 v2, v16

    move-object/from16 v4, v19

    goto :goto_1

    .line 392
    .end local v11    # "index$iv":I
    .end local v16    # "targetFirstPlaceableOffset":J
    .end local v19    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .restart local v2    # "targetFirstPlaceableOffset":J
    .restart local v4    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .local v6, "index$iv":I
    :cond_2
    nop

    .line 264
    .end local v4    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$forEachIndexed":I
    .end local v6    # "index$iv":I
    return-void
.end method

.method static synthetic initializeAnimation$default(Landroidx/compose/foundation/lazy/LazyListItemAnimator;Landroidx/compose/foundation/lazy/LazyListMeasuredItem;ILandroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;ILjava/lang/Object;)V
    .locals 0

    .line 243
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 246
    iget-object p3, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object p4

    invoke-static {p3, p4}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;

    .line 243
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->initializeAnimation(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;ILandroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;)V

    return-void
.end method

.method private final startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)V
    .locals 20
    .param p1, "item"    # Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 267
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;

    .line 268
    .local v1, "itemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v2

    .local v2, "$this$forEachIndexed$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 393
    .local v3, "$i$f$forEachIndexed":I
    const/4 v4, 0x0

    .line 394
    .local v4, "index$iv":I
    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v2, v6

    .local v7, "item$iv":Ljava/lang/Object;
    add-int/lit8 v8, v4, 0x1

    .local v4, "placeableIndex":I
    .local v8, "index$iv":I
    move-object v9, v7

    .local v9, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    const/4 v10, 0x0

    .line 269
    .local v10, "$i$a$-forEachIndexed-LazyListItemAnimator$startPlacementAnimationsIfNeeded$1":I
    if-eqz v9, :cond_1

    .line 270
    move-object/from16 v11, p1

    invoke-virtual {v11, v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v12

    .line 271
    .local v12, "newTarget":J
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->getRawOffset-nOcc-ac()J

    move-result-wide v14

    .line 272
    .local v14, "currentTarget":J
    sget-object v16, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$Companion;

    move-object/from16 v17, v1

    .end local v1    # "itemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    .local v17, "itemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$Companion;->getNotInitialized-nOcc-ac()J

    move-result-wide v0

    invoke-static {v14, v15, v0, v1}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-static {v14, v15, v12, v13}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    const/4 v0, 0x0

    .line 395
    .local v0, "$i$f$minus-qkQi6aY":I
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v1

    invoke-static {v14, v15}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v16

    sub-int v1, v1, v16

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v16

    invoke-static {v14, v15}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v18

    move/from16 v19, v0

    .end local v0    # "$i$f$minus-qkQi6aY":I
    .local v19, "$i$f$minus-qkQi6aY":I
    sub-int v0, v16, v18

    invoke-static {v1, v0}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v0

    .line 275
    .end local v19    # "$i$f$minus-qkQi6aY":I
    invoke-virtual {v9, v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->animatePlacementDelta--gyyYBs(J)V

    .line 277
    :cond_0
    invoke-virtual {v9, v12, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setRawOffset--gyyYBs(J)V

    goto :goto_1

    .line 269
    .end local v12    # "newTarget":J
    .end local v14    # "currentTarget":J
    .end local v17    # "itemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    .restart local v1    # "itemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    :cond_1
    move-object/from16 v11, p1

    move-object/from16 v17, v1

    .line 279
    .end local v1    # "itemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    .restart local v17    # "itemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    :goto_1
    nop

    .line 394
    .end local v4    # "placeableIndex":I
    .end local v9    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .end local v10    # "$i$a$-forEachIndexed-LazyListItemAnimator$startPlacementAnimationsIfNeeded$1":I
    nop

    .end local v7    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move v4, v8

    move-object/from16 v1, v17

    goto :goto_0

    .line 396
    .end local v8    # "index$iv":I
    .end local v17    # "itemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    .restart local v1    # "itemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    .local v4, "index$iv":I
    :cond_2
    nop

    .line 280
    .end local v2    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$forEachIndexed":I
    .end local v4    # "index$iv":I
    return-void
.end method


# virtual methods
.method public final getAnimation(Ljava/lang/Object;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "placeableIndex"    # I

    .line 283
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    aget-object v0, v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;ZZZLkotlinx/coroutines/CoroutineScope;)V
    .locals 38
    .param p1, "consumedScroll"    # I
    .param p2, "layoutWidth"    # I
    .param p3, "layoutHeight"    # I
    .param p4, "positionedItems"    # Ljava/util/List;
    .param p5, "itemProvider"    # Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;
    .param p6, "isVertical"    # Z
    .param p7, "isLookingAhead"    # Z
    .param p8, "hasLookaheadOccurred"    # Z
    .param p9, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
            "ZZZ",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    .line 68
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p9

    iget-object v12, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 69
    .local v12, "previousKeyToIndexMap":Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v13

    .line 70
    .local v13, "keyIndexMap":Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;
    iput-object v13, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 72
    move-object/from16 v0, p4

    .local v0, "$this$fastAny$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 332
    .local v1, "$i$f$fastAny":I
    nop

    .line 333
    move-object v2, v0

    .local v2, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 334
    .local v3, "$i$f$fastForEach":I
    nop

    .line 335
    const/4 v4, 0x0

    .local v4, "index$iv$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    const/4 v14, 0x0

    if-ge v4, v5, :cond_1

    .line 336
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 337
    .local v16, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    .local v17, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 333
    .local v18, "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    move-object/from16 v15, v17

    check-cast v15, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .local v15, "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/16 v20, 0x0

    .line 72
    .local v20, "$i$a$-fastAny-LazyListItemAnimator$onMeasured$hasAnimations$1":I
    invoke-direct {v6, v15}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->getHasAnimations(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)Z

    move-result v15

    .line 333
    .end local v15    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v20    # "$i$a$-fastAny-LazyListItemAnimator$onMeasured$hasAnimations$1":I
    if-eqz v15, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 337
    .end local v17    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    :cond_0
    nop

    .line 335
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 339
    .end local v4    # "index$iv$iv":I
    :cond_1
    nop

    .line 340
    .end local v2    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    move v0, v14

    .line 72
    .end local v0    # "$this$fastAny$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastAny":I
    :goto_1
    move v15, v0

    .line 73
    .local v15, "hasAnimations":Z
    if-nez v15, :cond_2

    iget-object v0, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->reset()V

    .line 76
    return-void

    .line 79
    :cond_2
    iget v5, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->firstVisibleIndex:I

    .line 80
    .local v5, "previousFirstVisibleIndex":I
    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v14

    :goto_2
    iput v0, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->firstVisibleIndex:I

    .line 82
    if-eqz p6, :cond_4

    move v0, v9

    goto :goto_3

    :cond_4
    move v0, v8

    :goto_3
    move/from16 v16, v0

    .line 85
    .local v16, "mainAxisLayoutSize":I
    if-eqz p6, :cond_5

    .line 86
    invoke-static {v14, v7}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v0

    goto :goto_4

    .line 88
    :cond_5
    invoke-static {v7, v14}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v0

    .line 85
    :goto_4
    move-wide/from16 v17, v0

    .line 93
    .local v17, "scrollOffset":J
    if-nez p7, :cond_7

    if-nez p8, :cond_6

    goto :goto_5

    :cond_6
    move v0, v14

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v0, 0x1

    :goto_6
    move/from16 v20, v0

    .line 95
    .local v20, "shouldSetupAnimation":Z
    iget-object v0, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    iget-object v1, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 97
    move-object/from16 v0, p4

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 341
    .local v1, "$i$f$fastForEach":I
    nop

    .line 342
    const/4 v2, 0x0

    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_7
    if-ge v2, v3, :cond_15

    .line 343
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    .line 344
    .local v21, "item$iv":Ljava/lang/Object;
    move-object/from16 v14, v21

    check-cast v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .local v14, "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/16 v22, 0x0

    .line 99
    .local v22, "$i$a$-fastForEach-LazyListItemAnimator$onMeasured$1":I
    iget-object v4, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    move-object/from16 v24, v0

    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .local v24, "$this$fastForEach$iv":Ljava/util/List;
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 100
    invoke-direct {v6, v14}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->getHasAnimations(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 101
    iget-object v0, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;

    .line 103
    .local v0, "itemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    if-nez v0, :cond_f

    .line 104
    new-instance v4, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;

    invoke-direct {v4}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;-><init>()V

    .line 105
    .local v4, "newItemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    invoke-virtual {v4, v14, v11}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->updateAnimation(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;Lkotlinx/coroutines/CoroutineScope;)V

    .line 106
    move/from16 v25, v1

    .end local v1    # "$i$f$fastForEach":I
    .local v25, "$i$f$fastForEach":I
    iget-object v1, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    move/from16 v26, v3

    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    if-eqz v12, :cond_8

    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v12, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, -0x1

    .line 108
    .local v1, "previousIndex":I
    :goto_8
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v3

    if-eq v3, v1, :cond_a

    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    .line 109
    if-ge v1, v5, :cond_9

    .line 111
    iget-object v3, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingInFromStartBound:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 113
    :cond_9
    iget-object v3, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingInFromEndBound:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 116
    :cond_a
    nop

    .line 117
    nop

    .line 118
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v27

    .line 345
    nop

    .local v27, "it":J
    const/4 v3, 0x0

    .line 118
    .local v3, "$i$a$-let-LazyListItemAnimator$onMeasured$1$1":I
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical()Z

    move-result v29

    if-eqz v29, :cond_b

    invoke-static/range {v27 .. v28}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v29

    goto :goto_9

    :cond_b
    invoke-static/range {v27 .. v28}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v29

    :goto_9
    move/from16 v3, v29

    .line 119
    .end local v3    # "$i$a$-let-LazyListItemAnimator$onMeasured$1$1":I
    .end local v27    # "it":J
    nop

    .line 116
    invoke-direct {v6, v14, v3, v4}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->initializeAnimation(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;ILandroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;)V

    .line 121
    const/4 v3, -0x1

    if-ne v1, v3, :cond_e

    if-eqz v12, :cond_e

    .line 122
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v3

    .local v3, "$this$forEach$iv":[Ljava/lang/Object;
    const/16 v23, 0x0

    .line 346
    .local v23, "$i$f$forEach":I
    move/from16 v27, v1

    .end local v1    # "previousIndex":I
    .local v27, "previousIndex":I
    array-length v1, v3

    move-object/from16 v28, v4

    const/4 v4, 0x0

    .end local v4    # "newItemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    .local v28, "newItemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    :goto_a
    if-ge v4, v1, :cond_d

    aget-object v29, v3, v4

    .local v29, "element$iv":Ljava/lang/Object;
    move-object/from16 v30, v29

    .local v30, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    const/16 v31, 0x0

    .line 123
    .local v31, "$i$a$-forEach-LazyListItemAnimator$onMeasured$1$2":I
    if-eqz v30, :cond_c

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->animateAppearance()V

    .line 124
    :cond_c
    nop

    .line 346
    .end local v30    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .end local v31    # "$i$a$-forEach-LazyListItemAnimator$onMeasured$1$2":I
    nop

    .end local v29    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 347
    :cond_d
    nop

    .end local v3    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v23    # "$i$f$forEach":I
    .end local v27    # "previousIndex":I
    .end local v28    # "newItemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    goto/16 :goto_d

    .line 121
    .restart local v1    # "previousIndex":I
    .restart local v4    # "newItemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    :cond_e
    move/from16 v27, v1

    move-object/from16 v28, v4

    .end local v1    # "previousIndex":I
    .end local v4    # "newItemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    .restart local v27    # "previousIndex":I
    .restart local v28    # "newItemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    goto/16 :goto_d

    .line 128
    .end local v25    # "$i$f$fastForEach":I
    .end local v27    # "previousIndex":I
    .end local v28    # "newItemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    .local v1, "$i$f$fastForEach":I
    :cond_f
    move/from16 v25, v1

    move/from16 v26, v3

    .end local v1    # "$i$f$fastForEach":I
    .restart local v25    # "$i$f$fastForEach":I
    if-eqz v20, :cond_13

    .line 129
    invoke-virtual {v0, v14, v11}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->updateAnimation(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;Lkotlinx/coroutines/CoroutineScope;)V

    .line 130
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v1

    .local v1, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 348
    .local v3, "$i$f$forEach":I
    array-length v4, v1

    move-object/from16 v23, v0

    const/4 v0, 0x0

    .end local v0    # "itemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    .local v23, "itemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    :goto_b
    if-ge v0, v4, :cond_12

    aget-object v27, v1, v0

    .local v27, "element$iv":Ljava/lang/Object;
    move-object/from16 v28, v27

    .local v28, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    const/16 v29, 0x0

    .line 131
    .local v29, "$i$a$-forEach-LazyListItemAnimator$onMeasured$1$3":I
    move-object/from16 v30, v1

    move-object/from16 v1, v28

    .end local v28    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .local v1, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .local v30, "$this$forEach$iv":[Ljava/lang/Object;
    if-eqz v1, :cond_10

    .line 132
    move/from16 v28, v3

    move/from16 v31, v4

    .end local v3    # "$i$f$forEach":I
    .local v28, "$i$f$forEach":I
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->getRawOffset-nOcc-ac()J

    move-result-wide v3

    sget-object v32, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$Companion;

    invoke-virtual/range {v32 .. v32}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$Companion;->getNotInitialized-nOcc-ac()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v3

    if-nez v3, :cond_11

    .line 134
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->getRawOffset-nOcc-ac()J

    move-result-wide v3

    .local v3, "arg0$iv":J
    const/4 v10, 0x0

    .line 349
    .local v10, "$i$f$plus-qkQi6aY":I
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v11

    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v32

    add-int v11, v11, v32

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v32

    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v33

    move-wide/from16 v34, v3

    .end local v3    # "arg0$iv":J
    .local v34, "arg0$iv":J
    add-int v3, v32, v33

    invoke-static {v11, v3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v3

    .line 134
    .end local v10    # "$i$f$plus-qkQi6aY":I
    .end local v34    # "arg0$iv":J
    invoke-virtual {v1, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setRawOffset--gyyYBs(J)V

    goto :goto_c

    .line 131
    .end local v28    # "$i$f$forEach":I
    .local v3, "$i$f$forEach":I
    :cond_10
    move/from16 v28, v3

    move/from16 v31, v4

    .line 136
    .end local v3    # "$i$f$forEach":I
    .restart local v28    # "$i$f$forEach":I
    :cond_11
    :goto_c
    nop

    .line 348
    .end local v1    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .end local v29    # "$i$a$-forEach-LazyListItemAnimator$onMeasured$1$3":I
    nop

    .end local v27    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v10, p4

    move-object/from16 v11, p9

    move/from16 v3, v28

    move-object/from16 v1, v30

    move/from16 v4, v31

    goto :goto_b

    .line 350
    .end local v28    # "$i$f$forEach":I
    .end local v30    # "$this$forEach$iv":[Ljava/lang/Object;
    .local v1, "$this$forEach$iv":[Ljava/lang/Object;
    .restart local v3    # "$i$f$forEach":I
    :cond_12
    move-object/from16 v30, v1

    move/from16 v28, v3

    .line 137
    .end local v1    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$forEach":I
    invoke-direct {v6, v14}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)V

    .end local v23    # "itemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    goto :goto_d

    .line 128
    .restart local v0    # "itemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    :cond_13
    move-object/from16 v23, v0

    .end local v0    # "itemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    .restart local v23    # "itemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    goto :goto_d

    .line 142
    .end local v23    # "itemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    .end local v25    # "$i$f$fastForEach":I
    .local v1, "$i$f$fastForEach":I
    :cond_14
    move/from16 v25, v1

    move/from16 v26, v3

    .end local v1    # "$i$f$fastForEach":I
    .restart local v25    # "$i$f$fastForEach":I
    iget-object v0, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :goto_d
    nop

    .line 344
    .end local v14    # "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v22    # "$i$a$-fastForEach-LazyListItemAnimator$onMeasured$1":I
    nop

    .line 342
    .end local v21    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v10, p4

    move-object/from16 v11, p9

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v3, v26

    const/4 v14, 0x0

    goto/16 :goto_7

    .end local v24    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v25    # "$i$f$fastForEach":I
    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    .restart local v1    # "$i$f$fastForEach":I
    :cond_15
    move-object/from16 v24, v0

    move/from16 v25, v1

    const/4 v3, -0x1

    .line 351
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    .end local v2    # "index$iv":I
    .restart local v24    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v25    # "$i$f$fastForEach":I
    nop

    .line 146
    .end local v24    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v25    # "$i$f$fastForEach":I
    const/4 v0, 0x0

    .line 147
    .local v0, "accumulatedOffset":I
    if-eqz v20, :cond_1a

    if-eqz v12, :cond_1a

    .line 148
    iget-object v1, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingInFromStartBound:Ljava/util/List;

    .local v1, "$this$sortByDescending$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 352
    .local v2, "$i$f$sortByDescending":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v10, 0x1

    if-le v4, v10, :cond_16

    new-instance v4, Landroidx/compose/foundation/lazy/LazyListItemAnimator$onMeasured$$inlined$sortByDescending$1;

    invoke-direct {v4, v12}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$onMeasured$$inlined$sortByDescending$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    check-cast v4, Ljava/util/Comparator;

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 353
    :cond_16
    nop

    .line 149
    .end local v1    # "$this$sortByDescending$iv":Ljava/util/List;
    .end local v2    # "$i$f$sortByDescending":I
    iget-object v10, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingInFromStartBound:Ljava/util/List;

    .local v10, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v11, 0x0

    .line 354
    .local v11, "$i$f$fastForEach":I
    nop

    .line 355
    const/4 v1, 0x0

    .local v1, "index$iv":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    move v4, v1

    .end local v1    # "index$iv":I
    .local v4, "index$iv":I
    :goto_e
    if-ge v4, v14, :cond_17

    .line 356
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    .line 357
    .restart local v21    # "item$iv":Ljava/lang/Object;
    move-object/from16 v2, v21

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .local v2, "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/16 v22, 0x0

    .line 150
    .local v22, "$i$a$-fastForEach-LazyListItemAnimator$onMeasured$3":I
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v1

    add-int v23, v0, v1

    .line 151
    .end local v0    # "accumulatedOffset":I
    .local v23, "accumulatedOffset":I
    rsub-int/lit8 v24, v23, 0x0

    .line 152
    .local v24, "mainAxisOffset":I
    const/16 v25, 0x0

    const/16 v26, 0x4

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v36, v2

    .end local v2    # "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .local v36, "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    move/from16 v2, v24

    move/from16 v28, v3

    move-object/from16 v3, v25

    move/from16 v25, v4

    .end local v4    # "index$iv":I
    .local v25, "index$iv":I
    move/from16 v4, v26

    move/from16 v26, v5

    .end local v5    # "previousFirstVisibleIndex":I
    .local v26, "previousFirstVisibleIndex":I
    move-object/from16 v5, v27

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->initializeAnimation$default(Landroidx/compose/foundation/lazy/LazyListItemAnimator;Landroidx/compose/foundation/lazy/LazyListMeasuredItem;ILandroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;ILjava/lang/Object;)V

    .line 153
    move-object/from16 v0, v36

    .end local v36    # "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .local v0, "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    invoke-direct {v6, v0}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)V

    .line 154
    nop

    .line 357
    .end local v0    # "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v22    # "$i$a$-fastForEach-LazyListItemAnimator$onMeasured$3":I
    .end local v24    # "mainAxisOffset":I
    nop

    .line 355
    .end local v21    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v25, 0x1

    move/from16 v0, v23

    move/from16 v5, v26

    const/4 v3, -0x1

    .end local v25    # "index$iv":I
    .restart local v4    # "index$iv":I
    goto :goto_e

    .end local v23    # "accumulatedOffset":I
    .end local v26    # "previousFirstVisibleIndex":I
    .local v0, "accumulatedOffset":I
    .restart local v5    # "previousFirstVisibleIndex":I
    :cond_17
    move/from16 v25, v4

    move/from16 v26, v5

    .line 359
    .end local v4    # "index$iv":I
    .end local v5    # "previousFirstVisibleIndex":I
    .restart local v26    # "previousFirstVisibleIndex":I
    nop

    .line 155
    .end local v10    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v11    # "$i$f$fastForEach":I
    const/4 v0, 0x0

    .line 156
    iget-object v1, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingInFromEndBound:Ljava/util/List;

    .local v1, "$this$sortBy$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 360
    .local v2, "$i$f$sortBy":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_18

    new-instance v3, Landroidx/compose/foundation/lazy/LazyListItemAnimator$onMeasured$$inlined$sortBy$1;

    invoke-direct {v3, v12}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$onMeasured$$inlined$sortBy$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 361
    :cond_18
    nop

    .line 157
    .end local v1    # "$this$sortBy$iv":Ljava/util/List;
    .end local v2    # "$i$f$sortBy":I
    iget-object v10, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingInFromEndBound:Ljava/util/List;

    .restart local v10    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v11, 0x0

    .line 362
    .restart local v11    # "$i$f$fastForEach":I
    nop

    .line 363
    const/4 v1, 0x0

    .local v1, "index$iv":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    move v5, v1

    .end local v1    # "index$iv":I
    .local v5, "index$iv":I
    :goto_f
    if-ge v5, v14, :cond_19

    .line 364
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    .line 365
    .restart local v21    # "item$iv":Ljava/lang/Object;
    move-object/from16 v4, v21

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .local v4, "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/16 v22, 0x0

    .line 158
    .local v22, "$i$a$-fastForEach-LazyListItemAnimator$onMeasured$5":I
    add-int v23, v16, v0

    .line 159
    .local v23, "mainAxisOffset":I
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v1

    add-int v24, v0, v1

    .line 160
    .end local v0    # "accumulatedOffset":I
    .local v24, "accumulatedOffset":I
    const/4 v3, 0x0

    const/16 v25, 0x4

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, v23

    move-object/from16 v37, v4

    .end local v4    # "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .local v37, "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    move/from16 v4, v25

    move/from16 v25, v5

    .end local v5    # "index$iv":I
    .restart local v25    # "index$iv":I
    move-object/from16 v5, v27

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->initializeAnimation$default(Landroidx/compose/foundation/lazy/LazyListItemAnimator;Landroidx/compose/foundation/lazy/LazyListMeasuredItem;ILandroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;ILjava/lang/Object;)V

    .line 161
    move-object/from16 v0, v37

    .end local v37    # "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .local v0, "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    invoke-direct {v6, v0}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)V

    .line 162
    nop

    .line 365
    .end local v0    # "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v22    # "$i$a$-fastForEach-LazyListItemAnimator$onMeasured$5":I
    .end local v23    # "mainAxisOffset":I
    nop

    .line 363
    .end local v21    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v25, 0x1

    move/from16 v0, v24

    .end local v25    # "index$iv":I
    .restart local v5    # "index$iv":I
    goto :goto_f

    .end local v24    # "accumulatedOffset":I
    .local v0, "accumulatedOffset":I
    :cond_19
    move/from16 v25, v5

    .line 367
    .end local v5    # "index$iv":I
    goto :goto_10

    .line 147
    .end local v10    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v11    # "$i$f$fastForEach":I
    .end local v26    # "previousFirstVisibleIndex":I
    .local v5, "previousFirstVisibleIndex":I
    :cond_1a
    move/from16 v26, v5

    .line 165
    .end local v5    # "previousFirstVisibleIndex":I
    .restart local v26    # "previousFirstVisibleIndex":I
    :goto_10
    iget-object v1, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 368
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    .local v5, "key":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 168
    .local v10, "$i$a$-forEach-LazyListItemAnimator$onMeasured$6":I
    invoke-interface {v13, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v11

    .line 170
    .local v11, "newIndex":I
    const/4 v14, -0x1

    if-ne v11, v14, :cond_1b

    .line 171
    iget-object v14, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-interface {v14, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v14, p5

    move/from16 v21, v0

    move-object/from16 v22, v1

    move/from16 v23, v2

    move-object/from16 v27, v3

    goto/16 :goto_16

    .line 173
    :cond_1b
    move-object/from16 v14, p5

    move/from16 v21, v0

    .end local v0    # "accumulatedOffset":I
    .local v21, "accumulatedOffset":I
    invoke-virtual {v14, v11}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v0

    .line 174
    .local v0, "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    move-object/from16 v22, v1

    const/4 v1, 0x1

    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .local v22, "$this$forEach$iv":Ljava/lang/Iterable;
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->setNonScrollableItem(Z)V

    .line 175
    iget-object v1, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-static {v1, v5}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;

    .line 178
    .local v1, "itemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    move/from16 v23, v2

    .end local v2    # "$i$f$forEach":I
    .local v23, "$i$f$forEach":I
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v2

    .local v2, "$this$any$iv":[Ljava/lang/Object;
    const/16 v24, 0x0

    .line 369
    .local v24, "$i$f$any":I
    move-object/from16 v25, v1

    .end local v1    # "itemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    .local v25, "itemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    array-length v1, v2

    move-object/from16 v27, v3

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v1, :cond_1f

    aget-object v28, v2, v3

    .local v28, "element$iv":Ljava/lang/Object;
    move-object/from16 v29, v28

    .local v29, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    const/16 v30, 0x0

    .line 178
    .local v30, "$i$a$-any-LazyListItemAnimator$onMeasured$6$inProgress$1":I
    if-eqz v29, :cond_1c

    move/from16 v31, v1

    invoke-virtual/range {v29 .. v29}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->isPlacementAnimationInProgress()Z

    move-result v1

    move-object/from16 v32, v2

    const/4 v2, 0x1

    .end local v2    # "$this$any$iv":[Ljava/lang/Object;
    .local v32, "$this$any$iv":[Ljava/lang/Object;
    if-ne v1, v2, :cond_1d

    const/4 v1, 0x1

    goto :goto_13

    .end local v32    # "$this$any$iv":[Ljava/lang/Object;
    .restart local v2    # "$this$any$iv":[Ljava/lang/Object;
    :cond_1c
    move/from16 v31, v1

    move-object/from16 v32, v2

    .end local v2    # "$this$any$iv":[Ljava/lang/Object;
    .restart local v32    # "$this$any$iv":[Ljava/lang/Object;
    :cond_1d
    const/4 v1, 0x0

    .line 369
    .end local v29    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .end local v30    # "$i$a$-any-LazyListItemAnimator$onMeasured$6$inProgress$1":I
    :goto_13
    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_14

    .end local v28    # "element$iv":Ljava/lang/Object;
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v31

    move-object/from16 v2, v32

    goto :goto_12

    .line 370
    .end local v32    # "$this$any$iv":[Ljava/lang/Object;
    .restart local v2    # "$this$any$iv":[Ljava/lang/Object;
    :cond_1f
    move-object/from16 v32, v2

    .end local v2    # "$this$any$iv":[Ljava/lang/Object;
    .restart local v32    # "$this$any$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 178
    .end local v24    # "$i$f$any":I
    .end local v32    # "$this$any$iv":[Ljava/lang/Object;
    :goto_14
    nop

    .line 177
    nop

    .line 179
    .local v1, "inProgress":Z
    if-nez v1, :cond_21

    if-eqz v12, :cond_20

    invoke-interface {v12, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v2

    if-ne v11, v2, :cond_20

    const/4 v2, 0x1

    goto :goto_15

    :cond_20
    const/4 v2, 0x0

    :goto_15
    if-eqz v2, :cond_21

    .line 180
    iget-object v2, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 182
    :cond_21
    iget v2, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->firstVisibleIndex:I

    if-ge v11, v2, :cond_22

    .line 183
    iget-object v2, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 185
    :cond_22
    iget-object v2, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v0    # "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v1    # "inProgress":Z
    .end local v25    # "itemInfo":Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    :goto_16
    nop

    .line 368
    .end local v5    # "key":Ljava/lang/Object;
    .end local v10    # "$i$a$-forEach-LazyListItemAnimator$onMeasured$6":I
    .end local v11    # "newIndex":I
    move/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v27

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto/16 :goto_11

    .line 371
    .end local v21    # "accumulatedOffset":I
    .end local v22    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v23    # "$i$f$forEach":I
    .local v0, "accumulatedOffset":I
    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    .local v2, "$i$f$forEach":I
    :cond_23
    move-object/from16 v14, p5

    move/from16 v21, v0

    move-object/from16 v22, v1

    move/from16 v23, v2

    .line 191
    .end local v0    # "accumulatedOffset":I
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    .restart local v21    # "accumulatedOffset":I
    const/4 v0, 0x0

    .line 192
    .end local v21    # "accumulatedOffset":I
    .restart local v0    # "accumulatedOffset":I
    iget-object v1, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    .local v1, "$this$sortByDescending$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 372
    .local v2, "$i$f$sortByDescending":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_24

    new-instance v3, Landroidx/compose/foundation/lazy/LazyListItemAnimator$onMeasured$$inlined$sortByDescending$2;

    invoke-direct {v3, v13}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$onMeasured$$inlined$sortByDescending$2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 373
    :cond_24
    nop

    .line 193
    .end local v1    # "$this$sortByDescending$iv":Ljava/util/List;
    .end local v2    # "$i$f$sortByDescending":I
    iget-object v1, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 374
    .local v2, "$i$f$fastForEach":I
    nop

    .line 375
    const/4 v3, 0x0

    .local v3, "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_17
    if-ge v3, v4, :cond_27

    .line 376
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 377
    .local v5, "item$iv":Ljava/lang/Object;
    move-object v10, v5

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .local v10, "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/4 v11, 0x0

    .line 194
    .local v11, "$i$a$-fastForEach-LazyListItemAnimator$onMeasured$8":I
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v21

    add-int v0, v0, v21

    .line 195
    if-eqz p7, :cond_25

    .line 196
    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset()I

    move-result v21

    sub-int v21, v21, v0

    goto :goto_18

    .line 198
    :cond_25
    rsub-int/lit8 v21, v0, 0x0

    .line 195
    :goto_18
    move/from16 v22, v21

    .line 200
    .local v22, "mainAxisOffset":I
    move/from16 v21, v0

    move/from16 v0, v22

    .end local v22    # "mainAxisOffset":I
    .local v0, "mainAxisOffset":I
    .restart local v21    # "accumulatedOffset":I
    invoke-virtual {v10, v0, v8, v9}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 201
    if-eqz v20, :cond_26

    .line 202
    invoke-direct {v6, v10}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)V

    .line 204
    :cond_26
    nop

    .line 377
    .end local v0    # "mainAxisOffset":I
    .end local v10    # "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v11    # "$i$a$-fastForEach-LazyListItemAnimator$onMeasured$8":I
    nop

    .line 375
    .end local v5    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v21

    goto :goto_17

    .line 379
    .end local v3    # "index$iv":I
    .end local v21    # "accumulatedOffset":I
    .local v0, "accumulatedOffset":I
    :cond_27
    nop

    .line 206
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    const/4 v0, 0x0

    .line 207
    iget-object v1, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    .local v1, "$this$sortBy$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 380
    .local v2, "$i$f$sortBy":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_28

    new-instance v3, Landroidx/compose/foundation/lazy/LazyListItemAnimator$onMeasured$$inlined$sortBy$2;

    invoke-direct {v3, v13}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$onMeasured$$inlined$sortBy$2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 381
    :cond_28
    nop

    .line 208
    .end local v1    # "$this$sortBy$iv":Ljava/util/List;
    .end local v2    # "$i$f$sortBy":I
    iget-object v1, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 382
    .local v2, "$i$f$fastForEach":I
    nop

    .line 383
    const/4 v3, 0x0

    .restart local v3    # "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_19
    if-ge v3, v4, :cond_2b

    .line 384
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 385
    .restart local v5    # "item$iv":Ljava/lang/Object;
    move-object v10, v5

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .restart local v10    # "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/4 v11, 0x0

    .line 209
    .local v11, "$i$a$-fastForEach-LazyListItemAnimator$onMeasured$10":I
    if-eqz p7, :cond_29

    .line 210
    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 345
    .local v19, "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/16 v21, 0x0

    .line 210
    .local v21, "$i$a$-let-LazyListItemAnimator$onMeasured$10$mainAxisOffset$1":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset()I

    move-result v22

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v23

    add-int v22, v22, v23

    .end local v19    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v21    # "$i$a$-let-LazyListItemAnimator$onMeasured$10$mainAxisOffset$1":I
    add-int v22, v22, v0

    goto :goto_1a

    .line 212
    :cond_29
    add-int v22, v16, v0

    .line 209
    :goto_1a
    move/from16 v19, v22

    .line 213
    .local v19, "mainAxisOffset":I
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v21

    add-int v0, v0, v21

    .line 215
    move/from16 v21, v0

    move/from16 v0, v19

    .end local v19    # "mainAxisOffset":I
    .local v0, "mainAxisOffset":I
    .local v21, "accumulatedOffset":I
    invoke-virtual {v10, v0, v8, v9}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 216
    if-eqz v20, :cond_2a

    .line 217
    invoke-direct {v6, v10}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)V

    .line 219
    :cond_2a
    nop

    .line 385
    .end local v0    # "mainAxisOffset":I
    .end local v10    # "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v11    # "$i$a$-fastForEach-LazyListItemAnimator$onMeasured$10":I
    nop

    .line 383
    .end local v5    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v21

    goto :goto_19

    .line 387
    .end local v3    # "index$iv":I
    .end local v21    # "accumulatedOffset":I
    .local v0, "accumulatedOffset":I
    :cond_2b
    nop

    .line 223
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    iget-object v1, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 345
    move-object v2, v1

    .local v2, "$this$onMeasured_u24lambda_u2416":Ljava/util/List;
    const/4 v3, 0x0

    .line 223
    .local v3, "$i$a$-apply-LazyListItemAnimator$onMeasured$11":I
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->reverse(Ljava/util/List;)V

    .end local v2    # "$this$onMeasured_u24lambda_u2416":Ljava/util/List;
    .end local v3    # "$i$a$-apply-LazyListItemAnimator$onMeasured$11":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v1, Ljava/util/Collection;

    move-object/from16 v2, p4

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 224
    iget-object v1, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 226
    iget-object v1, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingInFromStartBound:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 227
    iget-object v1, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingInFromEndBound:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 228
    iget-object v1, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 229
    iget-object v1, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 230
    iget-object v1, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->clear()V

    .line 231
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 238
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 239
    sget-object v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->Empty:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap$Empty;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 240
    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->firstVisibleIndex:I

    .line 241
    return-void
.end method
