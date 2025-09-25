.class final Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;
.super Ljava/lang/Object;
.source "LazyLayoutPager.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/BringIntoViewSpec;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J \u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;",
        "Landroidx/compose/foundation/gestures/BringIntoViewSpec;",
        "pagerState",
        "Landroidx/compose/foundation/pager/PagerState;",
        "(Landroidx/compose/foundation/pager/PagerState;)V",
        "getPagerState",
        "()Landroidx/compose/foundation/pager/PagerState;",
        "scrollAnimationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "",
        "getScrollAnimationSpec",
        "()Landroidx/compose/animation/core/AnimationSpec;",
        "calculateScrollDistance",
        "offset",
        "size",
        "containerSize",
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


# instance fields
.field private final pagerState:Landroidx/compose/foundation/pager/PagerState;

.field private final scrollAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;)V
    .locals 3
    .param p1, "pagerState"    # Landroidx/compose/foundation/pager/PagerState;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->pagerState:Landroidx/compose/foundation/pager/PagerState;

    .line 296
    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/AnimationSpec;

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->scrollAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 294
    return-void
.end method


# virtual methods
.method public calculateScrollDistance(FFF)F
    .locals 2
    .param p1, "offset"    # F
    .param p2, "size"    # F
    .param p3, "containerSize"    # F

    .line 312
    cmpl-float v0, p1, p3

    if-gez v0, :cond_4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    goto :goto_1

    .line 315
    :cond_0
    cmpg-float v1, p2, p3

    if-gtz v1, :cond_1

    add-float v1, p1, p2

    cmpl-float v1, v1, p3

    if-lez v1, :cond_1

    .line 316
    goto :goto_2

    .line 319
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->pagerState:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPageOffsetFraction()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v0

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 320
    goto :goto_3

    .line 322
    :cond_3
    goto :goto_2

    .line 313
    :cond_4
    :goto_1
    nop

    .line 312
    :goto_2
    move v0, p1

    :goto_3
    return v0
.end method

.method public final getPagerState()Landroidx/compose/foundation/pager/PagerState;
    .locals 1

    .line 294
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->pagerState:Landroidx/compose/foundation/pager/PagerState;

    return-object v0
.end method

.method public getScrollAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->scrollAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object v0
.end method
