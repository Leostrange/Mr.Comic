.class public final Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
.super Ljava/lang/Object;
.source "LazyListMeasuredItem.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListItemInfo;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListMeasuredItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListMeasuredItem.kt\nandroidx/compose/foundation/lazy/LazyListMeasuredItem\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n*L\n1#1,224:1\n220#1:237\n220#1:240\n33#2,6:225\n69#2,6:231\n1#3:238\n86#4:239\n86#4:241\n*S KotlinDebug\n*F\n+ 1 LazyListMeasuredItem.kt\nandroidx/compose/foundation/lazy/LazyListMeasuredItem\n*L\n160#1:237\n204#1:240\n93#1:225,6\n119#1:231,6\n188#1:239\n208#1:241\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u0015\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0083\u0001\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0008\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u00a2\u0006\u0002\u0010\u001aJ\u0016\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020\u00032\u0006\u0010?\u001a\u00020\u0008J\u001b\u0010,\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008@\u0010AJ\u0010\u0010B\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0002\u001a\u00020\u0003J\u0016\u0010C\u001a\u00020=2\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020\u0008J\u001e\u0010G\u001a\u00020=2\u0006\u0010+\u001a\u00020\u00032\u0006\u0010H\u001a\u00020\u00032\u0006\u0010I\u001a\u00020\u0003J+\u0010J\u001a\u00020\u0014*\u00020\u00142\u0012\u0010K\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030LH\u0082\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008M\u0010NR\u000e\u0010\u0011\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u0016X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u001d\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001fR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010!R\u0014\u0010\u0015\u001a\u00020\u0016X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010&\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010!\"\u0004\u0008(\u0010)R\u001e\u0010+\u001a\u00020\u00032\u0006\u0010*\u001a\u00020\u0003@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u001fR\u000e\u0010-\u001a\u00020.X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010/\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u00080\u0010\u001fR\u000e\u0010\u000f\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u00101\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010\u001fR\u0011\u00103\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010\u001fR\u000e\u0010\u0012\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u00105R\u0018\u00106\u001a\u00020\u0003*\u00020\u00148BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00087\u00108R\u0018\u00109\u001a\u00020\u0003*\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010;\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006O"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
        "Landroidx/compose/foundation/lazy/LazyListItemInfo;",
        "index",
        "",
        "placeables",
        "",
        "Landroidx/compose/ui/layout/Placeable;",
        "isVertical",
        "",
        "horizontalAlignment",
        "Landroidx/compose/ui/Alignment$Horizontal;",
        "verticalAlignment",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "reverseLayout",
        "beforeContentPadding",
        "afterContentPadding",
        "spacing",
        "visualOffset",
        "Landroidx/compose/ui/unit/IntOffset;",
        "key",
        "",
        "contentType",
        "animator",
        "Landroidx/compose/foundation/lazy/LazyListItemAnimator;",
        "(ILjava/util/List;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZIIIJLjava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/lazy/LazyListItemAnimator;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getContentType",
        "()Ljava/lang/Object;",
        "crossAxisSize",
        "getCrossAxisSize",
        "()I",
        "getIndex",
        "()Z",
        "getKey",
        "mainAxisLayoutSize",
        "maxMainAxisOffset",
        "minMainAxisOffset",
        "nonScrollableItem",
        "getNonScrollableItem",
        "setNonScrollableItem",
        "(Z)V",
        "<set-?>",
        "offset",
        "getOffset",
        "placeableOffsets",
        "",
        "placeablesCount",
        "getPlaceablesCount",
        "size",
        "getSize",
        "sizeWithSpacings",
        "getSizeWithSpacings",
        "J",
        "mainAxis",
        "getMainAxis--gyyYBs",
        "(J)I",
        "mainAxisSize",
        "getMainAxisSize",
        "(Landroidx/compose/ui/layout/Placeable;)I",
        "applyScrollDelta",
        "",
        "delta",
        "updateAnimations",
        "getOffset-Bjo55l4",
        "(I)J",
        "getParentData",
        "place",
        "scope",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "isLookingAhead",
        "position",
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

.field private final animator:Landroidx/compose/foundation/lazy/LazyListItemAnimator;

.field private final beforeContentPadding:I

