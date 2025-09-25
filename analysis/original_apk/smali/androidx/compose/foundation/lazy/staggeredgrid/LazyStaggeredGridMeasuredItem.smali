.class public final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
.super Ljava/lang/Object;
.source "LazyStaggeredGridMeasure.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyStaggeredGridMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyStaggeredGridMeasure.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n*L\n1#1,1225:1\n1212#1:1247\n1214#1:1249\n1212#1:1250\n1214#1:1253\n1214#1:1254\n317#2,8:1226\n317#2,8:1234\n69#2,4:1243\n74#2:1252\n1#3:1242\n86#4:1248\n86#4:1251\n*S KotlinDebug\n*F\n+ 1 LazyStaggeredGridMeasure.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem\n*L\n1172#1:1247\n1188#1:1249\n1189#1:1250\n1202#1:1253\n1206#1:1254\n1119#1:1226,8\n1125#1:1234,8\n1171#1:1243,4\n1171#1:1252\n1178#1:1248\n1192#1:1251\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001Be\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0002\u0010\u0013J\u000e\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020\u0003J\u0010\u0010A\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0002\u001a\u00020\u0003J\u0016\u0010B\u001a\u00020?2\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020FJ\u001e\u0010G\u001a\u00020?2\u0006\u0010:\u001a\u00020\u00032\u0006\u0010H\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u0003J\u0008\u0010I\u001a\u00020JH\u0016J+\u0010K\u001a\u00020-*\u00020-2\u0012\u0010L\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030MH\u0082\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008N\u0010OR\u000e\u0010\u000f\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0019\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0018R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0018R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001c\"\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0015R\u0014\u0010\u000c\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0018R\u000e\u0010\"\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010#\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\u0018R\u0011\u0010%\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u0018R\u000e\u0010\'\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010)\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u001c\"\u0004\u0008+\u0010\u001fR&\u0010.\u001a\u00020-2\u0006\u0010,\u001a\u00020-@RX\u0096\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\n\n\u0002\u00101\u001a\u0004\u0008/\u00100R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u00102\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u00083\u0010\u0018R\u001c\u00104\u001a\u000205X\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\n\n\u0002\u00101\u001a\u0004\u00086\u00100R\u0011\u00107\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u0010\u0018R\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010\u0018R\u0018\u0010:\u001a\u00020\u0003*\u00020-8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010<R\u0019\u0010%\u001a\u00020\u0003*\u00020\u00088\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010=\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006P"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;",
        "index",
        "",
        "key",
        "",
        "placeables",
        "",
        "Landroidx/compose/ui/layout/Placeable;",
        "isVertical",
        "",
        "spacing",
        "lane",
        "span",
        "beforeContentPadding",
        "afterContentPadding",
        "contentType",
        "animator",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;",
        "(ILjava/lang/Object;Ljava/util/List;ZIIIIILjava/lang/Object;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;)V",
        "getContentType",
        "()Ljava/lang/Object;",
        "crossAxisOffset",
        "getCrossAxisOffset",
        "()I",
        "crossAxisSize",
        "getCrossAxisSize",
        "getIndex",
        "()Z",
        "isVisible",
        "setVisible",
        "(Z)V",
        "getKey",
        "getLane",
        "mainAxisLayoutSize",
        "mainAxisOffset",
        "getMainAxisOffset",
        "mainAxisSize",
        "getMainAxisSize",
        "maxMainAxisOffset",
        "minMainAxisOffset",
        "nonScrollableItem",
        "getNonScrollableItem",
        "setNonScrollableItem",
        "<set-?>",
        "Landroidx/compose/ui/unit/IntOffset;",
        "offset",
        "getOffset-nOcc-ac",
        "()J",
        "J",
        "placeablesCount",
        "getPlaceablesCount",
        "size",
        "Landroidx/compose/ui/unit/IntSize;",
        "getSize-YbymL2g",
        "sizeWithSpacings",
        "getSizeWithSpacings",
        "getSpan",
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
        "context",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;",
        "position",
        "crossAxis",
        "toString",
        "",
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

.field private final animator:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;

.field private final beforeContentPadding:I

