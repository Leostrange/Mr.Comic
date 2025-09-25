.class final Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyList.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListKt;->rememberLazyListMeasurePolicy(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/runtime/Composer;II)Lkotlin/jvm/functions/Function2;
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
        "Landroidx/compose/foundation/lazy/LazyListMeasureResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyList.kt\nandroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 3 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n*L\n1#1,353:1\n495#2,4:354\n500#2:363\n129#3,5:358\n*S KotlinDebug\n*F\n+ 1 LazyList.kt\nandroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1\n*L\n295#1:354,4\n295#1:363\n295#1:358,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/foundation/lazy/LazyListMeasureResult;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
        "containerConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "invoke-0kLqBqw",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/lazy/LazyListMeasureResult;"
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
.field final synthetic $beyondBoundsItemCount:I

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

.field final synthetic $horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field final synthetic $isVertical:Z

.field final synthetic $itemProviderLambda:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/foundation/lazy/LazyListItemProvider;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $reverseLayout:Z

.field final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic $verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

.field final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;ZLandroidx/compose/foundation/layout/PaddingValues;ZLkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Z",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/foundation/lazy/LazyListItemProvider;",
            ">;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "I",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p4, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p7, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput p8, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$beyondBoundsItemCount:I

    iput-object p9, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p10, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 178
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->invoke-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public final invoke-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .locals 58
    .param p1, "$this$null"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
    .param p2, "containerConstraints"    # J

    .line 180
    move-object/from16 v1, p0

    move-object/from16 v14, p1

    move-wide/from16 v12, p2

    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getHasLookaheadPassOccurred$foundation_release()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->isLookingAhead()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move/from16 v43, v0

    .line 182
    .local v43, "hasLookaheadPassOccurred":Z
    nop

    .line 183
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_2

    :cond_2
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 181
    :goto_2
    invoke-static {v12, v13, v0}, Landroidx/compose/foundation/CheckScrollableContainerConstraintsKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 188
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-interface {v0, v2}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    invoke-interface {v14, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    goto :goto_3

    .line 192
    :cond_3
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/PaddingKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    invoke-interface {v14, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    .line 188
    :goto_3
    nop

    .line 187
    move v11, v0

    .line 196
    .local v11, "startPadding":I
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_4

    .line 197
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-interface {v0, v2}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    invoke-interface {v14, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    goto :goto_4

    .line 200
    :cond_4
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/PaddingKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    invoke-interface {v14, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    .line 196
    :goto_4
    nop

    .line 195
    move/from16 v44, v0

    .line 202
    .local v44, "endPadding":I
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v0

    invoke-interface {v14, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v10

    .line 203
    .local v10, "topPadding":I
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v0

    invoke-interface {v14, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v45

    .line 204
    .local v45, "bottomPadding":I
    add-int v9, v10, v45

    .line 205
    .local v9, "totalVerticalPadding":I
    add-int v8, v11, v44

    .line 206
    .local v8, "totalHorizontalPadding":I
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_5

    move v0, v9

    goto :goto_5

    :cond_5
    move v0, v8

    :goto_5
    move/from16 v46, v0

    .line 207
    .local v46, "totalMainAxisPadding":I
    nop

    .line 208
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_6

    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    if-nez v0, :cond_6

    move v0, v10

    goto :goto_6

    .line 209
    :cond_6
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    if-eqz v0, :cond_7

    move/from16 v0, v45

    goto :goto_6

    .line 210
    :cond_7
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-nez v0, :cond_8

    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    if-nez v0, :cond_8

    move v0, v11

    goto :goto_6

    .line 211
    :cond_8
    move/from16 v0, v44

    .line 207
    :goto_6
    move/from16 v47, v0

    .line 213
    .local v47, "beforeContentPadding":I
    sub-int v48, v46, v47

    .line 215
    .local v48, "afterContentPadding":I
    neg-int v0, v8

    neg-int v2, v9

    invoke-static {v12, v13, v0, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v3

    .line 214
    nop

    .line 218
    .local v3, "contentConstraints":J
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    move-object v2, v14

    check-cast v2, Landroidx/compose/ui/unit/Density;

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/lazy/LazyListState;->setDensity$foundation_release(Landroidx/compose/ui/unit/Density;)V

    .line 220
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 222
    .local v7, "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    invoke-interface {v7}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->getItemScope()Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    move-result-object v0

    .line 223
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    .line 224
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v5

    .line 222
    invoke-virtual {v0, v2, v5}, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->setMaxSize(II)V

    .line 227
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_a

    .line 228
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    if-eqz v0, :cond_9

    .line 230
    invoke-interface {v0}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v0

    goto :goto_7

    .line 228
    :cond_9
    const/4 v0, 0x0

    .line 229
    .local v0, "$i$a$-requireNotNull-LazyListKt$rememberLazyListMeasurePolicy$1$1$spaceBetweenItemsDp$1":I
    nop

    .line 228
    .end local v0    # "$i$a$-requireNotNull-LazyListKt$rememberLazyListMeasurePolicy$1$1$spaceBetweenItemsDp$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "null verticalArrangement when isVertical == true"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_a
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    if-eqz v0, :cond_13

    .line 234
    invoke-interface {v0}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v0

    .line 227
    :goto_7
    move v6, v0

    .line 236
    .local v6, "spaceBetweenItemsDp":F
    invoke-interface {v14, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v49

    .line 238
    .local v49, "spaceBetweenItems":I
    invoke-interface {v7}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->getItemCount()I

    move-result v50

    .line 241
    .local v50, "itemsCount":I
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_b

    .line 242
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    sub-int/2addr v0, v9

    goto :goto_8

    .line 244
    :cond_b
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    sub-int/2addr v0, v8

    .line 241
    :goto_8
    move/from16 v51, v0

    .line 246
    .local v51, "mainAxisAvailableSize":I
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    if-eqz v0, :cond_f

    if-lez v51, :cond_c

    goto :goto_b

    .line 253
    :cond_c
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_d

    move v0, v11

    goto :goto_9

    :cond_d
    add-int v0, v11, v51

    .line 254
    :goto_9
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v2, :cond_e

    add-int v2, v10, v51

    goto :goto_a

    :cond_e
    move v2, v10

    .line 252
    :goto_a
    invoke-static {v0, v2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v15

    goto :goto_c

    .line 247
    :cond_f
    :goto_b
    invoke-static {v11, v10}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v15

    .line 246
    :goto_c
    nop

    .line 258
    .local v15, "visualItemOffset":J
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;

    iget-boolean v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    move/from16 v17, v11

    .end local v11    # "startPadding":I
    .local v17, "startPadding":I
    iget-object v11, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    iget-boolean v12, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    iget-object v13, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    move-object/from16 v18, v2

    move-object v2, v0

    move/from16 v52, v6

    .end local v6    # "spaceBetweenItemsDp":F
    .local v52, "spaceBetweenItemsDp":F
    move-object v6, v7

    move-object/from16 v53, v7

    .end local v7    # "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .local v53, "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    move-object/from16 v7, p1

    move/from16 v54, v8

    .end local v8    # "totalHorizontalPadding":I
    .local v54, "totalHorizontalPadding":I
    move/from16 v8, v50

    move/from16 v55, v9

    .end local v9    # "totalVerticalPadding":I
    .local v55, "totalVerticalPadding":I
    move/from16 v9, v49

    move/from16 v56, v10

    .end local v10    # "topPadding":I
    .local v56, "topPadding":I
    move-object/from16 v10, v18

    move/from16 v57, v17

    .end local v17    # "startPadding":I
    .local v57, "startPadding":I
    move-object/from16 v17, v13

    move/from16 v13, v47

    move/from16 v14, v48

    invoke-direct/range {v2 .. v17}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;-><init>(JZLandroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;ZIIJLandroidx/compose/foundation/lazy/LazyListState;)V

    .line 291
    .local v2, "measuredItemProvider":Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getChildConstraints-msEJaDk()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroidx/compose/foundation/lazy/LazyListState;->setPremeasureConstraints-BRTryo0$foundation_release(J)V

    .line 293
    const/4 v5, 0x0

    .line 294
    .local v5, "firstVisibleItemIndex":I
    const/4 v6, 0x0

    .line 295
    .local v6, "firstVisibleScrollOffset":I
    sget-object v7, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .local v7, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    const/4 v8, 0x0

    .line 354
    .local v8, "$i$f$withoutReadObservation":I
    nop

    .line 355
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v9

    .line 356
    .local v9, "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 357
    move-object v10, v9

    .local v10, "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    const/4 v11, 0x0

    .line 358
    .local v11, "$i$f$enter":I
    :try_start_0
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 359
    .local v12, "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 360
    const/4 v13, 0x0

    .line 296
    .local v13, "$i$a$-withoutReadObservation-LazyListKt$rememberLazyListMeasurePolicy$1$1$1":I
    nop

    .line 297
    :try_start_1
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemIndex()I

    move-result v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 296
    move/from16 v17, v11

    move-object/from16 v11, v53

    .end local v53    # "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .local v11, "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .local v17, "$i$f$enter":I
    :try_start_2
    invoke-virtual {v0, v11, v14}, Landroidx/compose/foundation/lazy/LazyListState;->updateScrollPositionIfTheFirstItemWasMoved$foundation_release(Landroidx/compose/foundation/lazy/LazyListItemProvider;I)I

    move-result v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 299
    .end local v5    # "firstVisibleItemIndex":I
    .local v23, "firstVisibleItemIndex":I
    :try_start_3
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemScrollOffset()I

    move-result v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 300
    .end local v6    # "firstVisibleScrollOffset":I
    .local v24, "firstVisibleScrollOffset":I
    nop

    .end local v13    # "$i$a$-withoutReadObservation-LazyListKt$rememberLazyListMeasurePolicy$1$1$1":I
    :try_start_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 360
    nop

    .line 362
    :try_start_5
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 360
    nop

    .line 363
    .end local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v12    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v17    # "$i$f$enter":I
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 357
    nop

    .line 302
    .end local v7    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v8    # "$i$f$withoutReadObservation":I
    .end local v9    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    move-object v0, v11

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    .line 303
    iget-object v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyListState;->getPinnedItems$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    move-result-object v5

    .line 304
    iget-object v6, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/LazyListState;->getBeyondBoundsInfo$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    move-result-object v6

    .line 302
    invoke-static {v0, v5, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsStateKt;->calculateLazyLayoutPinnedIndices(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Ljava/util/List;

    move-result-object v0

    .line 307
    .local v0, "pinnedItems":Ljava/util/List;
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->isLookingAhead()Z

    move-result v5

    if-nez v5, :cond_11

    if-nez v43, :cond_10

    goto :goto_d

    .line 310
    :cond_10
    iget-object v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyListState;->getScrollDeltaBetweenPasses$foundation_release()F

    move-result v5

    move/from16 v25, v5

    goto :goto_e

    .line 308
    :cond_11
    :goto_d
    iget-object v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyListState;->getScrollToBeConsumed$foundation_release()F

    move-result v5

    move/from16 v25, v5

    .line 307
    :goto_e
    nop

    .line 314
    .local v25, "scrollToBeConsumed":F
    nop

    .line 315
    move-object/from16 v18, v2

    check-cast v18, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;

    .line 316
    nop

    .line 317
    nop

    .line 318
    nop

    .line 319
    nop

    .line 320
    nop

    .line 321
    nop

    .line 322
    nop

    .line 323
    nop

    .line 324
    iget-boolean v12, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 325
    invoke-interface {v11}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->getHeaderIndexes()Ljava/util/List;

    move-result-object v29

    .line 326
    iget-object v13, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 327
    iget-object v14, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 328
    iget-boolean v10, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    .line 329
    move-object/from16 v33, p1

    check-cast v33, Landroidx/compose/ui/unit/Density;

    .line 330
    iget-object v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyListState;->getItemAnimator$foundation_release()Landroidx/compose/foundation/lazy/LazyListItemAnimator;

    move-result-object v34

    .line 331
    iget v9, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$beyondBoundsItemCount:I

    .line 332
    nop

    .line 333
    nop

    .line 334
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->isLookingAhead()Z

    move-result v38

    .line 335
    iget-object v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyListState;->getPostLookaheadLayoutInfo$foundation_release()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-result-object v5

    move-object/from16 v39, v5

    check-cast v39, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 336
    iget-object v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyListState;->getCoroutineScope$foundation_release()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v40

    if-eqz v40, :cond_12

    .line 339
    iget-object v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyListState;->getPlacementScopeInvalidator-zYiylxw$foundation_release()Landroidx/compose/runtime/MutableState;

    move-result-object v41

    .line 313
    new-instance v17, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$3;

    move-object/from16 v5, v17

    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    move/from16 v35, v9

    move/from16 v9, v54

    move/from16 v32, v10

    move/from16 v10, v55

    invoke-direct/range {v5 .. v10}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$3;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JII)V

    move-object/from16 v42, v17

    check-cast v42, Lkotlin/jvm/functions/Function3;

    move/from16 v17, v50

    move/from16 v19, v51

    move/from16 v20, v47

    move/from16 v21, v48

    move/from16 v22, v49

    move-wide/from16 v26, v3

    move/from16 v28, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    move-object/from16 v36, v0

    move/from16 v37, v43

    invoke-static/range {v17 .. v42}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->measureLazyList-5IMabDg(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IIIIIIFJZLjava/util/List;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/LazyListItemAnimator;ILjava/util/List;ZZLandroidx/compose/foundation/lazy/LazyListLayoutInfo;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-result-object v12

    .line 348
    iget-object v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    move-object v6, v12

    .local v6, "it":Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    const/4 v13, 0x0

    .line 349
    .local v13, "$i$a$-also-LazyListKt$rememberLazyListMeasurePolicy$1$1$4":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->isLookingAhead()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/lazy/LazyListState;->applyMeasureResult$foundation_release$default(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListMeasureResult;ZZILjava/lang/Object;)V

    .line 350
    nop

    .line 348
    .end local v6    # "it":Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .end local v13    # "$i$a$-also-LazyListKt$rememberLazyListMeasurePolicy$1$1$4":I
    return-object v12

    .line 336
    :cond_12
    const/4 v5, 0x0

    .line 337
    .local v5, "$i$a$-requireNotNull-LazyListKt$rememberLazyListMeasurePolicy$1$1$2":I
    nop

    .line 336
    .end local v5    # "$i$a$-requireNotNull-LazyListKt$rememberLazyListMeasurePolicy$1$1$2":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "coroutineScope should be not null"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 363
    .end local v0    # "pinnedItems":Ljava/util/List;
    .end local v25    # "scrollToBeConsumed":F
    .restart local v7    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v8    # "$i$f$withoutReadObservation":I
    .restart local v9    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_0
    move-exception v0

    move/from16 v5, v23

    move/from16 v6, v24

    goto :goto_10

    .line 362
    .restart local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v12    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v17    # "$i$f$enter":I
    :catchall_1
    move-exception v0

    move/from16 v5, v23

    move/from16 v6, v24

    goto :goto_f

    .end local v24    # "firstVisibleScrollOffset":I
    .local v6, "firstVisibleScrollOffset":I
    :catchall_2
    move-exception v0

    move/from16 v5, v23

    goto :goto_f

    .end local v23    # "firstVisibleItemIndex":I
    .local v5, "firstVisibleItemIndex":I
    :catchall_3
    move-exception v0

    goto :goto_f

    .end local v17    # "$i$f$enter":I
    .local v11, "$i$f$enter":I
    .restart local v53    # "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    :catchall_4
    move-exception v0

    move/from16 v17, v11

    move-object/from16 v11, v53

    .end local v53    # "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .local v11, "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .restart local v17    # "$i$f$enter":I
    :goto_f
    :try_start_6
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .end local v2    # "measuredItemProvider":Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
    .end local v3    # "contentConstraints":J
    .end local v5    # "firstVisibleItemIndex":I
    .end local v6    # "firstVisibleScrollOffset":I
    .end local v7    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v8    # "$i$f$withoutReadObservation":I
    .end local v9    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v11    # "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .end local v15    # "visualItemOffset":J
    .end local v43    # "hasLookaheadPassOccurred":Z
    .end local v44    # "endPadding":I
    .end local v45    # "bottomPadding":I
    .end local v46    # "totalMainAxisPadding":I
    .end local v47    # "beforeContentPadding":I
    .end local v48    # "afterContentPadding":I
    .end local v49    # "spaceBetweenItems":I
    .end local v50    # "itemsCount":I
    .end local v51    # "mainAxisAvailableSize":I
    .end local v52    # "spaceBetweenItemsDp":F
    .end local v54    # "totalHorizontalPadding":I
    .end local v55    # "totalVerticalPadding":I
    .end local v56    # "topPadding":I
    .end local v57    # "startPadding":I
    .end local p1    # "$this$null":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
    .end local p2    # "containerConstraints":J
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 363
    .end local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v12    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v17    # "$i$f$enter":I
    .restart local v2    # "measuredItemProvider":Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
    .restart local v3    # "contentConstraints":J
    .restart local v5    # "firstVisibleItemIndex":I
    .restart local v6    # "firstVisibleScrollOffset":I
    .restart local v7    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v8    # "$i$f$withoutReadObservation":I
    .restart local v9    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v11    # "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .restart local v15    # "visualItemOffset":J
    .restart local v43    # "hasLookaheadPassOccurred":Z
    .restart local v44    # "endPadding":I
    .restart local v45    # "bottomPadding":I
    .restart local v46    # "totalMainAxisPadding":I
    .restart local v47    # "beforeContentPadding":I
    .restart local v48    # "afterContentPadding":I
    .restart local v49    # "spaceBetweenItems":I
    .restart local v50    # "itemsCount":I
    .restart local v51    # "mainAxisAvailableSize":I
    .restart local v52    # "spaceBetweenItemsDp":F
    .restart local v54    # "totalHorizontalPadding":I
    .restart local v55    # "totalVerticalPadding":I
    .restart local v56    # "topPadding":I
    .restart local v57    # "startPadding":I
    .restart local p1    # "$this$null":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
    .restart local p2    # "containerConstraints":J
    :catchall_5
    move-exception v0

    goto :goto_10

    .end local v11    # "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .restart local v53    # "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    :catchall_6
    move-exception v0

    move-object/from16 v11, v53

    .end local v53    # "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .restart local v11    # "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    :goto_10
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw v0

    .line 232
    .end local v2    # "measuredItemProvider":Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
    .end local v5    # "firstVisibleItemIndex":I
    .end local v6    # "firstVisibleScrollOffset":I
    .end local v15    # "visualItemOffset":J
    .end local v49    # "spaceBetweenItems":I
    .end local v50    # "itemsCount":I
    .end local v51    # "mainAxisAvailableSize":I
    .end local v52    # "spaceBetweenItemsDp":F
    .end local v54    # "totalHorizontalPadding":I
    .end local v55    # "totalVerticalPadding":I
    .end local v56    # "topPadding":I
    .end local v57    # "startPadding":I
    .local v7, "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .local v8, "totalHorizontalPadding":I
    .local v9, "totalVerticalPadding":I
    .local v10, "topPadding":I
    .local v11, "startPadding":I
    :cond_13
    const/4 v0, 0x0

    .line 233
    .local v0, "$i$a$-requireNotNull-LazyListKt$rememberLazyListMeasurePolicy$1$1$spaceBetweenItemsDp$2":I
    nop

    .line 232
    .end local v0    # "$i$a$-requireNotNull-LazyListKt$rememberLazyListMeasurePolicy$1$1$spaceBetweenItemsDp$2":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "null horizontalAlignment when isVertical == false"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
