.class public final Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
.super Ljava/lang/Object;
.source "LazyGridMeasuredItem.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridMeasuredItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridMeasuredItem.kt\nandroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n*L\n1#1,187:1\n183#1:194\n183#1:195\n183#1:198\n33#2,6:188\n1#3:196\n86#4:197\n86#4:199\n*S KotlinDebug\n*F\n+ 1 LazyGridMeasuredItem.kt\nandroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem\n*L\n136#1:194\n140#1:195\n167#1:198\n72#1:188,6\n157#1:197\n171#1:199\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001Bu\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u00a2\u0006\u0002\u0010\u0017J\u000e\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020\u0003J\u0010\u0010A\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u0010B\u001a\u00020?2\u0006\u0010C\u001a\u00020DJ:\u0010E\u001a\u00020?2\u0006\u0010F\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u00032\u0006\u0010G\u001a\u00020\u00032\u0006\u0010H\u001a\u00020\u00032\u0008\u0008\u0002\u00105\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0003J+\u0010I\u001a\u00020\u0013*\u00020\u00132\u0012\u0010J\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030KH\u0082\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008L\u0010MR\u000e\u0010\u000e\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0003@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u001e\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u001bR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\"R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001dR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010%\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u001bR\u0011\u0010\'\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u001bR\u000e\u0010)\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010+\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\"\"\u0004\u0008-\u0010.R&\u0010/\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0013@RX\u0096\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\n\n\u0002\u00102\u001a\u0004\u00080\u00101R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u00103\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u00084\u0010\u001bR\u000e\u0010\n\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u00105\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0003@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u0010\u001bR\u001c\u00107\u001a\u000208X\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\n\n\u0002\u00102\u001a\u0004\u00089\u00101R\u0016\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u00102R\u0018\u0010:\u001a\u00020\u0003*\u00020\u00138BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010<R\u0018\u0010%\u001a\u00020\u0003*\u00020\u00118BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010=\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006N"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;",
        "index",
        "",
        "key",
        "",
        "isVertical",
        "",
        "crossAxisSize",
        "mainAxisSpacing",
        "reverseLayout",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "beforeContentPadding",
        "afterContentPadding",
        "placeables",
        "",
        "Landroidx/compose/ui/layout/Placeable;",
        "visualOffset",
        "Landroidx/compose/ui/unit/IntOffset;",
        "contentType",
        "animator",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;",
        "(ILjava/lang/Object;ZIIZLandroidx/compose/ui/unit/LayoutDirection;IILjava/util/List;JLjava/lang/Object;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "<set-?>",
        "column",
        "getColumn",
        "()I",
        "getContentType",
        "()Ljava/lang/Object;",
        "crossAxisOffset",
        "getCrossAxisOffset",
        "getCrossAxisSize",
        "getIndex",
        "()Z",
        "getKey",
        "mainAxisLayoutSize",
        "mainAxisSize",
        "getMainAxisSize",
        "mainAxisSizeWithSpacings",
        "getMainAxisSizeWithSpacings",
        "maxMainAxisOffset",
        "minMainAxisOffset",
        "nonScrollableItem",
        "getNonScrollableItem",
        "setNonScrollableItem",
        "(Z)V",
        "offset",
        "getOffset-nOcc-ac",
        "()J",
        "J",
        "placeablesCount",
        "getPlaceablesCount",
        "row",
        "getRow",
        "size",
        "Landroidx/compose/ui/unit/IntSize;",
        "getSize-YbymL2g",
        "mainAxis",
        "getMainAxis--gyyYBs",
        "(J)I",
        "(Landroidx/compose/ui/layout/Placeable;)I",
        "applyScrollDelta",
        "",
        "delta",
        "getParentData",
        "place",
        "scope",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "position",
        "mainAxisOffset",
        "layoutWidth",
        "layoutHeight",
        "copy",
        "mainAxisMap",
        "Lkotlin/Function1;",
        "copy-4Tuh3kE",
        "(JLkotlin/jvm/functions/Function1;)J",
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
.field private final afterContentPadding:I

.field private final animator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

.field private final beforeContentPadding:I

.field private column:I

