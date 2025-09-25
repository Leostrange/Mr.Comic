.class public final Landroidx/compose/foundation/layout/RowColumnImplKt;
.super Ljava/lang/Object;
.source "RowColumnImpl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRowColumnImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RowColumnImpl.kt\nandroidx/compose/foundation/layout/RowColumnImplKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,871:1\n33#2,6:872\n33#2,6:878\n33#2,6:884\n*S KotlinDebug\n*F\n+ 1 RowColumnImpl.kt\nandroidx/compose/foundation/layout/RowColumnImplKt\n*L\n565#1:872,6\n590#1:878,6\n616#1:884,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u001a.\u0010\u0012\u001a \u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u0014\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u00132\u0006\u0010\u0016\u001a\u00020\u0017H\u0002\u001a.\u0010\u0018\u001a \u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u0014\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u00132\u0006\u0010\u0016\u001a\u00020\u0017H\u0002\u001a.\u0010\u0019\u001a \u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u0014\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u00132\u0006\u0010\u0016\u001a\u00020\u0017H\u0002\u001a.\u0010\u001a\u001a \u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u0014\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u00132\u0006\u0010\u0016\u001a\u00020\u0017H\u0002\u001ad\u0010\u001b\u001a\u00020\u00152\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00142\u001d\u0010\u001d\u001a\u0019\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u001e\u00a2\u0006\u0002\u0008\u001f2\u001d\u0010 \u001a\u0019\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u001e\u00a2\u0006\u0002\u0008\u001f2\u0006\u0010!\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u0015H\u0002\u001aE\u0010#\u001a\u00020\u00152\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00142\u001d\u0010\u001d\u001a\u0019\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u001e\u00a2\u0006\u0002\u0008\u001f2\u0006\u0010$\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u0015H\u0002\u001at\u0010%\u001a\u00020\u00152\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00142\u001d\u0010&\u001a\u0019\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u001e\u00a2\u0006\u0002\u0008\u001f2\u001d\u0010\'\u001a\u0019\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u001e\u00a2\u0006\u0002\u0008\u001f2\u0006\u0010$\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\u00172\u0006\u0010)\u001a\u00020\u0017H\u0002\"\u001c\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u001a\u0010\u0005\u001a\u00020\u0006*\u0004\u0018\u00010\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u001a\u0010\t\u001a\u00020\u0006*\u0004\u0018\u00010\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0008\"\u001a\u0010\n\u001a\u0004\u0018\u00010\u0002*\u00020\u000b8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\"\u001a\u0010\u000e\u001a\u00020\u000f*\u0004\u0018\u00010\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006*"
    }
    d2 = {
        "crossAxisAlignment",
        "Landroidx/compose/foundation/layout/CrossAxisAlignment;",
        "Landroidx/compose/foundation/layout/RowColumnParentData;",
        "getCrossAxisAlignment",
        "(Landroidx/compose/foundation/layout/RowColumnParentData;)Landroidx/compose/foundation/layout/CrossAxisAlignment;",
        "fill",
        "",
        "getFill",
        "(Landroidx/compose/foundation/layout/RowColumnParentData;)Z",
        "isRelative",
        "rowColumnParentData",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "getRowColumnParentData",
        "(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;",
        "weight",
        "",
        "getWeight",
        "(Landroidx/compose/foundation/layout/RowColumnParentData;)F",
        "MaxIntrinsicHeightMeasureBlock",
        "Lkotlin/Function3;",
        "",
        "",
        "orientation",
        "Landroidx/compose/foundation/layout/LayoutOrientation;",
        "MaxIntrinsicWidthMeasureBlock",
        "MinIntrinsicHeightMeasureBlock",
        "MinIntrinsicWidthMeasureBlock",
        "intrinsicCrossAxisSize",
        "children",
        "mainAxisSize",
        "Lkotlin/Function2;",
        "Lkotlin/ExtensionFunctionType;",
        "crossAxisSize",
        "mainAxisAvailable",
        "mainAxisSpacing",
        "intrinsicMainAxisSize",
        "crossAxisAvailable",
        "intrinsicSize",
        "intrinsicMainSize",
        "intrinsicCrossSize",
        "layoutOrientation",
        "intrinsicOrientation",
        "foundation-layout_release"
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
.method private static final MaxIntrinsicHeightMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;
    .locals 1
    .param p0, "orientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/LayoutOrientation;",
            ")",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 430
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p0, v0, :cond_0

    .line 431
    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->getHorizontalMaxHeight()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    goto :goto_0

    .line 433
    :cond_0
    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->getVerticalMaxHeight()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    .line 434
    :goto_0
    return-object v0
.end method

.method private static final MaxIntrinsicWidthMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;
    .locals 1
    .param p0, "orientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/LayoutOrientation;",
            ")",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 423
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p0, v0, :cond_0

    .line 424
    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->getHorizontalMaxWidth()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    goto :goto_0

    .line 426
    :cond_0
    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->getVerticalMaxWidth()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    .line 427
    :goto_0
    return-object v0
.end method

.method private static final MinIntrinsicHeightMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;
    .locals 1
    .param p0, "orientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/LayoutOrientation;",
            ")",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 416
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p0, v0, :cond_0

    .line 417
    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->getHorizontalMinHeight()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    goto :goto_0

    .line 419
    :cond_0
    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->getVerticalMinHeight()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    .line 420
    :goto_0
    return-object v0
.end method

.method private static final MinIntrinsicWidthMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;
    .locals 1
    .param p0, "orientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/LayoutOrientation;",
            ")",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 409
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p0, v0, :cond_0

    .line 410
    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->getHorizontalMinWidth()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    goto :goto_0

    .line 412
    :cond_0
    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->getVerticalMinWidth()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    .line 413
    :goto_0
    return-object v0
.end method

.method public static final synthetic access$MaxIntrinsicHeightMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;
    .locals 1
    .param p0, "orientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->MaxIntrinsicHeightMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$MaxIntrinsicWidthMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;
    .locals 1
    .param p0, "orientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->MaxIntrinsicWidthMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$MinIntrinsicHeightMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;
    .locals 1
    .param p0, "orientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->MinIntrinsicHeightMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$MinIntrinsicWidthMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;
    .locals 1
    .param p0, "orientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->MinIntrinsicWidthMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$intrinsicSize(Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IILandroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/LayoutOrientation;)I
    .locals 1
    .param p0, "children"    # Ljava/util/List;
    .param p1, "intrinsicMainSize"    # Lkotlin/jvm/functions/Function2;
    .param p2, "intrinsicCrossSize"    # Lkotlin/jvm/functions/Function2;
    .param p3, "crossAxisAvailable"    # I
    .param p4, "mainAxisSpacing"    # I
    .param p5, "layoutOrientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;
    .param p6, "intrinsicOrientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/foundation/layout/RowColumnImplKt;->intrinsicSize(Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IILandroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    move-result v0

    return v0
.end method

.method public static final getCrossAxisAlignment(Landroidx/compose/foundation/layout/RowColumnParentData;)Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 1
    .param p0, "$this$crossAxisAlignment"    # Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 403
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/RowColumnParentData;->getCrossAxisAlignment()Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final getFill(Landroidx/compose/foundation/layout/RowColumnParentData;)Z
    .locals 1
    .param p0, "$this$fill"    # Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 400
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/RowColumnParentData;->getFill()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static final getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;
    .locals 2
    .param p0, "$this$rowColumnParentData"    # Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 394
    invoke-interface {p0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->getParentData()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/compose/foundation/layout/RowColumnParentData;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/foundation/layout/RowColumnParentData;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F
    .locals 1
    .param p0, "$this$weight"    # Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 397
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/RowColumnParentData;->getWeight()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final intrinsicCrossAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;II)I
    .locals 18
    .param p0, "children"    # Ljava/util/List;
    .param p1, "mainAxisSize"    # Lkotlin/jvm/functions/Function2;
    .param p2, "crossAxisSize"    # Lkotlin/jvm/functions/Function2;
    .param p3, "mainAxisAvailable"    # I
    .param p4, "mainAxisSpacing"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II)I"
        }
    .end annotation

    .line 586
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 587
    :cond_0
    const/4 v2, 0x0

    .local v2, "fixedSpace":I
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    mul-int v4, v4, p4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 588
    const/4 v4, 0x0

    .line 589
    .local v4, "crossAxisMax":I
    const/4 v6, 0x0

    .line 590
    .local v6, "totalWeight":F
    move-object/from16 v7, p0

    .local v7, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 878
    .local v8, "$i$f$fastForEach":I
    nop

    .line 879
    const/4 v9, 0x0

    .local v9, "index$iv":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    :goto_0
    const/4 v11, 0x0

    const v12, 0x7fffffff

    if-ge v9, v10, :cond_4

    .line 880
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 881
    .local v13, "item$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v14, "child":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v15, 0x0

    .line 591
    .local v15, "$i$a$-fastForEach-RowColumnImplKt$intrinsicCrossAxisSize$1":I
    invoke-static {v14}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v16

    .line 592
    .local v16, "weight":F
    cmpg-float v17, v16, v11

    if-nez v17, :cond_1

    move/from16 v17, v5

    goto :goto_1

    :cond_1
    move/from16 v17, v3

    :goto_1
    if-eqz v17, :cond_2

    .line 595
    nop

    .line 596
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v12, p1

    invoke-interface {v12, v14, v11}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 597
    sub-int v5, v1, v2

    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 595
    nop

    .line 599
    .local v5, "mainAxisSpace":I
    add-int/2addr v2, v5

    .line 601
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v14, v11}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .end local v5    # "mainAxisSpace":I
    goto :goto_2

    .line 602
    :cond_2
    move-object/from16 v12, p1

    cmpl-float v5, v16, v11

    if-lez v5, :cond_3

    .line 603
    add-float v6, v6, v16

    .line 605
    :cond_3
    :goto_2
    nop

    .line 881
    .end local v14    # "child":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v15    # "$i$a$-fastForEach-RowColumnImplKt$intrinsicCrossAxisSize$1":I
    .end local v16    # "weight":F
    nop

    .line 879
    .end local v13    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x1

    goto :goto_0

    .line 883
    .end local v9    # "index$iv":I
    :cond_4
    nop

    .line 608
    .end local v7    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    cmpg-float v5, v6, v11

    if-nez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    move v5, v3

    :goto_3
    if-eqz v5, :cond_6

    .line 609
    goto :goto_4

    .line 610
    :cond_6
    if-ne v1, v12, :cond_7

    .line 611
    move v3, v12

    goto :goto_4

    .line 613
    :cond_7
    sub-int v5, v1, v2

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    .line 608
    :goto_4
    nop

    .line 616
    .local v3, "weightUnitSpace":I
    move-object/from16 v5, p0

    .local v5, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 884
    .local v7, "$i$f$fastForEach":I
    nop

    .line 885
    const/4 v8, 0x0

    .local v8, "index$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    :goto_5
    if-ge v8, v9, :cond_a

    .line 886
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 887
    .local v10, "item$iv":Ljava/lang/Object;
    move-object v13, v10

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v13, "child":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v14, 0x0

    .line 617
    .local v14, "$i$a$-fastForEach-RowColumnImplKt$intrinsicCrossAxisSize$2":I
    invoke-static {v13}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v15

    invoke-static {v15}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v15

    .line 619
    .local v15, "weight":F
    cmpl-float v16, v15, v11

    if-lez v16, :cond_9

    .line 620
    nop

    .line 621
    nop

    .line 622
    nop

    .line 623
    if-eq v3, v12, :cond_8

    .line 624
    int-to-float v11, v3

    mul-float/2addr v11, v15

    invoke-static {v11}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v11

    goto :goto_6

    .line 626
    :cond_8
    move v11, v12

    :goto_6
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 622
    invoke-interface {v0, v13, v11}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 620
    move v4, v11

    .line 631
    :cond_9
    nop

    .line 887
    .end local v13    # "child":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v14    # "$i$a$-fastForEach-RowColumnImplKt$intrinsicCrossAxisSize$2":I
    .end local v15    # "weight":F
    nop

    .line 885
    .end local v10    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    const/4 v11, 0x0

    goto :goto_5

    .line 889
    .end local v8    # "index$iv":I
    :cond_a
    nop

    .line 632
    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    return v4
