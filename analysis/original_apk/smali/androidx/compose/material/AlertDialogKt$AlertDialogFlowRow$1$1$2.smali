.class final Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AlertDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
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
    value = "SMAP\nAlertDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AlertDialog.kt\nandroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1$2\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,295:1\n69#2,4:296\n69#2,6:300\n74#2:306\n*S KotlinDebug\n*F\n+ 1 AlertDialog.kt\nandroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1$2\n*L\n263#1:296,4\n275#1:300,6\n263#1:306\n*E\n"
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
.field final synthetic $crossAxisPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $mainAxisLayoutSize:I

.field final synthetic $mainAxisSpacing:F

.field final synthetic $sequences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $this_Layout:Landroidx/compose/ui/layout/MeasureScope;


# direct methods
.method constructor <init>(Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;FILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;>;",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "FI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1$2;->$sequences:Ljava/util/List;

    iput-object p2, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1$2;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    iput p3, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1$2;->$mainAxisSpacing:F

    iput p4, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1$2;->$mainAxisLayoutSize:I

    iput-object p5, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1$2;->$crossAxisPositions:Ljava/util/List;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 262
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, v0}, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1$2;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 30
    .param p1, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1$2;->$sequences:Ljava/util/List;

    .local v1, "$this$fastForEachIndexed$iv":Ljava/util/List;
    iget-object v2, v0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1$2;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    iget v3, v0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1$2;->$mainAxisSpacing:F

    iget v4, v0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1$2;->$mainAxisLayoutSize:I

    iget-object v5, v0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1$2;->$crossAxisPositions:Ljava/util/List;

    const/4 v6, 0x0

    .line 296
    .local v6, "$i$f$fastForEachIndexed":I
    nop

    .line 297
    const/4 v7, 0x0

    .local v7, "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_4

    .line 298
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 299
    .local v9, "item$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Ljava/util/List;

    .local v10, "placeables":Ljava/util/List;
    move v11, v7

    .local v11, "i":I
    const/4 v12, 0x0

    .line 264
    .local v12, "$i$a$-fastForEachIndexed-AlertDialogKt$AlertDialogFlowRow$1$1$2$1":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    new-array v14, v13, [I

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v13, :cond_1

    .line 265
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v17

    .line 266
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    if-ge v15, v0, :cond_0

    invoke-interface {v2, v3}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 265
    :goto_2
    add-int v17, v17, v0

    aput v17, v14, v15

    add-int/lit8 v15, v15, 0x1

    .line 264
    move-object/from16 v0, p0

    goto :goto_1

    :cond_1
    move-object v0, v14

    .line 268
    .local v0, "childrenMainAxisSizes":[I
    sget-object v13, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v13}, Landroidx/compose/foundation/layout/Arrangement;->getBottom()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v13

    .line 271
    .local v13, "arrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    array-length v14, v0

    new-array v15, v14, [I

    move-object/from16 v17, v1

    const/4 v1, 0x0

    .end local v1    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .local v17, "$this$fastForEachIndexed$iv":Ljava/util/List;
    :goto_3
    if-ge v1, v14, :cond_2

    const/16 v16, 0x0

    aput v16, v15, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    move-object v1, v15

    .line 272
    .local v1, "mainAxisPositions":[I
    move-object v14, v13

    .local v14, "$this$invoke_u24lambda_u242_u24lambda_u240":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    const/4 v15, 0x0

    .line 273
    .local v15, "$i$a$-with-AlertDialogKt$AlertDialogFlowRow$1$1$2$1$1":I
    move/from16 v16, v3

    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/unit/Density;

    invoke-interface {v14, v3, v4, v0, v1}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    .line 274
    nop

    .line 272
    .end local v14    # "$this$invoke_u24lambda_u242_u24lambda_u240":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v15    # "$i$a$-with-AlertDialogKt$AlertDialogFlowRow$1$1$2$1$1":I
    nop

    .line 275
    move-object v3, v10

    .local v3, "$this$fastForEachIndexed$iv":Ljava/util/List;
    const/4 v14, 0x0

    .line 300
    .local v14, "$i$f$fastForEachIndexed":I
    nop

    .line 301
    const/4 v15, 0x0

    move-object/from16 v18, v0

    .end local v0    # "childrenMainAxisSizes":[I
    .local v15, "index$iv":I
    .local v18, "childrenMainAxisSizes":[I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    :goto_4
    if-ge v15, v0, :cond_3

    .line 302
    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .line 303
    .local v19, "item$iv":Ljava/lang/Object;
    move-object/from16 v27, v19

    check-cast v27, Landroidx/compose/ui/layout/Placeable;

    .local v27, "placeable":Landroidx/compose/ui/layout/Placeable;
    move/from16 v28, v15

    .local v28, "j":I
    const/16 v29, 0x0

    .line 276
    .local v29, "$i$a$-fastForEachIndexed-AlertDialogKt$AlertDialogFlowRow$1$1$2$1$2":I
    nop

    .line 277
    aget v22, v1, v28

    .line 278
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Number;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->intValue()I

    move-result v23

    .line 276
    const/16 v24, 0x0

    const/16 v25, 0x4

    const/16 v26, 0x0

    move-object/from16 v20, p1

    move-object/from16 v21, v27

    invoke-static/range {v20 .. v26}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 280
    nop

    .line 303
    .end local v27    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v28    # "j":I
    .end local v29    # "$i$a$-fastForEachIndexed-AlertDialogKt$AlertDialogFlowRow$1$1$2$1$2":I
    nop

    .line 301
    .end local v19    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 305
    .end local v15    # "index$iv":I
    :cond_3
    nop

    .line 281
    .end local v3    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v14    # "$i$f$fastForEachIndexed":I
    nop

    .line 299
    .end local v1    # "mainAxisPositions":[I
    .end local v10    # "placeables":Ljava/util/List;
    .end local v11    # "i":I
    .end local v12    # "$i$a$-fastForEachIndexed-AlertDialogKt$AlertDialogFlowRow$1$1$2$1":I
    .end local v13    # "arrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v18    # "childrenMainAxisSizes":[I
    nop

    .line 297
    .end local v9    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v16

    move-object/from16 v1, v17

    goto/16 :goto_0

    .line 306
    .end local v7    # "index$iv":I
    .end local v17    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .local v1, "$this$fastForEachIndexed$iv":Ljava/util/List;
    :cond_4
    nop

    .line 282
    .end local v1    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEachIndexed":I
    return-void
.end method
