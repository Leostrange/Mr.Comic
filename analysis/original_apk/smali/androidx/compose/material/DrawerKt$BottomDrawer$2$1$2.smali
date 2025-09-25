.class final Landroidx/compose/material/DrawerKt$BottomDrawer$2$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Drawer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/DrawerKt$BottomDrawer$2;->invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/DrawerKt$BottomDrawer$2$1$2$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/unit/IntSize;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "drawerSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "invoke-ozmzZPI",
        "(J)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $drawerState:Landroidx/compose/material/BottomDrawerState;

.field final synthetic $fullHeight:F

.field final synthetic $isLandscape:Z


# direct methods
.method constructor <init>(Landroidx/compose/material/BottomDrawerState;FZ)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$2$1$2;->$drawerState:Landroidx/compose/material/BottomDrawerState;

    iput p2, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$2$1$2;->$fullHeight:F

    iput-boolean p3, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$2$1$2;->$isLandscape:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;

    .line 700
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/DrawerKt$BottomDrawer$2$1$2;->invoke-ozmzZPI(J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke-ozmzZPI(J)V
    .locals 5
    .param p1, "drawerSize"    # J

    .line 701
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v0

    int-to-float v0, v0

    .line 702
    .local v0, "drawerHeight":F
    new-instance v1, Landroidx/compose/material/DrawerKt$BottomDrawer$2$1$2$newAnchors$1;

    iget v2, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$2$1$2;->$fullHeight:F

    iget-boolean v3, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$2$1$2;->$isLandscape:Z

    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/material/DrawerKt$BottomDrawer$2$1$2$newAnchors$1;-><init>(FFZ)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Landroidx/compose/material/AnchoredDraggableKt;->DraggableAnchors(Lkotlin/jvm/functions/Function1;)Landroidx/compose/material/DraggableAnchors;

    move-result-object v1

    .line 714
    .local v1, "newAnchors":Landroidx/compose/material/DraggableAnchors;
    iget-object v2, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$2$1$2;->$drawerState:Landroidx/compose/material/BottomDrawerState;

    invoke-virtual {v2}, Landroidx/compose/material/BottomDrawerState;->getAnchoredDraggableState$material_release()Landroidx/compose/material/AnchoredDraggableState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material/AnchoredDraggableState;->getAnchors()Landroidx/compose/material/DraggableAnchors;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/material/DraggableAnchors;->getSize()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 715
    .local v2, "hasAnchors":Z
    :goto_0
    if-nez v2, :cond_1

    .line 716
    iget-object v3, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$2$1$2;->$drawerState:Landroidx/compose/material/BottomDrawerState;

    invoke-virtual {v3}, Landroidx/compose/material/BottomDrawerState;->getCurrentValue()Landroidx/compose/material/BottomDrawerValue;

    move-result-object v3

    invoke-interface {v1, v3}, Landroidx/compose/material/DraggableAnchors;->hasAnchorFor(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 717
    iget-object v3, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$2$1$2;->$drawerState:Landroidx/compose/material/BottomDrawerState;

    invoke-virtual {v3}, Landroidx/compose/material/BottomDrawerState;->getCurrentValue()Landroidx/compose/material/BottomDrawerValue;

    move-result-object v3

    goto :goto_2

    .line 719
    :cond_1
    iget-object v3, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$2$1$2;->$drawerState:Landroidx/compose/material/BottomDrawerState;

    invoke-virtual {v3}, Landroidx/compose/material/BottomDrawerState;->getTargetValue()Landroidx/compose/material/BottomDrawerValue;

    move-result-object v3

    sget-object v4, Landroidx/compose/material/DrawerKt$BottomDrawer$2$1$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Landroidx/compose/material/BottomDrawerValue;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 728
    new-instance v3, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v3}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v3

    .line 722
    :pswitch_0
    sget-object v3, Landroidx/compose/material/BottomDrawerValue;->Open:Landroidx/compose/material/BottomDrawerValue;

    invoke-interface {v1, v3}, Landroidx/compose/material/DraggableAnchors;->hasAnchorFor(Ljava/lang/Object;)Z

    move-result v3

    .line 723
    .local v3, "hasHalfExpandedState":Z
    if-eqz v3, :cond_2

    .line 724
    sget-object v4, Landroidx/compose/material/BottomDrawerValue;->Open:Landroidx/compose/material/BottomDrawerValue;

    goto :goto_1

    .line 726
    :cond_2
    sget-object v4, Landroidx/compose/material/BottomDrawerValue;->Expanded:Landroidx/compose/material/BottomDrawerValue;

    invoke-interface {v1, v4}, Landroidx/compose/material/DraggableAnchors;->hasAnchorFor(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Landroidx/compose/material/BottomDrawerValue;->Expanded:Landroidx/compose/material/BottomDrawerValue;

    goto :goto_1

    :cond_3
    sget-object v4, Landroidx/compose/material/BottomDrawerValue;->Closed:Landroidx/compose/material/BottomDrawerValue;

    .line 723
    :goto_1
    nop

    .line 728
    .local v4, "newTarget":Landroidx/compose/material/BottomDrawerValue;
    move-object v3, v4

    .end local v3    # "hasHalfExpandedState":Z
    .end local v4    # "newTarget":Landroidx/compose/material/BottomDrawerValue;
    goto :goto_2

    .line 720
    :pswitch_1
    sget-object v3, Landroidx/compose/material/BottomDrawerValue;->Closed:Landroidx/compose/material/BottomDrawerValue;

    .line 715
    :goto_2
    nop

    .line 732
    .local v3, "newTarget":Landroidx/compose/material/BottomDrawerValue;
    iget-object v4, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$2$1$2;->$drawerState:Landroidx/compose/material/BottomDrawerState;

    invoke-virtual {v4}, Landroidx/compose/material/BottomDrawerState;->getAnchoredDraggableState$material_release()Landroidx/compose/material/AnchoredDraggableState;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroidx/compose/material/AnchoredDraggableState;->updateAnchors(Landroidx/compose/material/DraggableAnchors;Ljava/lang/Object;)V

    .line 733
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