.end method

.method private static final intrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function2;II)I
    .locals 17
    .param p0, "children"    # Ljava/util/List;
    .param p1, "mainAxisSize"    # Lkotlin/jvm/functions/Function2;
    .param p2, "crossAxisAvailable"    # I
    .param p3, "mainAxisSpacing"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II)I"
        }
    .end annotation

    .line 561
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 562
    :cond_0
    const/4 v0, 0x0

    .line 563
    .local v0, "weightUnitSpace":I
    const/4 v2, 0x0

    .line 564
    .local v2, "fixedSpace":I
    const/4 v3, 0x0

    .line 565
    .local v3, "totalWeight":F
    move-object/from16 v4, p0

    .local v4, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 872
    .local v5, "$i$f$fastForEach":I
    nop

    .line 873
    const/4 v6, 0x0

    .local v6, "index$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_0
    const/4 v8, 0x1

    if-ge v6, v7, :cond_4

    .line 874
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 875
    .local v9, "item$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v10, "child":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v11, 0x0

    .line 566
    .local v11, "$i$a$-fastForEach-RowColumnImplKt$intrinsicMainAxisSize$1":I
    invoke-static {v10}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v12

    invoke-static {v12}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v12

    .line 567
    .local v12, "weight":F
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v14, p1

    invoke-interface {v14, v10, v13}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    .line 568
    .local v13, "size":I
    const/4 v15, 0x0

    cmpg-float v16, v12, v15

    if-nez v16, :cond_1

    goto :goto_1

    :cond_1
    move v8, v1

    :goto_1
    if-eqz v8, :cond_2

    .line 569
    add-int/2addr v2, v13

    goto :goto_2

    .line 570
    :cond_2
    cmpl-float v8, v12, v15

    if-lez v8, :cond_3

    .line 571
    add-float/2addr v3, v12

    .line 572
    int-to-float v8, v13

    div-float/2addr v8, v12

    invoke-static {v8}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 574
    :cond_3
    :goto_2
    nop

    .line 875
    .end local v10    # "child":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v11    # "$i$a$-fastForEach-RowColumnImplKt$intrinsicMainAxisSize$1":I
    .end local v12    # "weight":F
    .end local v13    # "size":I
    nop

    .line 873
    .end local v9    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v14, p1

    .line 877
    .end local v6    # "index$iv":I
    nop

    .line 575
    .end local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    int-to-float v1, v0

    mul-float/2addr v1, v3

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    add-int/2addr v1, v2

    .line 576
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v8

    mul-int v4, v4, p3

    .line 575
    add-int/2addr v1, v4

    return v1
