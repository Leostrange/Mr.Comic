.class final Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BottomSheetScaffold.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2$1;->invoke(ILandroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/unit/IntSize;",
        "Landroidx/compose/material/DraggableAnchors<",
        "Landroidx/compose/material/BottomSheetValue;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/material/DraggableAnchors;",
        "Landroidx/compose/material/BottomSheetValue;",
        "sheetSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "invoke-ozmzZPI",
        "(J)Landroidx/compose/material/DraggableAnchors;"
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


# direct methods
.method constructor <init>(IF)V
    .locals 1

    iput p1, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2$1$1$1;->$layoutHeight:I

    iput p2, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2$1$1$1;->$peekHeightPx:F

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;

    .line 487
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2$1$1$1;->invoke-ozmzZPI(J)Landroidx/compose/material/DraggableAnchors;

    move-result-object v0

    return-object v0
.end method

.method public final invoke-ozmzZPI(J)Landroidx/compose/material/DraggableAnchors;
    .locals 4
    .param p1, "sheetSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/compose/material/DraggableAnchors<",
            "Landroidx/compose/material/BottomSheetValue;",
            ">;"
        }
    .end annotation

    .line 488
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v0

    int-to-float v0, v0

    .line 489
    .local v0, "sheetHeight":F
    new-instance v1, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2$1$1$1$1;

    iget v2, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2$1$1$1;->$layoutHeight:I

    iget v3, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2$1$1$1;->$peekHeightPx:F

    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2$1$1$1$1;-><init>(IFF)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Landroidx/compose/material/AnchoredDraggableKt;->DraggableAnchors(Lkotlin/jvm/functions/Function1;)Landroidx/compose/material/DraggableAnchors;

    move-result-object v1

    return-object v1
.end method
