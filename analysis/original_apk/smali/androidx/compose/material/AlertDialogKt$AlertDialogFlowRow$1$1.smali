.class final Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1;
.super Ljava/lang/Object;
.source "AlertDialog.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AlertDialogKt;->AlertDialogFlowRow-ixp7dh8(FFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAlertDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AlertDialog.kt\nandroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,295:1\n33#2,6:296\n*S KotlinDebug\n*F\n+ 1 AlertDialog.kt\nandroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1\n*L\n233#1:296,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurables",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;"
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
.field final synthetic $crossAxisSpacing:F

.field final synthetic $mainAxisSpacing:F


# direct methods
.method constructor <init>(FF)V
    .locals 0

    iput p1, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1;->$mainAxisSpacing:F

    iput p2, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1;->$crossAxisSpacing:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final measure_3p2s80s$canAddToCurrentSequence(Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/ui/layout/MeasureScope;FJLandroidx/compose/ui/layout/Placeable;)Z
    .locals 2
    .param p0, "currentSequence"    # Ljava/util/List;
    .param p1, "currentMainAxisSize"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p2, "$this_Layout"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p3, "$mainAxisSpacing"    # F
    .param p4, "$constraints"    # J
    .param p6, "placeable"    # Landroidx/compose/ui/layout/Placeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "FJ",
            "Landroidx/compose/ui/layout/Placeable;",
            ")Z"
        }
    .end annotation

    .line 211
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 212
    invoke-virtual {p6}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    .line 211
    add-int/2addr v0, v1

    .line 212
    invoke-static {p4, p5}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static final measure_3p2s80s$startNewSequence(Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/ui/layout/MeasureScope;FLjava/util/List;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 3
    .param p0, "sequences"    # Ljava/util/List;
    .param p1, "crossAxisSpace"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p2, "$this_Layout"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p3, "$crossAxisSpacing"    # F
    .param p4, "currentSequence"    # Ljava/util/List;
    .param p5, "crossAxisSizes"    # Ljava/util/List;
    .param p6, "currentCrossAxisSize"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p7, "crossAxisPositions"    # Ljava/util/List;
    .param p8, "mainAxisSpace"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p9, "currentMainAxisSize"    # Lkotlin/jvm/internal/Ref$IntRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;>;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "F",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            ")V"
        }
    .end annotation

    .line 216
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 217
    iget v0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 221
    :cond_0
    move-object v0, p4

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 222
    move-object v0, p5

    check-cast v0, Ljava/util/Collection;

    iget v2, p6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 223
    move-object v0, p7

    check-cast v0, Ljava/util/Collection;

    iget v2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 225
    iget v0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v2, p6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v0, v2

    iput v0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 226
    iget v0, p8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v2, p9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 228
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 229
    iput v1, p9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 230
    iput v1, p6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 231
    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 37
    .param p1, "$this$Layout"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "constraints"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    .line 196
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 197
    .local v1, "sequences":Ljava/util/List;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v2

    check-cast v12, Ljava/util/List;

    .line 198
    .local v12, "crossAxisSizes":Ljava/util/List;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v2

    check-cast v13, Ljava/util/List;

    .line 200
    .local v13, "crossAxisPositions":Ljava/util/List;
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object v14, v2

    .line 201
    .local v14, "mainAxisSpace":Lkotlin/jvm/internal/Ref$IntRef;
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object v15, v2

    .line 203
    .local v15, "crossAxisSpace":Lkotlin/jvm/internal/Ref$IntRef;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v2

    check-cast v11, Ljava/util/List;

    .line 204
    .local v11, "currentSequence":Ljava/util/List;
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object v10, v2

    .line 205
    .local v10, "currentMainAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 207
    .local v2, "currentCrossAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    const/4 v3, 0x0

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xd

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v7

    .line 233
    .local v7, "childConstraints":J
    iget v9, v0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1;->$mainAxisSpacing:F

    iget v6, v0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1;->$crossAxisSpacing:F

    move-object/from16 v5, p2

    .local v5, "$this$fastForEach$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 296
    .local v16, "$i$f$fastForEach":I
    nop

    .line 297
    const/4 v3, 0x0

    .local v3, "index$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_2

    .line 298
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 299
    .local v17, "item$iv":Ljava/lang/Object;
    move-object/from16 v0, v17

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .local v0, "measurable":Landroidx/compose/ui/layout/Measurable;
    const/16 v18, 0x0

    .line 235
    .local v18, "$i$a$-fastForEach-AlertDialogKt$AlertDialogFlowRow$1$1$1":I
    move-object/from16 v19, v14

    .end local v14    # "mainAxisSpace":Lkotlin/jvm/internal/Ref$IntRef;
    .local v19, "mainAxisSpace":Lkotlin/jvm/internal/Ref$IntRef;
    invoke-interface {v0, v7, v8}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v14

    .line 238
    .local v14, "placeable":Landroidx/compose/ui/layout/Placeable;
    move/from16 v20, v3

    .end local v3    # "index$iv":I
    .local v20, "index$iv":I
    move-object v3, v11

    move/from16 v21, v4

    move-object v4, v10

    move-object/from16 v22, v5

    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .local v22, "$this$fastForEach$iv":Ljava/util/List;
    move-object/from16 v5, p1

    move/from16 v23, v6

    move v6, v9

    move-wide/from16 v24, v7

    .end local v7    # "childConstraints":J
    .local v24, "childConstraints":J
    move-wide/from16 v7, p3

    move-object/from16 v26, v0

    move v0, v9

    .end local v0    # "measurable":Landroidx/compose/ui/layout/Measurable;
    .local v26, "measurable":Landroidx/compose/ui/layout/Measurable;
    move-object v9, v14

    invoke-static/range {v3 .. v9}, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1;->measure_3p2s80s$canAddToCurrentSequence(Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/ui/layout/MeasureScope;FJLandroidx/compose/ui/layout/Placeable;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v9, v2

    .end local v2    # "currentCrossAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    .local v9, "currentCrossAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    move-object v2, v1

    move-object v3, v15

    move-object/from16 v4, p1

    move/from16 v5, v23

    move-object v6, v11

    move-object v7, v12

    move-object v8, v9

    move-object/from16 v27, v12

    move-object v12, v9

    .end local v9    # "currentCrossAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    .local v12, "currentCrossAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    .local v27, "crossAxisSizes":Ljava/util/List;
    move-object v9, v13

    move-object/from16 v28, v10

    .end local v10    # "currentMainAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    .local v28, "currentMainAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    move-object/from16 v10, v19

    move-object/from16 v29, v13

    move-object v13, v11

    .end local v11    # "currentSequence":Ljava/util/List;
    .local v13, "currentSequence":Ljava/util/List;
    .local v29, "crossAxisPositions":Ljava/util/List;
    move-object/from16 v11, v28

    invoke-static/range {v2 .. v11}, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1;->measure_3p2s80s$startNewSequence(Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/ui/layout/MeasureScope;FLjava/util/List;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    goto :goto_1

    .end local v27    # "crossAxisSizes":Ljava/util/List;
    .end local v28    # "currentMainAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v29    # "crossAxisPositions":Ljava/util/List;
    .restart local v2    # "currentCrossAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v10    # "currentMainAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v11    # "currentSequence":Ljava/util/List;
    .local v12, "crossAxisSizes":Ljava/util/List;
    .local v13, "crossAxisPositions":Ljava/util/List;
    :cond_0
    move-object/from16 v28, v10

    move-object/from16 v27, v12

    move-object/from16 v29, v13

    move-object v12, v2

    move-object v13, v11

    .line 241
    .end local v2    # "currentCrossAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v10    # "currentMainAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v11    # "currentSequence":Ljava/util/List;
    .local v12, "currentCrossAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    .local v13, "currentSequence":Ljava/util/List;
    .restart local v27    # "crossAxisSizes":Ljava/util/List;
    .restart local v28    # "currentMainAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v29    # "crossAxisPositions":Ljava/util/List;
    :goto_1
    move-object v2, v13

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 242
    move-object/from16 v11, v28

    .end local v28    # "currentMainAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    .local v11, "currentMainAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    iget v2, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v10, p1

    invoke-interface {v10, v0}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_2

    .line 241
    .end local v11    # "currentMainAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v28    # "currentMainAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    :cond_1
    move-object/from16 v10, p1

    move-object/from16 v11, v28

    .line 244
    .end local v28    # "currentMainAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v11    # "currentMainAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    :goto_2
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    iget v2, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 246
    iget v2, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 247
    nop

    .line 299
    .end local v14    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v18    # "$i$a$-fastForEach-AlertDialogKt$AlertDialogFlowRow$1$1$1":I
    .end local v26    # "measurable":Landroidx/compose/ui/layout/Measurable;
    nop

    .line 297
    .end local v17    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v20, 0x1

    move v9, v0

    move-object v10, v11

    move-object v2, v12

    move-object v11, v13

    move-object/from16 v14, v19

    move/from16 v4, v21

    move-object/from16 v5, v22

    move/from16 v6, v23

    move-wide/from16 v7, v24

    move-object/from16 v12, v27

    move-object/from16 v13, v29

    move-object/from16 v0, p0

    .end local v20    # "index$iv":I
    .restart local v3    # "index$iv":I
    goto/16 :goto_0

    .end local v19    # "mainAxisSpace":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v22    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v24    # "childConstraints":J
    .end local v27    # "crossAxisSizes":Ljava/util/List;
    .end local v29    # "crossAxisPositions":Ljava/util/List;
    .restart local v2    # "currentCrossAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v7    # "childConstraints":J
    .restart local v10    # "currentMainAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    .local v11, "currentSequence":Ljava/util/List;
    .local v12, "crossAxisSizes":Ljava/util/List;
    .local v13, "crossAxisPositions":Ljava/util/List;
    .local v14, "mainAxisSpace":Lkotlin/jvm/internal/Ref$IntRef;
    :cond_2
    move/from16 v20, v3

    move-object/from16 v22, v5

    move-wide/from16 v24, v7

    move-object/from16 v27, v12

    move-object/from16 v29, v13

    move-object/from16 v19, v14

    move-object v12, v2

    move-object v13, v11

    move-object v11, v10

    move-object/from16 v10, p1

    .line 301
    .end local v2    # "currentCrossAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v3    # "index$iv":I
    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v7    # "childConstraints":J
    .end local v10    # "currentMainAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v14    # "mainAxisSpace":Lkotlin/jvm/internal/Ref$IntRef;
    .local v11, "currentMainAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    .local v12, "currentCrossAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    .local v13, "currentSequence":Ljava/util/List;
    .restart local v19    # "mainAxisSpace":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v22    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v24    # "childConstraints":J
    .restart local v27    # "crossAxisSizes":Ljava/util/List;
    .restart local v29    # "crossAxisPositions":Ljava/util/List;
    nop

    .line 249
    .end local v16    # "$i$f$fastForEach":I
    .end local v22    # "$this$fastForEach$iv":Ljava/util/List;
    move-object v0, v13

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    iget v5, v0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1;->$crossAxisSpacing:F

    move-object v2, v1

    move-object v3, v15

    move-object/from16 v4, p1

    move-object v6, v13

    move-object/from16 v7, v27

    move-object v8, v12

    move-object/from16 v9, v29

    move-object/from16 v10, v19

    move-object v14, v11

    .end local v11    # "currentMainAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    .local v14, "currentMainAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    invoke-static/range {v2 .. v11}, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1;->measure_3p2s80s$startNewSequence(Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/ui/layout/MeasureScope;FLjava/util/List;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    goto :goto_3

    .end local v14    # "currentMainAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v11    # "currentMainAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    :cond_3
    move-object/from16 v0, p0

    move-object v14, v11

    .line 251
    .end local v11    # "currentMainAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v14    # "currentMainAxisSize":Lkotlin/jvm/internal/Ref$IntRef;
    :goto_3
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_4

    .line 252
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    move v6, v2

    move-object/from16 v8, v19

    goto :goto_4

    .line 254
    :cond_4
    move-object/from16 v8, v19

    .end local v19    # "mainAxisSpace":Lkotlin/jvm/internal/Ref$IntRef;
    .local v8, "mainAxisSpace":Lkotlin/jvm/internal/Ref$IntRef;
    iget v2, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v6, v2

    .line 251
    :goto_4
    nop

    .line 256
    .local v6, "mainAxisLayoutSize":I
    iget v2, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 258
    .local v9, "crossAxisLayoutSize":I
    move/from16 v31, v6

    .line 260
    .local v31, "layoutWidth":I
    move/from16 v32, v9

    .line 262
    .local v32, "layoutHeight":I
    const/16 v33, 0x0

    new-instance v10, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1$2;

    iget v5, v0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1;->$mainAxisSpacing:F

    move-object v2, v10

    move-object v3, v1

    move-object/from16 v4, p1

    move-object/from16 v7, v29

    invoke-direct/range {v2 .. v7}, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1$2;-><init>(Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;FILjava/util/List;)V

    move-object/from16 v34, v10

    check-cast v34, Lkotlin/jvm/functions/Function1;

    const/16 v35, 0x4

    const/16 v36, 0x0

    move-object/from16 v30, p1

    invoke-static/range {v30 .. v36}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v2

    return-object v2
.end method
