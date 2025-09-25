.class final Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TextFieldMeasurePolicy;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
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
.field final synthetic $effectiveLabelBaseline:I

.field final synthetic $height:I

.field final synthetic $labelPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $lastBaseline:I

.field final synthetic $leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $placeholderPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $textFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $this_measure:Landroidx/compose/ui/layout/MeasureScope;

.field final synthetic $topPadding:I

.field final synthetic $topPaddingValue:I

.field final synthetic $trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $width:I

.field final synthetic this$0:Landroidx/compose/material/TextFieldMeasurePolicy;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/Placeable;IIIILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/material/TextFieldMeasurePolicy;IILandroidx/compose/ui/layout/MeasureScope;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$labelPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$topPaddingValue:I

    iput p3, p0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$lastBaseline:I

    iput p4, p0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$width:I

    iput p5, p0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$height:I

    iput-object p6, p0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$textFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p7, p0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$placeholderPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p8, p0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p9, p0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p10, p0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->this$0:Landroidx/compose/material/TextFieldMeasurePolicy;

    iput p11, p0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$effectiveLabelBaseline:I

    iput p12, p0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$topPadding:I

    iput-object p13, p0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 632
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, v0}, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 26
    .param p1, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 633
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$labelPlaceable:Landroidx/compose/ui/layout/Placeable;

    if-eqz v1, :cond_0

    .line 635
    iget v1, v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$topPaddingValue:I

    iget v2, v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$lastBaseline:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 636
    .local v1, "labelEndPosition":I
    nop

    .line 637
    iget v4, v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$width:I

    .line 638
    iget v5, v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$height:I

    .line 639
    iget-object v6, v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$textFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 640
    iget-object v7, v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$labelPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 641
    iget-object v8, v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$placeholderPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 642
    iget-object v9, v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 643
    iget-object v10, v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 644
    iget-object v2, v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->this$0:Landroidx/compose/material/TextFieldMeasurePolicy;

    invoke-static {v2}, Landroidx/compose/material/TextFieldMeasurePolicy;->access$getSingleLine$p(Landroidx/compose/material/TextFieldMeasurePolicy;)Z

    move-result v11

    .line 645
    nop

    .line 646
    iget v2, v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$effectiveLabelBaseline:I

    iget v3, v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$topPadding:I

    add-int v13, v2, v3

    .line 647
    iget-object v2, v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->this$0:Landroidx/compose/material/TextFieldMeasurePolicy;

    invoke-static {v2}, Landroidx/compose/material/TextFieldMeasurePolicy;->access$getAnimationProgress$p(Landroidx/compose/material/TextFieldMeasurePolicy;)F

    move-result v14

    .line 648
    iget-object v2, v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureScope;->getDensity()F

    move-result v15

    .line 636
    move-object/from16 v3, p1

    move v12, v1

    invoke-static/range {v3 .. v15}, Landroidx/compose/material/TextFieldKt;->access$placeWithLabel(Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ZIIFF)V

    .end local v1    # "labelEndPosition":I
    goto :goto_0

    .line 651
    :cond_0
    nop

    .line 652
    iget v1, v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$width:I

    .line 653
    iget v2, v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$height:I

    .line 654
    iget-object v3, v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$textFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 655
    iget-object v4, v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$placeholderPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 656
    iget-object v5, v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 657
    iget-object v6, v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 658
    iget-object v7, v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->this$0:Landroidx/compose/material/TextFieldMeasurePolicy;

    invoke-static {v7}, Landroidx/compose/material/TextFieldMeasurePolicy;->access$getSingleLine$p(Landroidx/compose/material/TextFieldMeasurePolicy;)Z

    move-result v23

    .line 659
    iget-object v7, v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v7}, Landroidx/compose/ui/layout/MeasureScope;->getDensity()F

    move-result v24

    .line 660
    iget-object v7, v0, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;->this$0:Landroidx/compose/material/TextFieldMeasurePolicy;

    invoke-static {v7}, Landroidx/compose/material/TextFieldMeasurePolicy;->access$getPaddingValues$p(Landroidx/compose/material/TextFieldMeasurePolicy;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v25

    .line 651
    move-object/from16 v16, p1

    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    invoke-static/range {v16 .. v25}, Landroidx/compose/material/TextFieldKt;->access$placeWithoutLabel(Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ZFLandroidx/compose/foundation/layout/PaddingValues;)V

    .line 663
    :goto_0
    return-void
.end method
