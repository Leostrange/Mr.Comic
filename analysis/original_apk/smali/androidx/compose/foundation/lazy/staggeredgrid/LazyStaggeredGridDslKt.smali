.class public final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt;
.super Ljava/lang/Object;
.source "LazyStaggeredGridDsl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyStaggeredGridDsl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyStaggeredGridDsl.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,463:1\n154#2:464\n154#2:465\n154#2:466\n154#2:477\n154#2:478\n154#2:479\n67#3,3:467\n66#3:470\n67#3,3:480\n66#3:483\n1116#4,6:471\n1116#4,6:484\n*S KotlinDebug\n*F\n+ 1 LazyStaggeredGridDsl.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt\n*L\n66#1:464\n68#1:465\n69#1:466\n156#1:477\n158#1:478\n159#1:479\n95#1:467,3\n95#1:470\n185#1:480,3\n185#1:483\n95#1:471,6\n185#1:484,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0083\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000b2\u0017\u0010\u0013\u001a\u0013\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00010\u0014\u00a2\u0006\u0002\u0008\u0016H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\u001a\u0083\u0001\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000b2\u0017\u0010\u0013\u001a\u0013\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00010\u0014\u00a2\u0006\u0002\u0008\u0016H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001e\u0010\u001f\u001a%\u0010 \u001a\u00020!2\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0008\u001a\u00020\tH\u0003\u00a2\u0006\u0002\u0010\"\u001a%\u0010#\u001a\u00020!2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\tH\u0003\u00a2\u0006\u0002\u0010$\u001a\u00d0\u0001\u0010%\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010&*\u00020\u00152\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u0002H&0\'2%\u0008\n\u0010(\u001a\u001f\u0012\u0013\u0012\u0011H&\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020,\u0018\u00010\u00142%\u0008\u0006\u0010-\u001a\u001f\u0012\u0013\u0012\u0011H&\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0006\u0012\u0004\u0018\u00010,0\u00142%\u0008\n\u0010.\u001a\u001f\u0012\u0013\u0012\u0011H&\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020/\u0018\u00010\u001423\u0008\u0004\u00100\u001a-\u0012\u0004\u0012\u000202\u0012\u0013\u0012\u0011H&\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020\u000101\u00a2\u0006\u0002\u00083\u00a2\u0006\u0002\u0008\u0016H\u0086\u0008\u00a2\u0006\u0002\u00104\u001a\u00d0\u0001\u0010%\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010&*\u00020\u00152\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u0002H&052%\u0008\n\u0010(\u001a\u001f\u0012\u0013\u0012\u0011H&\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020,\u0018\u00010\u00142%\u0008\u0006\u0010-\u001a\u001f\u0012\u0013\u0012\u0011H&\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0006\u0012\u0004\u0018\u00010,0\u00142%\u0008\n\u0010.\u001a\u001f\u0012\u0013\u0012\u0011H&\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020/\u0018\u00010\u001423\u0008\u0004\u00100\u001a-\u0012\u0004\u0012\u000202\u0012\u0013\u0012\u0011H&\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020\u000101\u00a2\u0006\u0002\u00083\u00a2\u0006\u0002\u0008\u0016H\u0086\u0008\u00a2\u0006\u0002\u00106\u001a\u00a4\u0002\u00107\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010&*\u00020\u00152\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u0002H&0\'2:\u0008\n\u0010(\u001a4\u0012\u0013\u0012\u001108\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(9\u0012\u0013\u0012\u0011H&\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020,\u0018\u0001012:\u0008\u0006\u0010-\u001a4\u0012\u0013\u0012\u001108\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(9\u0012\u0013\u0012\u0011H&\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0006\u0012\u0004\u0018\u00010,012:\u0008\n\u0010.\u001a4\u0012\u0013\u0012\u001108\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(9\u0012\u0013\u0012\u0011H&\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020/\u0018\u0001012H\u0008\u0004\u00100\u001aB\u0012\u0004\u0012\u000202\u0012\u0013\u0012\u001108\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(9\u0012\u0013\u0012\u0011H&\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020\u00010:\u00a2\u0006\u0002\u00083\u00a2\u0006\u0002\u0008\u0016H\u0086\u0008\u00a2\u0006\u0002\u0010;\u001a\u00a4\u0002\u00107\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010&*\u00020\u00152\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u0002H&052:\u0008\n\u0010(\u001a4\u0012\u0013\u0012\u001108\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(9\u0012\u0013\u0012\u0011H&\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020,\u0018\u0001012:\u0008\u0006\u0010-\u001a4\u0012\u0013\u0012\u001108\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(9\u0012\u0013\u0012\u0011H&\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0006\u0012\u0004\u0018\u00010,012:\u0008\n\u0010.\u001a4\u0012\u0013\u0012\u001108\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(9\u0012\u0013\u0012\u0011H&\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020/\u0018\u0001012H\u0008\u0004\u00100\u001aB\u0012\u0004\u0012\u000202\u0012\u0013\u0012\u001108\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(9\u0012\u0013\u0012\u0011H&\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020\u00010:\u00a2\u0006\u0002\u00083\u00a2\u0006\u0002\u0008\u0016H\u0086\u0008\u00a2\u0006\u0002\u0010<\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006="
    }
    d2 = {
        "LazyHorizontalStaggeredGrid",
        "",
        "rows",
        "Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "state",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;",
        "contentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "reverseLayout",
        "",
        "verticalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "horizontalItemSpacing",
        "Landroidx/compose/ui/unit/Dp;",
        "flingBehavior",
        "Landroidx/compose/foundation/gestures/FlingBehavior;",
        "userScrollEnabled",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;",
        "Lkotlin/ExtensionFunctionType;",
        "LazyHorizontalStaggeredGrid-cJHQLPU",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V",
        "LazyVerticalStaggeredGrid",
        "columns",
        "verticalItemSpacing",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "LazyVerticalStaggeredGrid-zadm560",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZFLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V",
        "rememberColumnSlots",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;",
        "rememberRowSlots",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;",
        "items",
        "T",
        "",
        "key",
        "Lkotlin/ParameterName;",
        "name",
        "item",
        "",
        "contentType",
        "span",
        "Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;",
        "itemContent",
        "Lkotlin/Function2;",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScope;",
        "Landroidx/compose/runtime/Composable;",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V",
        "",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V",
        "itemsIndexed",
        "",
        "index",
        "Lkotlin/Function3;",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;)V",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;)V",
        "foundation_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final LazyHorizontalStaggeredGrid-cJHQLPU(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 30
    .param p0, "rows"    # Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "state"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .param p3, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p4, "reverseLayout"    # Z
    .param p5, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p6, "horizontalItemSpacing"    # F
    .param p7, "flingBehavior"    # Landroidx/compose/foundation/gestures/FlingBehavior;
    .param p8, "userScrollEnabled"    # Z
    .param p9, "content"    # Lkotlin/jvm/functions/Function1;
    .param p10, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p11, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "F",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 163
    move-object/from16 v13, p0

    move/from16 v14, p11

    move/from16 v12, p12

    const v0, -0x843bda

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(LazyHorizontalStaggeredGrid)P(6,4,7,1,5,9,3:c#ui.unit.Dp,2,8)154@6993L32,159@7288L15,173@7803L59,163@7399L496:LazyStaggeredGridDsl.kt#fzvcnm"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p11

    .local v1, "$dirty":I
    and-int/lit8 v2, v12, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v14, 0xe

    if-nez v2, :cond_2

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_2
    :goto_1
    and-int/lit8 v2, v12, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v4, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v14, 0x70

    if-nez v4, :cond_5

    move-object/from16 v4, p1

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v1, v5

    goto :goto_3

    :cond_5
    move-object/from16 v4, p1

    :goto_3
    and-int/lit8 v5, v12, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v1, v1, 0x80

    :cond_6
    and-int/lit8 v6, v12, 0x8

    if-eqz v6, :cond_7

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v7, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v14, 0x1c00

    if-nez v7, :cond_9

    move-object/from16 v7, p3

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x800

    goto :goto_4

    :cond_8
    const/16 v8, 0x400

    :goto_4
    or-int/2addr v1, v8

    goto :goto_5

    :cond_9
    move-object/from16 v7, p3

    :goto_5
    and-int/lit8 v8, v12, 0x10

    const v9, 0xe000

    if-eqz v8, :cond_a

    or-int/lit16 v1, v1, 0x6000

    move/from16 v10, p4

    goto :goto_7

    :cond_a
    and-int v10, v14, v9

    if-nez v10, :cond_c

    move/from16 v10, p4

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v15

    if-eqz v15, :cond_b

    const/16 v15, 0x4000

    goto :goto_6

    :cond_b
    const/16 v15, 0x2000

    :goto_6
    or-int/2addr v1, v15

    goto :goto_7

    :cond_c
    move/from16 v10, p4

    :goto_7
    and-int/lit8 v15, v12, 0x20

    const/high16 v16, 0x70000

    if-eqz v15, :cond_d

    const/high16 v17, 0x30000

    or-int v1, v1, v17

    move-object/from16 v9, p5

    goto :goto_9

    :cond_d
    and-int v17, v14, v16

    if-nez v17, :cond_f

    move-object/from16 v9, p5

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    const/high16 v17, 0x20000

    goto :goto_8

    :cond_e
    const/high16 v17, 0x10000

    :goto_8
    or-int v1, v1, v17

    goto :goto_9

    :cond_f
    move-object/from16 v9, p5

    :goto_9
    and-int/lit8 v17, v12, 0x40

    const/high16 v18, 0x380000

    if-eqz v17, :cond_10

    const/high16 v19, 0x180000

    or-int v1, v1, v19

    move/from16 v0, p6

    goto :goto_b

    :cond_10
    and-int v19, v14, v18

    if-nez v19, :cond_12

    move/from16 v0, p6

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v20

    if-eqz v20, :cond_11

    const/high16 v20, 0x100000

    goto :goto_a

    :cond_11
    const/high16 v20, 0x80000

    :goto_a
    or-int v1, v1, v20

    goto :goto_b

    :cond_12
    move/from16 v0, p6

    :goto_b
    const/high16 v20, 0x1c00000

    and-int v21, v14, v20

    if-nez v21, :cond_15

    and-int/lit16 v3, v12, 0x80

    if-nez v3, :cond_13

    move-object/from16 v3, p7

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    const/high16 v22, 0x800000

    goto :goto_c

    :cond_13
    move-object/from16 v3, p7

    :cond_14
    const/high16 v22, 0x400000

    :goto_c
    or-int v1, v1, v22

    goto :goto_d

    :cond_15
    move-object/from16 v3, p7

    :goto_d
    and-int/lit16 v0, v12, 0x100

    const/high16 v22, 0xe000000

    if-eqz v0, :cond_16

    const/high16 v23, 0x6000000

    or-int v1, v1, v23

    move/from16 v3, p8

    goto :goto_f

    :cond_16
    and-int v23, v14, v22

    if-nez v23, :cond_18

    move/from16 v3, p8

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v23

    if-eqz v23, :cond_17

    const/high16 v23, 0x4000000

    goto :goto_e

    :cond_17
    const/high16 v23, 0x2000000

    :goto_e
    or-int v1, v1, v23

    goto :goto_f

    :cond_18
    move/from16 v3, p8

    :goto_f
    and-int/lit16 v3, v12, 0x200

    if-eqz v3, :cond_19

    const/high16 v3, 0x30000000

    or-int/2addr v1, v3

    move-object/from16 v3, p9

    goto :goto_11

    :cond_19
    const/high16 v3, 0x70000000

    and-int/2addr v3, v14

    if-nez v3, :cond_1b

    move-object/from16 v3, p9

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a

    const/high16 v23, 0x20000000

    goto :goto_10

    :cond_1a
    const/high16 v23, 0x10000000

    :goto_10
    or-int v1, v1, v23

    goto :goto_11

    :cond_1b
    move-object/from16 v3, p9

    :goto_11
    const/4 v3, 0x4

    if-ne v5, v3, :cond_1d

    const v3, 0x5b6db6db

    and-int/2addr v3, v1

    const v4, 0x12492492

    if-ne v3, v4, :cond_1d

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_12

    .line 177
    :cond_1c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move/from16 v20, p6

    move-object/from16 v21, p7

    move/from16 v22, p8

    move/from16 v23, v1

    move-object/from16 v17, v7

    move-object/from16 v19, v9

    move/from16 v18, v10

    goto/16 :goto_1c

    .line 163
    :cond_1d
    :goto_12
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v3, v14, 0x1

    const v4, -0x1c00001

    if-eqz v3, :cond_21

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_13

    .line 161
    :cond_1e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    if-eqz v5, :cond_1f

    and-int/lit16 v1, v1, -0x381

    :cond_1f
    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_20

    and-int v0, v1, v4

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p7

    move v1, v0

    move-object v4, v7

    move-object v6, v9

    move v5, v10

    move/from16 v7, p6

    move/from16 v0, p8

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_1b

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_20
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p7

    move/from16 v0, p8

    move-object v4, v7

    move-object v6, v9

    move v5, v10

    move/from16 v7, p6

    goto/16 :goto_1b

    .line 163
    :cond_21
    :goto_13
    if-eqz v2, :cond_22

    .line 154
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_14

    .line 163
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_22
    move-object/from16 v2, p1

    .line 154
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_14
    if-eqz v5, :cond_23

    .line 155
    const/4 v3, 0x0

    const/4 v5, 0x3

    invoke-static {v3, v3, v11, v3, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridStateKt;->rememberLazyStaggeredGridState(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    move-result-object v3

    .end local p2    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .local v3, "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    and-int/lit16 v1, v1, -0x381

    goto :goto_15

    .line 154
    .end local v3    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .restart local p2    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    :cond_23
    move-object/from16 v3, p2

    .line 155
    .end local p2    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .restart local v3    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    :goto_15
    if-eqz v6, :cond_24

    .line 156
    const/4 v5, 0x0

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 477
    .local v6, "$i$f$getDp":I
    int-to-float v4, v5

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 156
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v4}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v4

    .end local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v4, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    goto :goto_16

    .line 155
    .end local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :cond_24
    move-object v4, v7

    .line 156
    .end local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :goto_16
    if-eqz v8, :cond_25

    .line 157
    const/4 v5, 0x0

    .end local p4    # "reverseLayout":Z
    .local v5, "reverseLayout":Z
    goto :goto_17

    .line 156
    .end local v5    # "reverseLayout":Z
    .restart local p4    # "reverseLayout":Z
    :cond_25
    move v5, v10

    .line 157
    .end local p4    # "reverseLayout":Z
    .restart local v5    # "reverseLayout":Z
    :goto_17
    if-eqz v15, :cond_26

    .line 158
    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/4 v7, 0x0

    .local v7, "$this$dp$iv":I
    const/4 v8, 0x0

    .line 478
    .local v8, "$i$f$getDp":I
    int-to-float v10, v7

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 158
    .end local v7    # "$this$dp$iv":I
    .end local v8    # "$i$f$getDp":I
    invoke-virtual {v6, v7}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .end local p5    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v6, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    goto :goto_18

    .line 157
    .end local v6    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local p5    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :cond_26
    move-object v6, v9

    .line 158
    .end local p5    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local v6    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :goto_18
    if-eqz v17, :cond_27

    .line 159
    const/4 v7, 0x0

    .restart local v7    # "$this$dp$iv":I
    const/4 v8, 0x0

    .line 479
    .restart local v8    # "$i$f$getDp":I
    int-to-float v9, v7

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .end local v8    # "$i$f$getDp":I
    .end local p6    # "horizontalItemSpacing":F
    .local v7, "horizontalItemSpacing":F
    goto :goto_19

    .line 158
    .end local v7    # "horizontalItemSpacing":F
    .restart local p6    # "horizontalItemSpacing":F
    :cond_27
    move/from16 v7, p6

    .line 479
    .end local p6    # "horizontalItemSpacing":F
    .restart local v7    # "horizontalItemSpacing":F
    :goto_19
    and-int/lit16 v8, v12, 0x80

    if-eqz v8, :cond_28

    .line 160
    sget-object v8, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    const/4 v9, 0x6

    invoke-virtual {v8, v11, v9}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->flingBehavior(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;

    move-result-object v8

    const v9, -0x1c00001

    .end local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v8, "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    and-int/2addr v1, v9

    goto :goto_1a

    .line 479
    .end local v8    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .restart local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    :cond_28
    move-object/from16 v8, p7

    .line 160
    .end local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .restart local v8    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    :goto_1a
    if-eqz v0, :cond_29

    .line 161
    const/4 v0, 0x1

    .end local p8    # "userScrollEnabled":Z
    .local v0, "userScrollEnabled":Z
    goto :goto_1b

    .line 160
    .end local v0    # "userScrollEnabled":Z
    .restart local p8    # "userScrollEnabled":Z
    :cond_29
    move/from16 v0, p8

    .line 161
    .end local p8    # "userScrollEnabled":Z
    .restart local v0    # "userScrollEnabled":Z
    :goto_1b
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 163
    const/4 v9, -0x1

    const-string/jumbo v10, "androidx.compose.foundation.lazy.staggeredgrid.LazyHorizontalStaggeredGrid (LazyStaggeredGridDsl.kt:162)"

    const v15, -0x843bda

    invoke-static {v15, v1, v9, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 166
    :cond_2a
    sget-object v9, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 171
    invoke-interface {v6}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v24

    .line 174
    and-int/lit8 v10, v1, 0xe

    shr-int/lit8 v15, v1, 0xc

    and-int/lit8 v15, v15, 0x70

    or-int/2addr v10, v15

    shr-int/lit8 v15, v1, 0x3

    and-int/lit16 v15, v15, 0x380

    or-int/2addr v10, v15

    invoke-static {v13, v6, v4, v11, v10}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt;->rememberRowSlots(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;

    move-result-object v17

    .line 167
    nop

    .line 166
    nop

    .line 174
    nop

    .line 165
    nop

    .line 168
    nop

    .line 169
    nop

    .line 172
    nop

    .line 173
    nop

    .line 170
    nop

    .line 171
    nop

    .line 175
    shl-int/lit8 v10, v1, 0x6

    and-int/lit16 v10, v10, 0x1c00

    or-int/lit8 v10, v10, 0x38

    shl-int/lit8 v15, v1, 0x3

    const v19, 0xe000

    and-int v15, v15, v19

    or-int/2addr v10, v15

    shl-int/lit8 v15, v1, 0x3

    and-int v15, v15, v16

    or-int/2addr v10, v15

    shr-int/lit8 v15, v1, 0x3

    and-int v15, v15, v18

    or-int/2addr v10, v15

    shr-int/lit8 v15, v1, 0x3

    and-int v15, v15, v20

    or-int/2addr v10, v15

    shl-int/lit8 v15, v1, 0x6

    and-int v15, v15, v22

    or-int v27, v10, v15

    shr-int/lit8 v10, v1, 0x1b

    and-int/lit8 v28, v10, 0xe

    const/16 v29, 0x0

    .line 164
    move-object v15, v3

    move-object/from16 v16, v9

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v21, v8

    move/from16 v22, v0

    move/from16 v23, v7

    move-object/from16 v25, p9

    move-object/from16 v26, v11

    invoke-static/range {v15 .. v29}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridKt;->LazyStaggeredGrid-LJWHXA8(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZFFLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_2b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 177
    :cond_2b
    move/from16 v22, v0

    move/from16 v23, v1

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v21, v8

    .end local v0    # "userScrollEnabled":Z
    .end local v1    # "$dirty":I
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .end local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .end local v5    # "reverseLayout":Z
    .end local v6    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v7    # "horizontalItemSpacing":F
    .end local v8    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v15, "modifier":Landroidx/compose/ui/Modifier;
    .local v16, "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .local v17, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v18, "reverseLayout":Z
    .local v19, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v20, "horizontalItemSpacing":F
    .local v21, "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v22, "userScrollEnabled":Z
    .local v23, "$dirty":I
    :goto_1c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_2c

    new-instance v24, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$LazyHorizontalStaggeredGrid$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    move-object/from16 v8, v21

    move/from16 v9, v22

    move-object v13, v10

    move-object/from16 v10, p9

    move-object/from16 v25, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v25, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$LazyHorizontalStaggeredGrid$1;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;II)V

    move-object/from16 v0, v24

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_1d

    .end local v25    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v11    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2c
    move-object/from16 v25, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v25    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_1d
    return-void
.end method

.method public static final LazyVerticalStaggeredGrid-zadm560(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZFLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 30
    .param p0, "columns"    # Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "state"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .param p3, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p4, "reverseLayout"    # Z
    .param p5, "verticalItemSpacing"    # F
    .param p6, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p7, "flingBehavior"    # Landroidx/compose/foundation/gestures/FlingBehavior;
    .param p8, "userScrollEnabled"    # Z
    .param p9, "content"    # Lkotlin/jvm/functions/Function1;
    .param p10, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p11, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "ZF",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 73
    move-object/from16 v13, p0

    move/from16 v14, p11

    move/from16 v12, p12

    const v0, 0x650c9692

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(LazyVerticalStaggeredGrid)P(!1,5,7,2,6,9:c#ui.unit.Dp,4,3,8)64@3068L32,69@3365L15,83@3878L67,73@3476L502:LazyStaggeredGridDsl.kt#fzvcnm"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p11

    .local v1, "$dirty":I
    and-int/lit8 v2, v12, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v14, 0xe

    if-nez v2, :cond_2

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_2
    :goto_1
    and-int/lit8 v2, v12, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v4, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v14, 0x70

    if-nez v4, :cond_5

    move-object/from16 v4, p1

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v1, v5

    goto :goto_3

    :cond_5
    move-object/from16 v4, p1

    :goto_3
    and-int/lit8 v5, v12, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v1, v1, 0x80

    :cond_6
    and-int/lit8 v6, v12, 0x8

    if-eqz v6, :cond_7

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v7, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v14, 0x1c00

    if-nez v7, :cond_9

    move-object/from16 v7, p3

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x800

    goto :goto_4

    :cond_8
    const/16 v8, 0x400

    :goto_4
    or-int/2addr v1, v8

    goto :goto_5

    :cond_9
    move-object/from16 v7, p3

    :goto_5
    and-int/lit8 v8, v12, 0x10

    const v9, 0xe000

    if-eqz v8, :cond_a

    or-int/lit16 v1, v1, 0x6000

    move/from16 v10, p4

    goto :goto_7

    :cond_a
    and-int v10, v14, v9

    if-nez v10, :cond_c

    move/from16 v10, p4

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v15

    if-eqz v15, :cond_b

    const/16 v15, 0x4000

    goto :goto_6

    :cond_b
    const/16 v15, 0x2000

    :goto_6
    or-int/2addr v1, v15

    goto :goto_7

    :cond_c
    move/from16 v10, p4

    :goto_7
    and-int/lit8 v15, v12, 0x20

    const/high16 v16, 0x70000

    if-eqz v15, :cond_d

    const/high16 v17, 0x30000

    or-int v1, v1, v17

    move/from16 v9, p5

    goto :goto_9

    :cond_d
    and-int v17, v14, v16

    if-nez v17, :cond_f

    move/from16 v9, p5

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_e

    const/high16 v17, 0x20000

    goto :goto_8

    :cond_e
    const/high16 v17, 0x10000

    :goto_8
    or-int v1, v1, v17

    goto :goto_9

    :cond_f
    move/from16 v9, p5

    :goto_9
    and-int/lit8 v17, v12, 0x40

    const/high16 v18, 0x380000

    if-eqz v17, :cond_10

    const/high16 v19, 0x180000

    or-int v1, v1, v19

    move-object/from16 v0, p6

    goto :goto_b

    :cond_10
    and-int v19, v14, v18

    if-nez v19, :cond_12

    move-object/from16 v0, p6

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    const/high16 v20, 0x100000

    goto :goto_a

    :cond_11
    const/high16 v20, 0x80000

    :goto_a
    or-int v1, v1, v20

    goto :goto_b

    :cond_12
    move-object/from16 v0, p6

    :goto_b
    const/high16 v20, 0x1c00000

    and-int v21, v14, v20

    if-nez v21, :cond_15

    and-int/lit16 v3, v12, 0x80

    if-nez v3, :cond_13

    move-object/from16 v3, p7

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    const/high16 v22, 0x800000

    goto :goto_c

    :cond_13
    move-object/from16 v3, p7

    :cond_14
    const/high16 v22, 0x400000

    :goto_c
    or-int v1, v1, v22

    goto :goto_d

    :cond_15
    move-object/from16 v3, p7

    :goto_d
    and-int/lit16 v0, v12, 0x100

    const/high16 v22, 0xe000000

    if-eqz v0, :cond_16

    const/high16 v23, 0x6000000

    or-int v1, v1, v23

    move/from16 v3, p8

    goto :goto_f

    :cond_16
    and-int v23, v14, v22

    if-nez v23, :cond_18

    move/from16 v3, p8

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v23

    if-eqz v23, :cond_17

    const/high16 v23, 0x4000000

    goto :goto_e

    :cond_17
    const/high16 v23, 0x2000000

    :goto_e
    or-int v1, v1, v23

    goto :goto_f

    :cond_18
    move/from16 v3, p8

    :goto_f
    and-int/lit16 v3, v12, 0x200

    if-eqz v3, :cond_19

    const/high16 v3, 0x30000000

    or-int/2addr v1, v3

    move-object/from16 v3, p9

    goto :goto_11

    :cond_19
    const/high16 v3, 0x70000000

    and-int/2addr v3, v14

    if-nez v3, :cond_1b

    move-object/from16 v3, p9

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a

    const/high16 v23, 0x20000000

    goto :goto_10

    :cond_1a
    const/high16 v23, 0x10000000

    :goto_10
    or-int v1, v1, v23

    goto :goto_11

    :cond_1b
    move-object/from16 v3, p9

    :goto_11
    const/4 v3, 0x4

    if-ne v5, v3, :cond_1d

    const v3, 0x5b6db6db

    and-int/2addr v3, v1

    const v4, 0x12492492

    if-ne v3, v4, :cond_1d

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_12

    .line 87
    :cond_1c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v20, p6

    move-object/from16 v21, p7

    move/from16 v22, p8

    move/from16 v23, v1

    move-object/from16 v17, v7

    move/from16 v19, v9

    move/from16 v18, v10

    goto/16 :goto_1c

    .line 73
    :cond_1d
    :goto_12
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v3, v14, 0x1

    const v4, -0x1c00001

    if-eqz v3, :cond_21

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_13

    .line 71
    :cond_1e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    if-eqz v5, :cond_1f

    and-int/lit16 v1, v1, -0x381

    :cond_1f
    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_20

    and-int v0, v1, v4

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p7

    move v1, v0

    move-object v4, v7

    move v6, v9

    move v5, v10

    move-object/from16 v7, p6

    move/from16 v0, p8

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_1b

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_20
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p7

    move/from16 v0, p8

    move-object v4, v7

    move v6, v9

    move v5, v10

    move-object/from16 v7, p6

    goto/16 :goto_1b

    .line 73
    :cond_21
    :goto_13
    if-eqz v2, :cond_22

    .line 64
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_14

    .line 73
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_22
    move-object/from16 v2, p1

    .line 64
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_14
    if-eqz v5, :cond_23

    .line 65
    const/4 v3, 0x0

    const/4 v5, 0x3

    invoke-static {v3, v3, v11, v3, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridStateKt;->rememberLazyStaggeredGridState(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    move-result-object v3

    .end local p2    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .local v3, "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    and-int/lit16 v1, v1, -0x381

    goto :goto_15

    .line 64
    .end local v3    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .restart local p2    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    :cond_23
    move-object/from16 v3, p2

    .line 65
    .end local p2    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .restart local v3    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    :goto_15
    if-eqz v6, :cond_24

    .line 66
    const/4 v5, 0x0

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 464
    .local v6, "$i$f$getDp":I
    int-to-float v4, v5

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 66
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v4}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v4

    .end local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v4, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    goto :goto_16

    .line 65
    .end local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :cond_24
    move-object v4, v7

    .line 66
    .end local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :goto_16
    if-eqz v8, :cond_25

    .line 67
    const/4 v5, 0x0

    .end local p4    # "reverseLayout":Z
    .local v5, "reverseLayout":Z
    goto :goto_17

    .line 66
    .end local v5    # "reverseLayout":Z
    .restart local p4    # "reverseLayout":Z
    :cond_25
    move v5, v10

    .line 67
    .end local p4    # "reverseLayout":Z
    .restart local v5    # "reverseLayout":Z
    :goto_17
    if-eqz v15, :cond_26

    .line 68
    const/4 v6, 0x0

    .local v6, "$this$dp$iv":I
    const/4 v7, 0x0

    .line 465
    .local v7, "$i$f$getDp":I
    int-to-float v8, v6

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .end local v7    # "$i$f$getDp":I
    .end local p5    # "verticalItemSpacing":F
    .local v6, "verticalItemSpacing":F
    goto :goto_18

    .line 67
    .end local v6    # "verticalItemSpacing":F
    .restart local p5    # "verticalItemSpacing":F
    :cond_26
    move v6, v9

    .line 465
    .end local p5    # "verticalItemSpacing":F
    .restart local v6    # "verticalItemSpacing":F
    :goto_18
    if-eqz v17, :cond_27

    .line 69
    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/4 v8, 0x0

    .local v8, "$this$dp$iv":I
    const/4 v9, 0x0

    .line 466
    .local v9, "$i$f$getDp":I
    int-to-float v10, v8

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    .line 69
    .end local v8    # "$this$dp$iv":I
    .end local v9    # "$i$f$getDp":I
    invoke-virtual {v7, v8}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .end local p6    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v7, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    goto :goto_19

    .line 465
    .end local v7    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local p6    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :cond_27
    move-object/from16 v7, p6

    .line 69
    .end local p6    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v7    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :goto_19
    and-int/lit16 v8, v12, 0x80

    if-eqz v8, :cond_28

    .line 70
    sget-object v8, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    const/4 v9, 0x6

    invoke-virtual {v8, v11, v9}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->flingBehavior(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;

    move-result-object v8

    const v9, -0x1c00001

    .end local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v8, "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    and-int/2addr v1, v9

    goto :goto_1a

    .line 69
    .end local v8    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .restart local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    :cond_28
    move-object/from16 v8, p7

    .line 70
    .end local p7    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .restart local v8    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    :goto_1a
    if-eqz v0, :cond_29

    .line 71
    const/4 v0, 0x1

    .end local p8    # "userScrollEnabled":Z
    .local v0, "userScrollEnabled":Z
    goto :goto_1b

    .line 70
    .end local v0    # "userScrollEnabled":Z
    .restart local p8    # "userScrollEnabled":Z
    :cond_29
    move/from16 v0, p8

    .line 71
    .end local p8    # "userScrollEnabled":Z
    .restart local v0    # "userScrollEnabled":Z
    :goto_1b
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 73
    const/4 v9, -0x1

    const-string/jumbo v10, "androidx.compose.foundation.lazy.staggeredgrid.LazyVerticalStaggeredGrid (LazyStaggeredGridDsl.kt:72)"

    const v15, 0x650c9692

    invoke-static {v15, v1, v9, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 76
    :cond_2a
    sget-object v9, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 81
    invoke-interface {v7}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v24

    .line 84
    and-int/lit8 v10, v1, 0xe

    shr-int/lit8 v15, v1, 0xf

    and-int/lit8 v15, v15, 0x70

    or-int/2addr v10, v15

    shr-int/lit8 v15, v1, 0x3

    and-int/lit16 v15, v15, 0x380

    or-int/2addr v10, v15

    invoke-static {v13, v7, v4, v11, v10}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt;->rememberColumnSlots(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;

    move-result-object v17

    .line 77
    nop

    .line 76
    nop

    .line 84
    nop

    .line 75
    nop

    .line 78
    nop

    .line 79
    nop

    .line 82
    nop

    .line 83
    nop

    .line 80
    nop

    .line 81
    nop

    .line 85
    shl-int/lit8 v10, v1, 0x6

    and-int/lit16 v10, v10, 0x1c00

    or-int/lit8 v10, v10, 0x38

    shl-int/lit8 v15, v1, 0x3

    const v19, 0xe000

    and-int v15, v15, v19

    or-int/2addr v10, v15

    shl-int/lit8 v15, v1, 0x3

    and-int v15, v15, v16

    or-int/2addr v10, v15

    shr-int/lit8 v15, v1, 0x3

    and-int v15, v15, v18

    or-int/2addr v10, v15

    shr-int/lit8 v15, v1, 0x3

    and-int v15, v15, v20

    or-int/2addr v10, v15

    shl-int/lit8 v15, v1, 0x9

    and-int v15, v15, v22

    or-int v27, v10, v15

    shr-int/lit8 v10, v1, 0x1b

    and-int/lit8 v28, v10, 0xe

    const/16 v29, 0x0

    .line 74
    move-object v15, v3

    move-object/from16 v16, v9

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v21, v8

    move/from16 v22, v0

    move/from16 v23, v6

    move-object/from16 v25, p9

    move-object/from16 v26, v11

    invoke-static/range {v15 .. v29}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridKt;->LazyStaggeredGrid-LJWHXA8(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZFFLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_2b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 87
    :cond_2b
    move/from16 v22, v0

    move/from16 v23, v1

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    .end local v0    # "userScrollEnabled":Z
    .end local v1    # "$dirty":I
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .end local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .end local v5    # "reverseLayout":Z
    .end local v6    # "verticalItemSpacing":F
    .end local v7    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v8    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v15, "modifier":Landroidx/compose/ui/Modifier;
    .local v16, "state":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .local v17, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v18, "reverseLayout":Z
    .local v19, "verticalItemSpacing":F
    .local v20, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v21, "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v22, "userScrollEnabled":Z
    .local v23, "$dirty":I
    :goto_1c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_2c

    new-instance v24, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$LazyVerticalStaggeredGrid$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move/from16 v9, v22

    move-object v13, v10

    move-object/from16 v10, p9

    move-object/from16 v25, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v25, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$LazyVerticalStaggeredGrid$1;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValues;ZFLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;II)V

    move-object/from16 v0, v24

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_1d

    .end local v25    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v11    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2c
    move-object/from16 v25, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v25    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_1d
    return-void
.end method

.method public static final items(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V
    .locals 8
    .param p0, "$this$items"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    .param p1, "items"    # Ljava/util/List;
    .param p2, "key"    # Lkotlin/jvm/functions/Function1;
    .param p3, "contentType"    # Lkotlin/jvm/functions/Function1;
    .param p4, "span"    # Lkotlin/jvm/functions/Function1;
    .param p5, "itemContent"    # Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScope;",
            "-TT;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 334
    .local v0, "$i$f$items":I
    nop

    .line 335
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 336
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move-object v3, p2

    .local v3, "it":Lkotlin/jvm/functions/Function1;
    const/4 v4, 0x0

    .line 337
    .local v4, "$i$a$-let-LazyStaggeredGridDslKt$items$2":I
    new-instance v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$2$1;

    invoke-direct {v5, p2, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$2$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 336
    .end local v3    # "it":Lkotlin/jvm/functions/Function1;
    .end local v4    # "$i$a$-let-LazyStaggeredGridDslKt$items$2":I
    move-object v3, v5

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 334
    :goto_0
    new-instance v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$3;

    invoke-direct {v4, p3, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 340
    if-eqz p4, :cond_1

    move-object v1, p4

    .local v1, "it":Lkotlin/jvm/functions/Function1;
    const/4 v5, 0x0

    .line 341
    .local v5, "$i$a$-let-LazyStaggeredGridDslKt$items$4":I
    new-instance v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$4$1;

    invoke-direct {v6, p4, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$4$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 340
    .end local v1    # "it":Lkotlin/jvm/functions/Function1;
    .end local v5    # "$i$a$-let-LazyStaggeredGridDslKt$items$4":I
    move-object v5, v6

    goto :goto_1

    :cond_1
    move-object v5, v1

    .line 343
    :goto_1
    new-instance v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$5;

    invoke-direct {v1, p5, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$5;-><init>(Lkotlin/jvm/functions/Function4;Ljava/util/List;)V

    const v6, -0x34d6409f    # -1.1124577E7f

    const/4 v7, 0x1

    invoke-static {v6, v7, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function4;

    .line 334
    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 345
    return-void
.end method

.method public static final items(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V
    .locals 8
    .param p0, "$this$items"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    .param p1, "items"    # [Ljava/lang/Object;
    .param p2, "key"    # Lkotlin/jvm/functions/Function1;
    .param p3, "contentType"    # Lkotlin/jvm/functions/Function1;
    .param p4, "span"    # Lkotlin/jvm/functions/Function1;
    .param p5, "itemContent"    # Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;",
            "[TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScope;",
            "-TT;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 412
    .local v0, "$i$f$items":I
    nop

    .line 413
    array-length v2, p1

    .line 414
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move-object v3, p2

    .local v3, "it":Lkotlin/jvm/functions/Function1;
    const/4 v4, 0x0

    .line 415
    .local v4, "$i$a$-let-LazyStaggeredGridDslKt$items$7":I
    new-instance v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$7$1;

    invoke-direct {v5, p2, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$7$1;-><init>(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 414
    .end local v3    # "it":Lkotlin/jvm/functions/Function1;
    .end local v4    # "$i$a$-let-LazyStaggeredGridDslKt$items$7":I
    move-object v3, v5

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 412
    :goto_0
    new-instance v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$8;

    invoke-direct {v4, p3, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$8;-><init>(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 418
    if-eqz p4, :cond_1

    move-object v1, p4

    .local v1, "it":Lkotlin/jvm/functions/Function1;
    const/4 v5, 0x0

    .line 419
    .local v5, "$i$a$-let-LazyStaggeredGridDslKt$items$9":I
    new-instance v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$9$1;

    invoke-direct {v6, p4, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$9$1;-><init>(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 418
    .end local v1    # "it":Lkotlin/jvm/functions/Function1;
    .end local v5    # "$i$a$-let-LazyStaggeredGridDslKt$items$9":I
    move-object v5, v6

    goto :goto_1

    :cond_1
    move-object v5, v1

    .line 421
    :goto_1
    new-instance v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$10;

    invoke-direct {v1, p5, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$10;-><init>(Lkotlin/jvm/functions/Function4;[Ljava/lang/Object;)V

    const v6, 0x7d3f3b80

    const/4 v7, 0x1

    invoke-static {v6, v7, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function4;

    .line 412
    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 423
    return-void
.end method

.method public static synthetic items$default(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V
    .locals 6
    .param p0, "$this$items_u24default"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    .param p1, "items"    # Ljava/util/List;
    .param p2, "key"    # Lkotlin/jvm/functions/Function1;
    .param p3, "contentType"    # Lkotlin/jvm/functions/Function1;
    .param p4, "span"    # Lkotlin/jvm/functions/Function1;
    .param p5, "itemContent"    # Lkotlin/jvm/functions/Function4;

    .line 327
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 329
    const/4 p2, 0x0

    .line 327
    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    .line 330
    sget-object p7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$1;->INSTANCE:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$1;

    move-object p3, p7

    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 327
    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    .line 331
    const/4 p4, 0x0

    .line 327
    :cond_2
    const/4 p6, 0x0

    .line 334
    .local p6, "$i$f$items":I
    nop

    .line 335
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 336
    const/4 p7, 0x0

    if-eqz p2, :cond_3

    move-object v0, p2

    .local v0, "it":Lkotlin/jvm/functions/Function1;
    const/4 v2, 0x0

    .line 337
    .local v2, "$i$a$-let-LazyStaggeredGridDslKt$items$2":I
    new-instance v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$2$1;

    invoke-direct {v3, p2, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$2$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 336
    .end local v0    # "it":Lkotlin/jvm/functions/Function1;
    .end local v2    # "$i$a$-let-LazyStaggeredGridDslKt$items$2":I
    move-object v2, v3

    goto :goto_0

    :cond_3
    move-object v2, p7

    .line 334
    :goto_0
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$3;

    invoke-direct {v0, p3, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 340
    if-eqz p4, :cond_4

    move-object p7, p4

    .local p7, "it":Lkotlin/jvm/functions/Function1;
    const/4 v0, 0x0

    .line 341
    .local v0, "$i$a$-let-LazyStaggeredGridDslKt$items$4":I
    new-instance v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$4$1;

    invoke-direct {v4, p4, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$4$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 340
    .end local v0    # "$i$a$-let-LazyStaggeredGridDslKt$items$4":I
    .end local p7    # "it":Lkotlin/jvm/functions/Function1;
    goto :goto_1

    :cond_4
    move-object v4, p7

    .line 343
    :goto_1
    new-instance p7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$5;

    invoke-direct {p7, p5, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$5;-><init>(Lkotlin/jvm/functions/Function4;Ljava/util/List;)V

    const v0, -0x34d6409f    # -1.1124577E7f

    const/4 v5, 0x1

    invoke-static {v0, v5, p7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p7

    move-object v5, p7

    check-cast v5, Lkotlin/jvm/functions/Function4;

    .line 334
    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 345
    return-void
.end method

.method public static synthetic items$default(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V
    .locals 6
    .param p0, "$this$items_u24default"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    .param p1, "items"    # [Ljava/lang/Object;
    .param p2, "key"    # Lkotlin/jvm/functions/Function1;
    .param p3, "contentType"    # Lkotlin/jvm/functions/Function1;
    .param p4, "span"    # Lkotlin/jvm/functions/Function1;
    .param p5, "itemContent"    # Lkotlin/jvm/functions/Function4;

    .line 405
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 407
    const/4 p2, 0x0

    .line 405
    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    .line 408
    sget-object p7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$6;->INSTANCE:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$6;

    move-object p3, p7

    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 405
    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    .line 409
    const/4 p4, 0x0

    .line 405
    :cond_2
    const/4 p6, 0x0

    .line 412
    .local p6, "$i$f$items":I
    nop

    .line 413
    array-length v1, p1

    .line 414
    const/4 p7, 0x0

    if-eqz p2, :cond_3

    move-object v0, p2

    .local v0, "it":Lkotlin/jvm/functions/Function1;
    const/4 v2, 0x0

    .line 415
    .local v2, "$i$a$-let-LazyStaggeredGridDslKt$items$7":I
    new-instance v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$7$1;

    invoke-direct {v3, p2, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$7$1;-><init>(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 414
    .end local v0    # "it":Lkotlin/jvm/functions/Function1;
    .end local v2    # "$i$a$-let-LazyStaggeredGridDslKt$items$7":I
    move-object v2, v3

    goto :goto_0

    :cond_3
    move-object v2, p7

    .line 412
    :goto_0
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$8;

    invoke-direct {v0, p3, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$8;-><init>(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 418
    if-eqz p4, :cond_4

    move-object p7, p4

    .local p7, "it":Lkotlin/jvm/functions/Function1;
    const/4 v0, 0x0

    .line 419
    .local v0, "$i$a$-let-LazyStaggeredGridDslKt$items$9":I
    new-instance v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$9$1;

    invoke-direct {v4, p4, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$9$1;-><init>(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 418
    .end local v0    # "$i$a$-let-LazyStaggeredGridDslKt$items$9":I
    .end local p7    # "it":Lkotlin/jvm/functions/Function1;
    goto :goto_1

    :cond_4
    move-object v4, p7

    .line 421
    :goto_1
    new-instance p7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$10;

    invoke-direct {p7, p5, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$items$10;-><init>(Lkotlin/jvm/functions/Function4;[Ljava/lang/Object;)V

    const v0, 0x7d3f3b80

    const/4 v5, 0x1

    invoke-static {v0, v5, p7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p7

    move-object v5, p7

    check-cast v5, Lkotlin/jvm/functions/Function4;

    .line 412
    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 423
    return-void
.end method

.method public static final itemsIndexed(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;)V
    .locals 8
    .param p0, "$this$itemsIndexed"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    .param p1, "items"    # Ljava/util/List;
    .param p2, "key"    # Lkotlin/jvm/functions/Function2;
    .param p3, "contentType"    # Lkotlin/jvm/functions/Function2;
    .param p4, "span"    # Lkotlin/jvm/functions/Function2;
    .param p5, "itemContent"    # Lkotlin/jvm/functions/Function5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;",
            "Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;",
            ">;",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScope;",
            "-",
            "Ljava/lang/Integer;",
            "-TT;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 373
    .local v0, "$i$f$itemsIndexed":I
    nop

    .line 374
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 375
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move-object v3, p2

    .local v3, "it":Lkotlin/jvm/functions/Function2;
    const/4 v4, 0x0

    .line 376
    .local v4, "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$2":I
    new-instance v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$2$1;

    invoke-direct {v5, p2, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$2$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 375
    .end local v3    # "it":Lkotlin/jvm/functions/Function2;
    .end local v4    # "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$2":I
    move-object v3, v5

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 373
    :goto_0
    new-instance v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$3;

    invoke-direct {v4, p3, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$3;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 379
    if-eqz p4, :cond_1

    move-object v1, p4

    .local v1, "it":Lkotlin/jvm/functions/Function2;
    const/4 v5, 0x0

    .line 380
    .local v5, "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$4":I
    new-instance v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$4$1;

    invoke-direct {v6, p4, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$4$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 379
    .end local v1    # "it":Lkotlin/jvm/functions/Function2;
    .end local v5    # "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$4":I
    move-object v5, v6

    goto :goto_1

    :cond_1
    move-object v5, v1

    .line 382
    :goto_1
    new-instance v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$5;

    invoke-direct {v1, p5, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$5;-><init>(Lkotlin/jvm/functions/Function5;Ljava/util/List;)V

    const v6, 0x10fa3898

    const/4 v7, 0x1

    invoke-static {v6, v7, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function4;

    .line 373
    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 384
    return-void
.end method

.method public static final itemsIndexed(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;)V
    .locals 8
    .param p0, "$this$itemsIndexed"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    .param p1, "items"    # [Ljava/lang/Object;
    .param p2, "key"    # Lkotlin/jvm/functions/Function2;
    .param p3, "contentType"    # Lkotlin/jvm/functions/Function2;
    .param p4, "span"    # Lkotlin/jvm/functions/Function2;
    .param p5, "itemContent"    # Lkotlin/jvm/functions/Function5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;",
            "[TT;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;",
            "Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;",
            ">;",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScope;",
            "-",
            "Ljava/lang/Integer;",
            "-TT;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 451
    .local v0, "$i$f$itemsIndexed":I
    nop

    .line 452
    array-length v2, p1

    .line 453
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move-object v3, p2

    .local v3, "it":Lkotlin/jvm/functions/Function2;
    const/4 v4, 0x0

    .line 454
    .local v4, "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$7":I
    new-instance v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$7$1;

    invoke-direct {v5, p2, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$7$1;-><init>(Lkotlin/jvm/functions/Function2;[Ljava/lang/Object;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 453
    .end local v3    # "it":Lkotlin/jvm/functions/Function2;
    .end local v4    # "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$7":I
    move-object v3, v5

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 451
    :goto_0
    new-instance v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$8;

    invoke-direct {v4, p3, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$8;-><init>(Lkotlin/jvm/functions/Function2;[Ljava/lang/Object;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 457
    if-eqz p4, :cond_1

    move-object v1, p4

    .local v1, "it":Lkotlin/jvm/functions/Function2;
    const/4 v5, 0x0

    .line 458
    .local v5, "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$9":I
    new-instance v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$9$1;

    invoke-direct {v6, p4, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$9$1;-><init>(Lkotlin/jvm/functions/Function2;[Ljava/lang/Object;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 457
    .end local v1    # "it":Lkotlin/jvm/functions/Function2;
    .end local v5    # "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$9":I
    move-object v5, v6

    goto :goto_1

    :cond_1
    move-object v5, v1

    .line 460
    :goto_1
    new-instance v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$10;

    invoke-direct {v1, p5, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$10;-><init>(Lkotlin/jvm/functions/Function5;[Ljava/lang/Object;)V

    const v6, -0x2ff3825f

    const/4 v7, 0x1

    invoke-static {v6, v7, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function4;

    .line 451
    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 462
    return-void
.end method

.method public static synthetic itemsIndexed$default(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;ILjava/lang/Object;)V
    .locals 6
    .param p0, "$this$itemsIndexed_u24default"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    .param p1, "items"    # Ljava/util/List;
    .param p2, "key"    # Lkotlin/jvm/functions/Function2;
    .param p3, "contentType"    # Lkotlin/jvm/functions/Function2;
    .param p4, "span"    # Lkotlin/jvm/functions/Function2;
    .param p5, "itemContent"    # Lkotlin/jvm/functions/Function5;

    .line 366
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 368
    const/4 p2, 0x0

    .line 366
    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    .line 369
    sget-object p7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$1;->INSTANCE:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$1;

    move-object p3, p7

    check-cast p3, Lkotlin/jvm/functions/Function2;

    .line 366
    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    .line 370
    const/4 p4, 0x0

    .line 366
    :cond_2
    const/4 p6, 0x0

    .line 373
    .local p6, "$i$f$itemsIndexed":I
    nop

    .line 374
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 375
    const/4 p7, 0x0

    if-eqz p2, :cond_3

    move-object v0, p2

    .local v0, "it":Lkotlin/jvm/functions/Function2;
    const/4 v2, 0x0

    .line 376
    .local v2, "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$2":I
    new-instance v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$2$1;

    invoke-direct {v3, p2, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$2$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 375
    .end local v0    # "it":Lkotlin/jvm/functions/Function2;
    .end local v2    # "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$2":I
    move-object v2, v3

    goto :goto_0

    :cond_3
    move-object v2, p7

    .line 373
    :goto_0
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$3;

    invoke-direct {v0, p3, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$3;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 379
    if-eqz p4, :cond_4

    move-object p7, p4

    .local p7, "it":Lkotlin/jvm/functions/Function2;
    const/4 v0, 0x0

    .line 380
    .local v0, "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$4":I
    new-instance v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$4$1;

    invoke-direct {v4, p4, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$4$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 379
    .end local v0    # "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$4":I
    .end local p7    # "it":Lkotlin/jvm/functions/Function2;
    goto :goto_1

    :cond_4
    move-object v4, p7

    .line 382
    :goto_1
    new-instance p7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$5;

    invoke-direct {p7, p5, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$5;-><init>(Lkotlin/jvm/functions/Function5;Ljava/util/List;)V

    const v0, 0x10fa3898

    const/4 v5, 0x1

    invoke-static {v0, v5, p7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p7

    move-object v5, p7

    check-cast v5, Lkotlin/jvm/functions/Function4;

    .line 373
    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 384
    return-void
.end method

.method public static synthetic itemsIndexed$default(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;ILjava/lang/Object;)V
    .locals 6
    .param p0, "$this$itemsIndexed_u24default"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;
    .param p1, "items"    # [Ljava/lang/Object;
    .param p2, "key"    # Lkotlin/jvm/functions/Function2;
    .param p3, "contentType"    # Lkotlin/jvm/functions/Function2;
    .param p4, "span"    # Lkotlin/jvm/functions/Function2;
    .param p5, "itemContent"    # Lkotlin/jvm/functions/Function5;

    .line 444
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 446
    const/4 p2, 0x0

    .line 444
    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    .line 447
    sget-object p7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$6;->INSTANCE:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$6;

    move-object p3, p7

    check-cast p3, Lkotlin/jvm/functions/Function2;

    .line 444
    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    .line 448
    const/4 p4, 0x0

    .line 444
    :cond_2
    const/4 p6, 0x0

    .line 451
    .local p6, "$i$f$itemsIndexed":I
    nop

    .line 452
    array-length v1, p1

    .line 453
    const/4 p7, 0x0

    if-eqz p2, :cond_3

    move-object v0, p2

    .local v0, "it":Lkotlin/jvm/functions/Function2;
    const/4 v2, 0x0

    .line 454
    .local v2, "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$7":I
    new-instance v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$7$1;

    invoke-direct {v3, p2, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$7$1;-><init>(Lkotlin/jvm/functions/Function2;[Ljava/lang/Object;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 453
    .end local v0    # "it":Lkotlin/jvm/functions/Function2;
    .end local v2    # "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$7":I
    move-object v2, v3

    goto :goto_0

    :cond_3
    move-object v2, p7

    .line 451
    :goto_0
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$8;

    invoke-direct {v0, p3, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$8;-><init>(Lkotlin/jvm/functions/Function2;[Ljava/lang/Object;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 457
    if-eqz p4, :cond_4

    move-object p7, p4

    .local p7, "it":Lkotlin/jvm/functions/Function2;
    const/4 v0, 0x0

    .line 458
    .local v0, "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$9":I
    new-instance v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$9$1;

    invoke-direct {v4, p4, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$9$1;-><init>(Lkotlin/jvm/functions/Function2;[Ljava/lang/Object;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 457
    .end local v0    # "$i$a$-let-LazyStaggeredGridDslKt$itemsIndexed$9":I
    .end local p7    # "it":Lkotlin/jvm/functions/Function2;
    goto :goto_1

    :cond_4
    move-object v4, p7

    .line 460
    :goto_1
    new-instance p7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$10;

    invoke-direct {p7, p5, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$itemsIndexed$10;-><init>(Lkotlin/jvm/functions/Function5;[Ljava/lang/Object;)V

    const v0, -0x2ff3825f

    const/4 v5, 0x1

    invoke-static {v0, v5, p7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p7

    move-object v5, p7

    check-cast v5, Lkotlin/jvm/functions/Function4;

    .line 451
    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 462
    return-void
.end method

.method private static final rememberColumnSlots(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;
    .locals 10
    .param p0, "columns"    # Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;
    .param p1, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p2, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    const v0, -0x4b860ee9

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberColumnSlots)P(!1,2)94@4216L1114:LazyStaggeredGridDsl.kt#fzvcnm"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.lazy.staggeredgrid.rememberColumnSlots (LazyStaggeredGridDsl.kt:94)"

    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p4, 0xe

    and-int/lit8 v1, p4, 0x70

    or-int/2addr v0, v1

    and-int/lit16 v1, p4, 0x380

    or-int/2addr v0, v1

    .local v0, "$changed$iv":I
    const/4 v1, 0x0

    .local v1, "$i$f$remember":I
    const v2, 0x607fb4c4

    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {p3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 467
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    .line 468
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 467
    or-int/2addr v2, v3

    .line 469
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 467
    or-int/2addr v2, v3

    .line 470
    move-object v3, p3

    .local v2, "invalid$iv$iv":Z
    .local v3, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 471
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 472
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v2, :cond_2

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_1

    goto :goto_0

    .line 476
    :cond_1
    move-object v7, v5

    goto :goto_1

    .line 473
    :cond_2
    :goto_0
    const/4 v7, 0x0

    .line 100
    .local v7, "$i$a$-remember-LazyStaggeredGridDslKt$rememberColumnSlots$1":I
    new-instance v8, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlotCache;

    new-instance v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$rememberColumnSlots$1$1;

    invoke-direct {v9, p2, p0, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$rememberColumnSlots$1$1;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/foundation/layout/Arrangement$Horizontal;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-direct {v8, v9}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlotCache;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v8, Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;

    .line 473
    .end local v7    # "$i$a$-remember-LazyStaggeredGridDslKt$rememberColumnSlots$1":I
    move-object v7, v8

    .line 474
    .local v7, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 475
    nop

    .line 472
    .end local v7    # "value$iv$iv":Ljava/lang/Object;
    :goto_1
    nop

    .line 471
    .end local v5    # "it$iv$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 470
    .end local v2    # "invalid$iv$iv":Z
    .end local v3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 95
    .end local v0    # "$changed$iv":I
    .end local v1    # "$i$f$remember":I
    check-cast v7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v7
.end method

.method private static final rememberRowSlots(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;
    .locals 10
    .param p0, "rows"    # Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;
    .param p1, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p2, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    const v0, -0x5b564f4d

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberRowSlots)P(1,2)184@8120L940:LazyStaggeredGridDsl.kt#fzvcnm"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.lazy.staggeredgrid.rememberRowSlots (LazyStaggeredGridDsl.kt:184)"

    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p4, 0xe

    and-int/lit8 v1, p4, 0x70

    or-int/2addr v0, v1

    and-int/lit16 v1, p4, 0x380

    or-int/2addr v0, v1

    .local v0, "$changed$iv":I
    const/4 v1, 0x0

    .local v1, "$i$f$remember":I
    const v2, 0x607fb4c4

    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {p3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 480
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    .line 481
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 480
    or-int/2addr v2, v3

    .line 482
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 480
    or-int/2addr v2, v3

    .line 483
    move-object v3, p3

    .local v2, "invalid$iv$iv":Z
    .local v3, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 484
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 485
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v2, :cond_2

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_1

    goto :goto_0

    .line 489
    :cond_1
    move-object v7, v5

    goto :goto_1

    .line 486
    :cond_2
    :goto_0
    const/4 v7, 0x0

    .line 190
    .local v7, "$i$a$-remember-LazyStaggeredGridDslKt$rememberRowSlots$1":I
    new-instance v8, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlotCache;

    new-instance v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$rememberRowSlots$1$1;

    invoke-direct {v9, p2, p0, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt$rememberRowSlots$1$1;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;Landroidx/compose/foundation/layout/Arrangement$Vertical;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-direct {v8, v9}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlotCache;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v8, Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;

    .line 486
    .end local v7    # "$i$a$-remember-LazyStaggeredGridDslKt$rememberRowSlots$1":I
    move-object v7, v8

    .line 487
    .local v7, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 488
    nop

    .line 485
    .end local v7    # "value$iv$iv":Ljava/lang/Object;
    :goto_1
    nop

    .line 484
    .end local v5    # "it$iv$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 483
    .end local v2    # "invalid$iv$iv":Z
    .end local v3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 185
    .end local v0    # "$changed$iv":I
    .end local v1    # "$i$f$remember":I
    check-cast v7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v7
.end method
