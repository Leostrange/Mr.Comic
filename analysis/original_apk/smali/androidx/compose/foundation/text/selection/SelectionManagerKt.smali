.class public final Landroidx/compose/foundation/text/selection/SelectionManagerKt;
.super Ljava/lang/Object;
.source "SelectionManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/selection/SelectionManagerKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionManager.kt\nandroidx/compose/foundation/text/selection/SelectionManagerKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,991:1\n33#2,6:992\n*S KotlinDebug\n*F\n+ 1 SelectionManager.kt\nandroidx/compose/foundation/text/selection/SelectionManagerKt\n*L\n870#1:992,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u001a\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\t\u001a*\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000e\u001a*\u0010\u000f\u001a\u00020\u00012\u0018\u0010\u0010\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u00120\u00112\u0006\u0010\u0015\u001a\u00020\u0016H\u0001\u001a\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0014H\u0000\u001a\u001e\u0010\u001a\u001a\u00020\u001b*\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u0003H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001e\u001a\u001e\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u0002H 0\u0011\"\u0004\u0008\u0000\u0010 *\u0008\u0012\u0004\u0012\u0002H 0\u0011H\u0002\u001a\u000c\u0010!\u001a\u00020\u0001*\u00020\u0016H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\""
    }
    d2 = {
        "invertedInfiniteRect",
        "Landroidx/compose/ui/geometry/Rect;",
        "calculateSelectionMagnifierCenterAndroid",
        "Landroidx/compose/ui/geometry/Offset;",
        "manager",
        "Landroidx/compose/foundation/text/selection/SelectionManager;",
        "magnifierSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "calculateSelectionMagnifierCenterAndroid-O0kMr_c",
        "(Landroidx/compose/foundation/text/selection/SelectionManager;J)J",
        "getMagnifierCenter",
        "anchor",
        "Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;",
        "getMagnifierCenter-JVtK1S4",
        "(Landroidx/compose/foundation/text/selection/SelectionManager;JLandroidx/compose/foundation/text/selection/Selection$AnchorInfo;)J",
        "getSelectedRegionRect",
        "selectableSubSelectionPairs",
        "",
        "Lkotlin/Pair;",
        "Landroidx/compose/foundation/text/selection/Selectable;",
        "Landroidx/compose/foundation/text/selection/Selection;",
        "containerCoordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "merge",
        "lhs",
        "rhs",
        "containsInclusive",
        "",
        "offset",
        "containsInclusive-Uv8p0NA",
        "(Landroidx/compose/ui/geometry/Rect;J)Z",
        "firstAndLast",
        "T",
        "visibleBounds",
        "foundation_release"
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
.field private static final invertedInfiniteRect:Landroidx/compose/ui/geometry/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 845
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 846
    nop

    .line 847
    nop

    .line 848
    nop

    .line 849
    nop

    .line 845
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v1, v2, v2}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->invertedInfiniteRect:Landroidx/compose/ui/geometry/Rect;

    return-void
.end method

