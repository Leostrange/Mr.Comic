.class final Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;
.super Lkotlin/jvm/internal/Lambda;
.source "BottomSheetScaffold.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/BottomSheetScaffoldKt;->StandardBottomSheet-XcniZvE(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function1;FFZLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$changed1:I

.field final synthetic $calculateAnchors:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/material3/DraggableAnchors<",
            "Landroidx/compose/material3/SheetValue;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $containerColor:J

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $contentColor:J

.field final synthetic $dragHandle:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $peekHeight:F

.field final synthetic $shadowElevation:F

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $sheetMaxWidth:F

.field final synthetic $sheetSwipeEnabled:Z

.field final synthetic $state:Landroidx/compose/material3/SheetState;

.field final synthetic $tonalElevation:F


# direct methods
.method constructor <init>(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function1;FFZLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;II)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SheetState;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "+",
            "Landroidx/compose/material3/DraggableAnchors<",
            "Landroidx/compose/material3/SheetValue;",
            ">;>;FFZ",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJFF",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$state:Landroidx/compose/material3/SheetState;

    move-object/from16 v2, p2

    iput-object v2, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$calculateAnchors:Lkotlin/jvm/functions/Function1;

    move/from16 v3, p3

    iput v3, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$peekHeight:F

    move/from16 v4, p4

    iput v4, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$sheetMaxWidth:F

    move/from16 v5, p5

    iput-boolean v5, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$sheetSwipeEnabled:Z

    move-object/from16 v6, p6

    iput-object v6, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$shape:Landroidx/compose/ui/graphics/Shape;

    move-wide/from16 v7, p7

    iput-wide v7, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$containerColor:J

    move-wide/from16 v9, p9

    iput-wide v9, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$contentColor:J

    move/from16 v11, p11

    iput v11, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$tonalElevation:F

    move/from16 v12, p12

    iput v12, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$shadowElevation:F

    move-object/from16 v13, p13

    iput-object v13, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$dragHandle:Lkotlin/jvm/functions/Function2;

    move-object/from16 v14, p14

    iput-object v14, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$content:Lkotlin/jvm/functions/Function3;

    move/from16 v15, p15

    iput v15, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$$changed:I

    move/from16 v1, p16

    iput v1, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$$changed1:I

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    iget-object v1, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$state:Landroidx/compose/material3/SheetState;

    iget-object v2, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$calculateAnchors:Lkotlin/jvm/functions/Function1;

    iget v3, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$peekHeight:F

    iget v4, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$sheetMaxWidth:F

    iget-boolean v5, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$sheetSwipeEnabled:Z

    iget-object v6, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-wide v7, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$containerColor:J

    iget-wide v9, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$contentColor:J

    iget v11, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$tonalElevation:F

    iget v12, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$shadowElevation:F

    iget-object v13, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$dragHandle:Lkotlin/jvm/functions/Function2;

    iget-object v14, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$content:Lkotlin/jvm/functions/Function3;

    move-object/from16 v18, v1

    iget v1, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$$changed:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v16

    iget v1, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$$changed1:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v17

    move-object/from16 v1, v18

    invoke-static/range {v1 .. v17}, Landroidx/compose/material3/BottomSheetScaffoldKt;->access$StandardBottomSheet-XcniZvE(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function1;FFZLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
