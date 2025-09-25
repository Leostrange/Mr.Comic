.class final Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetAnchors$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModalBottomSheet.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ModalBottomSheet_androidKt;->modalBottomSheetAnchors(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;F)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetAnchors$1$WhenMappings;
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

.field final synthetic $sheetState:Landroidx/compose/material3/SheetState;


# direct methods
.method constructor <init>(Landroidx/compose/material3/SheetState;F)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetAnchors$1;->$sheetState:Landroidx/compose/material3/SheetState;

    iput p2, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetAnchors$1;->$fullHeight:F

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;

    .line 402
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetAnchors$1;->invoke-ozmzZPI(J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke-ozmzZPI(J)V
    .locals 3
    .param p1, "sheetSize"    # J

    .line 404
    new-instance v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetAnchors$1$newAnchors$1;

    iget v1, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetAnchors$1;->$fullHeight:F

    iget-object v2, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetAnchors$1;->$sheetState:Landroidx/compose/material3/SheetState;

    invoke-direct {v0, v1, p1, p2, v2}, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetAnchors$1$newAnchors$1;-><init>(FJLandroidx/compose/material3/SheetState;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Landroidx/compose/material3/AnchoredDraggableKt;->DraggableAnchors(Lkotlin/jvm/functions/Function1;)Landroidx/compose/material3/DraggableAnchors;

    move-result-object v0

    .line 414
    .local v0, "newAnchors":Landroidx/compose/material3/DraggableAnchors;
    iget-object v1, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetAnchors$1;->$sheetState:Landroidx/compose/material3/SheetState;

    invoke-virtual {v1}, Landroidx/compose/material3/SheetState;->getAnchoredDraggableState$material3_release()Landroidx/compose/material3/AnchoredDraggableState;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/AnchoredDraggableState;->getTargetValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material3/SheetValue;

    sget-object v2, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetAnchors$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Landroidx/compose/material3/SheetValue;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 420
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 417
    :pswitch_0
    sget-object v1, Landroidx/compose/material3/SheetValue;->PartiallyExpanded:Landroidx/compose/material3/SheetValue;

    invoke-interface {v0, v1}, Landroidx/compose/material3/DraggableAnchors;->hasAnchorFor(Ljava/lang/Object;)Z

    move-result v1

    .line 418
    .local v1, "hasPartiallyExpandedState":Z
    if-eqz v1, :cond_0

    sget-object v2, Landroidx/compose/material3/SheetValue;->PartiallyExpanded:Landroidx/compose/material3/SheetValue;

    goto :goto_0

    .line 419
    :cond_0
    sget-object v2, Landroidx/compose/material3/SheetValue;->Expanded:Landroidx/compose/material3/SheetValue;

    invoke-interface {v0, v2}, Landroidx/compose/material3/DraggableAnchors;->hasAnchorFor(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroidx/compose/material3/SheetValue;->Expanded:Landroidx/compose/material3/SheetValue;

    goto :goto_0

    :cond_1
    sget-object v2, Landroidx/compose/material3/SheetValue;->Hidden:Landroidx/compose/material3/SheetValue;

    .line 418
    :goto_0
    nop

    .line 420
    .local v2, "newTarget":Landroidx/compose/material3/SheetValue;
    nop

    .end local v1    # "hasPartiallyExpandedState":Z
    .end local v2    # "newTarget":Landroidx/compose/material3/SheetValue;
    goto :goto_1

    .line 415
    :pswitch_1
    sget-object v2, Landroidx/compose/material3/SheetValue;->Hidden:Landroidx/compose/material3/SheetValue;

    .line 414
    :goto_1
    move-object v1, v2

    .line 424
    .local v1, "newTarget":Landroidx/compose/material3/SheetValue;
    iget-object v2, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetAnchors$1;->$sheetState:Landroidx/compose/material3/SheetState;

    invoke-virtual {v2}, Landroidx/compose/material3/SheetState;->getAnchoredDraggableState$material3_release()Landroidx/compose/material3/AnchoredDraggableState;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroidx/compose/material3/AnchoredDraggableState;->updateAnchors(Landroidx/compose/material3/DraggableAnchors;Ljava/lang/Object;)V

    .line 425
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
