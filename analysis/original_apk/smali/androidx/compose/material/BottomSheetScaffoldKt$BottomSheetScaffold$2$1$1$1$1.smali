.class final Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2$1$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BottomSheetScaffold.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2$1$1$1;->invoke-ozmzZPI(J)Landroidx/compose/material/DraggableAnchors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/material/DraggableAnchorsConfig<",
        "Landroidx/compose/material/BottomSheetValue;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/material/DraggableAnchorsConfig;",
        "Landroidx/compose/material/BottomSheetValue;",
        "invoke"
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
.field final synthetic $layoutHeight:I

.field final synthetic $peekHeightPx:F

.field final synthetic $sheetHeight:F


# direct methods
.method constructor <init>(IFF)V
    .locals 1

    iput p1, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2$1$1$1$1;->$layoutHeight:I

    iput p2, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2$1$1$1$1;->$peekHeightPx:F

    iput p3, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2$1$1$1$1;->$sheetHeight:F

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 489
    move-object v0, p1

    check-cast v0, Landroidx/compose/material/DraggableAnchorsConfig;

    invoke-virtual {p0, v0}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2$1$1$1$1;->invoke(Landroidx/compose/material/DraggableAnchorsConfig;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/material/DraggableAnchorsConfig;)V
    .locals 3
    .param p1, "$this$DraggableAnchors"    # Landroidx/compose/material/DraggableAnchorsConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/DraggableAnchorsConfig<",
            "Landroidx/compose/material/BottomSheetValue;",
            ">;)V"
        }
    .end annotation

    .line 490
    sget-object v0, Landroidx/compose/material/BottomSheetValue;->Collapsed:Landroidx/compose/material/BottomSheetValue;

    iget v1, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2$1$1$1$1;->$layoutHeight:I

    int-to-float v1, v1

    iget v2, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2$1$1$1$1;->$peekHeightPx:F

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroidx/compose/material/DraggableAnchorsConfig;->at(Ljava/lang/Object;F)V

    .line 491
    iget v0, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2$1$1$1$1;->$sheetHeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2$1$1$1$1;->$sheetHeight:F

    iget v1, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2$1$1$1$1;->$peekHeightPx:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 492
    sget-object v0, Landroidx/compose/material/BottomSheetValue;->Expanded:Landroidx/compose/material/BottomSheetValue;

    iget v1, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2$1$1$1$1;->$layoutHeight:I

    int-to-float v1, v1

    iget v2, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2$1$1$1$1;->$sheetHeight:F

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroidx/compose/material/DraggableAnchorsConfig;->at(Ljava/lang/Object;F)V

    .line 494
    :cond_1
    return-void
.end method