.field private final contentType:Ljava/lang/Object;

.field private final crossAxisSize:I

.field private final index:I

.field private final isVertical:Z

.field private final key:Ljava/lang/Object;

.field private final layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private mainAxisLayoutSize:I

.field private final mainAxisSize:I

.field private final mainAxisSizeWithSpacings:I

.field private maxMainAxisOffset:I

.field private minMainAxisOffset:I

.field private nonScrollableItem:Z

.field private offset:J

.field private final placeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field private final reverseLayout:Z

.field private row:I

.field private final size:J

.field private final visualOffset:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->$stable:I

    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;ZIIZLandroidx/compose/ui/unit/LayoutDirection;IILjava/util/List;JLjava/lang/Object;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;)V
    .locals 21
    .param p1, "index"    # I
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "isVertical"    # Z
    .param p4, "crossAxisSize"    # I
    .param p5, "mainAxisSpacing"    # I
    .param p6, "reverseLayout"    # Z
    .param p7, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;
    .param p8, "beforeContentPadding"    # I
    .param p9, "afterContentPadding"    # I
    .param p10, "placeables"    # Ljava/util/List;
    .param p11, "visualOffset"    # J
    .param p13, "contentType"    # Ljava/lang/Object;
    .param p14, "animator"    # Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "ZIIZ",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "II",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;J",
            "Ljava/lang/Object;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;",
            ")V"
        }
    .end annotation

    .line 29
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    move/from16 v1, p1

    iput v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    .line 31
    move-object/from16 v2, p2

    iput-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->key:Ljava/lang/Object;

    .line 32
    move/from16 v3, p3

    iput-boolean v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical:Z

    .line 37
    move/from16 v4, p4

    iput v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->crossAxisSize:I

    .line 39
    move/from16 v5, p6

    iput-boolean v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->reverseLayout:Z

    .line 40
    move-object/from16 v6, p7

    iput-object v6, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 41
    move/from16 v7, p8

    iput v7, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->beforeContentPadding:I

    .line 42
    move/from16 v8, p9

    iput v8, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->afterContentPadding:I

    .line 43
    move-object/from16 v9, p10

    iput-object v9, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->placeables:Ljava/util/List;

    .line 48
    move-wide/from16 v10, p11

    iput-wide v10, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->visualOffset:J

    .line 49
    move-object/from16 v12, p13

    iput-object v12, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->contentType:Ljava/lang/Object;

    .line 50
    move-object/from16 v13, p14

    iput-object v13, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->animator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    .line 64
    const/high16 v14, -0x80000000

    iput v14, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisLayoutSize:I

    .line 70
    nop

    .line 71
    const/4 v14, 0x0

    .line 72
    .local v14, "maxMainAxis":I
    iget-object v15, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->placeables:Ljava/util/List;

    .local v15, "$this$fastForEach$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 188
    .local v16, "$i$f$fastForEach":I
    nop

    .line 189
    const/16 v17, 0x0

    .local v17, "index$iv":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v2, v17

    .end local v17    # "index$iv":I
    .local v2, "index$iv":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 190
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 191
    .local v17, "item$iv":Ljava/lang/Object;
    move-object/from16 v18, v17

    check-cast v18, Landroidx/compose/ui/layout/Placeable;

    .local v18, "it":Landroidx/compose/ui/layout/Placeable;
    const/16 v19, 0x0

    .line 73
    .local v19, "$i$a$-fastForEach-LazyGridMeasuredItem$1":I
    move/from16 v20, v1

    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical:Z

    if-eqz v1, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_0
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    :goto_1
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 74
    nop

    .line 191
    .end local v18    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v19    # "$i$a$-fastForEach-LazyGridMeasuredItem$1":I
    nop

    .line 189
    .end local v17    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v20

    goto :goto_0

    .line 193
    .end local v2    # "index$iv":I
    :cond_1
    nop

    .line 75
    .end local v15    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v16    # "$i$f$fastForEach":I
    iput v14, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSize:I

    .line 76
    add-int v1, v14, p5

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    iput v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 77
    .end local v14    # "maxMainAxis":I
    nop

    .line 79
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical:Z

    if-eqz v1, :cond_2

    .line 80
    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->crossAxisSize:I

    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSize:I

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v1

    goto :goto_2

    .line 82
    :cond_2
    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSize:I

    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->crossAxisSize:I

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v1

    .line 79
    :goto_2
    iput-wide v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->size:J

    .line 84
    sget-object v1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    .line 87
    const/4 v1, -0x1

    iput v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->row:I

    .line 89
    iput v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->column:I

    .line 29
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;ZIIZLandroidx/compose/ui/unit/LayoutDirection;IILjava/util/List;JLjava/lang/Object;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;-><init>(ILjava/lang/Object;ZIIZLandroidx/compose/ui/unit/LayoutDirection;IILjava/util/List;JLjava/lang/Object;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;)V

    return-void