.field private final contentType:Ljava/lang/Object;

.field private final crossAxisSize:I

.field private final index:I

.field private final isVertical:Z

.field private isVisible:Z

.field private final key:Ljava/lang/Object;

.field private final lane:I

.field private mainAxisLayoutSize:I

.field private final mainAxisSize:I

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

.field private final size:J

.field private final sizeWithSpacings:I

.field private final span:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->$stable:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/util/List;ZIIIIILjava/lang/Object;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;)V
    .locals 20
    .param p1, "index"    # I
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "placeables"    # Ljava/util/List;
    .param p4, "isVertical"    # Z
    .param p5, "spacing"    # I
    .param p6, "lane"    # I
    .param p7, "span"    # I
    .param p8, "beforeContentPadding"    # I
    .param p9, "afterContentPadding"    # I
    .param p10, "contentType"    # Ljava/lang/Object;
    .param p11, "animator"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;ZIIIII",
            "Ljava/lang/Object;",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;",
            ")V"
        }
    .end annotation

    .line 1100
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1101
    move/from16 v1, p1

    iput v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->index:I

    .line 1102
    move-object/from16 v2, p2

    iput-object v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->key:Ljava/lang/Object;

    .line 1103
    move-object/from16 v3, p3

    iput-object v3, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->placeables:Ljava/util/List;

    .line 1104
    move/from16 v4, p4

    iput-boolean v4, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    .line 1106
    move/from16 v5, p6

    iput v5, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->lane:I

    .line 1107
    move/from16 v6, p7

    iput v6, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->span:I

    .line 1108
    move/from16 v7, p8

    iput v7, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->beforeContentPadding:I

    .line 1109
    move/from16 v8, p9

    iput v8, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->afterContentPadding:I

    .line 1110
    move-object/from16 v9, p10

    iput-object v9, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->contentType:Ljava/lang/Object;

    .line 1111
    move-object/from16 v10, p11

    iput-object v10, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->animator:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;

    .line 1113
    const/4 v11, 0x1

    iput-boolean v11, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVisible:Z

    .line 1119
    iget-object v11, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->placeables:Ljava/util/List;

    .local v11, "$this$fastMaxOfOrNull$iv":Ljava/util/List;
    const/4 v12, 0x0

    .line 1226
    .local v12, "$i$f$fastMaxOfOrNull":I
    nop

    .line 1227
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    const/4 v15, 0x0

    if-eqz v13, :cond_0

    const/4 v13, 0x0

    goto :goto_3

    .line 1228
    :cond_0
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/layout/Placeable;

    .local v13, "placeable":Landroidx/compose/ui/layout/Placeable;
    const/16 v16, 0x0

    .line 1120
    .local v16, "$i$a$-fastMaxOfOrNull-LazyStaggeredGridMeasuredItem$mainAxisSize$1":I
    iget-boolean v14, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v14, :cond_1

    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v14

    goto :goto_0

    :cond_1
    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v14

    .end local v13    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v16    # "$i$a$-fastMaxOfOrNull-LazyStaggeredGridMeasuredItem$mainAxisSize$1":I
    :goto_0
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1228
    check-cast v13, Ljava/lang/Comparable;

    .line 1229
    .local v13, "maxValue$iv":Ljava/lang/Comparable;
    const/4 v14, 0x1

    .local v14, "i$iv":I
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v15

    if-gt v14, v15, :cond_4

    .line 1230
    :goto_1
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/compose/ui/layout/Placeable;

    .local v18, "placeable":Landroidx/compose/ui/layout/Placeable;
    const/16 v19, 0x0

    .line 1120
    .local v19, "$i$a$-fastMaxOfOrNull-LazyStaggeredGridMeasuredItem$mainAxisSize$1":I
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v1, :cond_2

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    goto :goto_2

    :cond_2
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    .end local v18    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v19    # "$i$a$-fastMaxOfOrNull-LazyStaggeredGridMeasuredItem$mainAxisSize$1":I
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1230
    check-cast v1, Ljava/lang/Comparable;

    .line 1231
    .local v1, "v$iv":Ljava/lang/Comparable;
    invoke-interface {v1, v13}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v18

    if-lez v18, :cond_3

    move-object v13, v1

    .line 1229
    .end local v1    # "v$iv":Ljava/lang/Comparable;
    :cond_3
    if-eq v14, v15, :cond_4

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p1

    goto :goto_1

    .line 1233
    .end local v14    # "i$iv":I
    :cond_4
    nop

    .line 1119
    .end local v11    # "$this$fastMaxOfOrNull$iv":Ljava/util/List;
    .end local v12    # "$i$f$fastMaxOfOrNull":I
    .end local v13    # "maxValue$iv":Ljava/lang/Comparable;
    :goto_3
    check-cast v13, Ljava/lang/Integer;

    if-eqz v13, :cond_5

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_4

    .line 1121
    :cond_5
    const/4 v1, 0x0

    .line 1119
    :goto_4
    iput v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisSize:I

    .line 1123
    iget v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisSize:I

    add-int v1, v1, p5

    const/4 v11, 0x0

    invoke-static {v1, v11}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    iput v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->sizeWithSpacings:I

    .line 1125
    iget-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->placeables:Ljava/util/List;

    .local v1, "$this$fastMaxOfOrNull$iv":Ljava/util/List;
    const/4 v11, 0x0

    .line 1234
    .local v11, "$i$f$fastMaxOfOrNull":I
    nop

    .line 1235
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v14, 0x0

    goto :goto_8

    .line 1236
    :cond_6
    const/4 v12, 0x0

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/layout/Placeable;

    .local v13, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v14, 0x0

    .line 1126
    .local v14, "$i$a$-fastMaxOfOrNull-LazyStaggeredGridMeasuredItem$crossAxisSize$1":I
    iget-boolean v15, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v15, :cond_7

    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v15

    goto :goto_5

    :cond_7
    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v15

    .end local v13    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v14    # "$i$a$-fastMaxOfOrNull-LazyStaggeredGridMeasuredItem$crossAxisSize$1":I
    :goto_5
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1236
    check-cast v13, Ljava/lang/Comparable;

    .line 1237
    .local v13, "maxValue$iv":Ljava/lang/Comparable;
    const/4 v14, 0x1

    .local v14, "i$iv":I
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v15

    if-gt v14, v15, :cond_a

    .line 1238
    :goto_6
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/compose/ui/layout/Placeable;

    .local v16, "it":Landroidx/compose/ui/layout/Placeable;
    const/16 v17, 0x0

    .line 1126
    .local v17, "$i$a$-fastMaxOfOrNull-LazyStaggeredGridMeasuredItem$crossAxisSize$1":I
    iget-boolean v12, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v12, :cond_8

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v12

    goto :goto_7

    :cond_8
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v12

    .end local v16    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v17    # "$i$a$-fastMaxOfOrNull-LazyStaggeredGridMeasuredItem$crossAxisSize$1":I
    :goto_7
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1238
    check-cast v12, Ljava/lang/Comparable;

    .line 1239
    .local v12, "v$iv":Ljava/lang/Comparable;
    invoke-interface {v12, v13}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v16

    if-lez v16, :cond_9

    move-object v13, v12

    .line 1237
    .end local v12    # "v$iv":Ljava/lang/Comparable;
    :cond_9
    if-eq v14, v15, :cond_a

    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x0

    goto :goto_6

    :cond_a
    move-object v14, v13

    .line 1241
    .end local v13    # "maxValue$iv":Ljava/lang/Comparable;
    .local v14, "maxValue$iv":Ljava/lang/Comparable;
    nop

    .line 1125
    .end local v1    # "$this$fastMaxOfOrNull$iv":Ljava/util/List;
    .end local v11    # "$i$f$fastMaxOfOrNull":I
    .end local v14    # "maxValue$iv":Ljava/lang/Comparable;
    :goto_8
    check-cast v14, Ljava/lang/Integer;

    if-eqz v14, :cond_b

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_9

    .line 1127
    :cond_b
    const/4 v15, 0x0

    .line 1125
    :goto_9
    iput v15, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->crossAxisSize:I

    .line 1129
    const/4 v1, -0x1

    iput v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisLayoutSize:I

    .line 1139
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v1, :cond_c

    .line 1140
    iget v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->crossAxisSize:I

    iget v11, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisSize:I

    invoke-static {v1, v11}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v11

    goto :goto_a

    .line 1142
    :cond_c
    iget v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisSize:I

    iget v11, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->crossAxisSize:I

    invoke-static {v1, v11}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v11

    .line 1139
    :goto_a
    iput-wide v11, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->size:J

    .line 1144
    sget-object v1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v11

    iput-wide v11, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->offset:J

    .line 1100
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

    .line 1214
    .local v0, "$i$f$copy-4Tuh3kE":I
    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

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
    iget-boolean v2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

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

    .line 1211
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

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
    .locals 2
    .param p1, "$this$mainAxisSize"    # Landroidx/compose/ui/layout/Placeable;

    const/4 v0, 0x0

    .line 1212
    .local v0, "$i$f$getMainAxisSize":I
    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    :goto_0
    return v1