.method public static final synthetic access$firstAndLast(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "$receiver"    # Ljava/util/List;

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->firstAndLast(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getInvertedInfiniteRect$p()Landroidx/compose/ui/geometry/Rect;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->invertedInfiniteRect:Landroidx/compose/ui/geometry/Rect;

    return-object v0
.end method

.method public static final calculateSelectionMagnifierCenterAndroid-O0kMr_c(Landroidx/compose/foundation/text/selection/SelectionManager;J)J
    .locals 3
    .param p0, "manager"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "magnifierSize"    # J

    .line 912
    nop

    .line 917
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    return-wide v0

    .line 913
    .local v0, "selection":Landroidx/compose/foundation/text/selection/Selection;
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionManagerKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Landroidx/compose/foundation/text/Handle;->ordinal()I

    move-result v1

    aget v1, v2, v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 917
    :pswitch_0
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 916
    :pswitch_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 917
    const-string/jumbo v2, "SelectionContainer does not support cursor"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 916
    :pswitch_2
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v1

    invoke-static {p0, p1, p2, v1}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->getMagnifierCenter-JVtK1S4(Landroidx/compose/foundation/text/selection/SelectionManager;JLandroidx/compose/foundation/text/selection/Selection$AnchorInfo;)J

    move-result-wide v1

    goto :goto_1

    .line 915
    :pswitch_3
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v1

    invoke-static {p0, p1, p2, v1}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->getMagnifierCenter-JVtK1S4(Landroidx/compose/foundation/text/selection/SelectionManager;JLandroidx/compose/foundation/text/selection/Selection$AnchorInfo;)J

    move-result-wide v1

    .line 913
    :goto_1
    return-wide v1

    .line 914
    :pswitch_4
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v1

    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final containsInclusive-Uv8p0NA(Landroidx/compose/ui/geometry/Rect;J)Z
    .locals 5
    .param p0, "$this$containsInclusive_u2dUv8p0NA"    # Landroidx/compose/ui/geometry/Rect;
    .param p1, "offset"    # J

    .line 990
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v1

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    cmpg-float v0, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gtz v0, :cond_0

    cmpg-float v0, v2, v1

    if-gtz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v1

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    cmpg-float v0, v2, v1

    if-gtz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    return v3
.end method

.method private static final firstAndLast(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0, "$this$firstAndLast"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 852
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 854
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 853
    :pswitch_0
    move-object v0, p0

    .line 855
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static final getMagnifierCenter-JVtK1S4(Landroidx/compose/foundation/text/selection/SelectionManager;JLandroidx/compose/foundation/text/selection/Selection$AnchorInfo;)J
    .locals 17
    .param p0, "manager"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "magnifierSize"    # J
    .param p3, "anchor"    # Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 926
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->getAnchorSelectable$foundation_release(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selectable;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v2

    return-wide v2

    .line 927
    .local v2, "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getContainerLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v3

    return-wide v3

    .line 928
    .local v3, "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_1
    invoke-interface {v2}, Landroidx/compose/foundation/text/selection/Selectable;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v4

    if-nez v4, :cond_2

    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v4

    return-wide v4

    .line 929
    .local v4, "selectableCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v5

    .line 931
    .local v5, "offset":I
    invoke-interface {v2}, Landroidx/compose/foundation/text/selection/Selectable;->getLastVisibleOffset()I

    move-result v6

    if-le v5, v6, :cond_3

    sget-object v6, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v6

    return-wide v6

    .line 935
    :cond_3
    nop

    .line 936
    nop

    .line 937
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getCurrentDragPosition-_m7T9-E()Landroidx/compose/ui/geometry/Offset;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v6

    .line 935
    invoke-interface {v4, v3, v6, v7}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v6

    .line 939
    .local v6, "localDragPosition":J
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v8

    .line 942
    .local v8, "dragX":F
    invoke-interface {v2, v5}, Landroidx/compose/foundation/text/selection/Selectable;->getRangeOfLineContaining--jx7JFs(I)J

    move-result-wide v9

    .line 943
    .local v9, "lineRange":J
    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_4

    .line 946
    invoke-interface {v2, v5}, Landroidx/compose/foundation/text/selection/Selectable;->getLineLeft(I)F

    move-result v11

    goto :goto_0

    .line 948
    :cond_4
    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v11

    invoke-interface {v2, v11}, Landroidx/compose/foundation/text/selection/Selectable;->getLineLeft(I)F

    move-result v11

    .line 949
    .local v11, "lineStartX":F
    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v13

    sub-int/2addr v13, v12

    invoke-interface {v2, v13}, Landroidx/compose/foundation/text/selection/Selectable;->getLineRight(I)F

    move-result v13

    .line 951
    .local v13, "lineEndX":F
    invoke-static {v11, v13}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 952
    .local v14, "minX":F
    invoke-static {v11, v13}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 953
    .local v15, "maxX":F
    invoke-static {v8, v14, v15}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v16

    move/from16 v11, v16

    .line 943
    .end local v11    # "lineStartX":F
    .end local v13    # "lineEndX":F
    .end local v14    # "minX":F
    .end local v15    # "maxX":F
    :goto_0
    nop

    .line 957
    .local v11, "textConstrainedX":F
    const/high16 v13, -0x40800000    # -1.0f

    cmpg-float v14, v11, v13

    const/4 v15, 0x0

    if-nez v14, :cond_5

    move v14, v12

    goto :goto_1

    :cond_5
    move v14, v15

    :goto_1
    if-eqz v14, :cond_6

    sget-object v12, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v12

    return-wide v12

    .line 962
    :cond_6
    sub-float v14, v8, v11

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v16

    div-int/lit8 v12, v16, 0x2

    int-to-float v12, v12

    cmpl-float v12, v14, v12

    if-lez v12, :cond_7

    .line 963
    sget-object v12, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v12

    return-wide v12

    .line 966
    :cond_7
    invoke-interface {v2, v5}, Landroidx/compose/foundation/text/selection/Selectable;->getCenterYForOffset(I)F

    move-result v12

    .line 969
    .local v12, "lineCenterY":F
    cmpg-float v13, v12, v13

    if-nez v13, :cond_8

    const/4 v15, 0x1

    :cond_8
    if-eqz v15, :cond_9

    sget-object v13, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v13

    return-wide v13

    .line 971
    :cond_9
    nop

    .line 972
    nop

    .line 973
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v13

    .line 971
    invoke-interface {v3, v4, v13, v14}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v13

    return-wide v13
.end method

.method public static final getSelectedRegionRect(Ljava/util/List;Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 31
    .param p0, "selectableSubSelectionPairs"    # Ljava/util/List;
    .param p1, "containerCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Landroidx/compose/foundation/text/selection/Selectable;",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ">;>;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ")",
            "Landroidx/compose/ui/geometry/Rect;"
        }
    .end annotation

    .line 868
    move-object/from16 v0, p1

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->invertedInfiniteRect:Landroidx/compose/ui/geometry/Rect;

    return-object v1

    .line 869
    :cond_0
    sget-object v1, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->invertedInfiniteRect:Landroidx/compose/ui/geometry/Rect;

    const/4 v2, 0x0

    .local v2, "containerLeft":F
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->component1()F

    move-result v2

    const/4 v3, 0x0

    .local v3, "containerTop":F
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->component2()F

    move-result v3

    const/4 v4, 0x0

    .local v4, "containerRight":F
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->component3()F

    move-result v4

    const/4 v5, 0x0

    .local v5, "containerBottom":F
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->component4()F

    move-result v1

    .line 870
    .end local v5    # "containerBottom":F
    .local v1, "containerBottom":F
    move-object/from16 v5, p0

    .local v5, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 992
    .local v6, "$i$f$fastForEach":I
    nop

    .line 993
    const/4 v7, 0x0

    .local v7, "index$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_5

    .line 994
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 995
    .local v9, "item$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lkotlin/Pair;

    const/4 v11, 0x0

    .line 870
    .local v11, "$i$a$-fastForEach-SelectionManagerKt$getSelectedRegionRect$1":I
    invoke-virtual {v10}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/text/selection/Selectable;

    .local v12, "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    invoke-virtual {v10}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/text/selection/Selection;

    .line 871
    .local v10, "subSelection":Landroidx/compose/foundation/text/selection/Selection;
    invoke-virtual {v10}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v13

    .line 872
    .local v13, "startOffset":I
    invoke-virtual {v10}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v14

    .line 873
    .local v14, "endOffset":I
    if-eq v13, v14, :cond_4

    .line 874
    invoke-interface {v12}, Landroidx/compose/foundation/text/selection/Selectable;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v15

    if-nez v15, :cond_1

    move-object/from16 v16, v5

    move/from16 v18, v6

    move/from16 v25, v8

    move-object/from16 v19, v9

    goto/16 :goto_3

    .line 876
    .local v15, "localCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_1
    move-object/from16 v16, v5

    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .local v16, "$this$fastForEach$iv":Ljava/util/List;
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 877
    .local v5, "minOffset":I
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 878
    .local v17, "maxOffset":I
    move/from16 v18, v6

    .end local v6    # "$i$f$fastForEach":I
    .local v18, "$i$f$fastForEach":I
    add-int/lit8 v6, v17, -0x1

    if-ne v5, v6, :cond_2

    .line 879
    filled-new-array {v5}, [I

    move-result-object v6

    goto :goto_1

    .line 881
    :cond_2
    add-int/lit8 v6, v17, -0x1

    filled-new-array {v5, v6}, [I

    move-result-object v6

    .line 878
    :goto_1
    nop

    .line 883
    .local v6, "offsets":[I
    sget-object v19, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->invertedInfiniteRect:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/geometry/Rect;->component1()F

    move-result v20

    .local v20, "left":F
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/geometry/Rect;->component2()F

    move-result v21

    .local v21, "top":F
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/geometry/Rect;->component3()F

    move-result v22

    .local v22, "right":F
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/geometry/Rect;->component4()F

    move-result v19

    .line 884
    .local v19, "bottom":F
    move/from16 v23, v5

    .end local v5    # "minOffset":I
    .local v23, "minOffset":I
    array-length v5, v6

    const/16 v24, 0x0

    move/from16 v25, v8

    move/from16 v8, v19

    move-object/from16 v19, v9

    move/from16 v9, v20

    move-object/from16 v20, v10

    move/from16 v10, v21

    move/from16 v21, v11

    move/from16 v11, v22

    move/from16 v22, v13

    move/from16 v13, v24

    .end local v13    # "startOffset":I
    .local v8, "bottom":F
    .local v9, "left":F
    .local v10, "top":F
    .local v11, "right":F
    .local v19, "item$iv":Ljava/lang/Object;
    .local v20, "subSelection":Landroidx/compose/foundation/text/selection/Selection;
    .local v21, "$i$a$-fastForEach-SelectionManagerKt$getSelectedRegionRect$1":I
    .local v22, "startOffset":I
    :goto_2
    if-ge v13, v5, :cond_3

    move/from16 v24, v5

    aget v5, v6, v13

    .line 885
    .local v5, "i":I
    invoke-interface {v12, v5}, Landroidx/compose/foundation/text/selection/Selectable;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v26

    .line 886
    .local v26, "rect":Landroidx/compose/ui/geometry/Rect;
    move/from16 v27, v5

    .end local v5    # "i":I
    .local v27, "i":I
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 887
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 888
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v5

    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 889
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 884
    .end local v26    # "rect":Landroidx/compose/ui/geometry/Rect;
    .end local v27    # "i":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v24

    goto :goto_2

    .line 892
    :cond_3
    move-object v13, v6

    .end local v6    # "offsets":[I
    .local v13, "offsets":[I
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v5

    .line 893
    .local v5, "localTopLeft":J
    move/from16 v24, v9

    move/from16 v26, v10

    .end local v9    # "left":F
    .end local v10    # "top":F
    .local v24, "left":F
    .local v26, "top":F
    invoke-static {v11, v8}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v9

    .line 896
    .local v9, "localBottomRight":J
    invoke-interface {v0, v15, v5, v6}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v27

    .line 895
    nop

    .line 898
    .local v27, "containerTopLeft":J
    invoke-interface {v0, v15, v9, v10}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v29

    .line 897
    nop

    .line 900
    .local v29, "containerBottomRight":J
    invoke-static/range {v27 .. v28}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 901
    .end local v2    # "containerLeft":F
    .local v0, "containerLeft":F
    invoke-static/range {v27 .. v28}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 902
    .end local v3    # "containerTop":F
    .local v2, "containerTop":F
    invoke-static/range {v29 .. v30}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 903
    .end local v4    # "containerRight":F
    .local v3, "containerRight":F
    invoke-static/range {v29 .. v30}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 904
    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_3

    .line 873
    .end local v0    # "containerLeft":F
    .end local v8    # "bottom":F
    .end local v15    # "localCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v16    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v17    # "maxOffset":I
    .end local v18    # "$i$f$fastForEach":I
    .end local v19    # "item$iv":Ljava/lang/Object;
    .end local v20    # "subSelection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v21    # "$i$a$-fastForEach-SelectionManagerKt$getSelectedRegionRect$1":I
    .end local v22    # "startOffset":I
    .end local v23    # "minOffset":I
    .end local v24    # "left":F
    .end local v26    # "top":F
    .end local v27    # "containerTopLeft":J
    .end local v29    # "containerBottomRight":J
    .local v2, "containerLeft":F
    .local v3, "containerTop":F
    .restart local v4    # "containerRight":F
    .local v5, "$this$fastForEach$iv":Ljava/util/List;
    .local v6, "$i$f$fastForEach":I
    .local v9, "item$iv":Ljava/lang/Object;
    .local v10, "subSelection":Landroidx/compose/foundation/text/selection/Selection;
    .local v11, "$i$a$-fastForEach-SelectionManagerKt$getSelectedRegionRect$1":I
    .local v13, "startOffset":I
    :cond_4
    move-object/from16 v16, v5

    move/from16 v18, v6

    move/from16 v25, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v13

    .line 995
    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    .end local v9    # "item$iv":Ljava/lang/Object;
    .end local v10    # "subSelection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v11    # "$i$a$-fastForEach-SelectionManagerKt$getSelectedRegionRect$1":I
    .end local v12    # "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v13    # "startOffset":I
    .end local v14    # "endOffset":I
    .restart local v16    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v18    # "$i$f$fastForEach":I
    .restart local v19    # "item$iv":Ljava/lang/Object;
    :goto_3
    nop

    .line 993
    .end local v19    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    move-object/from16 v5, v16

    move/from16 v6, v18

    move/from16 v8, v25

    goto/16 :goto_0

    .line 997
    .end local v7    # "index$iv":I
    .end local v16    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastForEach":I
    .restart local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v6    # "$i$f$fastForEach":I
    :cond_5
    nop

    .line 905
    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    invoke-direct {v0, v2, v3, v4, v1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v0
.end method

.method public static final merge(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection;)Landroidx/compose/foundation/text/selection/Selection;
    .locals 1
    .param p0, "lhs"    # Landroidx/compose/foundation/text/selection/Selection;
    .param p1, "rhs"    # Landroidx/compose/foundation/text/selection/Selection;

    .line 838
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/Selection;->merge(Landroidx/compose/foundation/text/selection/Selection;)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p1

    :cond_1
    return-object v0
.end method

.method public static final visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 5
    .param p0, "$this$visibleBounds"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 982
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 984
    .local v0, "boundsInWindow":Landroidx/compose/ui/geometry/Rect;
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide v1

    invoke-interface {p0, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->windowToLocal-MK-Hz9U(J)J

    move-result-wide v1

    .line 985
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getBottomRight-F1C5BW0()J

    move-result-wide v3

    invoke-interface {p0, v3, v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->windowToLocal-MK-Hz9U(J)J

    move-result-wide v3

    .line 983
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/RectKt;->Rect-0a9Yr6o(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    return-object v1
.end method
