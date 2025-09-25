.class final Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyGrid.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/grid/LazyGridKt;->rememberLazyGridMeasurePolicy(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGrid.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGrid.kt\nandroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 3 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n*L\n1#1,376:1\n495#2,4:377\n500#2:386\n129#3,5:381\n*S KotlinDebug\n*F\n+ 1 LazyGrid.kt\nandroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1\n*L\n321#1:377,4\n321#1:386\n321#1:381,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
        "containerConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "invoke-0kLqBqw",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;"
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
.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field final synthetic $isVertical:Z

.field final synthetic $itemProviderLambda:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $reverseLayout:Z

.field final synthetic $slots:Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;

.field final synthetic $state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method constructor <init>(ZLandroidx/compose/foundation/layout/PaddingValues;ZLkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;",
            ">;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    iput-object p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$slots:Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;

    iput-object p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p8, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-object p9, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 177
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->invoke-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public final invoke-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    .locals 56
    .param p1, "$this$null"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
    .param p2, "containerConstraints"    # J

    .line 179
    move-object/from16 v1, p0

    move-object/from16 v13, p1

    move-wide/from16 v14, p2

    .line 180
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 178
    :goto_0
    invoke-static {v14, v15, v0}, Landroidx/compose/foundation/CheckScrollableContainerConstraintsKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 185
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-interface {v0, v2}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    invoke-interface {v13, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    goto :goto_1

    .line 189
    :cond_1
    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/PaddingKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    invoke-interface {v13, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    .line 185
    :goto_1
    nop

    .line 184
    move v10, v0

    .line 193
    .local v10, "startPadding":I
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-interface {v0, v2}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    invoke-interface {v13, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    goto :goto_2

    .line 197
    :cond_2
    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/PaddingKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    invoke-interface {v13, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    .line 193
    :goto_2
    nop

    .line 192
    move/from16 v16, v0

    .line 199
    .local v16, "endPadding":I
    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v0

    invoke-interface {v13, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v9

    .line 200
    .local v9, "topPadding":I
    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v0

    invoke-interface {v13, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v17

    .line 201
    .local v17, "bottomPadding":I
    add-int v8, v9, v17

    .line 202
    .local v8, "totalVerticalPadding":I
    add-int v7, v10, v16

    .line 203
    .local v7, "totalHorizontalPadding":I
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_3

    move v0, v8

    goto :goto_3

    :cond_3
    move v0, v7

    :goto_3
    move/from16 v18, v0

    .line 204
    .local v18, "totalMainAxisPadding":I
    nop

    .line 205
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_4

    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    if-nez v0, :cond_4

    move v0, v9

    goto :goto_4

    .line 206
    :cond_4
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_5

    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    if-eqz v0, :cond_5

    move/from16 v0, v17

    goto :goto_4

    .line 207
    :cond_5
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-nez v0, :cond_6

    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    if-nez v0, :cond_6

    move v0, v10

    goto :goto_4

    .line 208
    :cond_6
    move/from16 v0, v16

    .line 204
    :goto_4
    move/from16 v42, v0

    .line 210
    .local v42, "beforeContentPadding":I
    sub-int v43, v18, v42

    .line 212
    .local v43, "afterContentPadding":I
    neg-int v0, v7

    neg-int v2, v8

    invoke-static {v14, v15, v0, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v29

    .line 211
    nop

    .line 214
    .local v29, "contentConstraints":J
    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    .line 215
    .local v6, "itemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    invoke-interface {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;->getSpanLayoutProvider()Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    move-result-object v5

    .line 216
    .local v5, "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$slots:Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;

    move-object v2, v13

    check-cast v2, Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, v2, v14, v15}, Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;->invoke-0kLqBqw(Landroidx/compose/ui/unit/Density;J)Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    move-result-object v44

    .line 217
    .local v44, "resolvedSlots":Landroidx/compose/foundation/lazy/grid/LazyGridSlots;
    invoke-virtual/range {v44 .. v44}, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;->getSizes()[I

    move-result-object v0

    array-length v4, v0

    .line 218
    .local v4, "slotsPerLine":I
    invoke-virtual {v5, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->setSlotsPerLine(I)V

    .line 221
    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    move-object v2, v13

    check-cast v2, Landroidx/compose/ui/unit/Density;

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->setDensity$foundation_release(Landroidx/compose/ui/unit/Density;)V

    .line 222
    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->setSlotsPerLine$foundation_release(I)V

    .line 224
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_8

    .line 225
    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    if-eqz v0, :cond_7

    .line 227
    invoke-interface {v0}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v0

    goto :goto_5

    .line 225
    :cond_7
    const/4 v0, 0x0

    .line 226
    .local v0, "$i$a$-requireNotNull-LazyGridKt$rememberLazyGridMeasurePolicy$1$1$spaceBetweenLinesDp$1":I
    nop

    .line 225
    .end local v0    # "$i$a$-requireNotNull-LazyGridKt$rememberLazyGridMeasurePolicy$1$1$spaceBetweenLinesDp$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "null verticalArrangement when isVertical == true"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_8
    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    if-eqz v0, :cond_10

    .line 231
    invoke-interface {v0}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v0

    .line 224
    :goto_5
    move v3, v0

    .line 233
    .local v3, "spaceBetweenLinesDp":F
    invoke-interface {v13, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v45

    .line 234
    .local v45, "spaceBetweenLines":I
    invoke-interface {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;->getItemCount()I

    move-result v2

    .line 237
    .local v2, "itemsCount":I
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_9

    .line 238
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    sub-int/2addr v0, v8

    goto :goto_6

    .line 240
    :cond_9
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    sub-int/2addr v0, v7

    .line 237
    :goto_6
    move/from16 v46, v0

    .line 242
    .local v46, "mainAxisAvailableSize":I
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    if-eqz v0, :cond_d

    if-lez v46, :cond_a

    goto :goto_9

    .line 249
    :cond_a
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_b

    move v0, v10

    goto :goto_7

    :cond_b
    add-int v0, v10, v46

    .line 250
    :goto_7
    iget-boolean v11, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v11, :cond_c

    add-int v11, v9, v46

    goto :goto_8

    :cond_c
    move v11, v9

    .line 248
    :goto_8
    invoke-static {v0, v11}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v11

    goto :goto_a

    .line 243
    :cond_d
    :goto_9
    invoke-static {v10, v9}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v11

    .line 242
    :goto_a
    nop

    .line 254
    .local v11, "visualItemOffset":J
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;

    move/from16 v19, v7

    .end local v7    # "totalHorizontalPadding":I
    .local v19, "totalHorizontalPadding":I
    iget-object v7, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    move/from16 v20, v8

    .end local v8    # "totalVerticalPadding":I
    .local v20, "totalVerticalPadding":I
    iget-boolean v8, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    move/from16 v21, v9

    .end local v9    # "topPadding":I
    .local v21, "topPadding":I
    iget-boolean v9, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    move/from16 v47, v2

    .end local v2    # "itemsCount":I
    .local v47, "itemsCount":I
    move-object v2, v0

    move/from16 v48, v3

    .end local v3    # "spaceBetweenLinesDp":F
    .local v48, "spaceBetweenLinesDp":F
    move-object v3, v6

    move/from16 v49, v4

    .end local v4    # "slotsPerLine":I
    .local v49, "slotsPerLine":I
    move-object/from16 v4, p1

    move-object/from16 v50, v5

    .end local v5    # "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .local v50, "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    move/from16 v5, v45

    move-object v14, v6

    .end local v6    # "itemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    .local v14, "itemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    move-object v6, v7

    move/from16 v15, v19

    .end local v19    # "totalHorizontalPadding":I
    .local v15, "totalHorizontalPadding":I
    move v7, v8

    move/from16 v51, v20

    .end local v20    # "totalVerticalPadding":I
    .local v51, "totalVerticalPadding":I
    move v8, v9

    move/from16 v52, v21

    .end local v21    # "topPadding":I
    .local v52, "topPadding":I
    move/from16 v9, v42

    move/from16 v53, v10

    .end local v10    # "startPadding":I
    .local v53, "startPadding":I
    move/from16 v10, v43

    invoke-direct/range {v2 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;ILandroidx/compose/foundation/lazy/grid/LazyGridState;ZZIIJ)V

    move-object v8, v0

    .line 282
    .local v8, "measuredItemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;

    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    move-object/from16 v19, v0

    move/from16 v20, v2

    move-object/from16 v21, v44

    move/from16 v22, v47

    move/from16 v23, v45

    move-object/from16 v24, v8

    move-object/from16 v25, v50

    invoke-direct/range {v19 .. v25}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;-><init>(ZLandroidx/compose/foundation/lazy/grid/LazyGridSlots;IILandroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;)V

    move-object v9, v0

    .line 304
    .local v9, "measuredLineProvider":Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$1;

    move-object/from16 v10, v50

    .end local v50    # "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .local v10, "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    invoke-direct {v2, v10, v9}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->setPrefetchInfoRetriever$foundation_release(Lkotlin/jvm/functions/Function1;)V

    .line 318
    const/4 v2, 0x0

    .line 319
    .local v2, "firstVisibleLineIndex":I
    const/4 v3, 0x0

    .line 321
    .local v3, "firstVisibleLineScrollOffset":I
    sget-object v4, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .local v4, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    const/4 v5, 0x0

    .line 377
    .local v5, "$i$f$withoutReadObservation":I
    nop

    .line 378
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v6

    .line 379
    .local v6, "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 380
    move-object v7, v6

    .local v7, "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    const/16 v19, 0x0

    .line 381
    .local v19, "$i$f$enter":I
    :try_start_0
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-object/from16 v21, v20

    .line 382
    .local v21, "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 383
    const/16 v20, 0x0

    .line 322
    .local v20, "$i$a$-withoutReadObservation-LazyGridKt$rememberLazyGridMeasurePolicy$1$1$2":I
    nop

    .line 323
    move/from16 v22, v2

    .end local v2    # "firstVisibleLineIndex":I
    .local v22, "firstVisibleLineIndex":I
    :try_start_1
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getFirstVisibleItemIndex()I

    move-result v2

    .line 322
    invoke-virtual {v0, v14, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->updateScrollPositionIfTheFirstItemWasMoved$foundation_release(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;I)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 325
    .local v2, "index":I
    move-wide/from16 v54, v11

    move/from16 v11, v47

    .end local v47    # "itemsCount":I
    .local v11, "itemsCount":I
    .local v54, "visualItemOffset":J
    if-lt v2, v11, :cond_f

    if-gtz v11, :cond_e

    goto :goto_b

    .line 331
    :cond_e
    add-int/lit8 v0, v11, -0x1

    :try_start_2
    invoke-virtual {v10, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineIndexOfItem(I)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 332
    .end local v22    # "firstVisibleLineIndex":I
    .local v0, "firstVisibleLineIndex":I
    const/4 v3, 0x0

    move v12, v0

    move/from16 v47, v3

    goto :goto_c

    .line 385
    .end local v0    # "firstVisibleLineIndex":I
    .end local v2    # "index":I
    .end local v20    # "$i$a$-withoutReadObservation-LazyGridKt$rememberLazyGridMeasurePolicy$1$1$2":I
    .restart local v22    # "firstVisibleLineIndex":I
    :catchall_0
    move-exception v0

    move-object/from16 v2, v21

    goto/16 :goto_d

    .line 326
    .restart local v2    # "index":I
    .restart local v20    # "$i$a$-withoutReadObservation-LazyGridKt$rememberLazyGridMeasurePolicy$1$1$2":I
    :cond_f
    :goto_b
    :try_start_3
    invoke-virtual {v10, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineIndexOfItem(I)I

    move-result v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 327
    .end local v22    # "firstVisibleLineIndex":I
    .local v12, "firstVisibleLineIndex":I
    :try_start_4
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getFirstVisibleItemScrollOffset()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move/from16 v47, v0

    .line 334
    .end local v3    # "firstVisibleLineScrollOffset":I
    .local v47, "firstVisibleLineScrollOffset":I
    :goto_c
    nop

    .end local v2    # "index":I
    .end local v20    # "$i$a$-withoutReadObservation-LazyGridKt$rememberLazyGridMeasurePolicy$1$1$2":I
    :try_start_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 383
    nop

    .line 385
    move-object/from16 v2, v21

    .end local v21    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .local v2, "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :try_start_6
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 383
    nop

    .line 386
    .end local v2    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v7    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v19    # "$i$f$enter":I
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 380
    nop

    .line 336
    .end local v4    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v5    # "$i$f$withoutReadObservation":I
    .end local v6    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    move-object v0, v14

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    .line 337
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getPinnedItems$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    move-result-object v2

    .line 338
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getBeyondBoundsInfo$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    move-result-object v3

    .line 336
    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsStateKt;->calculateLazyLayoutPinnedIndices(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Ljava/util/List;

    move-result-object v0

    .local v0, "pinnedItems":Ljava/util/List;
    move-object/from16 v38, v0

    .line 342
    nop

    .line 343
    move-object/from16 v20, v9

    check-cast v20, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;

    .line 344
    move-object/from16 v21, v8

    check-cast v21, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;

    .line 345
    nop

    .line 346
    nop

    .line 347
    nop

    .line 348
    nop

    .line 349
    nop

    .line 350
    nop

    .line 351
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getScrollToBeConsumed$foundation_release()F

    move-result v28

    .line 352
    nop

    .line 353
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    move/from16 v31, v2

    .line 354
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-object/from16 v32, v2

    .line 355
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-object/from16 v33, v2

    .line 356
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    move/from16 v34, v2

    .line 357
    move-object/from16 v35, v13

    check-cast v35, Landroidx/compose/ui/unit/Density;

    .line 358
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getPlacementAnimator$foundation_release()Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    move-result-object v36

    .line 359
    nop

    .line 360
    nop

    .line 361
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v39, v2

    .line 362
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getPlacementScopeInvalidator-zYiylxw$foundation_release()Landroidx/compose/runtime/MutableState;

    move-result-object v40

    .line 341
    new-instance v19, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$3;

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move v6, v15

    move/from16 v7, v51

    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$3;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JII)V

    move-object/from16 v41, v19

    check-cast v41, Lkotlin/jvm/functions/Function3;

    move/from16 v19, v11

    move/from16 v22, v46

    move/from16 v23, v42

    move/from16 v24, v43

    move/from16 v25, v45

    move/from16 v26, v12

    move/from16 v27, v47

    move-object/from16 v37, v10

    invoke-static/range {v19 .. v41}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->measureLazyGrid-W2FL7xs(ILandroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object v2

    .line 371
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    move-object v4, v2

    .local v4, "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    const/4 v5, 0x0

    .line 372
    .local v5, "$i$a$-also-LazyGridKt$rememberLazyGridMeasurePolicy$1$1$4":I
    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object/from16 v19, v0

    .end local v0    # "pinnedItems":Ljava/util/List;
    .local v19, "pinnedItems":Ljava/util/List;
    const/4 v0, 0x0

    invoke-static {v3, v4, v0, v6, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->applyMeasureResult$foundation_release$default(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;ZILjava/lang/Object;)V

    .line 373
    nop

    .line 371
    .end local v4    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    .end local v5    # "$i$a$-also-LazyGridKt$rememberLazyGridMeasurePolicy$1$1$4":I
    return-object v2

    .line 386
    .end local v19    # "pinnedItems":Ljava/util/List;
    .local v4, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .local v5, "$i$f$withoutReadObservation":I
    .restart local v6    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_1
    move-exception v0

    move v2, v12

    move/from16 v3, v47

    goto :goto_e

    .line 385
    .restart local v7    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .local v19, "$i$f$enter":I
    .restart local v21    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_2
    move-exception v0

    move-object/from16 v2, v21

    move/from16 v22, v12

    move/from16 v3, v47

    .end local v21    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v2    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    goto :goto_d

    .end local v2    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v47    # "firstVisibleLineScrollOffset":I
    .restart local v3    # "firstVisibleLineScrollOffset":I
    .restart local v21    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_3
    move-exception v0

    move-object/from16 v2, v21

    move/from16 v22, v12

    .end local v21    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v2    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    goto :goto_d

    .end local v2    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v12    # "firstVisibleLineIndex":I
    .restart local v21    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v22    # "firstVisibleLineIndex":I
    :catchall_4
    move-exception v0

    move-object/from16 v2, v21

    .end local v21    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v2    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    goto :goto_d

    .end local v2    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v54    # "visualItemOffset":J
    .local v11, "visualItemOffset":J
    .restart local v21    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .local v47, "itemsCount":I
    :catchall_5
    move-exception v0

    move-wide/from16 v54, v11

    move-object/from16 v2, v21

    move/from16 v11, v47

    .end local v21    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v47    # "itemsCount":I
    .restart local v2    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .local v11, "itemsCount":I
    .restart local v54    # "visualItemOffset":J
    :goto_d
    :try_start_7
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .end local v3    # "firstVisibleLineScrollOffset":I
    .end local v4    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v5    # "$i$f$withoutReadObservation":I
    .end local v6    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v8    # "measuredItemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;
    .end local v9    # "measuredLineProvider":Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
    .end local v10    # "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .end local v11    # "itemsCount":I
    .end local v14    # "itemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    .end local v15    # "totalHorizontalPadding":I
    .end local v16    # "endPadding":I
    .end local v17    # "bottomPadding":I
    .end local v18    # "totalMainAxisPadding":I
    .end local v22    # "firstVisibleLineIndex":I
    .end local v29    # "contentConstraints":J
    .end local v42    # "beforeContentPadding":I
    .end local v43    # "afterContentPadding":I
    .end local v44    # "resolvedSlots":Landroidx/compose/foundation/lazy/grid/LazyGridSlots;
    .end local v45    # "spaceBetweenLines":I
    .end local v46    # "mainAxisAvailableSize":I
    .end local v48    # "spaceBetweenLinesDp":F
    .end local v49    # "slotsPerLine":I
    .end local v51    # "totalVerticalPadding":I
    .end local v52    # "topPadding":I
    .end local v53    # "startPadding":I
    .end local v54    # "visualItemOffset":J
    .end local p1    # "$this$null":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
    .end local p2    # "containerConstraints":J
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 386
    .end local v2    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v7    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v19    # "$i$f$enter":I
    .restart local v3    # "firstVisibleLineScrollOffset":I
    .restart local v4    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v5    # "$i$f$withoutReadObservation":I
    .restart local v6    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v8    # "measuredItemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;
    .restart local v9    # "measuredLineProvider":Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
    .restart local v10    # "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .restart local v11    # "itemsCount":I
    .restart local v14    # "itemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    .restart local v15    # "totalHorizontalPadding":I
    .restart local v16    # "endPadding":I
    .restart local v17    # "bottomPadding":I
    .restart local v18    # "totalMainAxisPadding":I
    .restart local v22    # "firstVisibleLineIndex":I
    .restart local v29    # "contentConstraints":J
    .restart local v42    # "beforeContentPadding":I
    .restart local v43    # "afterContentPadding":I
    .restart local v44    # "resolvedSlots":Landroidx/compose/foundation/lazy/grid/LazyGridSlots;
    .restart local v45    # "spaceBetweenLines":I
    .restart local v46    # "mainAxisAvailableSize":I
    .restart local v48    # "spaceBetweenLinesDp":F
    .restart local v49    # "slotsPerLine":I
    .restart local v51    # "totalVerticalPadding":I
    .restart local v52    # "topPadding":I
    .restart local v53    # "startPadding":I
    .restart local v54    # "visualItemOffset":J
    .restart local p1    # "$this$null":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
    .restart local p2    # "containerConstraints":J
    :catchall_6
    move-exception v0

    move/from16 v2, v22

    goto :goto_e

    .end local v22    # "firstVisibleLineIndex":I
    .end local v54    # "visualItemOffset":J
    .local v2, "firstVisibleLineIndex":I
    .local v11, "visualItemOffset":J
    .restart local v47    # "itemsCount":I
    :catchall_7
    move-exception v0

    move/from16 v22, v2

    move-wide/from16 v54, v11

    move/from16 v11, v47

    .end local v47    # "itemsCount":I
    .local v11, "itemsCount":I
    .restart local v54    # "visualItemOffset":J
    :goto_e
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw v0

    .line 229
    .end local v2    # "firstVisibleLineIndex":I
    .end local v3    # "firstVisibleLineScrollOffset":I
    .end local v11    # "itemsCount":I
    .end local v14    # "itemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    .end local v15    # "totalHorizontalPadding":I
    .end local v45    # "spaceBetweenLines":I
    .end local v46    # "mainAxisAvailableSize":I
    .end local v48    # "spaceBetweenLinesDp":F
    .end local v49    # "slotsPerLine":I
    .end local v51    # "totalVerticalPadding":I
    .end local v52    # "topPadding":I
    .end local v53    # "startPadding":I
    .end local v54    # "visualItemOffset":J
    .local v4, "slotsPerLine":I
    .local v5, "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .local v6, "itemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    .local v7, "totalHorizontalPadding":I
    .local v8, "totalVerticalPadding":I
    .local v9, "topPadding":I
    .local v10, "startPadding":I
    :cond_10
    const/4 v0, 0x0

    .line 230
    .local v0, "$i$a$-requireNotNull-LazyGridKt$rememberLazyGridMeasurePolicy$1$1$spaceBetweenLinesDp$2":I
    nop

    .line 229
    .end local v0    # "$i$a$-requireNotNull-LazyGridKt$rememberLazyGridMeasurePolicy$1$1$spaceBetweenLinesDp$2":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "null horizontalArrangement when isVertical == false"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
