.class final Landroidx/compose/material/ModalBottomSheetKt$modalBottomSheetAnchors$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModalBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ModalBottomSheetKt;->modalBottomSheetAnchors(Landroidx/compose/ui/Modifier;Landroidx/compose/material/ModalBottomSheetState;F)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/ModalBottomSheetKt$modalBottomSheetAnchors$1$WhenMappings;
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
        "sheetSize",
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
.field final synthetic $fullHeight:F

.field final synthetic $sheetState:Landroidx/compose/material/ModalBottomSheetState;


# direct methods
.method constructor <init>(Landroidx/compose/material/ModalBottomSheetState;F)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/material/ModalBottomSheetKt$modalBottomSheetAnchors$1;->$sheetState:Landroidx/compose/material/ModalBottomSheetState;

    iput p2, p0, Landroidx/compose/material/ModalBottomSheetKt$modalBottomSheetAnchors$1;->$fullHeight:F

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;

    .line 672
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/ModalBottomSheetKt$modalBottomSheetAnchors$1;->invoke-ozmzZPI(J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke-ozmzZPI(J)V
    .locals 5
    .param p1, "sheetSize"    # J

    .line 673
    new-instance v0, Landroidx/compose/material/ModalBottomSheetKt$modalBottomSheetAnchors$1$newAnchors$1;

    iget v1, p0, Landroidx/compose/material/ModalBottomSheetKt$modalBottomSheetAnchors$1;->$fullHeight:F

    iget-object v2, p0, Landroidx/compose/material/ModalBottomSheetKt$modalBottomSheetAnchors$1;->$sheetState:Landroidx/compose/material/ModalBottomSheetState;

    invoke-direct {v0, v1, v2, p1, p2}, Landroidx/compose/material/ModalBottomSheetKt$modalBottomSheetAnchors$1$newAnchors$1;-><init>(FLandroidx/compose/material/ModalBottomSheetState;J)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Landroidx/compose/material/AnchoredDraggableKt;->DraggableAnchors(Lkotlin/jvm/functions/Function1;)Landroidx/compose/material/DraggableAnchors;

    move-result-object v0

    .line 685
    .local v0, "newAnchors":Landroidx/compose/material/DraggableAnchors;
    iget-object v1, p0, Landroidx/compose/material/ModalBottomSheetKt$modalBottomSheetAnchors$1;->$sheetState:Landroidx/compose/material/ModalBottomSheetState;

    invoke-virtual {v1}, Landroidx/compose/material/ModalBottomSheetState;->getAnchoredDraggableState$material_release()Landroidx/compose/material/AnchoredDraggableState;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material/AnchoredDraggableState;->getAnchors()Landroidx/compose/material/DraggableAnchors;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/material/DraggableAnchors;->getSize()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 686
    .local v1, "isInitialized":Z
    :goto_0
    iget-object v2, p0, Landroidx/compose/material/ModalBottomSheetKt$modalBottomSheetAnchors$1;->$sheetState:Landroidx/compose/material/ModalBottomSheetState;

    invoke-virtual {v2}, Landroidx/compose/material/ModalBottomSheetState;->getCurrentValue()Landroidx/compose/material/ModalBottomSheetValue;

    move-result-object v2

    .line 687
    .local v2, "previousValue":Landroidx/compose/material/ModalBottomSheetValue;
    if-nez v1, :cond_1

    invoke-interface {v0, v2}, Landroidx/compose/material/DraggableAnchors;->hasAnchorFor(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 688
    move-object v4, v2

    goto :goto_2

    .line 690
    :cond_1
    iget-object v3, p0, Landroidx/compose/material/ModalBottomSheetKt$modalBottomSheetAnchors$1;->$sheetState:Landroidx/compose/material/ModalBottomSheetState;

    invoke-virtual {v3}, Landroidx/compose/material/ModalBottomSheetState;->getTargetValue()Landroidx/compose/material/ModalBottomSheetValue;

    move-result-object v3

    sget-object v4, Landroidx/compose/material/ModalBottomSheetKt$modalBottomSheetAnchors$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Landroidx/compose/material/ModalBottomSheetValue;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 701
    new-instance v3, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v3}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v3

    .line 693
    :pswitch_0
    sget-object v3, Landroidx/compose/material/ModalBottomSheetValue;->HalfExpanded:Landroidx/compose/material/ModalBottomSheetValue;

    invoke-interface {v0, v3}, Landroidx/compose/material/DraggableAnchors;->hasAnchorFor(Ljava/lang/Object;)Z

    move-result v3

    .line 694
    .local v3, "hasHalfExpandedState":Z
    if-eqz v3, :cond_2

    .line 695
    sget-object v4, Landroidx/compose/material/ModalBottomSheetValue;->HalfExpanded:Landroidx/compose/material/ModalBottomSheetValue;

    goto :goto_1

    .line 696
    :cond_2
    sget-object v4, Landroidx/compose/material/ModalBottomSheetValue;->Expanded:Landroidx/compose/material/ModalBottomSheetValue;

    invoke-interface {v0, v4}, Landroidx/compose/material/DraggableAnchors;->hasAnchorFor(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 697
    sget-object v4, Landroidx/compose/material/ModalBottomSheetValue;->Expanded:Landroidx/compose/material/ModalBottomSheetValue;

    goto :goto_1

    .line 699
    :cond_3
    sget-object v4, Landroidx/compose/material/ModalBottomSheetValue;->Hidden:Landroidx/compose/material/ModalBottomSheetValue;

    .line 694
    :goto_1
    nop

    .line 701
    .local v4, "newTarget":Landroidx/compose/material/ModalBottomSheetValue;
    nop

    .end local v3    # "hasHalfExpandedState":Z
    .end local v4    # "newTarget":Landroidx/compose/material/ModalBottomSheetValue;
    goto :goto_2

    .line 691
    :pswitch_1
    sget-object v4, Landroidx/compose/material/ModalBottomSheetValue;->Hidden:Landroidx/compose/material/ModalBottomSheetValue;

    .line 687
    :goto_2
    move-object v3, v4

    .line 705
    .local v3, "newTarget":Landroidx/compose/material/ModalBottomSheetValue;
    iget-object v4, p0, Landroidx/compose/material/ModalBottomSheetKt$modalBottomSheetAnchors$1;->$sheetState:Landroidx/compose/material/ModalBottomSheetState;

    invoke-virtual {v4}, Landroidx/compose/material/ModalBottomSheetState;->getAnchoredDraggableState$material_release()Landroidx/compose/material/AnchoredDraggableState;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroidx/compose/material/AnchoredDraggableState;->updateAnchors(Landroidx/compose/material/DraggableAnchors;Ljava/lang/Object;)V

    .line 706
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
