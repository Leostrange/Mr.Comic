.class public final Landroidx/compose/foundation/gestures/ContentInViewNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "ContentInViewNode.kt"

# interfaces
.implements Landroidx/compose/foundation/relocation/BringIntoViewResponder;
.implements Landroidx/compose/ui/node/LayoutAwareModifierNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/ContentInViewNode$Request;,
        Landroidx/compose/foundation/gestures/ContentInViewNode$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContentInViewNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentInViewNode.kt\nandroidx/compose/foundation/gestures/ContentInViewNode\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 BringIntoViewRequestPriorityQueue.kt\nandroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue\n+ 5 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,429:1\n314#2,11:430\n1#3:441\n106#4,2:442\n108#4:455\n492#5,11:444\n*S KotlinDebug\n*F\n+ 1 ContentInViewNode.kt\nandroidx/compose/foundation/gestures/ContentInViewNode\n*L\n122#1:430,11\n323#1:442,2\n323#1:455\n323#1:444,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001EB%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u001e\u0010\u001e\u001a\u00020\u001f2\u000e\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150!H\u0096@\u00a2\u0006\u0002\u0010\"J\u0010\u0010#\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u0015H\u0016J\u0008\u0010$\u001a\u00020%H\u0002J\"\u0010&\u001a\u00020\u00152\u0006\u0010\'\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\u0019H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008)\u0010*J\n\u0010+\u001a\u0004\u0018\u00010\u0015H\u0002J\n\u0010,\u001a\u0004\u0018\u00010\u0015H\u0002J\u0008\u0010-\u001a\u00020\u001fH\u0002J\u0010\u0010.\u001a\u00020\u001f2\u0008\u0010/\u001a\u0004\u0018\u00010\u0012J\u0010\u00100\u001a\u00020\u001f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001a\u00101\u001a\u00020\u001f2\u0006\u00102\u001a\u00020\u0019H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u00083\u00104J\"\u00105\u001a\u0002062\u0006\u0010\'\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\u0019H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u00087\u00108J&\u00109\u001a\u00020\u001f2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010:\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u001f\u0010;\u001a\u00020<*\u00020=2\u0006\u0010>\u001a\u00020=H\u0082\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008?\u0010@J\u001f\u0010;\u001a\u00020<*\u00020\u00192\u0006\u0010>\u001a\u00020\u0019H\u0082\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008A\u0010@J \u0010B\u001a\u00020\t*\u00020\u00152\u0008\u0008\u0002\u00102\u001a\u00020\u0019H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008C\u0010DR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0019@BX\u0080\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\n\n\u0002\u0010\u001d\u001a\u0004\u0008\u001b\u0010\u001c\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006F"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/ContentInViewNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/foundation/relocation/BringIntoViewResponder;",
        "Landroidx/compose/ui/node/LayoutAwareModifierNode;",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "scrollState",
        "Landroidx/compose/foundation/gestures/ScrollableState;",
        "reverseDirection",
        "",
        "bringIntoViewSpec",
        "Landroidx/compose/foundation/gestures/BringIntoViewSpec;",
        "(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;ZLandroidx/compose/foundation/gestures/BringIntoViewSpec;)V",
        "animationState",
        "Landroidx/compose/foundation/gestures/UpdatableAnimationState;",
        "bringIntoViewRequests",
        "Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;",
        "coordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "focusedChild",
        "focusedChildBoundsFromPreviousRemeasure",
        "Landroidx/compose/ui/geometry/Rect;",
        "isAnimationRunning",
        "trackingFocusedChild",
        "<set-?>",
        "Landroidx/compose/ui/unit/IntSize;",
        "viewportSize",
        "getViewportSize-YbymL2g$foundation_release",
        "()J",
        "J",
        "bringChildIntoView",
        "",
        "localRect",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "calculateRectForParent",
        "calculateScrollDelta",
        "",
        "computeDestination",
        "childBounds",
        "containerSize",
        "computeDestination-O0kMr_c",
        "(Landroidx/compose/ui/geometry/Rect;J)Landroidx/compose/ui/geometry/Rect;",
        "findBringIntoViewRequest",
        "getFocusedChildBounds",
        "launchAnimation",
        "onFocusBoundsChanged",
        "newBounds",
        "onPlaced",
        "onRemeasured",
        "size",
        "onRemeasured-ozmzZPI",
        "(J)V",
        "relocationOffset",
        "Landroidx/compose/ui/geometry/Offset;",
        "relocationOffset-BMxPBkI",
        "(Landroidx/compose/ui/geometry/Rect;J)J",
        "update",
        "state",
        "compareTo",
        "",
        "Landroidx/compose/ui/geometry/Size;",
        "other",
        "compareTo-iLBOSCw",
        "(JJ)I",
        "compareTo-TemP2vQ",
        "isMaxVisible",
        "isMaxVisible-O0kMr_c",
        "(Landroidx/compose/ui/geometry/Rect;J)Z",
        "Request",
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
.field private final animationState:Landroidx/compose/foundation/gestures/UpdatableAnimationState;

