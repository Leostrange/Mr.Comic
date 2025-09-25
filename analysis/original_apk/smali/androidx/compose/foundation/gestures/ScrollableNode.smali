.class final Landroidx/compose/foundation/gestures/ScrollableNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "Scrollable.kt"

# interfaces
.implements Landroidx/compose/ui/node/ObserverModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/focus/FocusPropertiesModifierNode;
.implements Landroidx/compose/ui/input/key/KeyInputModifierNode;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005BK\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0002\u0010\u0015J\u0010\u00102\u001a\u0002032\u0006\u00104\u001a\u000205H\u0016J\u0008\u00106\u001a\u000203H\u0016J\u001a\u00107\u001a\u00020\r2\u0006\u00108\u001a\u000209H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008:\u0010;J\u0008\u0010<\u001a\u000203H\u0016J\u001a\u0010=\u001a\u00020\r2\u0006\u00108\u001a\u000209H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008>\u0010;JL\u0010?\u001a\u0002032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0008\u0010@\u001a\u000203H\u0002R\u0011\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001e\u001a\u00020\u001f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0011\u0010\"\u001a\u00020#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010&\u001a\u00020\'\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u0011\u0010*\u001a\u00020+\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-R\u0011\u0010.\u001a\u00020/\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u00101R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006A"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/ScrollableNode;",
        "Landroidx/compose/ui/node/DelegatingNode;",
        "Landroidx/compose/ui/node/ObserverModifierNode;",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "Landroidx/compose/ui/focus/FocusPropertiesModifierNode;",
        "Landroidx/compose/ui/input/key/KeyInputModifierNode;",
        "state",
        "Landroidx/compose/foundation/gestures/ScrollableState;",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "overscrollEffect",
        "Landroidx/compose/foundation/OverscrollEffect;",
        "enabled",
        "",
        "reverseDirection",
        "flingBehavior",
        "Landroidx/compose/foundation/gestures/FlingBehavior;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "bringIntoViewSpec",
        "Landroidx/compose/foundation/gestures/BringIntoViewSpec;",
        "(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)V",
        "contentInViewNode",
        "Landroidx/compose/foundation/gestures/ContentInViewNode;",
        "getContentInViewNode",
        "()Landroidx/compose/foundation/gestures/ContentInViewNode;",
        "defaultFlingBehavior",
        "Landroidx/compose/foundation/gestures/DefaultFlingBehavior;",
        "getDefaultFlingBehavior",
        "()Landroidx/compose/foundation/gestures/DefaultFlingBehavior;",
        "nestedScrollConnection",
        "Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;",
        "getNestedScrollConnection",
        "()Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;",
        "nestedScrollDispatcher",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;",
        "getNestedScrollDispatcher",
        "()Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;",
        "scrollableContainer",
        "Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;",
        "getScrollableContainer",
        "()Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;",
        "scrollableGesturesNode",
        "Landroidx/compose/foundation/gestures/ScrollableGesturesNode;",
        "getScrollableGesturesNode",
        "()Landroidx/compose/foundation/gestures/ScrollableGesturesNode;",
        "scrollingLogic",
        "Landroidx/compose/foundation/gestures/ScrollingLogic;",
        "getScrollingLogic",
        "()Landroidx/compose/foundation/gestures/ScrollingLogic;",
        "applyFocusProperties",
        "",
        "focusProperties",
        "Landroidx/compose/ui/focus/FocusProperties;",
        "onAttach",
        "onKeyEvent",
        "event",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "onKeyEvent-ZmokQxo",
        "(Landroid/view/KeyEvent;)Z",
        "onObservedReadsChanged",
        "onPreKeyEvent",
        "onPreKeyEvent-ZmokQxo",
        "update",
        "updateDefaultFlingBehavior",
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
.field private final contentInViewNode:Landroidx/compose/foundation/gestures/ContentInViewNode;

.field private final defaultFlingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

.field private enabled:Z

.field private flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

.field private interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field private final nestedScrollConnection:Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;

.field private final nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

.field private orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

.field private reverseDirection:Z

.field private final scrollableContainer:Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;

.field private final scrollableGesturesNode:Landroidx/compose/foundation/gestures/ScrollableGesturesNode;

