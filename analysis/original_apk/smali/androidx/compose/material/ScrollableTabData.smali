.class final Landroidx/compose/material/ScrollableTabData;
.super Ljava/lang/Object;
.source "TabRow.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J,\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00082\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0007\u001a\u00020\u0008J*\u0010\u0012\u001a\u00020\u0008*\u00020\u00112\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00082\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\t\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/compose/material/ScrollableTabData;",
        "",
        "scrollState",
        "Landroidx/compose/foundation/ScrollState;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "(Landroidx/compose/foundation/ScrollState;Lkotlinx/coroutines/CoroutineScope;)V",
        "selectedTab",
        "",
        "Ljava/lang/Integer;",
        "onLaidOut",
        "",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "edgeOffset",
        "tabPositions",
        "",
        "Landroidx/compose/material/TabPosition;",
        "calculateTabOffset",
        "material_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private final scrollState:Landroidx/compose/foundation/ScrollState;

.field private selectedTab:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/ScrollState;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0
    .param p1, "scrollState"    # Landroidx/compose/foundation/ScrollState;
    .param p2, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput-object p1, p0, Landroidx/compose/material/ScrollableTabData;->scrollState:Landroidx/compose/foundation/ScrollState;

    .line 459
    iput-object p2, p0, Landroidx/compose/material/ScrollableTabData;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 457
    return-void
.end method

.method public static final synthetic access$getScrollState$p(Landroidx/compose/material/ScrollableTabData;)Landroidx/compose/foundation/ScrollState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material/ScrollableTabData;

    .line 457
    iget-object v0, p0, Landroidx/compose/material/ScrollableTabData;->scrollState:Landroidx/compose/foundation/ScrollState;

    return-object v0
.end method

.method private final calculateTabOffset(Landroidx/compose/material/TabPosition;Landroidx/compose/ui/unit/Density;ILjava/util/List;)I
    .locals 10
    .param p1, "$this$calculateTabOffset"    # Landroidx/compose/material/TabPosition;
    .param p2, "density"    # Landroidx/compose/ui/unit/Density;
    .param p3, "edgeOffset"    # I
    .param p4, "tabPositions"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/TabPosition;",
            "Landroidx/compose/ui/unit/Density;",
            "I",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;)I"
        }
    .end annotation

    .line 498
    move-object v0, p2

    .local v0, "$this$calculateTabOffset_u24lambda_u241":Landroidx/compose/ui/unit/Density;
    const/4 v1, 0x0

    .line 499
    .local v1, "$i$a$-with-ScrollableTabData$calculateTabOffset$1":I
    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/material/TabPosition;

    invoke-virtual {v2}, Landroidx/compose/material/TabPosition;->getRight-D9Ej5fM()F

    move-result v2

    invoke-interface {v0, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v2

    add-int/2addr v2, p3

    .line 500
    .local v2, "totalTabRowWidth":I
    iget-object v3, p0, Landroidx/compose/material/ScrollableTabData;->scrollState:Landroidx/compose/foundation/ScrollState;

    invoke-virtual {v3}, Landroidx/compose/foundation/ScrollState;->getMaxValue()I

    move-result v3

    sub-int v3, v2, v3

    .line 501
    .local v3, "visibleWidth":I
    invoke-virtual {p1}, Landroidx/compose/material/TabPosition;->getLeft-D9Ej5fM()F

    move-result v4

    invoke-interface {v0, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    .line 502
    .local v4, "tabOffset":I
    div-int/lit8 v5, v3, 0x2

    .line 503
    .local v5, "scrollerCenter":I
    invoke-virtual {p1}, Landroidx/compose/material/TabPosition;->getWidth-D9Ej5fM()F

    move-result v6

    invoke-interface {v0, v6}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v6

    .line 504
    .local v6, "tabWidth":I
    div-int/lit8 v7, v6, 0x2

    sub-int v7, v5, v7

    sub-int v7, v4, v7

    .line 507
    .local v7, "centeredTabOffset":I
    sub-int v8, v2, v3

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v8

    .line 508
    .local v8, "availableSpace":I
    invoke-static {v7, v9, v8}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v9

    return v9
.end method


# virtual methods
.method public final onLaidOut(Landroidx/compose/ui/unit/Density;ILjava/util/List;I)V
    .locals 10
    .param p1, "density"    # Landroidx/compose/ui/unit/Density;
    .param p2, "edgeOffset"    # I
    .param p3, "tabPositions"    # Ljava/util/List;
    .param p4, "selectedTab"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/unit/Density;",
            "I",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;I)V"
        }
    .end annotation

    .line 471
    iget-object v0, p0, Landroidx/compose/material/ScrollableTabData;->selectedTab:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p4, :cond_2

    .line 472
    :goto_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/ScrollableTabData;->selectedTab:Ljava/lang/Integer;

    .line 473
    invoke-static {p3, p4}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/TabPosition;

    if-eqz v0, :cond_2

    .local v0, "it":Landroidx/compose/material/TabPosition;
    const/4 v1, 0x0

    .line 476
    .local v1, "$i$a$-let-ScrollableTabData$onLaidOut$1":I
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/compose/material/ScrollableTabData;->calculateTabOffset(Landroidx/compose/material/TabPosition;Landroidx/compose/ui/unit/Density;ILjava/util/List;)I

    move-result v2

    .line 477
    .local v2, "calculatedOffset":I
    iget-object v3, p0, Landroidx/compose/material/ScrollableTabData;->scrollState:Landroidx/compose/foundation/ScrollState;

    invoke-virtual {v3}, Landroidx/compose/foundation/ScrollState;->getValue()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 478
    iget-object v4, p0, Landroidx/compose/material/ScrollableTabData;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v3, Landroidx/compose/material/ScrollableTabData$onLaidOut$1$1;

    const/4 v7, 0x0

    invoke-direct {v3, p0, v2, v7}, Landroidx/compose/material/ScrollableTabData$onLaidOut$1$1;-><init>(Landroidx/compose/material/ScrollableTabData;ILkotlin/coroutines/Continuation;)V

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 485
    :cond_1
    nop

    .line 473
    .end local v0    # "it":Landroidx/compose/material/TabPosition;
    .end local v1    # "$i$a$-let-ScrollableTabData$onLaidOut$1":I
    .end local v2    # "calculatedOffset":I
    nop

    .line 487
    :cond_2
    return-void
.end method