.end method

.method private static final intrinsicSize(Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IILandroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/LayoutOrientation;)I
    .locals 1
    .param p0, "children"    # Ljava/util/List;
    .param p1, "intrinsicMainSize"    # Lkotlin/jvm/functions/Function2;
    .param p2, "intrinsicCrossSize"    # Lkotlin/jvm/functions/Function2;
    .param p3, "crossAxisAvailable"    # I
    .param p4, "mainAxisSpacing"    # I
    .param p5, "layoutOrientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;
    .param p6, "intrinsicOrientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II",
            "Landroidx/compose/foundation/layout/LayoutOrientation;",
            "Landroidx/compose/foundation/layout/LayoutOrientation;",
            ")I"
        }
    .end annotation

    .line 543
    if-ne p5, p6, :cond_0

    .line 544
    invoke-static {p0, p1, p3, p4}, Landroidx/compose/foundation/layout/RowColumnImplKt;->intrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function2;II)I

    move-result v0

    goto :goto_0

    .line 547
    :cond_0
    nop

    .line 548
    nop

    .line 549
    nop

    .line 550
    nop

    .line 551
    nop

    .line 546
    invoke-static {p0, p2, p1, p3, p4}, Landroidx/compose/foundation/layout/RowColumnImplKt;->intrinsicCrossAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;II)I

    move-result v0

    .line 553
    :goto_0
    return v0
.end method

.method public static final isRelative(Landroidx/compose/foundation/layout/RowColumnParentData;)Z
    .locals 1
    .param p0, "$this$isRelative"    # Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 406
    invoke-static {p0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getCrossAxisAlignment(Landroidx/compose/foundation/layout/RowColumnParentData;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/CrossAxisAlignment;->isRelative$foundation_layout_release()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
