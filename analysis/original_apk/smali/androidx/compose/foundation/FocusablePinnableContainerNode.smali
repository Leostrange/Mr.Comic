.class final Landroidx/compose/foundation/FocusablePinnableContainerNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "Focusable.kt"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0016J\n\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0002J\u000e\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0006R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/compose/foundation/FocusablePinnableContainerNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "Landroidx/compose/ui/node/ObserverModifierNode;",
        "()V",
        "isFocused",
        "",
        "pinnedHandle",
        "Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;",
        "onObservedReadsChanged",
        "",
        "onReset",
        "retrievePinnableContainer",
        "Landroidx/compose/ui/layout/PinnableContainer;",
        "setFocus",
        "focused",
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
.field private isFocused:Z

.field private pinnedHandle:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    return-void
.end method

.method private final retrievePinnableContainer()Landroidx/compose/ui/layout/PinnableContainer;
    .locals 3

    .line 325
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 326
    .local v0, "container":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    new-instance v2, Landroidx/compose/foundation/FocusablePinnableContainerNode$retrievePinnableContainer$1;

    invoke-direct {v2, v0, p0}, Landroidx/compose/foundation/FocusablePinnableContainerNode$retrievePinnableContainer$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/foundation/FocusablePinnableContainerNode;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 329
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/layout/PinnableContainer;

    return-object v1
.end method


# virtual methods
.method public onObservedReadsChanged()V
    .locals 2

    .line 349
    invoke-direct {p0}, Landroidx/compose/foundation/FocusablePinnableContainerNode;->retrievePinnableContainer()Landroidx/compose/ui/layout/PinnableContainer;

    move-result-object v0

    .line 350
    .local v0, "pinnableContainer":Landroidx/compose/ui/layout/PinnableContainer;
    iget-boolean v1, p0, Landroidx/compose/foundation/FocusablePinnableContainerNode;->isFocused:Z

    if-eqz v1, :cond_2

    .line 351
    iget-object v1, p0, Landroidx/compose/foundation/FocusablePinnableContainerNode;->pinnedHandle:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;->release()V

    .line 352
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/ui/layout/PinnableContainer;->pin()Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Landroidx/compose/foundation/FocusablePinnableContainerNode;->pinnedHandle:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    .line 354
    :cond_2
    return-void
.end method

.method public onReset()V
    .locals 1

    .line 344
    iget-object v0, p0, Landroidx/compose/foundation/FocusablePinnableContainerNode;->pinnedHandle:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;->release()V

    .line 345
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/FocusablePinnableContainerNode;->pinnedHandle:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    .line 346
    return-void
.end method

.method public final setFocus(Z)V
    .locals 2
    .param p1, "focused"    # Z

    .line 333
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 334
    invoke-direct {p0}, Landroidx/compose/foundation/FocusablePinnableContainerNode;->retrievePinnableContainer()Landroidx/compose/ui/layout/PinnableContainer;

    move-result-object v1

    .line 335
    .local v1, "pinnableContainer":Landroidx/compose/ui/layout/PinnableContainer;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/compose/ui/layout/PinnableContainer;->pin()Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Landroidx/compose/foundation/FocusablePinnableContainerNode;->pinnedHandle:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    .end local v1    # "pinnableContainer":Landroidx/compose/ui/layout/PinnableContainer;
    goto :goto_0

    .line 337
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/FocusablePinnableContainerNode;->pinnedHandle:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;->release()V

    .line 338
    :cond_2
    iput-object v0, p0, Landroidx/compose/foundation/FocusablePinnableContainerNode;->pinnedHandle:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    .line 340
    :goto_0
    iput-boolean p1, p0, Landroidx/compose/foundation/FocusablePinnableContainerNode;->isFocused:Z

    .line 341
    return-void
.end method
