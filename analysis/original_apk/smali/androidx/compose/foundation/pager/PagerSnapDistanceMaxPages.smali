.class public final Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;
.super Ljava/lang/Object;
.source "Pager.kt"

# interfaces
.implements Landroidx/compose/foundation/pager/PagerSnapDistance;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pager.kt\nandroidx/compose/foundation/pager/PagerSnapDistanceMaxPages\n+ 2 Pager.kt\nandroidx/compose/foundation/pager/PagerKt\n*L\n1#1,970:1\n956#2,4:971\n*S KotlinDebug\n*F\n+ 1 Pager.kt\nandroidx/compose/foundation/pager/PagerSnapDistanceMaxPages\n*L\n559#1:971,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J0\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0003H\u0016J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;",
        "Landroidx/compose/foundation/pager/PagerSnapDistance;",
        "pagesLimit",
        "",
        "(I)V",
        "calculateTargetPage",
        "startPage",
        "suggestedTargetPage",
        "velocity",
        "",
        "pageSize",
        "pageSpacing",
        "equals",
        "",
        "other",
        "",
        "hashCode",
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
.field private final pagesLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "pagesLimit"    # I

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    iput p1, p0, Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;->pagesLimit:I

    return-void
.end method


# virtual methods
.method public calculateTargetPage(IIFII)I
    .locals 2
    .param p1, "startPage"    # I
    .param p2, "suggestedTargetPage"    # I
    .param p3, "velocity"    # F
    .param p4, "pageSize"    # I
    .param p5, "pageSpacing"    # I

    .line 559
    const/4 v0, 0x0

    .line 971
    .local v0, "$i$f$debugLog":I
    nop

    .line 974
    nop

    .line 566
    .end local v0    # "$i$f$debugLog":I
    iget v0, p0, Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;->pagesLimit:I

    sub-int v0, p1, v0

    iget v1, p0, Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;->pagesLimit:I

    add-int/2addr v1, p1

    invoke-static {p2, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 570
    instance-of v0, p1, Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 571
    iget v0, p0, Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;->pagesLimit:I

    move-object v2, p1

    check-cast v2, Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;

    iget v2, v2, Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;->pagesLimit:I

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 573
    :cond_0
    nop

    .line 570
    :cond_1
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 578
    iget v0, p0, Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;->pagesLimit:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    return v0
.end method
