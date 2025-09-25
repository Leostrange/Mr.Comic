.class public final Landroidx/compose/material/SwipeableKt;
.super Ljava/lang/Object;
.source "Swipeable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwipeable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material/SwipeableKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,908:1\n25#2:909\n25#2:916\n1116#3,6:910\n1116#3,6:917\n135#4:923\n766#5:924\n857#5,2:925\n766#5:940\n857#5,2:941\n288#5,2:956\n171#6,13:927\n482#6,13:943\n*S KotlinDebug\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material/SwipeableKt\n*L\n510#1:909\n517#1:916\n510#1:910,6\n517#1:917,6\n583#1:923\n752#1:924\n752#1:925,2\n753#1:940\n753#1:941,2\n810#1:956,2\n752#1:927,13\n753#1:943,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aP\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000f2\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00112\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u000bH\u0002\u001a$\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00152\u0006\u0010\u000c\u001a\u00020\u000b2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000fH\u0002\u001aZ\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0005\"\u0008\u0008\u0000\u0010\u0004*\u00020\u00172\u0006\u0010\u0018\u001a\u0002H\u00042\u000e\u0008\u0002\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001a2#\u0008\u0002\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u0011H\u0004\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(\u001f\u0012\u0004\u0012\u00020 0\u001cH\u0007\u00a2\u0006\u0002\u0010!\u001aI\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0005\"\u0008\u0008\u0000\u0010\u0004*\u00020\u00172\u0006\u0010#\u001a\u0002H\u00042\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u00020%0\u001c2\u000e\u0008\u0002\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001aH\u0001\u00a2\u0006\u0002\u0010&\u001a-\u0010\'\u001a\u0004\u0018\u00010\u000b\"\u0004\u0008\u0000\u0010\u0004*\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u0002H\u00040(2\u0006\u0010)\u001a\u0002H\u0004H\u0002\u00a2\u0006\u0002\u0010*\u001a\u00b6\u0001\u0010+\u001a\u00020,\"\u0004\u0008\u0000\u0010\u0004*\u00020,2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u00052\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u0002H\u00040(2\u0006\u0010-\u001a\u00020.2\u0008\u0008\u0002\u0010/\u001a\u00020 2\u0008\u0008\u0002\u00100\u001a\u00020 2\n\u0008\u0002\u00101\u001a\u0004\u0018\u00010228\u0008\u0002\u0010\u0010\u001a2\u0012\u0013\u0012\u0011H\u0004\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(3\u0012\u0013\u0012\u0011H\u0004\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(4\u0012\u0004\u0012\u0002050\u00112\n\u0008\u0002\u00106\u001a\u0004\u0018\u0001072\u0008\u0008\u0002\u0010\u0013\u001a\u000208H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u00089\u0010:\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"*\u0010\u0002\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u0004*\u0008\u0012\u0004\u0012\u0002H\u00040\u00058@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006;"
    }
    d2 = {
        "SwipeableDeprecation",
        "",
        "PreUpPostDownNestedScrollConnection",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "T",
        "Landroidx/compose/material/SwipeableState;",
        "getPreUpPostDownNestedScrollConnection$annotations",
        "(Landroidx/compose/material/SwipeableState;)V",
        "getPreUpPostDownNestedScrollConnection",
        "(Landroidx/compose/material/SwipeableState;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "computeTarget",
        "",
        "offset",
        "lastValue",
        "anchors",
        "",
        "thresholds",
        "Lkotlin/Function2;",
        "velocity",
        "velocityThreshold",
        "findBounds",
        "",
        "rememberSwipeableState",
        "",
        "initialValue",
        "animationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "confirmStateChange",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "newValue",
        "",
        "(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/SwipeableState;",
        "rememberSwipeableStateFor",
        "value",
        "onValueChange",
        "",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/SwipeableState;",
        "getOffset",
        "",
        "state",
        "(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;",
        "swipeable",
        "Landroidx/compose/ui/Modifier;",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "enabled",
        "reverseDirection",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "from",
        "to",
        "Landroidx/compose/material/ThresholdConfig;",
        "resistance",
        "Landroidx/compose/material/ResistanceConfig;",
        "Landroidx/compose/ui/unit/Dp;",
        "swipeable-pPrIpRY",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SwipeableState;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/material/ResistanceConfig;F)Landroidx/compose/ui/Modifier;",
        "material_release"
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
.field private static final SwipeableDeprecation:Ljava/lang/String; = "Material\'s Swipeable has been replaced by Foundation\'s AnchoredDraggable APIs. Please see developer.android.com for an overview of the changes and a migration guide."


