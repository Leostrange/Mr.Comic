.class public final Landroidx/compose/material3/carousel/KeylineList;
.super Ljava/lang/Object;
.source "Keyline.kt"

# interfaces
.implements Ljava/util/List;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "Landroidx/compose/material3/carousel/Keyline;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeyline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Keyline.kt\nandroidx/compose/material3/carousel/KeylineList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,471:1\n350#2,7:472\n350#2,7:479\n378#2,7:486\n350#2,7:493\n378#2,7:500\n288#2,2:507\n288#2,2:509\n116#3,2:511\n33#3,6:513\n118#3:519\n*S KotlinDebug\n*F\n+ 1 Keyline.kt\nandroidx/compose/material3/carousel/KeylineList\n*L\n70#1:472,7\n79#1:479,7\n91#1:486,7\n103#1:493,7\n116#1:500,7\n164#1:507,2\n178#1:509,2\n201#1:511,2\n201#1:513,6\n201#1:519\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0010(\n\u0002\u0008\u0003\n\u0002\u0010*\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0008\u0000\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a2\u0006\u0002\u0010\u0004J\u0011\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0002H\u0096\u0003J\u0017\u0010!\u001a\u00020\u001f2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00020#H\u0096\u0001J\u000e\u0010$\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020%J\u0011\u0010&\u001a\u00020\u00022\u0006\u0010\'\u001a\u00020\tH\u0096\u0003J\u000e\u0010(\u001a\u00020\u00022\u0006\u0010)\u001a\u00020%J\u000e\u0010*\u001a\u00020\u00022\u0006\u0010)\u001a\u00020%J\u0011\u0010+\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u0002H\u0096\u0001J\t\u0010,\u001a\u00020\u001fH\u0096\u0001J\u0006\u0010-\u001a\u00020\u001fJ\u000e\u0010.\u001a\u00020\u001f2\u0006\u0010/\u001a\u00020%J\u000f\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u000201H\u0096\u0003J\u000e\u00102\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020%J\u0011\u00103\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u0002H\u0096\u0001J\u000f\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u000205H\u0096\u0001J\u0017\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u0002052\u0006\u0010\'\u001a\u00020\tH\u0096\u0001J\u001f\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u00107\u001a\u00020\t2\u0006\u00108\u001a\u00020\tH\u0096\u0001R\u0011\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0007R\u0011\u0010\u000e\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bR\u0011\u0010\u0010\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007R\u0011\u0010\u0012\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000bR\u0011\u0010\u0014\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0007R\u0011\u0010\u0016\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u000bR\u0011\u0010\u0018\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0007R\u0011\u0010\u001a\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u000bR\u0012\u0010\u001c\u001a\u00020\tX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u000b\u00a8\u00069"
    }
    d2 = {
        "Landroidx/compose/material3/carousel/KeylineList;",
        "",
        "Landroidx/compose/material3/carousel/Keyline;",
        "keylines",
        "(Ljava/util/List;)V",
        "firstFocal",
        "getFirstFocal",
        "()Landroidx/compose/material3/carousel/Keyline;",
        "firstFocalIndex",
        "",
        "getFirstFocalIndex",
        "()I",
        "firstNonAnchor",
        "getFirstNonAnchor",
        "firstNonAnchorIndex",
        "getFirstNonAnchorIndex",
        "lastFocal",
        "getLastFocal",
        "lastFocalIndex",
        "getLastFocalIndex",
        "lastNonAnchor",
        "getLastNonAnchor",
        "lastNonAnchorIndex",
        "getLastNonAnchorIndex",
        "pivot",
        "getPivot",
        "pivotIndex",
        "getPivotIndex",
        "size",
        "getSize",
        "contains",
        "",
        "element",
        "containsAll",
        "elements",
        "",
        "firstIndexAfterFocalRangeWithSize",
        "",
        "get",
        "index",
        "getKeylineAfter",
        "unadjustedOffset",
        "getKeylineBefore",
        "indexOf",
        "isEmpty",
        "isFirstFocalItemAtStartOfContainer",
        "isLastFocalItemAtEndOfContainer",
        "carouselMainAxisSize",
        "iterator",
        "",
        "lastIndexBeforeFocalRangeWithSize",
        "lastIndexOf",
        "listIterator",
        "",
        "subList",
        "fromIndex",
        "toIndex",
        "material3_release"
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
.field private final synthetic $$delegate_0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/Keyline;",
            ">;"
        }
    .end annotation
