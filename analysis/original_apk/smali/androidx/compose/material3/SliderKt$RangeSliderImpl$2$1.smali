.class final Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$1;
.super Ljava/lang/Object;
.source "Slider.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SliderKt;->RangeSliderImpl(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/RangeSliderState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Slider.kt\nandroidx/compose/material3/SliderKt$RangeSliderImpl$2$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,2151:1\n544#2,2:2152\n33#2,6:2154\n546#2:2160\n544#2,2:2161\n33#2,6:2163\n546#2:2169\n544#2,2:2170\n33#2,6:2172\n546#2:2178\n*S KotlinDebug\n*F\n+ 1 Slider.kt\nandroidx/compose/material3/SliderKt$RangeSliderImpl$2$1\n*L\n809#1:2152,2\n809#1:2154,6\n809#1:2160\n815#1:2161,2\n815#1:2163,6\n815#1:2169\n821#1:2170,2\n821#1:2172,6\n821#1:2178\n*E\n"
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
.field final synthetic $state:Landroidx/compose/material3/RangeSliderState;


# direct methods
.method constructor <init>(Landroidx/compose/material3/RangeSliderState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 29
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

    .line 809
    move-object/from16 v0, p0

    move-wide/from16 v7, p3

    move-object/from16 v1, p2

    .local v1, "$this$fastFirst$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 2152
    .local v2, "$i$f$fastFirst":I
    nop

    .line 2153
    move-object v3, v1

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 2154
    .local v4, "$i$f$fastForEach":I
    nop

    .line 2155
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    const-string v9, "Collection contains no element matching the predicate."

    if-ge v5, v6, :cond_8

    .line 2156
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 2157
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 2153
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .local v13, "it":Landroidx/compose/ui/layout/Measurable;
    const/4 v14, 0x0

    .line 810
    .local v14, "$i$a$-fastFirst-SliderKt$RangeSliderImpl$2$1$startThumbPlaceable$1":I
    invoke-static {v13}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v1

    .end local v1    # "$this$fastFirst$iv":Ljava/util/List;
    .local v16, "$this$fastFirst$iv":Ljava/util/List;
    sget-object v1, Landroidx/compose/material3/RangeSliderComponents;->STARTTHUMB:Landroidx/compose/material3/RangeSliderComponents;

    const/16 v17, 0x0

    const/16 v18, 0x1

    if-ne v15, v1, :cond_0

    move/from16 v1, v18

    goto :goto_1

    :cond_0
    move/from16 v1, v17

    .line 2153
    .end local v13    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v14    # "$i$a$-fastFirst-SliderKt$RangeSliderImpl$2$1$startThumbPlaceable$1":I
    :goto_1
    if-eqz v1, :cond_7

    .line 2160
    .end local v2    # "$i$f$fastFirst":I
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    .end local v5    # "index$iv$iv":I
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .end local v16    # "$this$fastFirst$iv":Ljava/util/List;
    move-object v1, v11

    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 812
    nop

    .line 811
    invoke-interface {v1, v7, v8}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v23

    .line 809
    nop

    .line 815
    .local v23, "startThumbPlaceable":Landroidx/compose/ui/layout/Placeable;
    move-object/from16 v1, p2

    .restart local v1    # "$this$fastFirst$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 2161
    .restart local v2    # "$i$f$fastFirst":I
    nop

    .line 2162
    move-object v3, v1

    .restart local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 2163
    .restart local v4    # "$i$f$fastForEach":I
    nop

    .line 2164
    const/4 v5, 0x0

    .restart local v5    # "index$iv$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_2
    if-ge v5, v6, :cond_6

    .line 2165
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 2166
    .restart local v10    # "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .restart local v11    # "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 2162
    .restart local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .restart local v13    # "it":Landroidx/compose/ui/layout/Measurable;
    const/4 v14, 0x0

    .line 816
    .local v14, "$i$a$-fastFirst-SliderKt$RangeSliderImpl$2$1$endThumbPlaceable$1":I
    invoke-static {v13}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v1

    .end local v1    # "$this$fastFirst$iv":Ljava/util/List;
    .restart local v16    # "$this$fastFirst$iv":Ljava/util/List;
    sget-object v1, Landroidx/compose/material3/RangeSliderComponents;->ENDTHUMB:Landroidx/compose/material3/RangeSliderComponents;

    if-ne v15, v1, :cond_1

    move/from16 v1, v18

    goto :goto_3

    :cond_1
    move/from16 v1, v17

    .line 2162
    .end local v13    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v14    # "$i$a$-fastFirst-SliderKt$RangeSliderImpl$2$1$endThumbPlaceable$1":I
    :goto_3
    if-eqz v1, :cond_5

    .line 2169
    .end local v2    # "$i$f$fastFirst":I
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    .end local v5    # "index$iv$iv":I
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .end local v16    # "$this$fastFirst$iv":Ljava/util/List;
    move-object v1, v11

    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 818
    nop

    .line 817
    invoke-interface {v1, v7, v8}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v26

    .line 815
    nop

    .line 821
    .local v26, "endThumbPlaceable":Landroidx/compose/ui/layout/Placeable;
    move-object/from16 v1, p2

    .restart local v1    # "$this$fastFirst$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 2170
    .restart local v2    # "$i$f$fastFirst":I
    nop

    .line 2171
    move-object v3, v1

    .restart local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 2172
    .restart local v4    # "$i$f$fastForEach":I
    nop

    .line 2173
    const/4 v5, 0x0

    .restart local v5    # "index$iv$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_4
    if-ge v5, v6, :cond_4

    .line 2174
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 2175
    .restart local v10    # "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .restart local v11    # "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 2171
    .restart local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .restart local v13    # "it":Landroidx/compose/ui/layout/Measurable;
    const/4 v14, 0x0

    .line 822
    .local v14, "$i$a$-fastFirst-SliderKt$RangeSliderImpl$2$1$trackPlaceable$1":I
    invoke-static {v13}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v1

    .end local v1    # "$this$fastFirst$iv":Ljava/util/List;
    .restart local v16    # "$this$fastFirst$iv":Ljava/util/List;
    sget-object v1, Landroidx/compose/material3/RangeSliderComponents;->TRACK:Landroidx/compose/material3/RangeSliderComponents;

    if-ne v15, v1, :cond_2

    move/from16 v1, v18

    goto :goto_5

    :cond_2
    move/from16 v1, v17

    .line 2171
    .end local v13    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v14    # "$i$a$-fastFirst-SliderKt$RangeSliderImpl$2$1$trackPlaceable$1":I
    :goto_5
    if-eqz v1, :cond_3

    .line 2178
    .end local v2    # "$i$f$fastFirst":I
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    .end local v5    # "index$iv$iv":I
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .end local v16    # "$this$fastFirst$iv":Ljava/util/List;
    move-object v9, v11

    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    .line 824
    nop

    .line 825
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    neg-int v1, v1

    div-int/lit8 v3, v1, 0x2

    .line 824
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-wide/from16 v1, p3

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v10

    .line 826
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xb

    const/16 v17, 0x0

    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v1

    .line 823
    invoke-interface {v9, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v20

    .line 821
    nop

    .line 829
    .local v20, "trackPlaceable":Landroidx/compose/ui/layout/Placeable;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    .line 830
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 829
    add-int/2addr v1, v2

    .line 831
    .local v1, "sliderWidth":I
    nop

    .line 832
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    .line 833
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    .line 834
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 831
    nop

    .line 837
    .local v2, "sliderHeight":I
    iget-object v3, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroidx/compose/material3/RangeSliderState;->setStartThumbWidth$material3_release(F)V

    .line 838
    iget-object v3, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroidx/compose/material3/RangeSliderState;->setEndThumbWidth$material3_release(F)V

    .line 839
    iget-object v3, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v3, v1}, Landroidx/compose/material3/RangeSliderState;->setTotalWidth$material3_release(I)V

    .line 841
    iget-object v3, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v3}, Landroidx/compose/material3/RangeSliderState;->updateMinMaxPx$material3_release()V

    .line 843
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 844
    .local v3, "trackOffsetX":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v5}, Landroidx/compose/material3/RangeSliderState;->getCoercedActiveRangeStartAsFraction$material3_release()F

    move-result v5

    mul-float/2addr v4, v5

    .line 845
    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v24

    .line 844
    nop

    .line 848
    .local v24, "startThumbOffsetX":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 850
    .local v4, "endCorrection":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v6}, Landroidx/compose/material3/RangeSliderState;->getCoercedActiveRangeEndAsFraction$material3_release()F

    move-result v6

    mul-float/2addr v5, v6

    int-to-float v6, v4

    add-float/2addr v5, v6

    .line 851
    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v27

    .line 849
    nop

    .line 852
    .local v27, "endThumbOffsetX":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    sub-int v5, v2, v5

    div-int/lit8 v5, v5, 0x2

    .line 853
    .local v5, "trackOffsetY":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v6

    sub-int v6, v2, v6

    div-int/lit8 v6, v6, 0x2

    .line 854
    .local v6, "startThumbOffsetY":I
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v9

    sub-int v9, v2, v9

    div-int/lit8 v16, v9, 0x2

    .line 856
    .local v16, "endThumbOffsetY":I
    nop

    .line 857
    nop

    .line 858
    nop

    .line 856
    const/4 v12, 0x0

    new-instance v9, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$1$1;

    move-object/from16 v19, v9

    move/from16 v21, v3

    move/from16 v22, v5

    move/from16 v25, v6

    move/from16 v28, v16

    invoke-direct/range {v19 .. v28}, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$1$1;-><init>(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;II)V

    move-object v13, v9

    check-cast v13, Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v9, p1

    move v10, v1

    move v11, v2

    invoke-static/range {v9 .. v15}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v9

    return-object v9

    .line 2175
    .end local v1    # "sliderWidth":I
    .end local v6    # "startThumbOffsetY":I
    .end local v20    # "trackPlaceable":Landroidx/compose/ui/layout/Placeable;
    .end local v24    # "startThumbOffsetX":I
    .end local v27    # "endThumbOffsetX":I
    .local v2, "$i$f$fastFirst":I
    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v4, "$i$f$fastForEach":I
    .local v5, "index$iv$iv":I
    .restart local v10    # "item$iv$iv":Ljava/lang/Object;
    .local v16, "$this$fastFirst$iv":Ljava/util/List;
    :cond_3
    nop

    .line 2173
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_4

    .end local v16    # "$this$fastFirst$iv":Ljava/util/List;
    .local v1, "$this$fastFirst$iv":Ljava/util/List;
    :cond_4
    move-object/from16 v16, v1

    .line 2177
    .end local v1    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v5    # "index$iv$iv":I
    .restart local v16    # "$this$fastFirst$iv":Ljava/util/List;
    nop

    .line 2178
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1, v9}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2166
    .end local v26    # "endThumbPlaceable":Landroidx/compose/ui/layout/Placeable;
    .restart local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v4    # "$i$f$fastForEach":I
    .restart local v5    # "index$iv$iv":I
    .restart local v10    # "item$iv$iv":Ljava/lang/Object;
    :cond_5
    nop

    .line 2164
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_2

    .end local v16    # "$this$fastFirst$iv":Ljava/util/List;
    .restart local v1    # "$this$fastFirst$iv":Ljava/util/List;
    :cond_6
    move-object/from16 v16, v1

    .line 2168
    .end local v1    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v5    # "index$iv$iv":I
    .restart local v16    # "$this$fastFirst$iv":Ljava/util/List;
    nop

    .line 2169
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1, v9}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2157
    .end local v23    # "startThumbPlaceable":Landroidx/compose/ui/layout/Placeable;
    .restart local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v4    # "$i$f$fastForEach":I
    .restart local v5    # "index$iv$iv":I
    .restart local v10    # "item$iv$iv":Ljava/lang/Object;
    :cond_7
    nop

    .line 2155
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_0

    .end local v16    # "$this$fastFirst$iv":Ljava/util/List;
    .restart local v1    # "$this$fastFirst$iv":Ljava/util/List;
    :cond_8
    move-object/from16 v16, v1

    .line 2159
    .end local v1    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v5    # "index$iv$iv":I
    .restart local v16    # "$this$fastFirst$iv":Ljava/util/List;
    nop

    .line 2160
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1, v9}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
