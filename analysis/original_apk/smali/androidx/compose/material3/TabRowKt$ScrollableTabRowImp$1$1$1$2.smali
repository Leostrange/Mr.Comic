.class final Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TabRow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1;->invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
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
    value = "SMAP\nTabRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabRow.kt\nandroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,1223:1\n69#2,6:1224\n33#2,6:1230\n33#2,6:1236\n*S KotlinDebug\n*F\n+ 1 TabRow.kt\nandroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2\n*L\n915#1:1224,6\n929#1:1230,6\n944#1:1236,6\n*E\n"
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
.field final synthetic $constraints:J

.field final synthetic $divider:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $indicator:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/util/List<",
            "Landroidx/compose/material3/TabPosition;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $layoutHeight:I

.field final synthetic $layoutWidth:I

.field final synthetic $padding:I

.field final synthetic $scrollableTabData:Landroidx/compose/material3/ScrollableTabData;

.field final synthetic $selectedTabIndex:I

.field final synthetic $tabContentWidths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tabPlaceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;


# direct methods
.method constructor <init>(ILjava/util/List;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ScrollableTabData;ILjava/util/List;JIILkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/ScrollableTabData;",
            "I",
            "Ljava/util/List<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;JII",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material3/TabPosition;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$padding:I

    iput-object p2, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$tabPlaceables:Ljava/util/List;

    iput-object p3, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iput-object p4, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$divider:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$scrollableTabData:Landroidx/compose/material3/ScrollableTabData;

    iput p6, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$selectedTabIndex:I

    iput-object p7, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$tabContentWidths:Ljava/util/List;

    iput-wide p8, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$constraints:J

    iput p10, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$layoutWidth:I

    iput p11, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$layoutHeight:I

    iput-object p12, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$indicator:Lkotlin/jvm/functions/Function3;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 911
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, v0}, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 28
    .param p1, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 913
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 914
    .local v1, "tabPositions":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "left":I
    iget v2, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$padding:I

    .line 915
    iget-object v3, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$tabPlaceables:Ljava/util/List;

    .local v3, "$this$fastForEachIndexed$iv":Ljava/util/List;
    iget-object v4, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iget-object v5, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$tabContentWidths:Ljava/util/List;

    const/4 v6, 0x0

    .line 1224
    .local v6, "$i$f$fastForEachIndexed":I
    nop

    .line 1225
    const/4 v7, 0x0

    .local v7, "index$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_0

    .line 1226
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 1227
    .local v16, "item$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    check-cast v17, Landroidx/compose/ui/layout/Placeable;

    .local v17, "placeable":Landroidx/compose/ui/layout/Placeable;
    move v15, v7

    .local v15, "index":I
    const/16 v18, 0x0

    .line 916
    .local v18, "$i$a$-fastForEachIndexed-TabRowKt$ScrollableTabRowImp$1$1$1$2$1":I
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/16 v19, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, v17

    move v11, v2

    move-object/from16 v20, v3

    move v3, v15

    .end local v15    # "index":I
    .local v3, "index":I
    .local v20, "$this$fastForEachIndexed$iv":Ljava/util/List;
    move-object/from16 v15, v19

    invoke-static/range {v9 .. v15}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 917
    nop

    .line 918
    new-instance v9, Landroidx/compose/material3/TabPosition;

    .line 919
    invoke-interface {v4, v2}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->toDp-u2uoSUM(I)F

    move-result v10

    .line 920
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v11

    invoke-interface {v4, v11}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->toDp-u2uoSUM(I)F

    move-result v11

    .line 921
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v12}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v12

    .line 918
    const/4 v13, 0x0

    invoke-direct {v9, v10, v11, v12, v13}, Landroidx/compose/material3/TabPosition;-><init>(FFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 917
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v9

    add-int/2addr v2, v9

    .line 925
    nop

    .line 1227
    .end local v3    # "index":I
    .end local v17    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v18    # "$i$a$-fastForEachIndexed-TabRowKt$ScrollableTabRowImp$1$1$1$2$1":I
    nop

    .line 1225
    .end local v16    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v20

    goto :goto_0

    .end local v20    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .local v3, "$this$fastForEachIndexed$iv":Ljava/util/List;
    :cond_0
    move-object/from16 v20, v3

    .line 1229
    .end local v3    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v7    # "index$iv":I
    .restart local v20    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    nop

    .line 929
    .end local v6    # "$i$f$fastForEachIndexed":I
    .end local v20    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    iget-object v3, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    sget-object v4, Landroidx/compose/material3/TabSlots;->Divider:Landroidx/compose/material3/TabSlots;

    iget-object v5, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$divider:Lkotlin/jvm/functions/Function2;

    invoke-interface {v3, v4, v5}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v3

    .local v3, "$this$fastForEach$iv":Ljava/util/List;
    iget-wide v12, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$constraints:J

    iget v14, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$layoutWidth:I

    iget v15, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$layoutHeight:I

    const/16 v16, 0x0

    .line 1230
    .local v16, "$i$f$fastForEach":I
    nop

    .line 1231
    const/4 v4, 0x0

    .local v4, "index$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    move v10, v4

    .end local v4    # "index$iv":I
    .local v10, "index$iv":I
    :goto_1
    if-ge v10, v11, :cond_1

    .line 1232
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 1233
    .local v17, "item$iv":Ljava/lang/Object;
    move-object/from16 v9, v17

    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    .local v9, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v18, 0x0

    .line 930
    .local v18, "$i$a$-fastForEach-TabRowKt$ScrollableTabRowImp$1$1$1$2$2":I
    nop

    .line 931
    nop

    .line 933
    nop

    .line 934
    nop

    .line 932
    const/4 v8, 0x0

    .line 931
    const/16 v19, 0x0

    const/16 v20, 0x8

    const/16 v21, 0x0

    move-wide v4, v12

    move v6, v14

    move v7, v14

    move-object/from16 v22, v9

    .end local v9    # "it":Landroidx/compose/ui/layout/Measurable;
    .local v22, "it":Landroidx/compose/ui/layout/Measurable;
    move/from16 v9, v19

    move/from16 v19, v10

    .end local v10    # "index$iv":I
    .local v19, "index$iv":I
    move/from16 v10, v20

    move/from16 v20, v11

    move-object/from16 v11, v21

    invoke-static/range {v4 .. v11}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v4

    .line 930
    move-object/from16 v6, v22

    .end local v22    # "it":Landroidx/compose/ui/layout/Measurable;
    .local v6, "it":Landroidx/compose/ui/layout/Measurable;
    invoke-interface {v6, v4, v5}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    .line 937
    .local v4, "placeable":Landroidx/compose/ui/layout/Placeable;
    const/16 v23, 0x0

    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    sub-int v24, v15, v5

    const/16 v25, 0x0

    const/16 v26, 0x4

    const/16 v27, 0x0

    move-object/from16 v21, p1

    move-object/from16 v22, v4

    invoke-static/range {v21 .. v27}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 938
    nop

    .line 1233
    .end local v4    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v6    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v18    # "$i$a$-fastForEach-TabRowKt$ScrollableTabRowImp$1$1$1$2$2":I
    nop

    .line 1231
    .end local v17    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v10, v19, 0x1

    move/from16 v11, v20

    .end local v19    # "index$iv":I
    .restart local v10    # "index$iv":I
    goto :goto_1

    :cond_1
    move/from16 v19, v10

    .line 1235
    .end local v10    # "index$iv":I
    nop

    .line 942
    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v16    # "$i$f$fastForEach":I
    iget-object v3, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    sget-object v4, Landroidx/compose/material3/TabSlots;->Indicator:Landroidx/compose/material3/TabSlots;

    new-instance v5, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2$3;

    iget-object v6, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$indicator:Lkotlin/jvm/functions/Function3;

    invoke-direct {v5, v6, v1}, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2$3;-><init>(Lkotlin/jvm/functions/Function3;Ljava/util/List;)V

    const v6, 0x155fbdc6

    const/4 v7, 0x1

    invoke-static {v6, v7, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-interface {v3, v4, v5}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v3

    .line 944
    iget v4, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$layoutWidth:I

    iget v5, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$layoutHeight:I

    .restart local v3    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1236
    .local v6, "$i$f$fastForEach":I
    nop

    .line 1237
    const/4 v7, 0x0

    .restart local v7    # "index$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    :goto_2
    if-ge v7, v8, :cond_2

    .line 1238
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1239
    .local v9, "item$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .local v10, "it":Landroidx/compose/ui/layout/Measurable;
    const/4 v11, 0x0

    .line 945
    .local v11, "$i$a$-fastForEach-TabRowKt$ScrollableTabRowImp$1$1$1$2$4":I
    sget-object v12, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {v12, v4, v5}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide v12

    invoke-interface {v10, v12, v13}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object/from16 v14, p1

    invoke-static/range {v14 .. v20}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 946
    nop

    .line 1239
    .end local v10    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v11    # "$i$a$-fastForEach-TabRowKt$ScrollableTabRowImp$1$1$1$2$4":I
    nop

    .line 1237
    .end local v9    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1241
    .end local v7    # "index$iv":I
    :cond_2
    nop

    .line 948
    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    iget-object v3, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$scrollableTabData:Landroidx/compose/material3/ScrollableTabData;

    .line 949
    iget-object v4, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 950
    iget v5, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$padding:I

    .line 951
    nop

    .line 952
    iget v6, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImp$1$1$1$2;->$selectedTabIndex:I

    .line 948
    invoke-virtual {v3, v4, v5, v1, v6}, Landroidx/compose/material3/ScrollableTabData;->onLaidOut(Landroidx/compose/ui/unit/Density;ILjava/util/List;I)V

    .line 954
    return-void
.end method