.field private final contentType:Ljava/lang/Object;

.field private final crossAxisSize:I

.field private final horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

.field private final index:I

.field private final isVertical:Z

.field private final key:Ljava/lang/Object;

.field private final layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private mainAxisLayoutSize:I

.field private maxMainAxisOffset:I

.field private minMainAxisOffset:I

.field private nonScrollableItem:Z

.field private offset:I

.field private final placeableOffsets:[I

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

.field private final size:I

.field private final sizeWithSpacings:I

.field private final spacing:I

.field private final verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

.field private final visualOffset:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->$stable:I

    return-void
.end method

.method private constructor <init>(ILjava/util/List;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZIIIJLjava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/lazy/LazyListItemAnimator;)V
    .locals 21
    .param p1, "index"    # I
    .param p2, "placeables"    # Ljava/util/List;
    .param p3, "isVertical"    # Z
    .param p4, "horizontalAlignment"    # Landroidx/compose/ui/Alignment$Horizontal;
    .param p5, "verticalAlignment"    # Landroidx/compose/ui/Alignment$Vertical;
    .param p6, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;
    .param p7, "reverseLayout"    # Z
    .param p8, "beforeContentPadding"    # I
    .param p9, "afterContentPadding"    # I
    .param p10, "spacing"    # I
    .param p11, "visualOffset"    # J
    .param p13, "key"    # Ljava/lang/Object;
    .param p14, "contentType"    # Ljava/lang/Object;
    .param p15, "animator"    # Landroidx/compose/foundation/lazy/LazyListItemAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;Z",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "ZIIIJ",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroidx/compose/foundation/lazy/LazyListItemAnimator;",
            ")V"
        }
    .end annotation

    .line 34
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    move/from16 v1, p1

    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 36
    move-object/from16 v2, p2

    iput-object v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeables:Ljava/util/List;

    .line 37
    move/from16 v3, p3

    iput-boolean v3, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    .line 38
    move-object/from16 v4, p4

    iput-object v4, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    .line 39
    move-object/from16 v5, p5

    iput-object v5, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    .line 40
    move-object/from16 v6, p6

    iput-object v6, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 41
    move/from16 v7, p7

    iput-boolean v7, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->reverseLayout:Z

    .line 42
    move/from16 v8, p8

    iput v8, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->beforeContentPadding:I

    .line 43
    move/from16 v9, p9

    iput v9, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->afterContentPadding:I

    .line 48
    move/from16 v10, p10

    iput v10, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->spacing:I

    .line 53
    move-wide/from16 v11, p11

    iput-wide v11, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->visualOffset:J

    .line 54
    move-object/from16 v13, p13

    iput-object v13, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->key:Ljava/lang/Object;

    .line 55
    move-object/from16 v14, p14

    iput-object v14, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->contentType:Ljava/lang/Object;

    .line 56
    move-object/from16 v15, p15

    iput-object v15, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->animator:Landroidx/compose/foundation/lazy/LazyListItemAnimator;

    .line 82
    const/high16 v1, -0x80000000

    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisLayoutSize:I

    .line 90
    nop

    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "mainAxisSize":I
    const/16 v16, 0x0

    .line 93
    .local v16, "maxCrossAxis":I
    move/from16 v17, v1

    .end local v1    # "mainAxisSize":I
    .local v17, "mainAxisSize":I
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeables:Ljava/util/List;

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/16 v18, 0x0

    .line 225
    .local v18, "$i$f$fastForEach":I
    nop

    .line 226
    const/16 v19, 0x0

    .local v19, "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v4, v16

    move/from16 v3, v17

    move/from16 v5, v19

    .end local v16    # "maxCrossAxis":I
    .end local v17    # "mainAxisSize":I
    .end local v19    # "index$iv":I
    .local v3, "mainAxisSize":I
    .local v4, "maxCrossAxis":I
    .local v5, "index$iv":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 227
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 228
    .local v16, "item$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    check-cast v17, Landroidx/compose/ui/layout/Placeable;

    .local v17, "it":Landroidx/compose/ui/layout/Placeable;
    const/16 v19, 0x0

    .line 94
    .local v19, "$i$a$-fastForEach-LazyListMeasuredItem$1":I
    move-object/from16 v20, v1

    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .local v20, "$this$fastForEach$iv":Ljava/util/List;
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-eqz v1, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_0
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    :goto_1
    add-int/2addr v3, v1

    .line 95
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-nez v1, :cond_1

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    goto :goto_2

    :cond_1
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    :goto_2
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 96
    nop

    .line 228
    .end local v17    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v19    # "$i$a$-fastForEach-LazyListMeasuredItem$1":I
    nop

    .line 226
    .end local v16    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v20

    goto :goto_0

    .end local v20    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v1    # "$this$fastForEach$iv":Ljava/util/List;
    :cond_2
    move-object/from16 v20, v1

    .line 230
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "index$iv":I
    .restart local v20    # "$this$fastForEach$iv":Ljava/util/List;
    nop

    .line 97
    .end local v18    # "$i$f$fastForEach":I
    .end local v20    # "$this$fastForEach$iv":Ljava/util/List;
    iput v3, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->size:I

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSize()I

    move-result v1

    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->spacing:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->sizeWithSpacings:I

    .line 99
    iput v4, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    .line 100
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeableOffsets:[I

    .line 101
    .end local v3    # "mainAxisSize":I
    .end local v4    # "maxCrossAxis":I
    nop

    .line 34
    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZIIIJLjava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/lazy/LazyListItemAnimator;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p15}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;-><init>(ILjava/util/List;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZIIIJLjava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/lazy/LazyListItemAnimator;)V

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

    .line 220
    .local v0, "$i$f$copy-4Tuh3kE":I
    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

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
    iget-boolean v2, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

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

    .line 217
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

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

    .line 218
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

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


