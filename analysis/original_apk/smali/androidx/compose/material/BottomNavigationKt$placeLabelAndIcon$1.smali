.class final Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BottomNavigation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/BottomNavigationKt;->placeLabelAndIcon-DIyivk0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JF)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
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
.field final synthetic $iconPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $iconPositionAnimationProgress:F

.field final synthetic $iconX:I

.field final synthetic $labelPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $labelX:I

.field final synthetic $labelY:I

.field final synthetic $offset:I

.field final synthetic $selectedIconY:I


# direct methods
.method constructor <init>(FLandroidx/compose/ui/layout/Placeable;IIILandroidx/compose/ui/layout/Placeable;II)V
    .locals 1

    iput p1, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$iconPositionAnimationProgress:F

    iput-object p2, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$labelPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p3, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$labelX:I

    iput p4, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$labelY:I

    iput p5, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$offset:I

    iput-object p6, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$iconPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p7, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$iconX:I

    iput p8, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$selectedIconY:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 427
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, v0}, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 16
    .param p1, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 428
    move-object/from16 v0, p0

    iget v1, v0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$iconPositionAnimationProgress:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 429
    iget-object v3, v0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$labelPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget v4, v0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$labelX:I

    iget v1, v0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$labelY:I

    iget v2, v0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$offset:I

    add-int v5, v1, v2

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 431
    :cond_1
    iget-object v10, v0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$iconPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget v11, v0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$iconX:I

    iget v1, v0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$selectedIconY:I

    iget v2, v0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$offset:I

    add-int v12, v1, v2

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v15}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 432
    return-void
.end method
