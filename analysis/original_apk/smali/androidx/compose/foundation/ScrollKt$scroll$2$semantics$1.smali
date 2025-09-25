.class final Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Scroll.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/ScrollKt$scroll$2;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
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
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
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
.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $isScrollable:Z

.field final synthetic $isVertical:Z

.field final synthetic $reverseScrolling:Z

.field final synthetic $state:Landroidx/compose/foundation/ScrollState;


# direct methods
.method constructor <init>(ZZZLandroidx/compose/foundation/ScrollState;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    iput-boolean p1, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1;->$reverseScrolling:Z

    iput-boolean p2, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1;->$isVertical:Z

    iput-boolean p3, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1;->$isScrollable:Z

    iput-object p4, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1;->$state:Landroidx/compose/foundation/ScrollState;

    iput-object p5, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 275
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 6
    .param p1, "$this$semantics"    # Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 276
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setTraversalGroup(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Z)V

    .line 277
    new-instance v1, Landroidx/compose/ui/semantics/ScrollAxisRange;

    new-instance v2, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$accessibilityScrollState$1;

    iget-object v3, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1;->$state:Landroidx/compose/foundation/ScrollState;

    invoke-direct {v2, v3}, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$accessibilityScrollState$1;-><init>(Landroidx/compose/foundation/ScrollState;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    new-instance v3, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$accessibilityScrollState$2;

    iget-object v4, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1;->$state:Landroidx/compose/foundation/ScrollState;

    invoke-direct {v3, v4}, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$accessibilityScrollState$2;-><init>(Landroidx/compose/foundation/ScrollState;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 280
    iget-boolean v4, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1;->$reverseScrolling:Z

    .line 277
    invoke-direct {v1, v2, v3, v4}, Landroidx/compose/ui/semantics/ScrollAxisRange;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V

    .line 282
    .local v1, "accessibilityScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    iget-boolean v2, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1;->$isVertical:Z

    if-eqz v2, :cond_0

    .line 283
    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setVerticalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/ScrollAxisRange;)V

    goto :goto_0

    .line 285
    :cond_0
    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setHorizontalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/ScrollAxisRange;)V

    .line 287
    :goto_0
    iget-boolean v2, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1;->$isScrollable:Z

    if-eqz v2, :cond_1

    .line 289
    new-instance v2, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1;

    iget-object v3, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-boolean v4, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1;->$isVertical:Z

    iget-object v5, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1;->$state:Landroidx/compose/foundation/ScrollState;

    invoke-direct {v2, v3, v4, v5}, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;ZLandroidx/compose/foundation/ScrollState;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v0, v3}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->scrollBy$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 302
    :cond_1
    return-void
.end method