.end method

.method private final copy-4Tuh3kE(JLkotlin/jvm/functions/Function1;)J
    .locals 3
    .param p1, "$this$copy_u2d4Tuh3kE"    # J
    .param p3, "mainAxisMap"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)J"
        }
    .end annotation

    const/4 v0, 0x0

    .line 183
    .local v0, "$i$f$copy-4Tuh3kE":I
    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical:Z

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    :goto_0
    iget-boolean v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical:Z

    if-eqz v2, :cond_1

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v2

    :goto_1
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v1

    return-wide v1
.end method

.method private final getMainAxis--gyyYBs(J)I
    .locals 1
    .param p1, "$this$mainAxis"    # J

    .line 180
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    :goto_0
    return v0
.end method

.method private final getMainAxisSize(Landroidx/compose/ui/layout/Placeable;)I
    .locals 1
    .param p1, "$this$mainAxisSize"    # Landroidx/compose/ui/layout/Placeable;

    .line 181
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static synthetic position$default(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;IIIIIIILjava/lang/Object;)V
    .locals 9

    .line 105
    and-int/lit8 v0, p7, 0x10

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 110
    move v7, v1

    goto :goto_0

    .line 105
    :cond_0
    move v7, p5

    :goto_0
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_1

    .line 111
    move v8, v1

    goto :goto_1

    .line 105
    :cond_1
    move v8, p6

    :goto_1
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position(IIIIII)V

    return-void
.end method


