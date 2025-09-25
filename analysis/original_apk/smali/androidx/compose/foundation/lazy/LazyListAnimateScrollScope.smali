.class public final Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;
.super Ljava/lang/Object;
.source "LazyListAnimateScrollScope.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListAnimateScrollScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListAnimateScrollScope.kt\nandroidx/compose/foundation/lazy/LazyListAnimateScrollScope\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,71:1\n116#2,2:72\n33#2,6:74\n118#2:80\n132#2,3:81\n33#2,4:84\n135#2,2:88\n38#2:90\n137#2:91\n*S KotlinDebug\n*F\n+ 1 LazyListAnimateScrollScope.kt\nandroidx/compose/foundation/lazy/LazyListAnimateScrollScope\n*L\n42#1:72,2\n42#1:74,6\n42#1:80\n67#1:81,3\n67#1:84,4\n67#1:88,2\n67#1:90\n67#1:91\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006H\u0016J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0016J7\u0010\u0017\u001a\u00020\u00182\'\u0010\u0019\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u001b\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u001a\u00a2\u0006\u0002\u0008\u001eH\u0096@\u00a2\u0006\u0002\u0010\u001fJ\u001c\u0010 \u001a\u00020\u0018*\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u0006H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0008R\u0014\u0010\u000b\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0008R\u0014\u0010\r\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0008\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;",
        "state",
        "Landroidx/compose/foundation/lazy/LazyListState;",
        "(Landroidx/compose/foundation/lazy/LazyListState;)V",
        "firstVisibleItemIndex",
        "",
        "getFirstVisibleItemIndex",
        "()I",
        "firstVisibleItemScrollOffset",
        "getFirstVisibleItemScrollOffset",
        "itemCount",
        "getItemCount",
        "lastVisibleItemIndex",
        "getLastVisibleItemIndex",
        "visibleItemsAverageSize",
        "getVisibleItemsAverageSize",
        "calculateDistanceTo",
        "",
        "targetIndex",
        "targetItemOffset",
        "getVisibleItemScrollOffset",
        "index",
        "scroll",
        "",
        "block",
        "Lkotlin/Function2;",
        "Landroidx/compose/foundation/gestures/ScrollScope;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "snapToItem",
        "scrollOffset",
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
.field private final state:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;)V
    .locals 0
    .param p1, "state"    # Landroidx/compose/foundation/lazy/LazyListState;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;->state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 27
    return-void
.end method


# virtual methods
.method public calculateDistanceTo(II)F
    .locals 5
    .param p1, "targetIndex"    # I
    .param p2, "targetItemOffset"    # I

    .line 51
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;->getVisibleItemsAverageSize()I

    move-result v0

    .line 52
    .local v0, "averageSize":I
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;->getFirstVisibleItemIndex()I

    move-result v1

    sub-int v1, p1, v1

    .line 53
    .local v1, "indexesDiff":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 54
    .local v2, "coercedOffset":I
    if-gez p2, :cond_0

    mul-int/lit8 v2, v2, -0x1

    .line 55
    :cond_0
    mul-int v3, v0, v1

    int-to-float v3, v3

    .line 56
    int-to-float v4, v2

    .line 55
    add-float/2addr v3, v4

    .line 56
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;->getFirstVisibleItemScrollOffset()I

    move-result v4

    int-to-float v4, v4

    .line 55
    sub-float/2addr v3, v4

    return v3
.end method

.method public getFirstVisibleItemIndex()I
    .locals 1

    .line 31
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;->state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemIndex()I

    move-result v0

    return v0
.end method

.method public getFirstVisibleItemScrollOffset()I
    .locals 1

    .line 33
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;->state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemScrollOffset()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 39
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;->state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getTotalItemsCount()I

    move-result v0

    return v0
.end method