# direct methods
.method public static final synthetic access$computeTarget(FFLjava/util/Set;Lkotlin/jvm/functions/Function2;FF)F
    .locals 1
    .param p0, "offset"    # F
    .param p1, "lastValue"    # F
    .param p2, "anchors"    # Ljava/util/Set;
    .param p3, "thresholds"    # Lkotlin/jvm/functions/Function2;
    .param p4, "velocity"    # F
    .param p5, "velocityThreshold"    # F

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/SwipeableKt;->computeTarget(FFLjava/util/Set;Lkotlin/jvm/functions/Function2;FF)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$findBounds(FLjava/util/Set;)Ljava/util/List;
    .locals 1
    .param p0, "offset"    # F
    .param p1, "anchors"    # Ljava/util/Set;

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/material/SwipeableKt;->findBounds(FLjava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getOffset(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;
    .locals 1
    .param p0, "$receiver"    # Ljava/util/Map;
    .param p1, "state"    # Ljava/lang/Object;

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/material/SwipeableKt;->getOffset(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private static final computeTarget(FFLjava/util/Set;Lkotlin/jvm/functions/Function2;FF)F
    .locals 5
    .param p0, "offset"    # F
    .param p1, "lastValue"    # F
    .param p2, "anchors"    # Ljava/util/Set;
    .param p3, "thresholds"    # Lkotlin/jvm/functions/Function2;
    .param p4, "velocity"    # F
    .param p5, "velocityThreshold"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/Set<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;FF)F"
        }
    .end annotation

    .line 781
    invoke-static {p0, p2}, Landroidx/compose/material/SwipeableKt;->findBounds(FLjava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 782
    .local v0, "bounds":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 786
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 787
    .local v1, "lower":F
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 788
    .local v2, "upper":F
    cmpg-float v3, p1, p0

    if-gtz v3, :cond_2

    .line 790
    cmpl-float v3, p4, p5

    if-ltz v3, :cond_0

    .line 791
    return v2

    .line 784
    .end local v1    # "lower":F
    .end local v2    # "upper":F
    :pswitch_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    goto :goto_1

    .line 783
    :pswitch_1
    move v1, p1

    goto :goto_1

    .line 793
    .restart local v1    # "lower":F
    .restart local v2    # "upper":F
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 794
    .local v3, "threshold":F
    cmpg-float v4, p0, v3

    if-gez v4, :cond_1

    goto :goto_1

    .end local v3    # "threshold":F
    :cond_1
    goto :goto_0

    .line 798
    :cond_2
    neg-float v3, p5

    cmpg-float v3, p4, v3

    if-gtz v3, :cond_3

    .line 799
    return v1

    .line 801
    :cond_3
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 802
    .restart local v3    # "threshold":F
    cmpl-float v4, p0, v3

    if-lez v4, :cond_4

    .line 782
    .end local v1    # "lower":F
    .end local v2    # "upper":F
    .end local v3    # "threshold":F
    :goto_0
    move v1, v2

    :cond_4
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final findBounds(FLjava/util/Set;)Ljava/util/List;
    .locals 18
    .param p0, "offset"    # F
    .param p1, "anchors"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/Set<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 752
    move/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 924
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 925
    .local v5, "$i$f$filterTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v12, v7

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    .local v12, "it":F
    const/4 v13, 0x0

    .line 752
    .local v13, "$i$a$-filter-SwipeableKt$findBounds$a$1":I
    float-to-double v14, v12

    float-to-double v10, v0

    add-double/2addr v10, v8

    cmpg-double v8, v14, v10

    if-gtz v8, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 925
    .end local v12    # "it":F
    .end local v13    # "$i$a$-filter-SwipeableKt$findBounds$a$1":I
    :goto_1
    if-eqz v10, :cond_0

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 926
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filterTo":I
    check-cast v3, Ljava/util/List;

    .line 924
    nop

    .line 752
    .end local v1    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filter":I
    move-object v1, v3

    .local v1, "$this$fastMaxBy$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 927
    .local v2, "$i$f$fastMaxBy":I
    nop

    .line 928
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    .line 929
    :cond_3
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 930
    .local v5, "maxElem$iv":Ljava/lang/Object;
    move-object v3, v5

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .local v3, "it":F
    const/4 v6, 0x0

    .line 752
    .local v6, "$i$a$-fastMaxBy-SwipeableKt$findBounds$a$2":I
    nop

    .line 930
    .end local v3    # "it":F
    .end local v6    # "$i$a$-fastMaxBy-SwipeableKt$findBounds$a$2":I
    nop

    .line 931
    .local v3, "maxValue$iv":F
    const/4 v6, 0x1

    .local v6, "i$iv":I
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v7

    if-gt v6, v7, :cond_5

    .line 932
    :goto_2
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 933
    .local v10, "e$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    .local v11, "it":F
    const/4 v12, 0x0

    .line 752
    .local v12, "$i$a$-fastMaxBy-SwipeableKt$findBounds$a$2":I
    nop

    .line 933
    .end local v11    # "it":F
    .end local v12    # "$i$a$-fastMaxBy-SwipeableKt$findBounds$a$2":I
    nop

    .line 934
    .local v11, "v$iv":F
    invoke-static {v3, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-gez v12, :cond_4

    .line 935
    move-object v5, v10

    .line 936
    move v3, v11

    .line 931
    .end local v10    # "e$iv":Ljava/lang/Object;
    .end local v11    # "v$iv":F
    :cond_4
    if-eq v6, v7, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 939
    .end local v6    # "i$iv":I
    :cond_5
    nop

    .line 752
    .end local v1    # "$this$fastMaxBy$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastMaxBy":I
    .end local v3    # "maxValue$iv":F
    .end local v5    # "maxElem$iv":Ljava/lang/Object;
    :goto_3
    move-object v1, v5

    check-cast v1, Ljava/lang/Float;

    .line 753
    .local v1, "a":Ljava/lang/Float;
    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 940
    .local v3, "$i$f$filter":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v2

    .local v6, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 941
    .local v7, "$i$f$filterTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    .local v12, "it":F
    const/4 v13, 0x0

    .line 753
    .local v13, "$i$a$-filter-SwipeableKt$findBounds$b$1":I
    float-to-double v14, v12

    move-object/from16 v16, v5

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .local v16, "destination$iv$iv":Ljava/util/Collection;
    float-to-double v4, v0

    sub-double/2addr v4, v8

    cmpl-double v4, v14, v4

    if-ltz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    .line 941
    .end local v12    # "it":F
    .end local v13    # "$i$a$-filter-SwipeableKt$findBounds$b$1":I
    :goto_5
    if-eqz v4, :cond_7

    move-object/from16 v4, v16

    .end local v16    # "destination$iv$iv":Ljava/util/Collection;
    .local v4, "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {v4, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v16    # "destination$iv$iv":Ljava/util/Collection;
    :cond_7
    move-object/from16 v4, v16

    .end local v16    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v4    # "destination$iv$iv":Ljava/util/Collection;
    :goto_6
    move-object v5, v4

    goto :goto_4

    .line 942
    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    .restart local v5    # "destination$iv$iv":Ljava/util/Collection;
    :cond_8
    move-object v4, v5

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$filterTo":I
    check-cast v4, Ljava/util/List;

    .line 940
    nop

    .line 753
    .end local v2    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$filter":I
    move-object v2, v4

    .local v2, "$this$fastMinByOrNull$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 943
    .local v3, "$i$f$fastMinByOrNull":I
    nop

    .line 944
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    goto :goto_8

    .line 945
    :cond_9
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 946
    .local v5, "minElem$iv":Ljava/lang/Object;
    move-object v4, v5

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    .local v4, "it":F
    const/4 v6, 0x0

    .line 753
    .local v6, "$i$a$-fastMinByOrNull-SwipeableKt$findBounds$b$2":I
    nop

    .line 946
    .end local v4    # "it":F
    .end local v6    # "$i$a$-fastMinByOrNull-SwipeableKt$findBounds$b$2":I
    nop

    .line 947
    .local v4, "minValue$iv":F
    const/4 v6, 0x1

    .local v6, "i$iv":I
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v7

    if-gt v6, v7, :cond_b

    .line 948
    :goto_7
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 949
    .local v8, "e$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    .local v9, "it":F
    const/4 v10, 0x0

    .line 753
    .local v10, "$i$a$-fastMinByOrNull-SwipeableKt$findBounds$b$2":I
    nop

    .line 949
    .end local v9    # "it":F
    .end local v10    # "$i$a$-fastMinByOrNull-SwipeableKt$findBounds$b$2":I
    nop

    .line 950
    .local v9, "v$iv":F
    invoke-static {v4, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-lez v10, :cond_a

    .line 951
    move-object v5, v8

    .line 952
    move v4, v9

    .line 947
    .end local v8    # "e$iv":Ljava/lang/Object;
    .end local v9    # "v$iv":F
    :cond_a
    if-eq v6, v7, :cond_b

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_b
    move-object/from16 v17, v5

    move v5, v4

    move-object/from16 v4, v17

    .line 955
    .end local v6    # "i$iv":I
    .local v4, "minElem$iv":Ljava/lang/Object;
    .local v5, "minValue$iv":F
    nop

    .line 753
    .end local v2    # "$this$fastMinByOrNull$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastMinByOrNull":I
    .end local v4    # "minElem$iv":Ljava/lang/Object;
    .end local v5    # "minValue$iv":F
    :goto_8
    move-object v2, v4

    check-cast v2, Ljava/lang/Float;

    .line 755
    .local v2, "b":Ljava/lang/Float;
    nop

    .line 756
    if-nez v1, :cond_c

    .line 758
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_9

    .line 759
    :cond_c
    if-nez v2, :cond_d

    .line 761
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_9

    .line 762
    :cond_d
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 766
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_9

    .line 769
    :cond_e
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Float;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 755
    :goto_9
    return-object v3
.end method

.method private static final getOffset(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;
    .locals 8
    .param p0, "$this$getOffset"    # Ljava/util/Map;
    .param p1, "state"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "+TT;>;TT;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 810
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 956
    .local v1, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Ljava/util/Map$Entry;

    .local v5, "it":Ljava/util/Map$Entry;
    const/4 v6, 0x0

    .line 810
    .local v6, "$i$a$-firstOrNull-SwipeableKt$getOffset$1":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 956
    .end local v5    # "it":Ljava/util/Map$Entry;
    .end local v6    # "$i$a$-firstOrNull-SwipeableKt$getOffset$1":I
    if-eqz v5, :cond_0

    goto :goto_0

    .line 957
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_1
    move-object v3, v4

    .line 810
    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_0
    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Float;

    :cond_2
    return-object v4
.end method

.method public static final getPreUpPostDownNestedScrollConnection(Landroidx/compose/material/SwipeableState;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 1
    .param p0, "$this$PreUpPostDownNestedScrollConnection"    # Landroidx/compose/material/SwipeableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/material/SwipeableState<",
            "TT;>;)",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;"
        }
    .end annotation

    .line 862
    new-instance v0, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;

    invoke-direct {v0, p0}, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;-><init>(Landroidx/compose/material/SwipeableState;)V

    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 903
    return-object v0
.end method

.method public static synthetic getPreUpPostDownNestedScrollConnection$annotations(Landroidx/compose/material/SwipeableState;)V
    .locals 0

    return-void
.end method

.method public static final rememberSwipeableState(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/SwipeableState;
    .locals 7
    .param p0, "initialValue"    # Ljava/lang/Object;
    .param p1, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p2, "confirmStateChange"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material/SwipeableState<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Material\'s Swipeable has been replaced by Foundation\'s AnchoredDraggable APIs. Please see developer.android.com for an overview of the changes and a migration guide."
    .end annotation

    const v0, -0x49c6a521

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberSwipeableState)P(2)479@19455L344:Swipeable.kt#jmzs0o"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    .line 477
    sget-object v1, Landroidx/compose/material/SwipeableDefaults;->INSTANCE:Landroidx/compose/material/SwipeableDefaults;

    invoke-virtual {v1}, Landroidx/compose/material/SwipeableDefaults;->getAnimationSpec()Landroidx/compose/animation/core/SpringSpec;

    move-result-object v1

    move-object p1, v1

    check-cast p1, Landroidx/compose/animation/core/AnimationSpec;

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 478
    sget-object p5, Landroidx/compose/material/SwipeableKt$rememberSwipeableState$1;->INSTANCE:Landroidx/compose/material/SwipeableKt$rememberSwipeableState$1;

    move-object p2, p5

    check-cast p2, Lkotlin/jvm/functions/Function1;

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 479
    const/4 p5, -0x1

    const-string/jumbo v1, "androidx.compose.material.rememberSwipeableState (Swipeable.kt:478)"

    invoke-static {v0, p4, p5, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const/4 p5, 0x0

    new-array v0, p5, [Ljava/lang/Object;

    .line 481
    sget-object p5, Landroidx/compose/material/SwipeableState;->Companion:Landroidx/compose/material/SwipeableState$Companion;

    .line 482
    nop

    .line 483
    nop

    .line 481
    invoke-virtual {p5, p1, p2}, Landroidx/compose/material/SwipeableState$Companion;->Saver(Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v1

    const/4 v2, 0x0

    .line 480
    new-instance p5, Landroidx/compose/material/SwipeableKt$rememberSwipeableState$2;

    invoke-direct {p5, p0, p1, p2}, Landroidx/compose/material/SwipeableKt$rememberSwipeableState$2;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V

    move-object v3, p5

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/16 v5, 0x48

    const/4 v6, 0x4

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/compose/material/SwipeableState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p5
.end method

.method public static final rememberSwipeableStateFor(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/SwipeableState;
    .locals 17
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "onValueChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material/SwipeableState<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Material\'s Swipeable has been replaced by Foundation\'s AnchoredDraggable APIs. Please see developer.android.com for an overview of the changes and a migration guide."
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    const v3, 0x44ed1106

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "C(rememberSwipeableStateFor)P(2,1)509@20656L169,516@20856L34,517@20895L162,522@21062L259:Swipeable.kt#jmzs0o"

    invoke-static {v1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v4, p5, 0x4

    if-eqz v4, :cond_0

    .line 508
    sget-object v4, Landroidx/compose/material/SwipeableDefaults;->INSTANCE:Landroidx/compose/material/SwipeableDefaults;

    invoke-virtual {v4}, Landroidx/compose/material/SwipeableDefaults;->getAnimationSpec()Landroidx/compose/animation/core/SpringSpec;

    move-result-object v4

    check-cast v4, Landroidx/compose/animation/core/AnimationSpec;

    .end local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v4, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    goto :goto_0

    .line 0
    .end local v4    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .restart local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :cond_0
    move-object/from16 v4, p2

    .line 508
    .end local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .restart local v4    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 509
    const/4 v5, -0x1

    const-string/jumbo v6, "androidx.compose.material.rememberSwipeableStateFor (Swipeable.kt:508)"

    invoke-static {v3, v2, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    nop

    .line 510
    const/4 v3, 0x0

    move v5, v3

    .local v5, "$changed$iv":I
    const/4 v6, 0x0

    .local v6, "$i$f$remember":I
    const v7, -0x1d58f75c

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v8, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v1, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 909
    const/4 v9, 0x0

    .local v9, "invalid$iv$iv":Z
    move-object/from16 v10, p3

    .local v10, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 910
    .local v11, "$i$f$cache":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 911
    .local v13, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_2

    .line 912
    const/4 v14, 0x0

    .line 511
    .local v14, "$i$a$-remember-SwipeableKt$rememberSwipeableStateFor$swipeableState$1":I
    new-instance v15, Landroidx/compose/material/SwipeableState;

    .line 512
    nop

    .line 513
    nop

    .line 514
    sget-object v16, Landroidx/compose/material/SwipeableKt$rememberSwipeableStateFor$swipeableState$1$1;->INSTANCE:Landroidx/compose/material/SwipeableKt$rememberSwipeableStateFor$swipeableState$1$1;

    move-object/from16 v7, v16

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 511
    invoke-direct {v15, v0, v4, v7}, Landroidx/compose/material/SwipeableState;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V

    .line 912
    .end local v14    # "$i$a$-remember-SwipeableKt$rememberSwipeableStateFor$swipeableState$1":I
    move-object v7, v15

    .line 913
    .local v7, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 914
    nop

    .end local v7    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_1

    .line 915
    :cond_2
    move-object v7, v12

    .line 911
    :goto_1
    nop

    .line 910
    .end local v12    # "it$iv$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 909
    .end local v9    # "invalid$iv$iv":Z
    .end local v10    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache":I
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 510
    .end local v5    # "$changed$iv":I
    .end local v6    # "$i$f$remember":I
    move-object v5, v7

    check-cast v5, Landroidx/compose/material/SwipeableState;

    .line 517
    .local v5, "swipeableState":Landroidx/compose/material/SwipeableState;
    move v6, v3

    .local v6, "$changed$iv":I
    const/4 v7, 0x0

    const v9, -0x1d58f75c

    .local v7, "$i$f$remember":I
    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v1, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 916
    const/4 v8, 0x0

    .local v8, "invalid$iv$iv":Z
    move-object/from16 v9, p3

    .local v9, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 917
    .local v10, "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 918
    .local v12, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    const/4 v14, 0x0

    if-ne v11, v13, :cond_3

    .line 919
    const/4 v13, 0x0

    .line 517
    .local v13, "$i$a$-remember-SwipeableKt$rememberSwipeableStateFor$forceAnimationCheck$1":I
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v15, 0x2

    invoke-static {v3, v14, v15, v14}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    .line 919
    .end local v13    # "$i$a$-remember-SwipeableKt$rememberSwipeableStateFor$forceAnimationCheck$1":I
    nop

    .line 920
    .local v3, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 921
    nop

    .end local v3    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_2

    .line 922
    :cond_3
    move-object v3, v11

    .line 918
    :goto_2
    nop

    .line 917
    .end local v11    # "it$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 916
    .end local v8    # "invalid$iv$iv":Z
    .end local v9    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$cache":I
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 517
    .end local v6    # "$changed$iv":I
    .end local v7    # "$i$f$remember":I
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 518
    .local v3, "forceAnimationCheck":Landroidx/compose/runtime/MutableState;
    invoke-interface {v3}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Landroidx/compose/material/SwipeableKt$rememberSwipeableStateFor$1;

    invoke-direct {v7, v0, v5, v14}, Landroidx/compose/material/SwipeableKt$rememberSwipeableStateFor$1;-><init>(Ljava/lang/Object;Landroidx/compose/material/SwipeableState;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    and-int/lit8 v8, v2, 0x8

    or-int/lit16 v8, v8, 0x200

    and-int/lit8 v9, v2, 0xe

    or-int/2addr v8, v9

    invoke-static {v0, v6, v7, v1, v8}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 523
    invoke-virtual {v5}, Landroidx/compose/material/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Landroidx/compose/material/SwipeableKt$rememberSwipeableStateFor$2;

    move-object/from16 v8, p1

    invoke-direct {v7, v0, v5, v8, v3}, Landroidx/compose/material/SwipeableKt$rememberSwipeableStateFor$2;-><init>(Ljava/lang/Object;Landroidx/compose/material/SwipeableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v9, v2, 0x8

    invoke-static {v6, v7, v1, v9}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 530
    return-object v5
.end method

.method public static final swipeable-pPrIpRY(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SwipeableState;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/material/ResistanceConfig;F)Landroidx/compose/ui/Modifier;
    .locals 12
    .param p0, "$this$swipeable_u2dpPrIpRY"    # Landroidx/compose/ui/Modifier;
    .param p1, "state"    # Landroidx/compose/material/SwipeableState;
    .param p2, "anchors"    # Ljava/util/Map;
    .param p3, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p4, "enabled"    # Z
    .param p5, "reverseDirection"    # Z
    .param p6, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p7, "thresholds"    # Lkotlin/jvm/functions/Function2;
    .param p8, "resistance"    # Landroidx/compose/material/ResistanceConfig;
    .param p9, "velocityThreshold"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material/SwipeableState<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "+TT;>;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "ZZ",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-TT;+",
            "Landroidx/compose/material/ThresholdConfig;",
            ">;",
            "Landroidx/compose/material/ResistanceConfig;",
            "F)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Material\'s Swipeable has been replaced by Foundation\'s AnchoredDraggable APIs. Please see developer.android.com for an overview of the changes and a migration guide."
    .end annotation

    .line 582
    nop

    .line 583
    const/4 v0, 0x0

    .line 923
    .local v0, "$i$f$debugInspectorInfo":I
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v2 .. v11}, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/material/SwipeableState;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/material/ResistanceConfig;F)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 582
    .end local v0    # "$i$f$debugInspectorInfo":I
    :goto_0
    new-instance v0, Landroidx/compose/material/SwipeableKt$swipeable$3;

    move-object v2, v0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move/from16 v8, p5

    move-object/from16 v9, p8

    move-object/from16 v10, p7

    move/from16 v11, p9

    invoke-direct/range {v2 .. v11}, Landroidx/compose/material/SwipeableKt$swipeable$3;-><init>(Ljava/util/Map;Landroidx/compose/material/SwipeableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLandroidx/compose/material/ResistanceConfig;Lkotlin/jvm/functions/Function2;F)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    move-object v2, p0

    invoke-static {p0, v1, v0}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 628
    return-object v0
.end method

.method public static synthetic swipeable-pPrIpRY$default(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SwipeableState;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/material/ResistanceConfig;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 16

    .line 572
    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    .line 576
    const/4 v1, 0x1

    move v6, v1

    goto :goto_0

    .line 572
    :cond_0
    move/from16 v6, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    .line 577
    const/4 v1, 0x0

    move v7, v1

    goto :goto_1

    .line 572
    :cond_1
    move/from16 v7, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    .line 578
    const/4 v1, 0x0

    move-object v8, v1

    goto :goto_2

    .line 572
    :cond_2
    move-object/from16 v8, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    .line 579
    sget-object v1, Landroidx/compose/material/SwipeableKt$swipeable$1;->INSTANCE:Landroidx/compose/material/SwipeableKt$swipeable$1;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v9, v1

    goto :goto_3

    .line 572
    :cond_3
    move-object/from16 v9, p7

    :goto_3
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    .line 580
    sget-object v10, Landroidx/compose/material/SwipeableDefaults;->INSTANCE:Landroidx/compose/material/SwipeableDefaults;

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Landroidx/compose/material/SwipeableDefaults;->resistanceConfig$default(Landroidx/compose/material/SwipeableDefaults;Ljava/util/Set;FFILjava/lang/Object;)Landroidx/compose/material/ResistanceConfig;

    move-result-object v1

    move-object v10, v1

    goto :goto_4

    .line 572
    :cond_4
    move-object/from16 v10, p8

    :goto_4
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_5

    .line 581
    sget-object v0, Landroidx/compose/material/SwipeableDefaults;->INSTANCE:Landroidx/compose/material/SwipeableDefaults;

    invoke-virtual {v0}, Landroidx/compose/material/SwipeableDefaults;->getVelocityThreshold-D9Ej5fM()F

    move-result v0

    move v11, v0

    goto :goto_5

    .line 572
    :cond_5
    move/from16 v11, p9

    :goto_5
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-static/range {v2 .. v11}, Landroidx/compose/material/SwipeableKt;->swipeable-pPrIpRY(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SwipeableState;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/material/ResistanceConfig;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method