.end method


# virtual methods
.method public final applyScrollDelta(I)V
    .locals 12
    .param p1, "delta"    # I

    .line 1199
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->nonScrollableItem:Z

    if-eqz v0, :cond_0

    .line 1200
    return-void

    .line 1202
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v0

    .local v0, "$this$copy_u2d4Tuh3kE$iv":J
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    const/4 v3, 0x0

    .line 1253
    .local v3, "$i$f$copy-4Tuh3kE":I
    iget-boolean v4, v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v4, :cond_1

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    .local v4, "it":I
    const/4 v5, 0x0

    .line 1202
    .local v5, "$i$a$-copy-4Tuh3kE-LazyStaggeredGridMeasuredItem$applyScrollDelta$1":I
    add-int/2addr v4, p1

    .line 1253
    .end local v4    # "it":I
    .end local v5    # "$i$a$-copy-4Tuh3kE-LazyStaggeredGridMeasuredItem$applyScrollDelta$1":I
    :goto_0
    iget-boolean v5, v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v5, :cond_2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v5

    .local v5, "it":I
    const/4 v6, 0x0

    .line 1202
    .local v6, "$i$a$-copy-4Tuh3kE-LazyStaggeredGridMeasuredItem$applyScrollDelta$1":I
    add-int/2addr v5, p1

    .line 1253
    .end local v5    # "it":I
    .end local v6    # "$i$a$-copy-4Tuh3kE-LazyStaggeredGridMeasuredItem$applyScrollDelta$1":I
    goto :goto_1

    :cond_2
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v5

    :goto_1
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v0

    .line 1202
    .end local v0    # "$this$copy_u2d4Tuh3kE$iv":J
    .end local v2    # "this_$iv":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .end local v3    # "$i$f$copy-4Tuh3kE":I
    iput-wide v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->offset:J

    .line 1203
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getPlaceablesCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    move v2, v1

    .local v2, "index":I
    const/4 v3, 0x0

    .line 1204
    .local v3, "$i$a$-repeat-LazyStaggeredGridMeasuredItem$applyScrollDelta$2":I
    iget-object v4, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->animator:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->getAnimation(Ljava/lang/Object;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v4

    .line 1205
    .local v4, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    if-eqz v4, :cond_5

    .line 1206
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->getRawOffset-nOcc-ac()J

    move-result-wide v5

    .local v5, "$this$copy_u2d4Tuh3kE$iv":J
    move-object v7, p0

    .local v7, "this_$iv":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    const/4 v8, 0x0

    .line 1254
    .local v8, "$i$f$copy-4Tuh3kE":I
    iget-boolean v9, v7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v9, :cond_3

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v9

    goto :goto_3

    :cond_3
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v9

    .local v9, "mainAxis":I
    const/4 v10, 0x0

    .line 1206
    .local v10, "$i$a$-copy-4Tuh3kE-LazyStaggeredGridMeasuredItem$applyScrollDelta$2$1":I
    add-int/2addr v9, p1

    .end local v9    # "mainAxis":I
    .end local v10    # "$i$a$-copy-4Tuh3kE-LazyStaggeredGridMeasuredItem$applyScrollDelta$2$1":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1254
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    :goto_3
    iget-boolean v10, v7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v10, :cond_4

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v10

    .local v10, "mainAxis":I
    const/4 v11, 0x0

    .line 1206
    .local v11, "$i$a$-copy-4Tuh3kE-LazyStaggeredGridMeasuredItem$applyScrollDelta$2$1":I
    add-int/2addr v10, p1

    .line 1254
    .end local v10    # "mainAxis":I
    .end local v11    # "$i$a$-copy-4Tuh3kE-LazyStaggeredGridMeasuredItem$applyScrollDelta$2$1":I
    goto :goto_4

    :cond_4
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v10

    :goto_4
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v5

    .line 1206
    .end local v5    # "$this$copy_u2d4Tuh3kE$iv":J
    .end local v7    # "this_$iv":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .end local v8    # "$i$f$copy-4Tuh3kE":I
    invoke-virtual {v4, v5, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setRawOffset--gyyYBs(J)V

    .line 1208
    :cond_5
    nop

    .line 1203
    .end local v2    # "index":I
    .end local v3    # "$i$a$-repeat-LazyStaggeredGridMeasuredItem$applyScrollDelta$2":I
    .end local v4    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1209
    :cond_6
    return-void
.end method

.method public getContentType()Ljava/lang/Object;
    .locals 1

    .line 1110
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->contentType:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCrossAxisOffset()I
    .locals 2

    .line 1163
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getCrossAxisSize()I
    .locals 1

    .line 1125
    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->crossAxisSize:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 1101
    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->index:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 1102
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getLane()I
    .locals 1

    .line 1106
    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->lane:I

    return v0
.end method

.method public final getMainAxisOffset()I
    .locals 2

    .line 1162
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getMainAxisSize()I
    .locals 1

    .line 1119
    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisSize:I

    return v0
.end method

.method public final getNonScrollableItem()Z
    .locals 1

    .line 1137
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->nonScrollableItem:Z

    return v0
.end method

.method public getOffset-nOcc-ac()J
    .locals 2

    .line 1144
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->offset:J

    return-wide v0
.end method

.method public final getParentData(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 1117
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getParentData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getPlaceablesCount()I
    .locals 1

    .line 1115
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSize-YbymL2g()J
    .locals 2

    .line 1139
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->size:J

    return-wide v0
.end method

.method public final getSizeWithSpacings()I
    .locals 1

    .line 1123
    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->sizeWithSpacings:I

    return v0
.end method

.method public final getSpan()I
    .locals 1

    .line 1107
    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->span:I

    return v0
.end method

.method public final isVertical()Z
    .locals 1

    .line 1104
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 1113
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVisible:Z

    return v0
.end method

.method public final place(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;)V
    .locals 29
    .param p1, "scope"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .param p2, "context"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;

    .line 1168
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .local v1, "$this$place_u24lambda_u246":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;
    const/4 v2, 0x0

    .line 1169
    .local v2, "$i$a$-with-LazyStaggeredGridMeasuredItem$place$1":I
    iget v3, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisLayoutSize:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_c

    .line 1170
    move-object/from16 v3, p1

    .local v3, "$this$place_u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    const/4 v11, 0x0

    .line 1171
    .local v11, "$i$a$-with-LazyStaggeredGridMeasuredItem$place$1$2":I
    iget-object v12, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->placeables:Ljava/util/List;

    .local v12, "$this$fastForEachIndexed$iv":Ljava/util/List;
    const/4 v13, 0x0

    .line 1243
    .local v13, "$i$f$fastForEachIndexed":I
    nop

    .line 1244
    const/4 v4, 0x0

    .local v4, "index$iv":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    move v15, v4

    .end local v4    # "index$iv":I
    .local v15, "index$iv":I
    :goto_1
    if-ge v15, v14, :cond_b

    .line 1245
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 1246
    .local v16, "item$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    check-cast v17, Landroidx/compose/ui/layout/Placeable;

    .local v17, "placeable":Landroidx/compose/ui/layout/Placeable;
    move v4, v15

    .local v4, "index":I
    move v10, v4

    .end local v4    # "index":I
    .local v10, "index":I
    const/16 v18, 0x0

    .line 1172
    .local v18, "$i$a$-fastForEachIndexed-LazyStaggeredGridMeasuredItem$place$1$2$1":I
    iget v4, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->minMainAxisOffset:I

    move-object/from16 v5, v17

    .local v5, "$this$mainAxisSize$iv":Landroidx/compose/ui/layout/Placeable;
    move-object/from16 v6, p0

    .local v6, "this_$iv":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    const/4 v7, 0x0

    .line 1247
    .local v7, "$i$f$getMainAxisSize":I
    iget-boolean v8, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v8

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v8

    .line 1172
    .end local v5    # "$this$mainAxisSize$iv":Landroidx/compose/ui/layout/Placeable;
    .end local v6    # "this_$iv":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .end local v7    # "$i$f$getMainAxisSize":I
    :goto_2
    sub-int v9, v4, v8

    .line 1173
    .local v9, "minOffset":I
    iget v8, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->maxMainAxisOffset:I

    .line 1175
    .local v8, "maxOffset":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v4

    .line 1176
    .local v4, "offset":J
    iget-object v6, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->animator:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->getAnimation(Ljava/lang/Object;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v19

    .line 1177
    .local v19, "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    if-eqz v19, :cond_5

    .line 1178
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->getPlacementDelta-nOcc-ac()J

    move-result-wide v6

    .local v6, "other$iv":J
    const/16 v20, 0x0

    .line 1248
    .local v20, "$i$f$plus-qkQi6aY":I
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v21

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v22

    move/from16 v23, v2

    .end local v2    # "$i$a$-with-LazyStaggeredGridMeasuredItem$place$1":I
    .local v23, "$i$a$-with-LazyStaggeredGridMeasuredItem$place$1":I
    add-int v2, v21, v22

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v21

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v22

    move-wide/from16 v24, v6

    .end local v6    # "other$iv":J
    .local v24, "other$iv":J
    add-int v6, v21, v22

    invoke-static {v2, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v6

    .line 1178
    .end local v20    # "$i$f$plus-qkQi6aY":I
    .end local v24    # "other$iv":J
    nop

    .line 1180
    .local v6, "animatedOffset":J
    invoke-direct {v0, v4, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v2

    if-gt v2, v9, :cond_2

    invoke-direct {v0, v6, v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v2

    if-le v2, v9, :cond_3

    .line 1181
    :cond_2
    invoke-direct {v0, v4, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v2

    if-lt v2, v8, :cond_4

    invoke-direct {v0, v6, v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v2

    if-lt v2, v8, :cond_4

    .line 1183
    :cond_3
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->cancelPlacementAnimation()V

    .line 1185
    :cond_4
    move-wide v4, v6

    goto :goto_3

    .line 1177
    .end local v6    # "animatedOffset":J
    .end local v23    # "$i$a$-with-LazyStaggeredGridMeasuredItem$place$1":I
    .restart local v2    # "$i$a$-with-LazyStaggeredGridMeasuredItem$place$1":I
    :cond_5
    move/from16 v23, v2

    .line 1187
    .end local v2    # "$i$a$-with-LazyStaggeredGridMeasuredItem$place$1":I
    .restart local v23    # "$i$a$-with-LazyStaggeredGridMeasuredItem$place$1":I
    :goto_3
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getReverseLayout()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1188
    move-wide v6, v4

    .local v6, "$this$copy_u2d4Tuh3kE$iv":J
    move-object/from16 v2, p0

    .local v2, "this_$iv":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    const/16 v20, 0x0

    .line 1249
    .local v20, "$i$f$copy-4Tuh3kE":I
    move-wide/from16 v21, v4

    .end local v4    # "offset":J
    .local v21, "offset":J
    iget-boolean v4, v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v4, :cond_6

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    move/from16 v26, v8

    goto :goto_5

    :cond_6
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    .local v4, "mainAxisOffset":I
    const/4 v5, 0x0

    .line 1189
    .local v5, "$i$a$-copy-4Tuh3kE-LazyStaggeredGridMeasuredItem$place$1$2$1$1":I
    move/from16 v24, v5

    .end local v5    # "$i$a$-copy-4Tuh3kE-LazyStaggeredGridMeasuredItem$place$1$2$1$1":I
    .local v24, "$i$a$-copy-4Tuh3kE-LazyStaggeredGridMeasuredItem$place$1$2$1$1":I
    iget v5, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisLayoutSize:I

    sub-int/2addr v5, v4

    move-object/from16 v25, v17

    .local v25, "$this$mainAxisSize$iv":Landroidx/compose/ui/layout/Placeable;
    move-object/from16 v26, p0

    .local v26, "this_$iv":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    const/16 v27, 0x0

    .line 1250
    .local v27, "$i$f$getMainAxisSize":I
    move/from16 v28, v4

    move-object/from16 v4, v26

    move/from16 v26, v8

    .end local v8    # "maxOffset":I
    .local v4, "this_$iv":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .local v26, "maxOffset":I
    .local v28, "mainAxisOffset":I
    iget-boolean v8, v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v8, :cond_7

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v8

    goto :goto_4

    :cond_7
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v8

    .line 1189
    .end local v4    # "this_$iv":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .end local v25    # "$this$mainAxisSize$iv":Landroidx/compose/ui/layout/Placeable;
    .end local v27    # "$i$f$getMainAxisSize":I
    :goto_4
    sub-int v4, v5, v8

    .line 1249
    .end local v24    # "$i$a$-copy-4Tuh3kE-LazyStaggeredGridMeasuredItem$place$1$2$1$1":I
    .end local v28    # "mainAxisOffset":I
    :goto_5
    iget-boolean v5, v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v5, :cond_9

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v5

    .local v5, "mainAxisOffset":I
    const/4 v8, 0x0

    .line 1189
    .local v8, "$i$a$-copy-4Tuh3kE-LazyStaggeredGridMeasuredItem$place$1$2$1$1":I
    move-object/from16 v24, v2

    .end local v2    # "this_$iv":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .local v24, "this_$iv":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    iget v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisLayoutSize:I

    sub-int/2addr v2, v5

    move-object/from16 v25, v17

    .restart local v25    # "$this$mainAxisSize$iv":Landroidx/compose/ui/layout/Placeable;
    move-object/from16 v27, p0

    .local v27, "this_$iv":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    const/16 v28, 0x0

    .line 1250
    .local v28, "$i$f$getMainAxisSize":I
    move-object/from16 v0, v27

    move/from16 v27, v5

    .end local v5    # "mainAxisOffset":I
    .local v0, "this_$iv":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .local v27, "mainAxisOffset":I
    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v5, :cond_8

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    goto :goto_6

    :cond_8
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v5

    .line 1189
    .end local v0    # "this_$iv":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .end local v25    # "$this$mainAxisSize$iv":Landroidx/compose/ui/layout/Placeable;
    .end local v28    # "$i$f$getMainAxisSize":I
    :goto_6
    sub-int/2addr v2, v5

    .line 1249
    .end local v8    # "$i$a$-copy-4Tuh3kE-LazyStaggeredGridMeasuredItem$place$1$2$1$1":I
    .end local v27    # "mainAxisOffset":I
    goto :goto_7

    .end local v24    # "this_$iv":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .restart local v2    # "this_$iv":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    :cond_9
    move-object/from16 v24, v2

    .end local v2    # "this_$iv":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .restart local v24    # "this_$iv":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v2

    :goto_7
    invoke-static {v4, v2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v4

    .line 1188
    .end local v6    # "$this$copy_u2d4Tuh3kE$iv":J
    .end local v20    # "$i$f$copy-4Tuh3kE":I
    .end local v24    # "this_$iv":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    nop

    .end local v21    # "offset":J
    .local v4, "offset":J
    goto :goto_8

    .line 1187
    .end local v26    # "maxOffset":I
    .local v8, "maxOffset":I
    :cond_a
    move-wide/from16 v21, v4

    move/from16 v26, v8

    .line 1192
    .end local v8    # "maxOffset":I
    .restart local v26    # "maxOffset":I
    :goto_8
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getContentOffset-nOcc-ac()J

    move-result-wide v6

    .local v6, "other$iv":J
    const/4 v0, 0x0

    .line 1251
    .local v0, "$i$f$plus-qkQi6aY":I
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v2

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v8

    add-int/2addr v2, v8

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v8

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v20

    add-int v8, v8, v20

    invoke-static {v2, v8}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v6

    .line 1192
    .end local v0    # "$i$f$plus-qkQi6aY":I
    .end local v6    # "other$iv":J
    move-wide v5, v6

    .line 1193
    .end local v4    # "offset":J
    .local v5, "offset":J
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x6

    const/4 v2, 0x0

    move-object/from16 v4, v17

    move/from16 v20, v26

    .end local v26    # "maxOffset":I
    .local v20, "maxOffset":I
    move/from16 v21, v9

    .end local v9    # "minOffset":I
    .local v21, "minOffset":I
    move v9, v0

    move v0, v10

    .end local v10    # "index":I
    .local v0, "index":I
    move-object v10, v2

    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 1194
    nop

    .line 1246
    .end local v0    # "index":I
    .end local v5    # "offset":J
    .end local v17    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v18    # "$i$a$-fastForEachIndexed-LazyStaggeredGridMeasuredItem$place$1$2$1":I
    .end local v19    # "animation":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .end local v20    # "maxOffset":I
    .end local v21    # "minOffset":I
    nop

    .line 1244
    .end local v16    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v23

    goto/16 :goto_1

    .line 1252
    .end local v15    # "index$iv":I
    .end local v23    # "$i$a$-with-LazyStaggeredGridMeasuredItem$place$1":I
    .local v2, "$i$a$-with-LazyStaggeredGridMeasuredItem$place$1":I
    :cond_b
    nop

    .line 1195
    .end local v12    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v13    # "$i$f$fastForEachIndexed":I
    nop

    .line 1170
    .end local v3    # "$this$place_u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v11    # "$i$a$-with-LazyStaggeredGridMeasuredItem$place$1$2":I
    nop

    .line 1196
    nop

    .line 1168
    .end local v1    # "$this$place_u24lambda_u246":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;
    .end local v2    # "$i$a$-with-LazyStaggeredGridMeasuredItem$place$1":I
    nop

    .line 1196
    return-void

    .line 1242
    .restart local v1    # "$this$place_u24lambda_u246":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;
    .restart local v2    # "$i$a$-with-LazyStaggeredGridMeasuredItem$place$1":I
    :cond_c
    move/from16 v23, v2

    .end local v2    # "$i$a$-with-LazyStaggeredGridMeasuredItem$place$1":I
    .restart local v23    # "$i$a$-with-LazyStaggeredGridMeasuredItem$place$1":I
    const/4 v0, 0x0

    .line 1169
    .local v0, "$i$a$-require-LazyStaggeredGridMeasuredItem$place$1$1":I
    nop

    .end local v0    # "$i$a$-require-LazyStaggeredGridMeasuredItem$place$1$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "position() should be called first"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final position(III)V
    .locals 2
    .param p1, "mainAxis"    # I
    .param p2, "crossAxis"    # I
    .param p3, "mainAxisLayoutSize"    # I

    .line 1152
    iput p3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisLayoutSize:I

    .line 1153
    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->beforeContentPadding:I

    neg-int v0, v0

    iput v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->minMainAxisOffset:I

    .line 1154
    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->afterContentPadding:I

    add-int/2addr v0, p3

    iput v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->maxMainAxisOffset:I

    .line 1155
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v0, :cond_0

    .line 1156
    invoke-static {p2, p1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v0

    goto :goto_0

    .line 1158
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v0

    .line 1155
    :goto_0
    iput-wide v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->offset:J

    .line 1160
    return-void
.end method

.method public final setNonScrollableItem(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 1137
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->nonScrollableItem:Z

    return-void
.end method

.method public final setVisible(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 1113
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVisible:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1217
    nop

    .line 1220
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1221
    return-object v0
.end method