.method public getLastVisibleItemIndex()I
    .locals 1

    .line 36
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;->state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVisibleItemScrollOffset(I)I
    .locals 13
    .param p1, "index"    # I

    .line 42
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;->state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v0

    .local v0, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 72
    .local v1, "$i$f$fastFirstOrNull":I
    nop

    .line 73
    move-object v2, v0

    .local v2, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 74
    .local v3, "$i$f$fastForEach":I
    nop

    .line 75
    const/4 v4, 0x0

    .local v4, "index$iv$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    const/4 v6, 0x0

    if-ge v4, v5, :cond_2

    .line 76
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 77
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 73
    .local v9, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v10, v8

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .local v10, "it":Landroidx/compose/foundation/lazy/LazyListItemInfo;
    const/4 v11, 0x0

    .line 43
    .local v11, "$i$a$-fastFirstOrNull-LazyListAnimateScrollScope$getVisibleItemScrollOffset$1":I
    invoke-interface {v10}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v12

    if-ne v12, p1, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    move v12, v6

    .line 73
    .end local v10    # "it":Landroidx/compose/foundation/lazy/LazyListItemInfo;
    .end local v11    # "$i$a$-fastFirstOrNull-LazyListAnimateScrollScope$getVisibleItemScrollOffset$1":I
    :goto_1
    if-eqz v12, :cond_1

    goto :goto_2

    .line 77
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_1
    nop

    .line 75
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    .end local v4    # "index$iv$iv":I
    :cond_2
    nop

    .line 80
    .end local v2    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    const/4 v8, 0x0

    .line 42
    .end local v0    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastFirstOrNull":I
    :goto_2
    check-cast v8, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 44
    if-eqz v8, :cond_3

    .line 42
    nop

    .line 44
    invoke-interface {v8}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getOffset()I

    move-result v6

    .line 42
    nop

    .line 44
    :cond_3
    return v6
.end method

.method public getVisibleItemsAverageSize()I
    .locals 14

    .line 65
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;->state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v0

    .line 66
    .local v0, "layoutInfo":Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v1

    .line 67
    .local v1, "visibleItems":Ljava/util/List;
    move-object v2, v1

    .local v2, "$this$fastSumBy$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 81
    .local v3, "$i$f$fastSumBy":I
    nop

    .line 82
    const/4 v4, 0x0

    .line 83
    .local v4, "sum$iv":I
    move-object v5, v2

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 84
    .local v6, "$i$f$fastForEach":I
    nop

    .line 85
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_0

    .line 86
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 87
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "element$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 88
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastSumBy$2$iv":I
    move-object v12, v10

    check-cast v12, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .local v12, "it":Landroidx/compose/foundation/lazy/LazyListItemInfo;
    const/4 v13, 0x0

    .line 67
    .local v13, "$i$a$-fastSumBy-LazyListAnimateScrollScope$visibleItemsAverageSize$itemsSum$1":I
    invoke-interface {v12}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getSize()I

    move-result v12

    .line 88
    .end local v12    # "it":Landroidx/compose/foundation/lazy/LazyListItemInfo;
    .end local v13    # "$i$a$-fastSumBy-LazyListAnimateScrollScope$visibleItemsAverageSize$itemsSum$1":I
    add-int/2addr v4, v12

    .line 89
    nop

    .line 87
    .end local v10    # "element$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastSumBy$2$iv":I
    nop

    .line 85
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 90
    .end local v7    # "index$iv$iv":I
    :cond_0
    nop

    .line 91
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    nop

    .line 67
    .end local v2    # "$this$fastSumBy$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastSumBy":I
    .end local v4    # "sum$iv":I
    move v2, v4

    .line 68
    .local v2, "itemsSum":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    div-int v3, v2, v3

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getMainAxisItemSpacing()I

    move-result v4

    add-int/2addr v3, v4

    return v3
.end method

.method public scroll(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "block"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;->state:Landroidx/compose/foundation/lazy/LazyListState;

    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/gestures/ScrollableState;

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/gestures/ScrollableState;->scroll$default(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 61
    return-object v0
.end method

.method public snapToItem(Landroidx/compose/foundation/gestures/ScrollScope;II)V
    .locals 1
    .param p1, "$this$snapToItem"    # Landroidx/compose/foundation/gestures/ScrollScope;
    .param p2, "index"    # I
    .param p3, "scrollOffset"    # I

    .line 47
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;->state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0, p2, p3}, Landroidx/compose/foundation/lazy/LazyListState;->snapToItemIndexInternal$foundation_release(II)V

    .line 48
    return-void
.end method
