.class final Landroidx/compose/material/SliderKt$Track$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt;->Track(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFFLjava/util/List;FFLandroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Slider.kt\nandroidx/compose/material/SliderKt$Track$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,1195:1\n1477#2:1196\n1502#2,3:1197\n1505#2,3:1207\n361#3,7:1200\n215#4:1210\n216#4:1222\n151#5,3:1211\n33#5,4:1214\n154#5,2:1218\n38#5:1220\n156#5:1221\n*S KotlinDebug\n*F\n+ 1 Slider.kt\nandroidx/compose/material/SliderKt$Track$1\n*L\n779#1:1196\n779#1:1197,3\n779#1:1207,3\n779#1:1200,7\n780#1:1210\n780#1:1222\n782#1:1211,3\n782#1:1214,4\n782#1:1218,2\n782#1:1220\n782#1:1221\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
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
.field final synthetic $activeTickColor:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $activeTrackColor:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $inactiveTickColor:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $inactiveTrackColor:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $positionFractionEnd:F

.field final synthetic $positionFractionStart:F

.field final synthetic $thumbPx:F

.field final synthetic $tickFractions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $trackStrokeWidth:F


# direct methods
.method constructor <init>(FLandroidx/compose/runtime/State;FFFLandroidx/compose/runtime/State;Ljava/util/List;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;FFF",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Landroidx/compose/material/SliderKt$Track$1;->$thumbPx:F

    iput-object p2, p0, Landroidx/compose/material/SliderKt$Track$1;->$inactiveTrackColor:Landroidx/compose/runtime/State;

    iput p3, p0, Landroidx/compose/material/SliderKt$Track$1;->$trackStrokeWidth:F

    iput p4, p0, Landroidx/compose/material/SliderKt$Track$1;->$positionFractionEnd:F

    iput p5, p0, Landroidx/compose/material/SliderKt$Track$1;->$positionFractionStart:F

    iput-object p6, p0, Landroidx/compose/material/SliderKt$Track$1;->$activeTrackColor:Landroidx/compose/runtime/State;

    iput-object p7, p0, Landroidx/compose/material/SliderKt$Track$1;->$tickFractions:Ljava/util/List;

    iput-object p8, p0, Landroidx/compose/material/SliderKt$Track$1;->$inactiveTickColor:Landroidx/compose/runtime/State;

    iput-object p9, p0, Landroidx/compose/material/SliderKt$Track$1;->$activeTickColor:Landroidx/compose/runtime/State;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 748
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {p0, v0}, Landroidx/compose/material/SliderKt$Track$1;->invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 49
    .param p1, "$this$Canvas"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 749
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 750
    .local v1, "isRtl":Z
    :goto_0
    iget v2, v0, Landroidx/compose/material/SliderKt$Track$1;->$thumbPx:F

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v5

    invoke-static {v2, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v5

    .line 751
    .local v5, "sliderLeft":J
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    iget v7, v0, Landroidx/compose/material/SliderKt$Track$1;->$thumbPx:F

    sub-float/2addr v2, v7

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v7

    invoke-static {v2, v7}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v7

    .line 752
    .local v7, "sliderRight":J
    if-eqz v1, :cond_1

    move-wide v9, v7

    goto :goto_1

    :cond_1
    move-wide v9, v5

    .line 753
    .local v9, "sliderStart":J
    :goto_1
    if-eqz v1, :cond_2

    move-wide v11, v5

    goto :goto_2

    :cond_2
    move-wide v11, v7

    :goto_2
    move-wide v14, v11

    .line 754
    .local v14, "sliderEnd":J
    nop

    .line 755
    iget-object v2, v0, Landroidx/compose/material/SliderKt$Track$1;->$inactiveTrackColor:Landroidx/compose/runtime/State;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v12

    .line 756
    nop

    .line 757
    nop

    .line 758
    iget v2, v0, Landroidx/compose/material/SliderKt$Track$1;->$trackStrokeWidth:F

    .line 759
    sget-object v11, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getRound-KaPHkGw()I

    move-result v19

    .line 754
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1e0

    const/16 v25, 0x0

    move-object/from16 v11, p1

    move-wide/from16 v26, v14

    .end local v14    # "sliderEnd":J
    .local v26, "sliderEnd":J
    move-wide v14, v9

    move-wide/from16 v16, v26

    move/from16 v18, v2

    invoke-static/range {v11 .. v25}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-NGM6Ib0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 762
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v11

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v12

    sub-float/2addr v11, v12

    iget v12, v0, Landroidx/compose/material/SliderKt$Track$1;->$positionFractionEnd:F

    mul-float/2addr v11, v12

    add-float/2addr v2, v11

    .line 763
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v11

    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v11

    .line 761
    invoke-static {v2, v11}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v11

    .line 767
    .local v11, "sliderValueEnd":J
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v13

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v14

    sub-float/2addr v13, v14

    iget v14, v0, Landroidx/compose/material/SliderKt$Track$1;->$positionFractionStart:F

    mul-float/2addr v13, v14

    add-float/2addr v2, v13

    .line 768
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v13

    invoke-static {v13, v14}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v13

    .line 766
    invoke-static {v2, v13}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v13

    .line 771
    .local v13, "sliderValueStart":J
    nop

    .line 772
    iget-object v2, v0, Landroidx/compose/material/SliderKt$Track$1;->$activeTrackColor:Landroidx/compose/runtime/State;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v29

    .line 773
    nop

    .line 774
    nop

    .line 775
    iget v2, v0, Landroidx/compose/material/SliderKt$Track$1;->$trackStrokeWidth:F

    .line 776
    sget-object v15, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getRound-KaPHkGw()I

    move-result v36

    .line 771
    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x1e0

    const/16 v42, 0x0

    move-object/from16 v28, p1

    move-wide/from16 v31, v13

    move-wide/from16 v33, v11

    move/from16 v35, v2

    invoke-static/range {v28 .. v42}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-NGM6Ib0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 779
    iget-object v2, v0, Landroidx/compose/material/SliderKt$Track$1;->$tickFractions:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$groupBy$iv":Ljava/lang/Iterable;
    iget v15, v0, Landroidx/compose/material/SliderKt$Track$1;->$positionFractionEnd:F

    iget v3, v0, Landroidx/compose/material/SliderKt$Track$1;->$positionFractionStart:F

    const/16 v17, 0x0

    .line 1196
    .local v17, "$i$f$groupBy":I
    new-instance v18, Ljava/util/LinkedHashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v18, Ljava/util/Map;

    .local v18, "destination$iv$iv":Ljava/util/Map;
    move-object/from16 v19, v2

    .local v19, "$this$groupByTo$iv$iv":Ljava/lang/Iterable;
    const/16 v20, 0x0

    .line 1197
    .local v20, "$i$f$groupByTo":I
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1198
    .local v4, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v23, v4

    check-cast v23, Ljava/lang/Number;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Number;->floatValue()F

    move-result v23

    .local v23, "it":F
    const/16 v24, 0x0

    .line 779
    .local v24, "$i$a$-groupBy-SliderKt$Track$1$1":I
    cmpl-float v25, v23, v15

    if-gtz v25, :cond_4

    cmpg-float v25, v23, v3

    if-gez v25, :cond_3

    goto :goto_4

    :cond_3
    const/16 v23, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    const/16 v23, 0x1

    .end local v23    # "it":F
    .end local v24    # "$i$a$-groupBy-SliderKt$Track$1$1":I
    :goto_5
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    .line 1198
    move-object/from16 v24, v23

    .line 1199
    .local v24, "key$iv$iv":Ljava/lang/Object;
    move-object/from16 v23, v18

    .local v23, "$this$getOrPut$iv$iv$iv":Ljava/util/Map;
    const/16 v25, 0x0

    .line 1200
    .local v25, "$i$f$getOrPut":I
    move/from16 v28, v1

    move-object/from16 v1, v24

    move-object/from16 v48, v23

    move-object/from16 v23, v2

    move-object/from16 v2, v48

    .end local v24    # "key$iv$iv":Ljava/lang/Object;
    .local v1, "key$iv$iv":Ljava/lang/Object;
    .local v2, "$this$getOrPut$iv$iv$iv":Ljava/util/Map;
    .local v23, "$this$groupBy$iv":Ljava/lang/Iterable;
    .local v28, "isRtl":Z
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 1201
    .local v24, "value$iv$iv$iv":Ljava/lang/Object;
    if-nez v24, :cond_5

    .line 1202
    const/16 v29, 0x0

    .line 1199
    .local v29, "$i$a$-getOrPut-CollectionsKt___CollectionsKt$groupByTo$list$1$iv$iv":I
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    check-cast v30, Ljava/util/List;

    .line 1202
    .end local v29    # "$i$a$-getOrPut-CollectionsKt___CollectionsKt$groupByTo$list$1$iv$iv":I
    move-object/from16 v29, v30

    .line 1203
    .local v29, "answer$iv$iv$iv":Ljava/lang/Object;
    move/from16 v30, v3

    move-object/from16 v3, v29

    .end local v29    # "answer$iv$iv$iv":Ljava/lang/Object;
    .local v3, "answer$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    nop

    .end local v3    # "answer$iv$iv$iv":Ljava/lang/Object;
    goto :goto_6

    .line 1206
    :cond_5
    move/from16 v30, v3

    move-object/from16 v29, v24

    .line 1201
    :goto_6
    nop

    .line 1199
    .end local v2    # "$this$getOrPut$iv$iv$iv":Ljava/util/Map;
    .end local v24    # "value$iv$iv$iv":Ljava/lang/Object;
    .end local v25    # "$i$f$getOrPut":I
    move-object/from16 v2, v29

    check-cast v2, Ljava/util/List;

    .line 1207
    .local v2, "list$iv$iv":Ljava/util/List;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v23

    move/from16 v1, v28

    move/from16 v3, v30

    goto :goto_3

    .line 1209
    .end local v4    # "element$iv$iv":Ljava/lang/Object;
    .end local v23    # "$this$groupBy$iv":Ljava/lang/Iterable;
    .end local v28    # "isRtl":Z
    .local v1, "isRtl":Z
    .local v2, "$this$groupBy$iv":Ljava/lang/Iterable;
    :cond_6
    move/from16 v28, v1

    move-object/from16 v23, v2

    .line 1196
    .end local v1    # "isRtl":Z
    .end local v2    # "$this$groupBy$iv":Ljava/lang/Iterable;
    .end local v18    # "destination$iv$iv":Ljava/util/Map;
    .end local v19    # "$this$groupByTo$iv$iv":Ljava/lang/Iterable;
    .end local v20    # "$i$f$groupByTo":I
    .restart local v23    # "$this$groupBy$iv":Ljava/lang/Iterable;
    .restart local v28    # "isRtl":Z
    nop

    .line 780
    .end local v17    # "$i$f$groupBy":I
    .end local v23    # "$this$groupBy$iv":Ljava/lang/Iterable;
    iget-object v1, v0, Landroidx/compose/material/SliderKt$Track$1;->$inactiveTickColor:Landroidx/compose/runtime/State;

    iget-object v2, v0, Landroidx/compose/material/SliderKt$Track$1;->$activeTickColor:Landroidx/compose/runtime/State;

    iget v3, v0, Landroidx/compose/material/SliderKt$Track$1;->$trackStrokeWidth:F

    move-object/from16 v4, v18

    .local v4, "$this$forEach$iv":Ljava/util/Map;
    const/4 v15, 0x0

    .line 1210
    .local v15, "$i$f$forEach":I
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .local v17, "element$iv":Ljava/util/Map$Entry;
    const/16 v18, 0x0

    .line 780
    .local v18, "$i$a$-forEach-SliderKt$Track$1$2":I
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    .local v19, "outsideFraction":Z
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    .line 781
    .local v20, "list":Ljava/util/List;
    nop

    .line 782
    move-object/from16 v21, v20

    .local v21, "$this$fastMap$iv":Ljava/util/List;
    const/16 v22, 0x0

    .line 1211
    .local v22, "$i$f$fastMap":I
    nop

    .line 1212
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v23, v1

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1213
    .local v0, "target$iv":Ljava/util/ArrayList;
    move-object/from16 v1, v21

    .local v1, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v24, 0x0

    .line 1214
    .local v24, "$i$f$fastForEach":I
    nop

    .line 1215
    const/16 v25, 0x0

    move-object/from16 v42, v2

    .local v25, "index$iv$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v43, v4

    move/from16 v4, v25

    .end local v25    # "index$iv$iv":I
    .local v4, "index$iv$iv":I
    .local v43, "$this$forEach$iv":Ljava/util/Map;
    :goto_8
    if-ge v4, v2, :cond_7

    .line 1216
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    .line 1217
    .local v25, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v29, v25

    .local v29, "it$iv":Ljava/lang/Object;
    const/16 v30, 0x0

    .line 1218
    .local v30, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object/from16 v31, v1

    .end local v1    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v31, "$this$fastForEach$iv$iv":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    move-object/from16 v32, v29

    check-cast v32, Ljava/lang/Number;

    move/from16 v33, v2

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .local v2, "it":F
    const/16 v32, 0x0

    .line 783
    .local v32, "$i$a$-fastMap-SliderKt$Track$1$2$1":I
    move-wide/from16 v44, v5

    move-wide/from16 v5, v26

    .end local v26    # "sliderEnd":J
    .local v5, "sliderEnd":J
    .local v44, "sliderLeft":J
    invoke-static {v9, v10, v5, v6, v2}, Landroidx/compose/ui/geometry/OffsetKt;->lerp-Wko1d7g(JJF)J

    move-result-wide v26

    move/from16 v34, v2

    .end local v2    # "it":F
    .local v34, "it":F
    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v26

    move-wide/from16 v46, v5

    .end local v5    # "sliderEnd":J
    .local v46, "sliderEnd":J
    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v5

    invoke-static {v2, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v5

    .end local v32    # "$i$a$-fastMap-SliderKt$Track$1$2$1":I
    .end local v34    # "it":F
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    .line 1218
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1219
    nop

    .line 1217
    .end local v29    # "it$iv":Ljava/lang/Object;
    .end local v30    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 1215
    .end local v25    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-wide/from16 v5, v44

    move-wide/from16 v26, v46

    goto :goto_8

    .end local v31    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v44    # "sliderLeft":J
    .end local v46    # "sliderEnd":J
    .restart local v1    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v5, "sliderLeft":J
    .restart local v26    # "sliderEnd":J
    :cond_7
    move-object/from16 v31, v1

    move-wide/from16 v44, v5

    move-wide/from16 v46, v26

    .line 1220
    .end local v1    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "index$iv$iv":I
    .end local v5    # "sliderLeft":J
    .end local v26    # "sliderEnd":J
    .restart local v31    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v44    # "sliderLeft":J
    .restart local v46    # "sliderEnd":J
    nop

    .line 1221
    .end local v24    # "$i$f$fastForEach":I
    .end local v31    # "$this$fastForEach$iv$iv":Ljava/util/List;
    move-object/from16 v30, v0

    check-cast v30, Ljava/util/List;

    .line 785
    .end local v0    # "target$iv":Ljava/util/ArrayList;
    .end local v21    # "$this$fastMap$iv":Ljava/util/List;
    .end local v22    # "$i$f$fastMap":I
    sget-object v0, Landroidx/compose/ui/graphics/PointMode;->Companion:Landroidx/compose/ui/graphics/PointMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PointMode$Companion;->getPoints-r_lszbg()I

    move-result v31

    .line 786
    if-eqz v19, :cond_8

    move-object/from16 v0, v23

    goto :goto_9

    :cond_8
    move-object/from16 v0, v42

    :goto_9
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v32

    .line 787
    nop

    .line 788
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getRound-KaPHkGw()I

    move-result v35

    .line 781
    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x1e0

    const/16 v41, 0x0

    move-object/from16 v29, p1

    move/from16 v34, v3

    invoke-static/range {v29 .. v41}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPoints-F8ZwMP8$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Ljava/util/List;IJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 790
    nop

    .line 1210
    .end local v18    # "$i$a$-forEach-SliderKt$Track$1$2":I
    .end local v19    # "outsideFraction":Z
    .end local v20    # "list":Ljava/util/List;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v42

    move-object/from16 v4, v43

    move-wide/from16 v5, v44

    move-wide/from16 v26, v46

    .end local v17    # "element$iv":Ljava/util/Map$Entry;
    goto/16 :goto_7

    .line 1222
    .end local v43    # "$this$forEach$iv":Ljava/util/Map;
    .end local v44    # "sliderLeft":J
    .end local v46    # "sliderEnd":J
    .local v4, "$this$forEach$iv":Ljava/util/Map;
    .restart local v5    # "sliderLeft":J
    .restart local v26    # "sliderEnd":J
    :cond_9
    nop

    .line 791
    .end local v4    # "$this$forEach$iv":Ljava/util/Map;
    .end local v15    # "$i$f$forEach":I
    return-void
.end method
