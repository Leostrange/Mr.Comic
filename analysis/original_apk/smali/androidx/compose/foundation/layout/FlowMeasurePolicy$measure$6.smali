.class final Landroidx/compose/foundation/layout/FlowMeasurePolicy$measure$6;
.super Lkotlin/jvm/internal/Lambda;
.source "FlowLayout.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/FlowMeasurePolicy;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlowLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowLayout.kt\nandroidx/compose/foundation/layout/FlowMeasurePolicy$measure$6\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,757:1\n476#2,11:758\n*S KotlinDebug\n*F\n+ 1 FlowLayout.kt\nandroidx/compose/foundation/layout/FlowMeasurePolicy$measure$6\n*L\n276#1:758,11\n*E\n"
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
.field final synthetic $flowResult:Landroidx/compose/foundation/layout/FlowResult;

.field final synthetic $measureHelper:Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;

.field final synthetic $outPosition:[I

.field final synthetic $this_measure:Landroidx/compose/ui/layout/MeasureScope;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/layout/FlowResult;Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;[ILandroidx/compose/ui/layout/MeasureScope;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy$measure$6;->$flowResult:Landroidx/compose/foundation/layout/FlowResult;

    iput-object p2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy$measure$6;->$measureHelper:Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;

    iput-object p3, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy$measure$6;->$outPosition:[I

    iput-object p4, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy$measure$6;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 275
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/layout/FlowMeasurePolicy$measure$6;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 13
    .param p1, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 276
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy$measure$6;->$flowResult:Landroidx/compose/foundation/layout/FlowResult;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/FlowResult;->getItems()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy$measure$6;->$measureHelper:Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;

    iget-object v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy$measure$6;->$outPosition:[I

    iget-object v3, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy$measure$6;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    const/4 v4, 0x0

    .line 758
    .local v4, "$i$f$forEachIndexed":I
    nop

    .line 759
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v5

    .line 760
    .local v5, "size$iv":I
    if-lez v5, :cond_1

    .line 761
    const/4 v6, 0x0

    .line 762
    .local v6, "i$iv":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v7

    .line 764
    .local v7, "content$iv":[Ljava/lang/Object;
    :cond_0
    aget-object v8, v7, v6

    check-cast v8, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;

    .local v8, "measureResult":Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;
    move v9, v6

    .local v9, "currentRowOrColumnIndex":I
    const/4 v10, 0x0

    .line 278
    .local v10, "$i$a$-forEachIndexed-FlowMeasurePolicy$measure$6$1":I
    nop

    .line 279
    nop

    .line 280
    nop

    .line 281
    aget v11, v2, v9

    .line 282
    invoke-interface {v3}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v12

    .line 278
    invoke-virtual {v1, p1, v8, v11, v12}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeHelper(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;ILandroidx/compose/ui/unit/LayoutDirection;)V

    .line 284
    nop

    .line 764
    .end local v8    # "measureResult":Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;
    .end local v9    # "currentRowOrColumnIndex":I
    .end local v10    # "$i$a$-forEachIndexed-FlowMeasurePolicy$measure$6$1":I
    nop

    .line 765
    add-int/lit8 v6, v6, 0x1

    .line 766
    if-lt v6, v5, :cond_0

    .line 768
    .end local v6    # "i$iv":I
    .end local v7    # "content$iv":[Ljava/lang/Object;
    :cond_1
    nop

    .line 285
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v4    # "$i$f$forEachIndexed":I
    .end local v5    # "size$iv":I
    return-void
.end method