.field private final bringIntoViewRequests:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

.field private bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

.field private coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

.field private focusedChild:Landroidx/compose/ui/layout/LayoutCoordinates;

.field private focusedChildBoundsFromPreviousRemeasure:Landroidx/compose/ui/geometry/Rect;

.field private isAnimationRunning:Z

.field private orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private reverseDirection:Z

.field private scrollState:Landroidx/compose/foundation/gestures/ScrollableState;

.field private trackingFocusedChild:Z

.field private viewportSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;ZLandroidx/compose/foundation/gestures/BringIntoViewSpec;)V
    .locals 2
    .param p1, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p2, "scrollState"    # Landroidx/compose/foundation/gestures/ScrollableState;
    .param p3, "reverseDirection"    # Z
    .param p4, "bringIntoViewSpec"    # Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 68
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 64
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 65
    iput-object p2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->scrollState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 66
    iput-boolean p3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->reverseDirection:Z

    .line 67
    iput-object p4, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 83
    new-instance v0, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    invoke-direct {v0}, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewRequests:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    .line 102
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    .line 107
    new-instance v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    invoke-interface {v1}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->getScrollAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/foundation/gestures/UpdatableAnimationState;-><init>(Landroidx/compose/animation/core/AnimationSpec;)V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->animationState:Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    .line 63
    return-void
.end method

.method public static final synthetic access$calculateScrollDelta(Landroidx/compose/foundation/gestures/ContentInViewNode;)F
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 62
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->calculateScrollDelta()F

    move-result v0

    return v0
.end method

.method public static final synthetic access$getAnimationState$p(Landroidx/compose/foundation/gestures/ContentInViewNode;)Landroidx/compose/foundation/gestures/UpdatableAnimationState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 62
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->animationState:Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    return-object v0
.end method

.method public static final synthetic access$getBringIntoViewRequests$p(Landroidx/compose/foundation/gestures/ContentInViewNode;)Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 62
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewRequests:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    return-object v0
.end method

