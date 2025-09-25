.class public final Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion$DefaultBringIntoViewSpec$1;
.super Ljava/lang/Object;
.source "Scrollable.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/BringIntoViewSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0016R\u001a\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "androidx/compose/foundation/gestures/BringIntoViewSpec$Companion$DefaultBringIntoViewSpec$1",
        "Landroidx/compose/foundation/gestures/BringIntoViewSpec;",
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
.method constructor <init>()V
    .locals 1

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;->$$INSTANCE:Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;->getDefaultScrollAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion$DefaultBringIntoViewSpec$1;->scrollAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 501
    return-void
.end method


# virtual methods
.method public calculateScrollDistance(FFF)F
    .locals 4
    .param p1, "offset"    # F
    .param p2, "size"    # F
    .param p3, "containerSize"    # F

    .line 510
    add-float v0, p1, p2

    .line 511
    .local v0, "trailingEdge":F
    move v1, p1

    .line 512
    .local v1, "leadingEdge":F
    nop

    .line 515
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_0

    cmpg-float v3, v0, p3

    if-gtz v3, :cond_0

    goto :goto_0

    .line 518
    :cond_0
    cmpg-float v3, v1, v2

    if-gez v3, :cond_1

    cmpl-float v3, v0, p3

    if-lez v3, :cond_1

    goto :goto_0

    .line 522
    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v3, v0, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    move v2, v1

    goto :goto_0

    .line 523
    :cond_2
    sub-float v2, v0, p3

    .line 512
    :goto_0
    return v2
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

    .line 503
    iget-object v0, p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion$DefaultBringIntoViewSpec$1;->scrollAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object v0
.end method