# virtual methods
.method public final applyScrollDelta(IZ)V
    .locals 12
    .param p1, "delta"    # I
    .param p2, "updateAnimations"    # Z

    .line 145
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->nonScrollableItem:Z

    if-eqz v0, :cond_0

    .line 146
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    .line 149
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeableOffsets:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    move v3, v2

    .local v3, "index":I
    const/4 v4, 0x0

    .line 152
    .local v4, "$i$a$-repeat-LazyListMeasuredItem$applyScrollDelta$1":I
    iget-boolean v5, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-eqz v5, :cond_1

    rem-int/lit8 v5, v3, 0x2

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    :cond_1
    iget-boolean v5, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-nez v5, :cond_3

    rem-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_3

    .line 153
    :cond_2
    iget-object v5, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeableOffsets:[I

    aget v6, v5, v3

    add-int/2addr v6, p1

    aput v6, v5, v3

    .line 155
    :cond_3
    nop

    .line 149
    .end local v3    # "index":I
    .end local v4    # "$i$a$-repeat-LazyListMeasuredItem$applyScrollDelta$1":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :cond_4
    if-eqz p2, :cond_8

    .line 157
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getPlaceablesCount()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_8

    move v2, v1

    .local v2, "index":I
    const/4 v3, 0x0

    .line 158
    .local v3, "$i$a$-repeat-LazyListMeasuredItem$applyScrollDelta$2":I
    iget-object v4, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->animator:Landroidx/compose/foundation/lazy/LazyListItemAnimator;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->getAnimation(Ljava/lang/Object;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v4

    .line 159
    .local v4, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    if-eqz v4, :cond_7

    .line 160
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->getRawOffset-nOcc-ac()J

    move-result-wide v5

    .local v5, "$this$copy_u2d4Tuh3kE$iv":J
    move-object v7, p0

    .local v7, "this_$iv":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/4 v8, 0x0

    .line 237
    .local v8, "$i$f$copy-4Tuh3kE":I
    iget-boolean v9, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-eqz v9, :cond_5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v9

    goto :goto_2

    :cond_5
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v9

    .local v9, "mainAxis":I
    const/4 v10, 0x0

    .line 160
    .local v10, "$i$a$-copy-4Tuh3kE-LazyListMeasuredItem$applyScrollDelta$2$1":I
    add-int/2addr v9, p1

    .end local v9    # "mainAxis":I
    .end local v10    # "$i$a$-copy-4Tuh3kE-LazyListMeasuredItem$applyScrollDelta$2$1":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 237
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    :goto_2
    iget-boolean v10, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-eqz v10, :cond_6

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v10

    .local v10, "mainAxis":I
    const/4 v11, 0x0

    .line 160
    .local v11, "$i$a$-copy-4Tuh3kE-LazyListMeasuredItem$applyScrollDelta$2$1":I
    add-int/2addr v10, p1

    .line 237
    .end local v10    # "mainAxis":I
    .end local v11    # "$i$a$-copy-4Tuh3kE-LazyListMeasuredItem$applyScrollDelta$2$1":I
    goto :goto_3

    :cond_6
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v10

    :goto_3
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v5

    .line 160
    .end local v5    # "$this$copy_u2d4Tuh3kE$iv":J
    .end local v7    # "this_$iv":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v8    # "$i$f$copy-4Tuh3kE":I
    invoke-virtual {v4, v5, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setRawOffset--gyyYBs(J)V

    .line 162
    :cond_7
    nop

    .line 157
    .end local v2    # "index":I
    .end local v3    # "$i$a$-repeat-LazyListMeasuredItem$applyScrollDelta$2":I
    .end local v4    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 164
    :cond_8
    return-void
.end method

.method public getContentType()Ljava/lang/Object;
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->contentType:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCrossAxisSize()I
    .locals 1

    .line 74
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 35
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 54
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getNonScrollableItem()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->nonScrollableItem:Z

    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 58
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    return v0
.end method

.method public final getOffset-Bjo55l4(I)J
    .locals 3
    .param p1, "index"    # I

    .line 142
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeableOffsets:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeableOffsets:[I

    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getParentData(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 105
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getParentData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getPlaceablesCount()I
    .locals 1

    .line 103
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 64
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->size:I

    return v0
.end method

.method public final getSizeWithSpacings()I
    .locals 1

    .line 69
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->sizeWithSpacings:I

    return v0
.end method

.method public final isVertical()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    return v0
.end method

.method public final place(Landroidx/compose/ui/layout/Placeable$PlacementScope;Z)V
    .locals 23
    .param p1, "scope"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .param p2, "isLookingAhead"    # Z

    .line 169
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .local v9, "$this$place_u24lambda_u2410":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    const/16 v17, 0x0

    .line 170
    .local v17, "$i$a$-with-LazyListMeasuredItem$place$1":I
    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisLayoutSize:I

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_c

    .line 171
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getPlaceablesCount()I

    move-result v8

    move v7, v3

    :goto_1
    if-ge v7, v8, :cond_b

    move v6, v7

    .local v6, "index":I
    const/16 v18, 0x0

    .line 172
    .local v18, "$i$a$-repeat-LazyListMeasuredItem$place$1$2":I
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    .line 173
    .local v5, "placeable":Landroidx/compose/ui/layout/Placeable;
    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->minMainAxisOffset:I

    invoke-direct {v0, v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    sub-int v3, v1, v2

    .line 174
    .local v3, "minOffset":I
    iget v4, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->maxMainAxisOffset:I

    .line 175
    .local v4, "maxOffset":I
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v1

    .line 176
    .local v1, "offset":J
    iget-object v10, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->animator:Landroidx/compose/foundation/lazy/LazyListItemAnimator;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11, v6}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->getAnimation(Ljava/lang/Object;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v15

    .line 177
    .local v15, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    const/4 v10, 0x0

    .line 178
    .local v10, "layerBlock":Lkotlin/jvm/functions/Function1;
    if-eqz v15, :cond_6

    .line 179
    if-eqz p2, :cond_1

    .line 181
    invoke-virtual {v15, v1, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setLookaheadOffset--gyyYBs(J)V

    goto :goto_3

    .line 183
    :cond_1
    invoke-virtual {v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->getLookaheadOffset-nOcc-ac()J

    move-result-wide v11

    sget-object v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$Companion;

    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$Companion;->getNotInitialized-nOcc-ac()J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v11

    if-nez v11, :cond_2

    .line 184
    invoke-virtual {v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->getLookaheadOffset-nOcc-ac()J

    move-result-wide v11

    goto :goto_2

    .line 186
    :cond_2
    move-wide v11, v1

    .line 183
    :goto_2
    nop

    .line 188
    .local v11, "targetOffset":J
    invoke-virtual {v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->getPlacementDelta-nOcc-ac()J

    move-result-wide v13

    .local v13, "other$iv":J
    const/16 v16, 0x0

    .line 239
    .local v16, "$i$f$plus-qkQi6aY":I
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v19

    invoke-static {v13, v14}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v20

    move-wide/from16 v21, v1

    .end local v1    # "offset":J
    .local v21, "offset":J
    add-int v1, v19, v20

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v2

    invoke-static {v13, v14}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v19

    add-int v2, v2, v19

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v1

    .line 188
    .end local v13    # "other$iv":J
    .end local v16    # "$i$f$plus-qkQi6aY":I
    nop

    .line 190
    .local v1, "animatedOffset":J
    invoke-direct {v0, v11, v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v13

    if-gt v13, v3, :cond_3

    .line 191
    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v13

    if-le v13, v3, :cond_4

    .line 192
    :cond_3
    invoke-direct {v0, v11, v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v13

    if-lt v13, v4, :cond_5

    .line 193
    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v13

    if-lt v13, v4, :cond_5

    .line 195
    :cond_4
    invoke-virtual {v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->cancelPlacementAnimation()V

    .line 197
    :cond_5
    move-wide v13, v1

    .line 199
    .end local v11    # "targetOffset":J
    .end local v21    # "offset":J
    .local v1, "offset":J
    :goto_3
    invoke-virtual {v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->getLayerBlock()Lkotlin/jvm/functions/Function1;

    move-result-object v10

    move-object/from16 v19, v10

    goto :goto_4

    .line 201
    :cond_6
    move-wide/from16 v21, v1

    .end local v1    # "offset":J
    .restart local v21    # "offset":J
    invoke-static {}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationKt;->getDefaultLayerBlock()Lkotlin/jvm/functions/Function1;

    move-result-object v10

    move-object/from16 v19, v10

    .line 203
    .end local v10    # "layerBlock":Lkotlin/jvm/functions/Function1;
    .end local v21    # "offset":J
    .restart local v1    # "offset":J
    .local v19, "layerBlock":Lkotlin/jvm/functions/Function1;
    :goto_4
    iget-boolean v10, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->reverseLayout:Z

    if-eqz v10, :cond_9

    .line 204
    move-wide v10, v1

    .local v10, "$this$copy_u2d4Tuh3kE$iv":J
    move-object/from16 v12, p0

    .local v12, "this_$iv":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/4 v13, 0x0

    .line 240
    .local v13, "$i$f$copy-4Tuh3kE":I
    iget-boolean v14, v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-eqz v14, :cond_7

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v14

    move-wide/from16 v20, v1

    goto :goto_5

    :cond_7
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v14

    .local v14, "mainAxisOffset":I
    const/16 v16, 0x0

    .line 205
    .local v16, "$i$a$-copy-4Tuh3kE-LazyListMeasuredItem$place$1$2$1":I
    move-wide/from16 v20, v1

    .end local v1    # "offset":J
    .local v20, "offset":J
    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisLayoutSize:I

    sub-int/2addr v1, v14

    invoke-direct {v0, v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    sub-int/2addr v1, v2

    move v14, v1

    .line 240
    .end local v14    # "mainAxisOffset":I
    .end local v16    # "$i$a$-copy-4Tuh3kE-LazyListMeasuredItem$place$1$2$1":I
    :goto_5
    iget-boolean v1, v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-eqz v1, :cond_8

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    .local v1, "mainAxisOffset":I
    const/4 v2, 0x0

    .line 205
    .local v2, "$i$a$-copy-4Tuh3kE-LazyListMeasuredItem$place$1$2$1":I
    move/from16 v16, v2

    .end local v2    # "$i$a$-copy-4Tuh3kE-LazyListMeasuredItem$place$1$2$1":I
    .restart local v16    # "$i$a$-copy-4Tuh3kE-LazyListMeasuredItem$place$1$2$1":I
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisLayoutSize:I

    sub-int/2addr v2, v1

    invoke-direct {v0, v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v22

    sub-int v2, v2, v22

    .line 240
    .end local v1    # "mainAxisOffset":I
    .end local v16    # "$i$a$-copy-4Tuh3kE-LazyListMeasuredItem$place$1$2$1":I
    goto :goto_6

    :cond_8
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v2

    :goto_6
    invoke-static {v14, v2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v1

    .line 204
    .end local v10    # "$this$copy_u2d4Tuh3kE$iv":J
    .end local v12    # "this_$iv":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v13    # "$i$f$copy-4Tuh3kE":I
    nop

    .end local v20    # "offset":J
    .local v1, "offset":J
    goto :goto_7

    .line 203
    :cond_9
    move-wide/from16 v20, v1

    .line 208
    :goto_7
    iget-wide v10, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->visualOffset:J

    .local v10, "other$iv":J
    const/4 v12, 0x0

    .line 241
    .local v12, "$i$f$plus-qkQi6aY":I
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v13

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v14

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v16

    add-int v14, v14, v16

    invoke-static {v13, v14}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v11

    .line 208
    .end local v10    # "other$iv":J
    .end local v12    # "$i$f$plus-qkQi6aY":I
    nop

    .line 209
    .end local v1    # "offset":J
    .local v11, "offset":J
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-eqz v1, :cond_a

    .line 210
    const/4 v13, 0x0

    const/4 v1, 0x2

    const/16 v16, 0x0

    move-object v10, v5

    move-object/from16 v14, v19

    move-object/from16 v20, v15

    .end local v15    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .local v20, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    move v15, v1

    invoke-static/range {v9 .. v16}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    move v15, v3

    move/from16 v16, v4

    move-object/from16 v21, v5

    move v10, v6

    move/from16 v22, v7

    move v13, v8

    goto :goto_8

    .line 212
    .end local v20    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .restart local v15    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    :cond_a
    move-object/from16 v20, v15

    .end local v15    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .restart local v20    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    const/4 v10, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object v1, v9

    move-object v2, v5

    move v15, v3

    move/from16 v16, v4

    .end local v3    # "minOffset":I
    .end local v4    # "maxOffset":I
    .local v15, "minOffset":I
    .local v16, "maxOffset":I
    move-wide v3, v11

    move-object/from16 v21, v5

    .end local v5    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .local v21, "placeable":Landroidx/compose/ui/layout/Placeable;
    move v5, v10

    move v10, v6

    .end local v6    # "index":I
    .local v10, "index":I
    move-object/from16 v6, v19

    move/from16 v22, v7

    move v7, v13

    move v13, v8

    move-object v8, v14

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 214
    :goto_8
    nop

    .line 171
    .end local v10    # "index":I
    .end local v11    # "offset":J
    .end local v15    # "minOffset":I
    .end local v16    # "maxOffset":I
    .end local v18    # "$i$a$-repeat-LazyListMeasuredItem$place$1$2":I
    .end local v19    # "layerBlock":Lkotlin/jvm/functions/Function1;
    .end local v20    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .end local v21    # "placeable":Landroidx/compose/ui/layout/Placeable;
    add-int/lit8 v7, v22, 0x1

    move v8, v13

    goto/16 :goto_1

    .line 215
    :cond_b
    nop

    .line 169
    .end local v9    # "$this$place_u24lambda_u2410":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v17    # "$i$a$-with-LazyListMeasuredItem$place$1":I
    nop

    .line 215
    return-void

    .line 238
    .restart local v9    # "$this$place_u24lambda_u2410":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .restart local v17    # "$i$a$-with-LazyListMeasuredItem$place$1":I
    :cond_c
    const/4 v1, 0x0

    .line 170
    .local v1, "$i$a$-require-LazyListMeasuredItem$place$1$1":I
    nop

    .end local v1    # "$i$a$-require-LazyListMeasuredItem$place$1$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "position() should be called first"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final position(III)V
    .locals 16
    .param p1, "offset"    # I
    .param p2, "layoutWidth"    # I
    .param p3, "layoutHeight"    # I

    .line 116
    move-object/from16 v0, p0

    move/from16 v1, p1

    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    .line 117
    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-eqz v2, :cond_0

    move/from16 v2, p3

    goto :goto_0

    :cond_0
    move/from16 v2, p2

    :goto_0
    iput v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisLayoutSize:I

    .line 118
    const/4 v2, 0x0

    .local v2, "mainAxisOffset":I
    move/from16 v2, p1

    .line 119
    iget-object v3, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeables:Ljava/util/List;

    .local v3, "$this$fastForEachIndexed$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 231
    .local v4, "$i$f$fastForEachIndexed":I
    nop

    .line 232
    const/4 v5, 0x0

    .local v5, "index$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_1
    if-ge v5, v6, :cond_4

    .line 233
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 234
    .local v7, "item$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    .local v8, "placeable":Landroidx/compose/ui/layout/Placeable;
    move v9, v5

    .local v9, "index":I
    const/4 v10, 0x0

    .line 120
    .local v10, "$i$a$-fastForEachIndexed-LazyListMeasuredItem$position$1":I
    mul-int/lit8 v11, v9, 0x2

    .line 121
    .local v11, "indexInArray":I
    iget-boolean v12, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-eqz v12, :cond_2

    .line 122
    iget-object v12, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeableOffsets:[I

    .line 123
    iget-object v13, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    if-eqz v13, :cond_1

    .line 125
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v14

    iget-object v15, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    move/from16 v1, p2

    invoke-interface {v13, v14, v1, v15}, Landroidx/compose/ui/Alignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v13

    aput v13, v12, v11

    .line 126
    iget-object v12, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeableOffsets:[I

    add-int/lit8 v13, v11, 0x1

    aput v2, v12, v13

    .line 127
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v12

    add-int/2addr v2, v12

    move/from16 v1, p3

    goto :goto_2

    .line 123
    :cond_1
    move/from16 v1, p2

    const/4 v6, 0x0

    .line 124
    .local v6, "$i$a$-requireNotNull-LazyListMeasuredItem$position$1$1":I
    nop

    .line 123
    .end local v6    # "$i$a$-requireNotNull-LazyListMeasuredItem$position$1$1":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "null horizontalAlignment when isVertical == true"

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 129
    :cond_2
    move/from16 v1, p2

    iget-object v12, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeableOffsets:[I

    aput v2, v12, v11

    .line 130
    iget-object v12, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeableOffsets:[I

    add-int/lit8 v13, v11, 0x1

    .line 131
    iget-object v14, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    if-eqz v14, :cond_3

    .line 133
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v15

    move/from16 v1, p3

    invoke-interface {v14, v15, v1}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result v14

    aput v14, v12, v13

    .line 134
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v12

    add-int/2addr v2, v12

    .line 136
    :goto_2
    nop

    .line 234
    .end local v8    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v9    # "index":I
    .end local v10    # "$i$a$-fastForEachIndexed-LazyListMeasuredItem$position$1":I
    .end local v11    # "indexInArray":I
    nop

    .line 232
    .end local v7    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, p1

    goto :goto_1

    .line 131
    .restart local v7    # "item$iv":Ljava/lang/Object;
    .restart local v8    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .restart local v9    # "index":I
    .restart local v10    # "$i$a$-fastForEachIndexed-LazyListMeasuredItem$position$1":I
    .restart local v11    # "indexInArray":I
    :cond_3
    move/from16 v1, p3

    const/4 v6, 0x0

    .line 132
    .local v6, "$i$a$-requireNotNull-LazyListMeasuredItem$position$1$2":I
    nop

    .line 131
    .end local v6    # "$i$a$-requireNotNull-LazyListMeasuredItem$position$1$2":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "null verticalAlignment when isVertical == false"

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 232
    .end local v7    # "item$iv":Ljava/lang/Object;
    .end local v8    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v9    # "index":I
    .end local v10    # "$i$a$-fastForEachIndexed-LazyListMeasuredItem$position$1":I
    .end local v11    # "indexInArray":I
    :cond_4
    move/from16 v1, p3

    .line 236
    .end local v5    # "index$iv":I
    nop

    .line 137
    .end local v3    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEachIndexed":I
    iget v3, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->beforeContentPadding:I

    neg-int v3, v3

    iput v3, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->minMainAxisOffset:I

    .line 138
    iget v3, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisLayoutSize:I

    iget v4, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->afterContentPadding:I

    add-int/2addr v3, v4

    iput v3, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->maxMainAxisOffset:I

    .line 139
    return-void
.end method

.method public final setNonScrollableItem(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 80
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->nonScrollableItem:Z

    return-void
.end method