# virtual methods
.method public final applyScrollDelta(I)V
    .locals 12
    .param p1, "delta"    # I

    .line 133
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->nonScrollableItem:Z

    if-eqz v0, :cond_0

    .line 134
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v0

    .local v0, "$this$copy_u2d4Tuh3kE$iv":J
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    const/4 v3, 0x0

    .line 194
    .local v3, "$i$f$copy-4Tuh3kE":I
    iget-boolean v4, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical:Z

    if-eqz v4, :cond_1

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    .local v4, "it":I
    const/4 v5, 0x0

    .line 136
    .local v5, "$i$a$-copy-4Tuh3kE-LazyGridMeasuredItem$applyScrollDelta$1":I
    add-int/2addr v4, p1

    .line 194
    .end local v4    # "it":I
    .end local v5    # "$i$a$-copy-4Tuh3kE-LazyGridMeasuredItem$applyScrollDelta$1":I
    :goto_0
    iget-boolean v5, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical:Z

    if-eqz v5, :cond_2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v5

    .local v5, "it":I
    const/4 v6, 0x0

    .line 136
    .local v6, "$i$a$-copy-4Tuh3kE-LazyGridMeasuredItem$applyScrollDelta$1":I
    add-int/2addr v5, p1

    .line 194
    .end local v5    # "it":I
    .end local v6    # "$i$a$-copy-4Tuh3kE-LazyGridMeasuredItem$applyScrollDelta$1":I
    goto :goto_1

    :cond_2
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v5

    :goto_1
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v0

    .line 136
    .end local v0    # "$this$copy_u2d4Tuh3kE$iv":J
    .end local v2    # "this_$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v3    # "$i$f$copy-4Tuh3kE":I
    iput-wide v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    .line 137
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getPlaceablesCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    move v2, v1

    .local v2, "index":I
    const/4 v3, 0x0

    .line 138
    .local v3, "$i$a$-repeat-LazyGridMeasuredItem$applyScrollDelta$2":I
    iget-object v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->animator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getAnimation(Ljava/lang/Object;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v4

    .line 139
    .local v4, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    if-eqz v4, :cond_5

    .line 140
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->getRawOffset-nOcc-ac()J

    move-result-wide v5

    .local v5, "$this$copy_u2d4Tuh3kE$iv":J
    move-object v7, p0

    .local v7, "this_$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    const/4 v8, 0x0

    .line 195
    .local v8, "$i$f$copy-4Tuh3kE":I
    iget-boolean v9, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical:Z

    if-eqz v9, :cond_3

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v9

    goto :goto_3

    :cond_3
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v9

    .local v9, "mainAxis":I
    const/4 v10, 0x0

    .line 140
    .local v10, "$i$a$-copy-4Tuh3kE-LazyGridMeasuredItem$applyScrollDelta$2$1":I
    add-int/2addr v9, p1

    .end local v9    # "mainAxis":I
    .end local v10    # "$i$a$-copy-4Tuh3kE-LazyGridMeasuredItem$applyScrollDelta$2$1":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 195
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    :goto_3
    iget-boolean v10, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical:Z

    if-eqz v10, :cond_4

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v10

    .local v10, "mainAxis":I
    const/4 v11, 0x0

    .line 140
    .local v11, "$i$a$-copy-4Tuh3kE-LazyGridMeasuredItem$applyScrollDelta$2$1":I
    add-int/2addr v10, p1

    .line 195
    .end local v10    # "mainAxis":I
    .end local v11    # "$i$a$-copy-4Tuh3kE-LazyGridMeasuredItem$applyScrollDelta$2$1":I
    goto :goto_4

    :cond_4
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v10

    :goto_4
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v5

    .line 140
    .end local v5    # "$this$copy_u2d4Tuh3kE$iv":J
    .end local v7    # "this_$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v8    # "$i$f$copy-4Tuh3kE":I
    invoke-virtual {v4, v5, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setRawOffset--gyyYBs(J)V

    .line 142
    :cond_5
    nop

    .line 137
    .end local v2    # "index":I
    .end local v3    # "$i$a$-repeat-LazyGridMeasuredItem$applyScrollDelta$2":I
    .end local v4    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 143
    :cond_6
    return-void
.end method

.method public getColumn()I
    .locals 1

    .line 89
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->column:I

    return v0
.end method

.method public getContentType()Ljava/lang/Object;
    .locals 1

    .line 49
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->contentType:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCrossAxisOffset()I
    .locals 2

    .line 86
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getCrossAxisSize()I
    .locals 1

    .line 37
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->crossAxisSize:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 30
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 31
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getMainAxisSize()I
    .locals 1

    .line 55
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSize:I

    return v0
.end method

.method public final getMainAxisSizeWithSpacings()I
    .locals 1

    .line 60
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSizeWithSpacings:I

    return v0
.end method

.method public final getNonScrollableItem()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->nonScrollableItem:Z

    return v0
.end method

.method public getOffset-nOcc-ac()J
    .locals 2

    .line 84
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    return-wide v0
.end method

.method public final getParentData(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 68
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getParentData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getPlaceablesCount()I
    .locals 1

    .line 62
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 87
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->row:I

    return v0
.end method

.method public getSize-YbymL2g()J
    .locals 2

    .line 79
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->size:J

    return-wide v0
.end method

.method public final isVertical()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical:Z

    return v0
.end method

.method public final place(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 22
    .param p1, "scope"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 147
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .local v9, "$this$place_u24lambda_u247":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    const/16 v17, 0x0

    .line 148
    .local v17, "$i$a$-with-LazyGridMeasuredItem$place$1":I
    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisLayoutSize:I

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_a

    .line 149
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getPlaceablesCount()I

    move-result v8

    move v7, v3

    :goto_1
    if-ge v7, v8, :cond_9

    move v6, v7

    .local v6, "index":I
    const/16 v18, 0x0

    .line 150
    .local v18, "$i$a$-repeat-LazyGridMeasuredItem$place$1$2":I
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    .line 151
    .local v5, "placeable":Landroidx/compose/ui/layout/Placeable;
    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->minMainAxisOffset:I

    invoke-direct {v0, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    sub-int v3, v1, v2

    .line 152
    .local v3, "minOffset":I
    iget v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->maxMainAxisOffset:I

    .line 154
    .local v4, "maxOffset":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v1

    .line 155
    .local v1, "offset":J
    iget-object v10, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->animator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getAnimation(Ljava/lang/Object;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v19

    .line 156
    .local v19, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    if-eqz v19, :cond_4

    .line 157
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->getPlacementDelta-nOcc-ac()J

    move-result-wide v10

    .local v10, "other$iv":J
    const/4 v12, 0x0

    .line 197
    .local v12, "$i$f$plus-qkQi6aY":I
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v13

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v14

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v13, v14}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v10

    .line 157
    .end local v10    # "other$iv":J
    .end local v12    # "$i$f$plus-qkQi6aY":I
    nop

    .line 159
    .local v10, "animatedOffset":J
    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v12

    if-gt v12, v3, :cond_1

    invoke-direct {v0, v10, v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v12

    if-le v12, v3, :cond_2

    .line 160
    :cond_1
    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v12

    if-lt v12, v4, :cond_3

    invoke-direct {v0, v10, v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v12

    if-lt v12, v4, :cond_3

    .line 162
    :cond_2
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->cancelPlacementAnimation()V

    .line 164
    :cond_3
    move-wide v1, v10

    .line 166
    .end local v10    # "animatedOffset":J
    :cond_4
    iget-boolean v10, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->reverseLayout:Z

    if-eqz v10, :cond_7

    .line 167
    move-wide v10, v1

    .local v10, "$this$copy_u2d4Tuh3kE$iv":J
    move-object/from16 v12, p0

    .local v12, "this_$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    const/4 v13, 0x0

    .line 198
    .local v13, "$i$f$copy-4Tuh3kE":I
    iget-boolean v14, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical:Z

    if-eqz v14, :cond_5

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v14

    move-wide/from16 v20, v1

    goto :goto_2

    :cond_5
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v14

    .local v14, "mainAxisOffset":I
    const/4 v15, 0x0

    .line 168
    .local v15, "$i$a$-copy-4Tuh3kE-LazyGridMeasuredItem$place$1$2$1":I
    move-wide/from16 v20, v1

    .end local v1    # "offset":J
    .local v20, "offset":J
    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisLayoutSize:I

    sub-int/2addr v1, v14

    invoke-direct {v0, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    sub-int/2addr v1, v2

    move v14, v1

    .line 198
    .end local v14    # "mainAxisOffset":I
    .end local v15    # "$i$a$-copy-4Tuh3kE-LazyGridMeasuredItem$place$1$2$1":I
    :goto_2
    iget-boolean v1, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical:Z

    if-eqz v1, :cond_6

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    .local v1, "mainAxisOffset":I
    const/4 v2, 0x0

    .line 168
    .local v2, "$i$a$-copy-4Tuh3kE-LazyGridMeasuredItem$place$1$2$1":I
    iget v15, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisLayoutSize:I

    sub-int/2addr v15, v1

    invoke-direct {v0, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v16

    sub-int v15, v15, v16

    .line 198
    .end local v1    # "mainAxisOffset":I
    .end local v2    # "$i$a$-copy-4Tuh3kE-LazyGridMeasuredItem$place$1$2$1":I
    goto :goto_3

    :cond_6
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v15

    :goto_3
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v1

    .line 167
    .end local v10    # "$this$copy_u2d4Tuh3kE$iv":J
    .end local v12    # "this_$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v13    # "$i$f$copy-4Tuh3kE":I
    nop

    .end local v20    # "offset":J
    .local v1, "offset":J
    goto :goto_4

    .line 166
    :cond_7
    move-wide/from16 v20, v1

    .line 171
    :goto_4
    iget-wide v10, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->visualOffset:J

    .local v10, "other$iv":J
    const/4 v12, 0x0

    .line 199
    .local v12, "$i$f$plus-qkQi6aY":I
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v13

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v14

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v13, v14}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v11

    .line 171
    .end local v10    # "other$iv":J
    .end local v12    # "$i$f$plus-qkQi6aY":I
    nop

    .line 172
    .end local v1    # "offset":J
    .local v11, "offset":J
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical:Z

    if-eqz v1, :cond_8

    .line 173
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    move-object v10, v5

    invoke-static/range {v9 .. v16}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    move/from16 v16, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    move v10, v6

    move v13, v7

    move v14, v8

    goto :goto_5

    .line 175
    :cond_8
    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    const/4 v15, 0x0

    move-object v1, v9

    move-object v2, v5

    move/from16 v16, v3

    move/from16 v20, v4

    .end local v3    # "minOffset":I
    .end local v4    # "maxOffset":I
    .local v16, "minOffset":I
    .local v20, "maxOffset":I
    move-wide v3, v11

    move-object/from16 v21, v5

    .end local v5    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .local v21, "placeable":Landroidx/compose/ui/layout/Placeable;
    move v5, v10

    move v10, v6

    .end local v6    # "index":I
    .local v10, "index":I
    move-object v6, v13

    move v13, v7

    move v7, v14

    move v14, v8

    move-object v8, v15

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 177
    :goto_5
    nop

    .line 149
    .end local v10    # "index":I
    .end local v11    # "offset":J
    .end local v16    # "minOffset":I
    .end local v18    # "$i$a$-repeat-LazyGridMeasuredItem$place$1$2":I
    .end local v19    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .end local v20    # "maxOffset":I
    .end local v21    # "placeable":Landroidx/compose/ui/layout/Placeable;
    add-int/lit8 v7, v13, 0x1

    move v8, v14

    goto/16 :goto_1

    .line 178
    :cond_9
    nop

    .line 147
    .end local v9    # "$this$place_u24lambda_u247":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v17    # "$i$a$-with-LazyGridMeasuredItem$place$1":I
    nop

    .line 178
    return-void

    .line 196
    .restart local v9    # "$this$place_u24lambda_u247":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .restart local v17    # "$i$a$-with-LazyGridMeasuredItem$place$1":I
    :cond_a
    const/4 v1, 0x0

    .line 148
    .local v1, "$i$a$-require-LazyGridMeasuredItem$place$1$1":I
    nop

    .end local v1    # "$i$a$-require-LazyGridMeasuredItem$place$1$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "position() should be called first"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final position(IIIIII)V
    .locals 4
    .param p1, "mainAxisOffset"    # I
    .param p2, "crossAxisOffset"    # I
    .param p3, "layoutWidth"    # I
    .param p4, "layoutHeight"    # I
    .param p5, "row"    # I
    .param p6, "column"    # I

    .line 113
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical:Z

    if-eqz v0, :cond_0

    move v0, p4

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iput v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisLayoutSize:I

    .line 114
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical:Z

    if-eqz v0, :cond_1

    move v0, p3

    goto :goto_1

    :cond_1
    move v0, p4

    .line 116
    .local v0, "crossAxisLayoutSize":I
    :goto_1
    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v1, v2, :cond_2

    .line 117
    sub-int v1, v0, p2

    iget v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->crossAxisSize:I

    sub-int/2addr v1, v2

    goto :goto_2

    .line 119
    :cond_2
    move v1, p2

    .line 116
    :goto_2
    nop

    .line 121
    .local v1, "crossAxisOffset":I
    iget-boolean v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical:Z

    if-eqz v2, :cond_3

    .line 122
    invoke-static {v1, p1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v2

    goto :goto_3

    .line 124
    :cond_3
    invoke-static {p1, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v2

    .line 121
    :goto_3
    iput-wide v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    .line 126
    iput p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->row:I

    .line 127
    iput p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->column:I

    .line 128
    iget v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->beforeContentPadding:I

    neg-int v2, v2

    iput v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->minMainAxisOffset:I

    .line 129
    iget v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisLayoutSize:I

    iget v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->afterContentPadding:I

    add-int/2addr v2, v3

    iput v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->maxMainAxisOffset:I

    .line 130
    return-void
.end method

.method public final setNonScrollableItem(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 96
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->nonScrollableItem:Z

    return-void
.end method