.field private final scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field private state:Landroidx/compose/foundation/gestures/ScrollableState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)V
    .locals 19
    .param p1, "state"    # Landroidx/compose/foundation/gestures/ScrollableState;
    .param p2, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p3, "overscrollEffect"    # Landroidx/compose/foundation/OverscrollEffect;
    .param p4, "enabled"    # Z
    .param p5, "reverseDirection"    # Z
    .param p6, "flingBehavior"    # Landroidx/compose/foundation/gestures/FlingBehavior;
    .param p7, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p8, "bringIntoViewSpec"    # Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 278
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 270
    move-object/from16 v1, p1

    iput-object v1, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 271
    move-object/from16 v2, p2

    iput-object v2, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 272
    move-object/from16 v3, p3

    iput-object v3, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 273
    move/from16 v4, p4

    iput-boolean v4, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    .line 274
    move/from16 v5, p5

    iput-boolean v5, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->reverseDirection:Z

    .line 275
    move-object/from16 v6, p6

    iput-object v6, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 276
    move-object/from16 v7, p7

    iput-object v7, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 281
    new-instance v8, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-direct {v8}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;-><init>()V

    iput-object v8, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 284
    new-instance v8, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    invoke-static {}, Landroidx/compose/foundation/gestures/ScrollableKt;->access$getUnityDensity$p()Landroidx/compose/foundation/gestures/ScrollableKt$UnityDensity$1;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/unit/Density;

    invoke-static {v9}, Landroidx/compose/animation/SplineBasedDecayKt;->splineBasedDecay(Landroidx/compose/ui/unit/Density;)Landroidx/compose/animation/core/DecayAnimationSpec;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-direct {v8, v9, v10, v11, v10}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;-><init>(Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/ui/MotionDurationScale;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->defaultFlingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 286
    new-instance v8, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 287
    iget-object v13, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 288
    iget-object v14, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 289
    iget-object v15, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 290
    iget-boolean v9, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->reverseDirection:Z

    .line 291
    iget-object v10, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    if-nez v10, :cond_0

    iget-object v10, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->defaultFlingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    check-cast v10, Landroidx/compose/foundation/gestures/FlingBehavior;

    :cond_0
    move-object/from16 v17, v10

    .line 292
    iget-object v10, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 286
    move-object v12, v8

    move/from16 v16, v9

    move-object/from16 v18, v10

    invoke-direct/range {v12 .. v18}, Landroidx/compose/foundation/gestures/ScrollingLogic;-><init>(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V

    iput-object v8, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 296
    iget-boolean v8, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    iget-object v9, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    new-instance v10, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;

    invoke-direct {v10, v9, v8}, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Z)V

    iput-object v10, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollConnection:Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;

    .line 299
    nop

    .line 300
    new-instance v8, Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 301
    iget-object v9, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 302
    iget-object v10, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 303
    iget-boolean v11, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->reverseDirection:Z

    .line 304
    nop

    .line 300
    move-object/from16 v12, p8

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/compose/foundation/gestures/ContentInViewNode;-><init>(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;ZLandroidx/compose/foundation/gestures/BringIntoViewSpec;)V

    check-cast v8, Landroidx/compose/ui/node/DelegatableNode;

    .line 299
    invoke-virtual {v0, v8}, Landroidx/compose/foundation/gestures/ScrollableNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/gestures/ContentInViewNode;

    iput-object v8, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->contentInViewNode:Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 307
    new-instance v8, Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;

    iget-boolean v9, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    invoke-direct {v8, v9}, Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;-><init>(Z)V

    check-cast v8, Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {v0, v8}, Landroidx/compose/foundation/gestures/ScrollableNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;

    iput-object v8, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollableContainer:Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;

    .line 309
    nop

    .line 313
    iget-object v8, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollConnection:Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;

    check-cast v8, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iget-object v9, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-static {v8, v9}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNodeKt;->nestedScrollModifierNode(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroidx/compose/foundation/gestures/ScrollableNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 318
    invoke-static {}, Landroidx/compose/ui/focus/FocusTargetModifierNodeKt;->FocusTargetModifierNode()Landroidx/compose/ui/focus/FocusTargetModifierNode;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {v0, v8}, Landroidx/compose/foundation/gestures/ScrollableNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 319
    new-instance v8, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    iget-object v9, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->contentInViewNode:Landroidx/compose/foundation/gestures/ContentInViewNode;

    check-cast v9, Landroidx/compose/foundation/relocation/BringIntoViewResponder;

    invoke-direct {v8, v9}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponder;)V

    check-cast v8, Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {v0, v8}, Landroidx/compose/foundation/gestures/ScrollableNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 320
    new-instance v8, Landroidx/compose/foundation/FocusedBoundsObserverNode;

    new-instance v9, Landroidx/compose/foundation/gestures/ScrollableNode$1;

    invoke-direct {v9, v0}, Landroidx/compose/foundation/gestures/ScrollableNode$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-direct {v8, v9}, Landroidx/compose/foundation/FocusedBoundsObserverNode;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {v0, v8}, Landroidx/compose/foundation/gestures/ScrollableNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 321
    nop

    .line 326
    nop

    .line 328
    iget-object v8, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 329
    iget-object v15, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 330
    iget-boolean v9, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    .line 331
    iget-object v10, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 332
    iget-object v14, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 327
    new-instance v11, Landroidx/compose/foundation/gestures/ScrollableGesturesNode;

    .line 332
    nop

    .line 329
    nop

    .line 330
    nop

    .line 331
    nop

    .line 328
    nop

    .line 327
    move-object v13, v11

    move/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v18, v8

    invoke-direct/range {v13 .. v18}, Landroidx/compose/foundation/gestures/ScrollableGesturesNode;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    check-cast v11, Landroidx/compose/ui/node/DelegatableNode;

    .line 326
    invoke-virtual {v0, v11}, Landroidx/compose/foundation/gestures/ScrollableNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/gestures/ScrollableGesturesNode;

    iput-object v8, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollableGesturesNode:Landroidx/compose/foundation/gestures/ScrollableGesturesNode;

    .line 269
    return-void
.end method

.method private final updateDefaultFlingBehavior()V
    .locals 3

    .line 397
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v0, v1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    .line 398
    .local v0, "density":Landroidx/compose/ui/unit/Density;
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->defaultFlingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    invoke-static {v0}, Landroidx/compose/animation/SplineBasedDecayKt;->splineBasedDecay(Landroidx/compose/ui/unit/Density;)Landroidx/compose/animation/core/DecayAnimationSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->setFlingDecay(Landroidx/compose/animation/core/DecayAnimationSpec;)V

    .line 399
    return-void
.end method


# virtual methods
.method public applyFocusProperties(Landroidx/compose/ui/focus/FocusProperties;)V
    .locals 1
    .param p1, "focusProperties"    # Landroidx/compose/ui/focus/FocusProperties;

    .line 402
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/compose/ui/focus/FocusProperties;->setCanFocus(Z)V

    .line 403
    return-void
.end method

.method public final getContentInViewNode()Landroidx/compose/foundation/gestures/ContentInViewNode;
    .locals 1

    .line 298
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->contentInViewNode:Landroidx/compose/foundation/gestures/ContentInViewNode;

    return-object v0
.end method

.method public final getDefaultFlingBehavior()Landroidx/compose/foundation/gestures/DefaultFlingBehavior;
    .locals 1

    .line 284
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->defaultFlingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    return-object v0
.end method

.method public final getNestedScrollConnection()Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;
    .locals 1

    .line 295
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollConnection:Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;

    return-object v0
.end method

.method public final getNestedScrollDispatcher()Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;
    .locals 1

    .line 281
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    return-object v0
.end method

.method public final getScrollableContainer()Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;
    .locals 1

    .line 307
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollableContainer:Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;

    return-object v0
.end method

.method public final getScrollableGesturesNode()Landroidx/compose/foundation/gestures/ScrollableGesturesNode;
    .locals 1

    .line 326
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollableGesturesNode:Landroidx/compose/foundation/gestures/ScrollableGesturesNode;

    return-object v0
.end method

.method public final getScrollingLogic()Landroidx/compose/foundation/gestures/ScrollingLogic;
    .locals 1

    .line 286
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    return-object v0
.end method

.method public onAttach()V
    .locals 2

    .line 387
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ScrollableNode;->updateDefaultFlingBehavior()V

    .line 388
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    new-instance v1, Landroidx/compose/foundation/gestures/ScrollableNode$onAttach$1;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/gestures/ScrollableNode$onAttach$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 389
    return-void
.end method

.method public onKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 407
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    if-eqz v0, :cond_4

    .line 408
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v0

    sget-object v2, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/input/key/Key$Companion;->getPageDown-EK5gGoQ()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v0

    sget-object v2, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/input/key/Key$Companion;->getPageUp-EK5gGoQ()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 409
    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    move-result v0

    sget-object v1, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/input/key/KeyEventType$Companion;->getKeyDown-CS__XNY()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/input/key/KeyEventType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 410
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->isCtrlPressed-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 412
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .local v0, "$this$onKeyEvent_ZmokQxo_u24lambda_u240":Landroidx/compose/foundation/gestures/ScrollingLogic;
    const/4 v1, 0x0

    .line 413
    .local v1, "$i$a$-with-ScrollableNode$onKeyEvent$1":I
    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 414
    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->contentInViewNode:Landroidx/compose/foundation/gestures/ContentInViewNode;

    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getViewportSize-YbymL2g$foundation_release()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v2

    .line 416
    .local v2, "viewportHeight":I
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v5

    sget-object v3, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/input/key/Key$Companion;->getPageUp-EK5gGoQ()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 417
    int-to-float v3, v2

    goto :goto_0

    .line 419
    :cond_1
    int-to-float v3, v2

    neg-float v3, v3

    .line 416
    :goto_0
    nop

    .line 422
    .local v3, "yAmount":F
    invoke-static {v4, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    .end local v2    # "viewportHeight":I
    .end local v3    # "yAmount":F
    goto :goto_2

    .line 424
    :cond_2
    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->contentInViewNode:Landroidx/compose/foundation/gestures/ContentInViewNode;

    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getViewportSize-YbymL2g$foundation_release()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v2

    .line 426
    .local v2, "viewportWidth":I
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v5

    sget-object v3, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/input/key/Key$Companion;->getPageUp-EK5gGoQ()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 427
    int-to-float v3, v2

    goto :goto_1

    .line 429
    :cond_3
    int-to-float v3, v2

    neg-float v3, v3

    .line 426
    :goto_1
    nop

    .line 432
    .local v3, "xAmount":F
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    move-wide v2, v4

    .line 413
    .end local v2    # "viewportWidth":I
    .end local v3    # "xAmount":F
    :goto_2
    nop

    .line 441
    .local v2, "scrollAmount":J
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollableNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Landroidx/compose/foundation/gestures/ScrollableNode$onKeyEvent$1$1;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v2, v3, v8}, Landroidx/compose/foundation/gestures/ScrollableNode$onKeyEvent$1$1;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;JLkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 412
    .end local v0    # "$this$onKeyEvent_ZmokQxo_u24lambda_u240":Landroidx/compose/foundation/gestures/ScrollingLogic;
    .end local v1    # "$i$a$-with-ScrollableNode$onKeyEvent$1":I
    .end local v2    # "scrollAmount":J
    nop

    .line 447
    const/4 v0, 0x1

    goto :goto_3

    .line 449
    :cond_4
    const/4 v0, 0x0

    .line 407
    :goto_3
    return v0
.end method

.method public onObservedReadsChanged()V
    .locals 0

    .line 393
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ScrollableNode;->updateDefaultFlingBehavior()V

    .line 394
    return-void
.end method

.method public onPreKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method public final update(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)V
    .locals 14
    .param p1, "state"    # Landroidx/compose/foundation/gestures/ScrollableState;
    .param p2, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p3, "overscrollEffect"    # Landroidx/compose/foundation/OverscrollEffect;
    .param p4, "enabled"    # Z
    .param p5, "reverseDirection"    # Z
    .param p6, "flingBehavior"    # Landroidx/compose/foundation/gestures/FlingBehavior;
    .param p7, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p8, "bringIntoViewSpec"    # Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 347
    move-object v0, p0

    move-object v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    iget-boolean v1, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    if-eq v1, v10, :cond_0

    .line 348
    iget-object v1, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollConnection:Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;

    invoke-virtual {v1, v10}, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;->setEnabled(Z)V

    .line 349
    iget-object v1, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollableContainer:Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;

    invoke-virtual {v1, v10}, Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;->setEnabled(Z)V

    .line 352
    :cond_0
    if-nez v12, :cond_1

    iget-object v1, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->defaultFlingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    check-cast v1, Landroidx/compose/foundation/gestures/FlingBehavior;

    move-object v6, v1

    goto :goto_0

    :cond_1
    move-object v6, v12

    .line 354
    .local v6, "resolvedFlingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    :goto_0
    iget-object v1, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 355
    nop

    .line 356
    nop

    .line 357
    nop

    .line 358
    nop

    .line 359
    nop

    .line 360
    iget-object v7, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 354
    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v7}, Landroidx/compose/foundation/gestures/ScrollingLogic;->update(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V

    .line 363
    iget-object v1, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollableGesturesNode:Landroidx/compose/foundation/gestures/ScrollableGesturesNode;

    .line 365
    nop

    .line 366
    nop

    .line 364
    nop

    .line 363
    invoke-virtual {v1, v9, v10, v13}, Landroidx/compose/foundation/gestures/ScrollableGesturesNode;->update(Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 369
    iget-object v1, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->contentInViewNode:Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 370
    nop

    .line 371
    nop

    .line 372
    nop

    .line 373
    nop

    .line 369
    move-object/from16 v2, p8

    invoke-virtual {v1, v9, p1, v11, v2}, Landroidx/compose/foundation/gestures/ContentInViewNode;->update(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;ZLandroidx/compose/foundation/gestures/BringIntoViewSpec;)V

    .line 376
    iput-object v8, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 377
    iput-object v9, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 378
    move-object/from16 v1, p3

    iput-object v1, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 379
    iput-boolean v10, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    .line 380
    iput-boolean v11, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->reverseDirection:Z

    .line 381
    iput-object v12, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 382
    iput-object v13, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 383
    return-void
.end method
