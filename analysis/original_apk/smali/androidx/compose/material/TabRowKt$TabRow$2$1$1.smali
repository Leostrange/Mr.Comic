.class final Landroidx/compose/material/TabRowKt$TabRow$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TabRow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TabRowKt$TabRow$2;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTabRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabRow.kt\nandroidx/compose/material/TabRowKt$TabRow$2$1$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/Dp\n*L\n1#1,521:1\n151#2,3:522\n33#2,4:525\n154#2,2:529\n38#2:531\n156#2:532\n171#2,13:533\n92#3:546\n*S KotlinDebug\n*F\n+ 1 TabRow.kt\nandroidx/compose/material/TabRowKt$TabRow$2$1$1\n*L\n160#1:522,3\n160#1:525,4\n160#1:529,2\n160#1:531\n160#1:532\n164#1:533,13\n167#1:546\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "invoke-0kLqBqw",
        "(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;"
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
            "Landroidx/compose/material/TabPosition;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tabs:Lkotlin/jvm/functions/Function2;
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


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->$tabs:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->$divider:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->$indicator:Lkotlin/jvm/functions/Function3;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 155
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public final invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 29
    .param p1, "$this$SubcomposeLayout"    # Landroidx/compose/ui/layout/SubcomposeMeasureScope;
    .param p2, "constraints"    # J

    .line 156
    move-object/from16 v0, p0

    move-object/from16 v12, p1

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v20

    .line 157
    .local v20, "tabRowWidth":I
    sget-object v1, Landroidx/compose/material/TabSlots;->Tabs:Landroidx/compose/material/TabSlots;

    iget-object v2, v0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->$tabs:Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v1, v2}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v21

    .line 158
    .local v21, "tabMeasurables":Ljava/util/List;
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v15

    .line 159
    .local v15, "tabCount":I
    div-int v14, v20, v15

    .line 160
    .local v14, "tabWidth":I
    move-object/from16 v9, v21

    .local v9, "$this$fastMap$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 522
    .local v10, "$i$f$fastMap":I
    nop

    .line 523
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v11, v1

    .line 524
    .local v11, "target$iv":Ljava/util/ArrayList;
    move-object v13, v9

    .local v13, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 525
    .local v16, "$i$f$fastForEach":I
    nop

    .line 526
    const/4 v1, 0x0

    .local v1, "index$iv$iv":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v8

    move v7, v1

    .end local v1    # "index$iv$iv":I
    .local v7, "index$iv$iv":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 527
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 528
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v17

    .local v18, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 529
    .local v19, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object v6, v11

    check-cast v6, Ljava/util/Collection;

    move-object/from16 v5, v18

    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .local v5, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v22, 0x0

    .line 161
    .local v22, "$i$a$-fastMap-TabRowKt$TabRow$2$1$1$tabPlaceables$1":I
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xc

    const/16 v26, 0x0

    move-wide/from16 v1, p2

    move v3, v14

    move v4, v14

    move-object/from16 v27, v5

    .end local v5    # "it":Landroidx/compose/ui/layout/Measurable;
    .local v27, "it":Landroidx/compose/ui/layout/Measurable;
    move/from16 v5, v23

    move-object/from16 v28, v6

    move/from16 v6, v24

    move/from16 v23, v7

    .end local v7    # "index$iv$iv":I
    .local v23, "index$iv$iv":I
    move/from16 v7, v25

    move/from16 v24, v8

    move-object/from16 v8, v26

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v1

    move-object/from16 v3, v27

    .end local v27    # "it":Landroidx/compose/ui/layout/Measurable;
    .local v3, "it":Landroidx/compose/ui/layout/Measurable;
    invoke-interface {v3, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    .line 529
    .end local v3    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v22    # "$i$a$-fastMap-TabRowKt$TabRow$2$1$1$tabPlaceables$1":I
    move-object/from16 v2, v28

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 530
    nop

    .line 528
    .end local v18    # "it$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 526
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v23, 0x1

    move/from16 v8, v24

    .end local v23    # "index$iv$iv":I
    .restart local v7    # "index$iv$iv":I
    goto :goto_0

    :cond_0
    move/from16 v23, v7

    .line 531
    .end local v7    # "index$iv$iv":I
    nop

    .line 532
    .end local v13    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v16    # "$i$f$fastForEach":I
    move-object v2, v11

    check-cast v2, Ljava/util/List;

    .line 160
    .end local v9    # "$this$fastMap$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastMap":I
    .end local v11    # "target$iv":Ljava/util/ArrayList;
    nop

    .line 164
    .local v2, "tabPlaceables":Ljava/util/List;
    move-object v1, v2

    .local v1, "$this$fastMaxBy$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 533
    .local v3, "$i$f$fastMaxBy":I
    nop

    .line 534
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    move-object v4, v5

    goto :goto_2

    .line 535
    :cond_1
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 536
    .local v4, "maxElem$iv":Ljava/lang/Object;
    move-object v7, v4

    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    .local v7, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v8, 0x0

    .line 164
    .local v8, "$i$a$-fastMaxBy-TabRowKt$TabRow$2$1$1$tabRowHeight$1":I
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v7

    .line 536
    .end local v7    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v8    # "$i$a$-fastMaxBy-TabRowKt$TabRow$2$1$1$tabRowHeight$1":I
    nop

    .line 537
    .local v7, "maxValue$iv":I
    const/4 v8, 0x1

    .local v8, "i$iv":I
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v9

    if-gt v8, v9, :cond_3

    .line 538
    :goto_1
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 539
    .local v10, "e$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/layout/Placeable;

    .local v11, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v13, 0x0

    .line 164
    .local v13, "$i$a$-fastMaxBy-TabRowKt$TabRow$2$1$1$tabRowHeight$1":I
    invoke-virtual {v11}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v11

    .line 539
    .end local v11    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v13    # "$i$a$-fastMaxBy-TabRowKt$TabRow$2$1$1$tabRowHeight$1":I
    nop

    .line 540
    .local v11, "v$iv":I
    if-ge v7, v11, :cond_2

    .line 541
    move-object v4, v10

    .line 542
    move v7, v11

    .line 537
    .end local v10    # "e$iv":Ljava/lang/Object;
    .end local v11    # "v$iv":I
    :cond_2
    if-eq v8, v9, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 545
    .end local v8    # "i$iv":I
    :cond_3
    nop

    .line 164
    .end local v1    # "$this$fastMaxBy$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastMaxBy":I
    .end local v4    # "maxElem$iv":Ljava/lang/Object;
    .end local v7    # "maxValue$iv":I
    :goto_2
    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    move v8, v1

    goto :goto_3

    :cond_4
    move v8, v6

    .line 166
    .local v8, "tabRowHeight":I
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v15}, Ljava/util/ArrayList;-><init>(I)V

    :goto_4
    if-ge v6, v15, :cond_5

    move v3, v6

    .local v3, "index":I
    const/4 v4, 0x0

    .line 167
    .local v4, "$i$a$-List-TabRowKt$TabRow$2$1$1$tabPositions$1":I
    new-instance v7, Landroidx/compose/material/TabPosition;

    invoke-interface {v12, v14}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->toDp-u2uoSUM(I)F

    move-result v9

    .local v9, "arg0$iv":F
    const/4 v10, 0x0

    .line 546
    .local v10, "$i$f$times-u2uoSUM":I
    int-to-float v11, v3

    mul-float/2addr v11, v9

    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    .line 167
    .end local v9    # "arg0$iv":F
    .end local v10    # "$i$f$times-u2uoSUM":I
    invoke-interface {v12, v14}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->toDp-u2uoSUM(I)F

    move-result v10

    invoke-direct {v7, v9, v10, v5}, Landroidx/compose/material/TabPosition;-><init>(FFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 166
    .end local v3    # "index":I
    .end local v4    # "$i$a$-List-TabRowKt$TabRow$2$1$1$tabPositions$1":I
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v22, v1

    check-cast v22, Ljava/util/List;

    .line 170
    .local v22, "tabPositions":Ljava/util/List;
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/layout/MeasureScope;

    const/16 v16, 0x0

    new-instance v17, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;

    iget-object v4, v0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->$divider:Lkotlin/jvm/functions/Function2;

    iget-object v9, v0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->$indicator:Lkotlin/jvm/functions/Function3;

    move-object/from16 v1, v17

    move-object/from16 v3, p1

    move v5, v14

    move-wide/from16 v6, p2

    move-object/from16 v10, v22

    move/from16 v11, v20

    invoke-direct/range {v1 .. v11}, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;-><init>(Ljava/util/List;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Lkotlin/jvm/functions/Function2;IJILkotlin/jvm/functions/Function3;Ljava/util/List;I)V

    check-cast v17, Lkotlin/jvm/functions/Function1;

    const/16 v18, 0x4

    const/16 v19, 0x0

    move v1, v14

    .end local v14    # "tabWidth":I
    .local v1, "tabWidth":I
    move/from16 v14, v20

    move v3, v15

    .end local v15    # "tabCount":I
    .local v3, "tabCount":I
    move v15, v8

    invoke-static/range {v13 .. v19}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v4

    return-object v4
.end method