.end field

.field private final firstFocal:Landroidx/compose/material3/carousel/Keyline;

.field private final firstFocalIndex:I

.field private final firstNonAnchor:Landroidx/compose/material3/carousel/Keyline;

.field private final firstNonAnchorIndex:I

.field private final lastFocal:Landroidx/compose/material3/carousel/Keyline;

.field private final lastFocalIndex:I

.field private final lastNonAnchor:Landroidx/compose/material3/carousel/Keyline;

.field private final lastNonAnchorIndex:I

.field private final pivot:Landroidx/compose/material3/carousel/Keyline;

.field private final pivotIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/material3/carousel/KeylineList;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 9
    .param p1, "keylines"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/Keyline;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroidx/compose/material3/carousel/KeylineList;->$$delegate_0:Ljava/util/List;

    .line 70
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .local v0, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 472
    .local v1, "$i$f$indexOfFirst":I
    const/4 v2, 0x0

    .line 473
    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 474
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Landroidx/compose/material3/carousel/Keyline;

    .local v6, "it":Landroidx/compose/material3/carousel/Keyline;
    const/4 v7, 0x0

    .line 70
    .local v7, "$i$a$-indexOfFirst-KeylineList$pivotIndex$1":I
    invoke-virtual {v6}, Landroidx/compose/material3/carousel/Keyline;->isPivot()Z

    move-result v6

    .line 474
    .end local v6    # "it":Landroidx/compose/material3/carousel/Keyline;
    .end local v7    # "$i$a$-indexOfFirst-KeylineList$pivotIndex$1":I
    if-eqz v6, :cond_0

    .line 475
    goto :goto_1

    .line 476
    :cond_0
    nop

    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 478
    :cond_1
    move v2, v5

    .line 70
    .end local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v1    # "$i$f$indexOfFirst":I
    .end local v2    # "index$iv":I
    :goto_1
    iput v2, p0, Landroidx/compose/material3/carousel/KeylineList;->pivotIndex:I

    .line 73
    iget v0, p0, Landroidx/compose/material3/carousel/KeylineList;->pivotIndex:I

    invoke-virtual {p0, v0}, Landroidx/compose/material3/carousel/KeylineList;->get(I)Landroidx/compose/material3/carousel/Keyline;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/carousel/KeylineList;->pivot:Landroidx/compose/material3/carousel/Keyline;

    .line 79
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .restart local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 479
    .restart local v1    # "$i$f$indexOfFirst":I
    const/4 v2, 0x0

    .line 480
    .restart local v2    # "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 481
    .restart local v4    # "item$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Landroidx/compose/material3/carousel/Keyline;

    .restart local v6    # "it":Landroidx/compose/material3/carousel/Keyline;
    const/4 v7, 0x0

    .line 79
    .local v7, "$i$a$-indexOfFirst-KeylineList$firstNonAnchorIndex$1":I
    invoke-virtual {v6}, Landroidx/compose/material3/carousel/Keyline;->isAnchor()Z

    move-result v8

    .line 481
    .end local v6    # "it":Landroidx/compose/material3/carousel/Keyline;
    .end local v7    # "$i$a$-indexOfFirst-KeylineList$firstNonAnchorIndex$1":I
    xor-int/lit8 v6, v8, 0x1

    if-eqz v6, :cond_2

    .line 482
    goto :goto_3

    .line 483
    :cond_2
    nop

    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 485
    :cond_3
    move v2, v5

    .line 79
    .end local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v1    # "$i$f$indexOfFirst":I
    .end local v2    # "index$iv":I
    :goto_3
    iput v2, p0, Landroidx/compose/material3/carousel/KeylineList;->firstNonAnchorIndex:I

    .line 85
    iget v0, p0, Landroidx/compose/material3/carousel/KeylineList;->firstNonAnchorIndex:I

    invoke-virtual {p0, v0}, Landroidx/compose/material3/carousel/KeylineList;->get(I)Landroidx/compose/material3/carousel/Keyline;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/carousel/KeylineList;->firstNonAnchor:Landroidx/compose/material3/carousel/Keyline;

    .line 91
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .local v0, "$this$indexOfLast$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 486
    .local v1, "$i$f$indexOfLast":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 487
    .local v2, "iterator$iv":Ljava/util/ListIterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 488
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/material3/carousel/Keyline;

    .local v3, "it":Landroidx/compose/material3/carousel/Keyline;
    const/4 v4, 0x0

    .line 91
    .local v4, "$i$a$-indexOfLast-KeylineList$lastNonAnchorIndex$1":I
    invoke-virtual {v3}, Landroidx/compose/material3/carousel/Keyline;->isAnchor()Z

    move-result v6

    .line 488
    .end local v3    # "it":Landroidx/compose/material3/carousel/Keyline;
    .end local v4    # "$i$a$-indexOfLast-KeylineList$lastNonAnchorIndex$1":I
    xor-int/lit8 v3, v6, 0x1

    if-eqz v3, :cond_4

    .line 489
    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v3

    goto :goto_4

    .line 492
    :cond_5
    move v3, v5

    .line 91
    .end local v0    # "$this$indexOfLast$iv":Ljava/util/List;
    .end local v1    # "$i$f$indexOfLast":I
    .end local v2    # "iterator$iv":Ljava/util/ListIterator;
    :goto_4
    iput v3, p0, Landroidx/compose/material3/carousel/KeylineList;->lastNonAnchorIndex:I

    .line 97
    iget v0, p0, Landroidx/compose/material3/carousel/KeylineList;->lastNonAnchorIndex:I

    invoke-virtual {p0, v0}, Landroidx/compose/material3/carousel/KeylineList;->get(I)Landroidx/compose/material3/carousel/Keyline;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/carousel/KeylineList;->lastNonAnchor:Landroidx/compose/material3/carousel/Keyline;

    .line 103
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .local v0, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 493
    .local v1, "$i$f$indexOfFirst":I
    const/4 v2, 0x0

    .line 494
    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 495
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Landroidx/compose/material3/carousel/Keyline;

    .restart local v6    # "it":Landroidx/compose/material3/carousel/Keyline;
    const/4 v7, 0x0

    .line 103
    .local v7, "$i$a$-indexOfFirst-KeylineList$firstFocalIndex$1":I
    invoke-virtual {v6}, Landroidx/compose/material3/carousel/Keyline;->isFocal()Z

    move-result v6

    .line 495
    .end local v6    # "it":Landroidx/compose/material3/carousel/Keyline;
    .end local v7    # "$i$a$-indexOfFirst-KeylineList$firstFocalIndex$1":I
    if-eqz v6, :cond_6

    .line 496
    goto :goto_6

    .line 497
    :cond_6
    nop

    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 499
    :cond_7
    move v2, v5

    .line 103
    .end local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v1    # "$i$f$indexOfFirst":I
    .end local v2    # "index$iv":I
    :goto_6
    iput v2, p0, Landroidx/compose/material3/carousel/KeylineList;->firstFocalIndex:I

    .line 109
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    iget v1, p0, Landroidx/compose/material3/carousel/KeylineList;->firstFocalIndex:I

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/carousel/Keyline;

    const-string v1, "All KeylineLists must have at least one focal keyline"

    if-eqz v0, :cond_b

    iput-object v0, p0, Landroidx/compose/material3/carousel/KeylineList;->firstFocal:Landroidx/compose/material3/carousel/Keyline;

    .line 116
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .local v0, "$this$indexOfLast$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 500
    .local v2, "$i$f$indexOfLast":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 501
    .local v3, "iterator$iv":Ljava/util/ListIterator;
    :cond_8
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 502
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/material3/carousel/Keyline;

    .local v4, "it":Landroidx/compose/material3/carousel/Keyline;
    const/4 v6, 0x0

    .line 116
    .local v6, "$i$a$-indexOfLast-KeylineList$lastFocalIndex$1":I
    invoke-virtual {v4}, Landroidx/compose/material3/carousel/Keyline;->isFocal()Z

    move-result v4

    .line 502
    .end local v4    # "it":Landroidx/compose/material3/carousel/Keyline;
    .end local v6    # "$i$a$-indexOfLast-KeylineList$lastFocalIndex$1":I
    if-eqz v4, :cond_8

    .line 503
    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v5

    goto :goto_7

    .line 506
    :cond_9
    nop

    .line 116
    .end local v0    # "$this$indexOfLast$iv":Ljava/util/List;
    .end local v2    # "$i$f$indexOfLast":I
    .end local v3    # "iterator$iv":Ljava/util/ListIterator;
    :goto_7
    iput v5, p0, Landroidx/compose/material3/carousel/KeylineList;->lastFocalIndex:I

    .line 122
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    iget v2, p0, Landroidx/compose/material3/carousel/KeylineList;->lastFocalIndex:I

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/carousel/Keyline;

    if-eqz v0, :cond_a

    iput-object v0, p0, Landroidx/compose/material3/carousel/KeylineList;->lastFocal:Landroidx/compose/material3/carousel/Keyline;

    .line 62
    return-void

    .line 123
    :cond_a
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(ILandroidx/compose/material3/carousel/Keyline;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Landroidx/compose/material3/carousel/Keyline;)Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/compose/material3/carousel/Keyline;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/compose/material3/carousel/Keyline;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Landroidx/compose/material3/carousel/Keyline;)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/carousel/KeylineList;->$$delegate_0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 62
    instance-of v0, p1, Landroidx/compose/material3/carousel/Keyline;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {p0, v0}, Landroidx/compose/material3/carousel/KeylineList;->contains(Landroidx/compose/material3/carousel/Keyline;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/material3/carousel/KeylineList;->$$delegate_0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final firstIndexAfterFocalRangeWithSize(F)I
    .locals 9
    .param p1, "size"    # F

    .line 162
    iget v0, p0, Landroidx/compose/material3/carousel/KeylineList;->lastFocalIndex:I

    .line 163
    .local v0, "from":I
    move-object v1, p0

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    .line 164
    .local v1, "to":I
    new-instance v2, Lkotlin/ranges/IntRange;

    invoke-direct {v2, v0, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 507
    .local v3, "$i$f$firstOrNull":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .local v6, "i":I
    const/4 v7, 0x0

    .line 164
    .local v7, "$i$a$-firstOrNull-KeylineList$firstIndexAfterFocalRangeWithSize$1":I
    invoke-virtual {p0, v6}, Landroidx/compose/material3/carousel/KeylineList;->get(I)Landroidx/compose/material3/carousel/Keyline;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/material3/carousel/Keyline;->getSize()F

    move-result v8

    cmpg-float v8, v8, p1

    if-nez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 507
    .end local v6    # "i":I
    .end local v7    # "$i$a$-firstOrNull-KeylineList$firstIndexAfterFocalRangeWithSize$1":I
    :goto_0
    if-eqz v8, :cond_0

    goto :goto_1

    .line 508
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_2
    const/4 v5, 0x0

    .line 164
    .end local v2    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$firstOrNull":I
    :goto_1
    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_3
    move-object v2, p0

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    :goto_2
    return v2
.end method

.method public get(I)Landroidx/compose/material3/carousel/Keyline;
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/carousel/KeylineList;->$$delegate_0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/carousel/Keyline;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 62
    invoke-virtual {p0, p1}, Landroidx/compose/material3/carousel/KeylineList;->get(I)Landroidx/compose/material3/carousel/Keyline;

    move-result-object v0

    return-object v0
.end method

.method public final getFirstFocal()Landroidx/compose/material3/carousel/Keyline;
    .locals 1

    .line 109
    iget-object v0, p0, Landroidx/compose/material3/carousel/KeylineList;->firstFocal:Landroidx/compose/material3/carousel/Keyline;

    return-object v0
.end method

.method public final getFirstFocalIndex()I
    .locals 1

    .line 103
    iget v0, p0, Landroidx/compose/material3/carousel/KeylineList;->firstFocalIndex:I

    return v0
.end method

.method public final getFirstNonAnchor()Landroidx/compose/material3/carousel/Keyline;
    .locals 1

    .line 85
    iget-object v0, p0, Landroidx/compose/material3/carousel/KeylineList;->firstNonAnchor:Landroidx/compose/material3/carousel/Keyline;

    return-object v0
.end method

.method public final getFirstNonAnchorIndex()I
    .locals 1

    .line 79
    iget v0, p0, Landroidx/compose/material3/carousel/KeylineList;->firstNonAnchorIndex:I

    return v0
.end method

.method public final getKeylineAfter(F)Landroidx/compose/material3/carousel/Keyline;
    .locals 12
    .param p1, "unadjustedOffset"    # F

    .line 201
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .local v0, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 511
    .local v1, "$i$f$fastFirstOrNull":I
    nop

    .line 512
    move-object v2, v0

    .local v2, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 513
    .local v3, "$i$f$fastForEach":I
    nop

    .line 514
    const/4 v4, 0x0

    .local v4, "index$iv$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_2

    .line 515
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 516
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    .local v7, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 512
    .local v8, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v9, v7

    check-cast v9, Landroidx/compose/material3/carousel/Keyline;

    .local v9, "it":Landroidx/compose/material3/carousel/Keyline;
    const/4 v10, 0x0

    .line 201
    .local v10, "$i$a$-fastFirstOrNull-KeylineList$getKeylineAfter$1":I
    invoke-virtual {v9}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result v11

    cmpl-float v11, v11, p1

    if-ltz v11, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    .line 512
    .end local v9    # "it":Landroidx/compose/material3/carousel/Keyline;
    .end local v10    # "$i$a$-fastFirstOrNull-KeylineList$getKeylineAfter$1":I
    :goto_1
    if-eqz v11, :cond_1

    goto :goto_2

    .line 516
    .end local v7    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_1
    nop

    .line 514
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 518
    .end local v4    # "index$iv$iv":I
    :cond_2
    nop

    .line 519
    .end local v2    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    const/4 v7, 0x0

    .line 201
    .end local v0    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastFirstOrNull":I
    :goto_2
    check-cast v7, Landroidx/compose/material3/carousel/Keyline;

    if-nez v7, :cond_3

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/compose/material3/carousel/Keyline;

    :cond_3
    return-object v7
.end method

.method public final getKeylineBefore(F)Landroidx/compose/material3/carousel/Keyline;
    .locals 4
    .param p1, "unadjustedOffset"    # F

    .line 186
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/KeylineList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    :cond_0
    move v1, v0

    .local v1, "index":I
    add-int/lit8 v0, v0, -0x1

    .line 187
    invoke-virtual {p0, v1}, Landroidx/compose/material3/carousel/KeylineList;->get(I)Landroidx/compose/material3/carousel/Keyline;

    move-result-object v2

    .line 188
    .local v2, "k":Landroidx/compose/material3/carousel/Keyline;
    invoke-virtual {v2}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result v3

    cmpg-float v3, v3, p1

    if-gez v3, :cond_1

    .line 189
    return-object v2

    .line 186
    .end local v2    # "k":Landroidx/compose/material3/carousel/Keyline;
    :cond_1
    if-gez v0, :cond_0

    .line 193
    .end local v1    # "index":I
    :cond_2
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/carousel/Keyline;

    return-object v0
.end method

.method public final getLastFocal()Landroidx/compose/material3/carousel/Keyline;
    .locals 1

    .line 122
    iget-object v0, p0, Landroidx/compose/material3/carousel/KeylineList;->lastFocal:Landroidx/compose/material3/carousel/Keyline;

    return-object v0
.end method

.method public final getLastFocalIndex()I
    .locals 1

    .line 116
    iget v0, p0, Landroidx/compose/material3/carousel/KeylineList;->lastFocalIndex:I

    return v0
.end method

.method public final getLastNonAnchor()Landroidx/compose/material3/carousel/Keyline;
    .locals 1

    .line 97
    iget-object v0, p0, Landroidx/compose/material3/carousel/KeylineList;->lastNonAnchor:Landroidx/compose/material3/carousel/Keyline;

    return-object v0
.end method

.method public final getLastNonAnchorIndex()I
    .locals 1

    .line 91
    iget v0, p0, Landroidx/compose/material3/carousel/KeylineList;->lastNonAnchorIndex:I

    return v0
.end method

.method public final getPivot()Landroidx/compose/material3/carousel/Keyline;
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/compose/material3/carousel/KeylineList;->pivot:Landroidx/compose/material3/carousel/Keyline;

    return-object v0
.end method

.method public final getPivotIndex()I
    .locals 1

    .line 70
    iget v0, p0, Landroidx/compose/material3/carousel/KeylineList;->pivotIndex:I

    return v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/carousel/KeylineList;->$$delegate_0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public indexOf(Landroidx/compose/material3/carousel/Keyline;)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/carousel/KeylineList;->$$delegate_0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 62
    instance-of v0, p1, Landroidx/compose/material3/carousel/Keyline;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {p0, v0}, Landroidx/compose/material3/carousel/KeylineList;->indexOf(Landroidx/compose/material3/carousel/Keyline;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/carousel/KeylineList;->$$delegate_0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isFirstFocalItemAtStartOfContainer()Z
    .locals 3

    .line 135
    iget-object v0, p0, Landroidx/compose/material3/carousel/KeylineList;->firstFocal:Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {v0}, Landroidx/compose/material3/carousel/Keyline;->getOffset()F

    move-result v0

    iget-object v1, p0, Landroidx/compose/material3/carousel/KeylineList;->firstFocal:Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {v1}, Landroidx/compose/material3/carousel/Keyline;->getSize()F

    move-result v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 136
    .local v0, "firstFocalLeft":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Landroidx/compose/material3/carousel/KeylineList;->firstFocal:Landroidx/compose/material3/carousel/Keyline;

    iget-object v2, p0, Landroidx/compose/material3/carousel/KeylineList;->firstNonAnchor:Landroidx/compose/material3/carousel/Keyline;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isLastFocalItemAtEndOfContainer(F)Z
    .locals 3
    .param p1, "carouselMainAxisSize"    # F

    .line 149
    iget-object v0, p0, Landroidx/compose/material3/carousel/KeylineList;->lastFocal:Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {v0}, Landroidx/compose/material3/carousel/Keyline;->getOffset()F

    move-result v0

    iget-object v1, p0, Landroidx/compose/material3/carousel/KeylineList;->lastFocal:Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {v1}, Landroidx/compose/material3/carousel/Keyline;->getSize()F

    move-result v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 150
    .local v0, "lastFocalRight":F
    cmpg-float v1, v0, p1

    if-gtz v1, :cond_0

    iget-object v1, p0, Landroidx/compose/material3/carousel/KeylineList;->lastFocal:Landroidx/compose/material3/carousel/Keyline;

    iget-object v2, p0, Landroidx/compose/material3/carousel/KeylineList;->lastNonAnchor:Landroidx/compose/material3/carousel/Keyline;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroidx/compose/material3/carousel/Keyline;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/material3/carousel/KeylineList;->$$delegate_0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final lastIndexBeforeFocalRangeWithSize(F)I
    .locals 10
    .param p1, "size"    # F

    .line 176
    iget v0, p0, Landroidx/compose/material3/carousel/KeylineList;->firstFocalIndex:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 177
    .local v0, "from":I
    const/4 v2, 0x0

    .line 178
    .local v2, "to":I
    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->downTo(II)Lkotlin/ranges/IntProgression;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 509
    .local v4, "$i$f$firstOrNull":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .local v7, "i":I
    const/4 v8, 0x0

    .line 178
    .local v8, "$i$a$-firstOrNull-KeylineList$lastIndexBeforeFocalRangeWithSize$1":I
    invoke-virtual {p0, v7}, Landroidx/compose/material3/carousel/KeylineList;->get(I)Landroidx/compose/material3/carousel/Keyline;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/material3/carousel/Keyline;->getSize()F

    move-result v9

    cmpg-float v9, v9, p1

    if-nez v9, :cond_1

    move v9, v1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 509
    .end local v7    # "i":I
    .end local v8    # "$i$a$-firstOrNull-KeylineList$lastIndexBeforeFocalRangeWithSize$1":I
    :goto_0
    if-eqz v9, :cond_0

    goto :goto_1

    .line 510
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x0

    .line 178
    .end local v3    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$firstOrNull":I
    :goto_1
    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method public lastIndexOf(Landroidx/compose/material3/carousel/Keyline;)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/carousel/KeylineList;->$$delegate_0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 62
    instance-of v0, p1, Landroidx/compose/material3/carousel/Keyline;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {p0, v0}, Landroidx/compose/material3/carousel/KeylineList;->lastIndexOf(Landroidx/compose/material3/carousel/Keyline;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "Landroidx/compose/material3/carousel/Keyline;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/material3/carousel/KeylineList;->$$delegate_0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Landroidx/compose/material3/carousel/Keyline;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/material3/carousel/KeylineList;->$$delegate_0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Landroidx/compose/material3/carousel/Keyline;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "Landroidx/compose/material3/carousel/Keyline;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILandroidx/compose/material3/carousel/Keyline;)Landroidx/compose/material3/carousel/Keyline;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge size()I
    .locals 1

    .line 62
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/KeylineList;->getSize()I

    move-result v0

    return v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-",
            "Landroidx/compose/material3/carousel/Keyline;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/Keyline;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/material3/carousel/KeylineList;->$$delegate_0:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