.method public static final synthetic access$getFocusedChildBounds(Landroidx/compose/foundation/gestures/ContentInViewNode;)Landroidx/compose/ui/geometry/Rect;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 62
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getFocusedChildBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getReverseDirection$p(Landroidx/compose/foundation/gestures/ContentInViewNode;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 62
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->reverseDirection:Z

    return v0
.end method

.method public static final synthetic access$getScrollState$p(Landroidx/compose/foundation/gestures/ContentInViewNode;)Landroidx/compose/foundation/gestures/ScrollableState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 62
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->scrollState:Landroidx/compose/foundation/gestures/ScrollableState;

    return-object v0
.end method

.method public static final synthetic access$getTrackingFocusedChild$p(Landroidx/compose/foundation/gestures/ContentInViewNode;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 62
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    return v0
.end method

.method public static final synthetic access$isAnimationRunning$p(Landroidx/compose/foundation/gestures/ContentInViewNode;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 62
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->isAnimationRunning:Z

    return v0
.end method

.method public static final synthetic access$launchAnimation(Landroidx/compose/foundation/gestures/ContentInViewNode;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 62
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->launchAnimation()V

    return-void
.end method

.method public static final synthetic access$setAnimationRunning$p(Landroidx/compose/foundation/gestures/ContentInViewNode;Z)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ContentInViewNode;
    .param p1, "<set-?>"    # Z

    .line 62
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->isAnimationRunning:Z

    return-void
.end method

.method public static final synthetic access$setTrackingFocusedChild$p(Landroidx/compose/foundation/gestures/ContentInViewNode;Z)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/ContentInViewNode;
    .param p1, "<set-?>"    # Z

    .line 62
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    return-void
.end method

.method private final calculateScrollDelta()F
    .locals 7

    .line 296
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    sget-object v2, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 298
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->findBringIntoViewRequest()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    if-nez v0, :cond_2

    .line 299
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getFocusedChildBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 298
    :goto_0
    if-nez v0, :cond_2

    .line 300
    return v1

    .line 302
    .local v0, "rectangleToMakeVisible":Landroidx/compose/ui/geometry/Rect;
    :cond_2
    iget-wide v1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v1

    .line 303
    .local v1, "size":J
    iget-object v3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v4, Landroidx/compose/foundation/gestures/ContentInViewNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Landroidx/compose/foundation/gestures/Orientation;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 310
    new-instance v3, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v3}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v3

    :pswitch_0
    iget-object v3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 311
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v4

    .line 312
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v5

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v6

    sub-float/2addr v5, v6

    .line 313
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v6

    .line 310
    invoke-interface {v3, v4, v5, v6}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->calculateScrollDistance(FFF)F

    move-result v3

    goto :goto_1

    .line 304
    :pswitch_1
    iget-object v3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 305
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v4

    .line 306
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v5

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v6

    sub-float/2addr v5, v6

    .line 307
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v6

    .line 304
    invoke-interface {v3, v4, v5, v6}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->calculateScrollDistance(FFF)F

    move-result v3

    .line 303
    :goto_1
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final compareTo-TemP2vQ(JJ)I
    .locals 2
    .param p1, "$this$compareTo_u2dTemP2vQ"    # J
    .param p3, "other"    # J

    .line 385
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/foundation/gestures/ContentInViewNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/Orientation;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 387
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 386
    :pswitch_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    goto :goto_0

    .line 387
    :pswitch_1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    .line 388
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final compareTo-iLBOSCw(JJ)I
    .locals 2
    .param p1, "$this$compareTo_u2diLBOSCw"    # J
    .param p3, "other"    # J

    .line 390
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/foundation/gestures/ContentInViewNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/Orientation;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 392
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 391
    :pswitch_0
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v0

    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    goto :goto_0

    .line 392
    :pswitch_1
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v0

    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    .line 393
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final computeDestination-O0kMr_c(Landroidx/compose/ui/geometry/Rect;J)Landroidx/compose/ui/geometry/Rect;
    .locals 2
    .param p1, "childBounds"    # Landroidx/compose/ui/geometry/Rect;
    .param p2, "containerSize"    # J

    .line 348
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ContentInViewNode;->relocationOffset-BMxPBkI(Landroidx/compose/ui/geometry/Rect;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->unaryMinus-F1C5BW0(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0
.end method

.method private final findBringIntoViewRequest()Landroidx/compose/ui/geometry/Rect;
    .locals 17

    .line 322
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 323
    .local v1, "rectangleToMakeVisible":Ljava/lang/Object;
    iget-object v2, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewRequests:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    .local v2, "this_$iv":Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;
    const/4 v3, 0x0

    .line 442
    .local v3, "$i$f$forEachFromSmallest":I
    nop

    .line 443
    invoke-static {v2}, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->access$getRequests$p(Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v4

    .local v4, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v5, 0x0

    .line 444
    .local v5, "$i$f$forEachReversed":I
    nop

    .line 445
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v6

    .line 446
    .local v6, "size$iv$iv":I
    if-lez v6, :cond_4

    .line 447
    add-int/lit8 v7, v6, -0x1

    .line 448
    .local v7, "i$iv$iv":I
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v8

    .line 450
    .local v8, "content$iv$iv":[Ljava/lang/Object;
    :goto_0
    aget-object v9, v8, v7

    check-cast v9, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    .local v9, "it$iv":Landroidx/compose/foundation/gestures/ContentInViewNode$Request;
    const/4 v10, 0x0

    .line 443
    .local v10, "$i$a$-forEachReversed-BringIntoViewRequestPriorityQueue$forEachFromSmallest$2$iv":I
    invoke-virtual {v9}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->getCurrentBounds()Lkotlin/jvm/functions/Function0;

    move-result-object v11

    invoke-interface {v11}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/geometry/Rect;

    .local v11, "bounds":Landroidx/compose/ui/geometry/Rect;
    const/4 v12, 0x0

    .line 325
    .local v12, "$i$a$-forEachFromSmallest-ContentInViewNode$findBringIntoViewRequest$1":I
    if-eqz v11, :cond_2

    .line 326
    invoke-virtual {v11}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v13

    move-object v15, v2

    move/from16 v16, v3

    .end local v2    # "this_$iv":Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;
    .end local v3    # "$i$f$forEachFromSmallest":I
    .local v15, "this_$iv":Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;
    .local v16, "$i$f$forEachFromSmallest":I
    iget-wide v2, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v2

    invoke-direct {v0, v13, v14, v2, v3}, Landroidx/compose/foundation/gestures/ContentInViewNode;->compareTo-iLBOSCw(JJ)I

    move-result v2

    if-gtz v2, :cond_0

    .line 327
    move-object v1, v11

    .line 337
    goto :goto_2

    .line 335
    :cond_0
    if-nez v1, :cond_1

    move-object v2, v11

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    return-object v2

    .line 325
    .end local v15    # "this_$iv":Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;
    .end local v16    # "$i$f$forEachFromSmallest":I
    .restart local v2    # "this_$iv":Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;
    .restart local v3    # "$i$f$forEachFromSmallest":I
    :cond_2
    move-object v15, v2

    move/from16 v16, v3

    .line 443
    .end local v2    # "this_$iv":Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;
    .end local v3    # "$i$f$forEachFromSmallest":I
    .end local v11    # "bounds":Landroidx/compose/ui/geometry/Rect;
    .end local v12    # "$i$a$-forEachFromSmallest-ContentInViewNode$findBringIntoViewRequest$1":I
    .restart local v15    # "this_$iv":Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;
    .restart local v16    # "$i$f$forEachFromSmallest":I
    :goto_2
    nop

    .line 450
    .end local v9    # "it$iv":Landroidx/compose/foundation/gestures/ContentInViewNode$Request;
    .end local v10    # "$i$a$-forEachReversed-BringIntoViewRequestPriorityQueue$forEachFromSmallest$2$iv":I
    nop

    .line 451
    add-int/lit8 v7, v7, -0x1

    .line 452
    if-gez v7, :cond_3

    goto :goto_3

    :cond_3
    move-object v2, v15

    move/from16 v3, v16

    goto :goto_0

    .line 446
    .end local v7    # "i$iv$iv":I
    .end local v8    # "content$iv$iv":[Ljava/lang/Object;
    .end local v15    # "this_$iv":Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;
    .end local v16    # "$i$f$forEachFromSmallest":I
    .restart local v2    # "this_$iv":Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;
    .restart local v3    # "$i$f$forEachFromSmallest":I
    :cond_4
    move-object v15, v2

    move/from16 v16, v3

    .line 454
    .end local v2    # "this_$iv":Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;
    .end local v3    # "$i$f$forEachFromSmallest":I
    .restart local v15    # "this_$iv":Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;
    .restart local v16    # "$i$f$forEachFromSmallest":I
    :goto_3
    nop

    .line 455
    .end local v4    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v5    # "$i$f$forEachReversed":I
    .end local v6    # "size$iv$iv":I
    nop

    .line 338
    .end local v15    # "this_$iv":Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;
    .end local v16    # "$i$f$forEachFromSmallest":I
    return-object v1
.end method

.method private final getFocusedChildBounds()Landroidx/compose/ui/geometry/Rect;
    .locals 5

    .line 174
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    move-object v2, v0

    .line 441
    .local v2, "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v3, 0x0

    .line 174
    .local v3, "$i$a$-takeIf-ContentInViewNode$getFocusedChildBounds$coordinates$1":I
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v2

    .end local v2    # "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v3    # "$i$a$-takeIf-ContentInViewNode$getFocusedChildBounds$coordinates$1":I
    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_3

    .line 175
    .local v0, "coordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_1
    iget-object v2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->focusedChild:Landroidx/compose/ui/layout/LayoutCoordinates;

    if-eqz v2, :cond_4

    move-object v3, v2

    .line 441
    .local v3, "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v4, 0x0

    .line 175
    .local v4, "$i$a$-takeIf-ContentInViewNode$getFocusedChildBounds$focusedChild$1":I
    invoke-interface {v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v3

    .end local v3    # "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v4    # "$i$a$-takeIf-ContentInViewNode$getFocusedChildBounds$focusedChild$1":I
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 176
    .local v1, "focusedChild":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    return-object v2

    .line 175
    .end local v1    # "focusedChild":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_4
    :goto_2
    return-object v1

    .line 174
    .end local v0    # "coordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_5
    :goto_3
    return-object v1
.end method

.method private final isMaxVisible-O0kMr_c(Landroidx/compose/ui/geometry/Rect;J)Z
    .locals 4
    .param p1, "$this$isMaxVisible_u2dO0kMr_c"    # Landroidx/compose/ui/geometry/Rect;
    .param p2, "size"    # J

    .line 357
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ContentInViewNode;->relocationOffset-BMxPBkI(Landroidx/compose/ui/geometry/Rect;J)J

    move-result-wide v0

    .line 358
    .local v0, "relocationOffset":J
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 359
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 358
    :goto_0
    return v2
.end method

.method static synthetic isMaxVisible-O0kMr_c$default(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JILjava/lang/Object;)Z
    .locals 0

    .line 356
    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    iget-wide p2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible-O0kMr_c(Landroidx/compose/ui/geometry/Rect;J)Z

    move-result p0

    return p0
.end method

.method private final launchAnimation()V
    .locals 7

    .line 180
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->isAnimationRunning:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 182
    nop

    .line 184
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;-><init>(Landroidx/compose/foundation/gestures/ContentInViewNode;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 289
    return-void

    .line 441
    :cond_0
    const/4 v0, 0x0

    .line 180
    .local v0, "$i$a$-check-ContentInViewNode$launchAnimation$1":I
    nop

    .end local v0    # "$i$a$-check-ContentInViewNode$launchAnimation$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "launchAnimation called when previous animation was running"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final relocationOffset-BMxPBkI(Landroidx/compose/ui/geometry/Rect;J)J
    .locals 7
    .param p1, "childBounds"    # Landroidx/compose/ui/geometry/Rect;
    .param p2, "containerSize"    # J

    .line 363
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v0

    .line 364
    .local v0, "size":J
    iget-object v2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v3, Landroidx/compose/foundation/gestures/ContentInViewNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/Orientation;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 374
    new-instance v2, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v2}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v2

    .line 375
    :pswitch_0
    iget-object v2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 376
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v4

    .line 377
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v5

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v6

    sub-float/2addr v5, v6

    .line 378
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v6

    .line 375
    invoke-interface {v2, v4, v5, v6}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->calculateScrollDistance(FFF)F

    move-result v2

    .line 380
    nop

    .line 374
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    goto :goto_0

    .line 366
    :pswitch_1
    nop

    .line 367
    iget-object v2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 368
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v4

    .line 369
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v5

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v6

    sub-float/2addr v5, v6

    .line 370
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v6

    .line 367
    invoke-interface {v2, v4, v5, v6}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->calculateScrollDistance(FFF)F

    move-result v2

    .line 365
    invoke-static {v3, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    .line 364
    :goto_0
    return-wide v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bringChildIntoView(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1, "localRect"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 120
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/geometry/Rect;

    const/4 v0, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible-O0kMr_c$default(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v7, v0

    :cond_0
    if-nez v7, :cond_1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 122
    :cond_1
    const/4 v1, 0x0

    .line 430
    .local v1, "$i$f$suspendCancellableCoroutine":I
    move-object v2, p2

    .local v2, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v3, 0x0

    .line 431
    .local v3, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v4, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    move-object v0, v4

    .line 437
    .local v0, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 438
    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/CancellableContinuation;

    .local v4, "continuation":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v5, 0x0

    .line 123
    .local v5, "$i$a$-suspendCancellableCoroutine-ContentInViewNode$bringChildIntoView$2":I
    new-instance v6, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    invoke-direct {v6, p1, v4}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;-><init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 124
    .local v6, "request":Landroidx/compose/foundation/gestures/ContentInViewNode$Request;
    nop

    .line 127
    invoke-static {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->access$getBringIntoViewRequests$p(Landroidx/compose/foundation/gestures/ContentInViewNode;)Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->enqueue(Landroidx/compose/foundation/gestures/ContentInViewNode$Request;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->access$isAnimationRunning$p(Landroidx/compose/foundation/gestures/ContentInViewNode;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 128
    invoke-static {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->access$launchAnimation(Landroidx/compose/foundation/gestures/ContentInViewNode;)V

    .line 130
    :cond_2
    nop

    .line 438
    .end local v4    # "continuation":Lkotlinx/coroutines/CancellableContinuation;
    .end local v5    # "$i$a$-suspendCancellableCoroutine-ContentInViewNode$bringChildIntoView$2":I
    .end local v6    # "request":Landroidx/compose/foundation/gestures/ContentInViewNode$Request;
    nop

    .line 439
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 430
    .end local v0    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v2    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v3    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_3

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_4

    return-object v0

    .line 440
    :cond_4
    nop

    .end local v1    # "$i$f$suspendCancellableCoroutine":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 131
    return-object v0
.end method

.method public calculateRectForParent(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;
    .locals 4
    .param p1, "localRect"    # Landroidx/compose/ui/geometry/Rect;

    .line 110
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    sget-object v2, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 114
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    invoke-direct {p0, p1, v0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode;->computeDestination-O0kMr_c(Landroidx/compose/ui/geometry/Rect;J)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    const/4 v0, 0x0

    .line 111
    .local v0, "$i$a$-check-ContentInViewNode$calculateRectForParent$1":I
    nop

    .line 110
    .end local v0    # "$i$a$-check-ContentInViewNode$calculateRectForParent$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected BringIntoViewRequester to not be used before parents are placed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getViewportSize-YbymL2g$foundation_release()J
    .locals 2

    .line 102
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    return-wide v0
.end method

.method public final onFocusBoundsChanged(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0
    .param p1, "newBounds"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 134
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->focusedChild:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 135
    return-void
.end method

.method public onPlaced(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0
    .param p1, "coordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 138
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 139
    return-void
.end method

.method public onRemeasured-ozmzZPI(J)V
    .locals 6
    .param p1, "size"    # J

    .line 142
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    .line 143
    .local v0, "oldSize":J
    iput-wide p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    .line 146
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode;->compareTo-TemP2vQ(JJ)I

    move-result v2

    if-ltz v2, :cond_0

    return-void

    .line 148
    :cond_0
    nop

    .line 150
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getFocusedChildBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    if-eqz v2, :cond_3

    .local v2, "focusedChild":Landroidx/compose/ui/geometry/Rect;
    const/4 v3, 0x0

    .line 151
    .local v3, "$i$a$-let-ContentInViewNode$onRemeasured$1":I
    nop

    .line 152
    iget-object v4, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->focusedChildBoundsFromPreviousRemeasure:Landroidx/compose/ui/geometry/Rect;

    if-nez v4, :cond_1

    move-object v4, v2

    .line 153
    .local v4, "previousFocusedChildBounds":Landroidx/compose/ui/geometry/Rect;
    :cond_1
    iget-boolean v5, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->isAnimationRunning:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    if-nez v5, :cond_2

    .line 160
    invoke-direct {p0, v4, v0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible-O0kMr_c(Landroidx/compose/ui/geometry/Rect;J)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v2, p1, p2}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible-O0kMr_c(Landroidx/compose/ui/geometry/Rect;J)Z

    move-result v5

    if-nez v5, :cond_2

    .line 162
    nop

    .line 165
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    .line 166
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->launchAnimation()V

    .line 169
    :cond_2
    iput-object v2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->focusedChildBoundsFromPreviousRemeasure:Landroidx/compose/ui/geometry/Rect;

    .line 170
    nop

    .line 150
    .end local v2    # "focusedChild":Landroidx/compose/ui/geometry/Rect;
    .end local v3    # "$i$a$-let-ContentInViewNode$onRemeasured$1":I
    .end local v4    # "previousFocusedChildBounds":Landroidx/compose/ui/geometry/Rect;
    nop

    .line 171
    :cond_3
    return-void
.end method

.method public final update(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;ZLandroidx/compose/foundation/gestures/BringIntoViewSpec;)V
    .locals 0
    .param p1, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p2, "state"    # Landroidx/compose/foundation/gestures/ScrollableState;
    .param p3, "reverseDirection"    # Z
    .param p4, "bringIntoViewSpec"    # Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 401
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 402
    iput-object p2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->scrollState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 403
    iput-boolean p3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->reverseDirection:Z

    .line 404
    iput-object p4, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 405
    return-void
.end method
