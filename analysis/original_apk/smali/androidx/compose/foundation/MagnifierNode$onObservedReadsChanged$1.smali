.class final Landroidx/compose/foundation/MagnifierNode$onObservedReadsChanged$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Magnifier.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/MagnifierNode;->onObservedReadsChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMagnifier.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Magnifier.android.kt\nandroidx/compose/foundation/MagnifierNode$onObservedReadsChanged$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,467:1\n1#2:468\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic this$0:Landroidx/compose/foundation/MagnifierNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/MagnifierNode;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/foundation/MagnifierNode$onObservedReadsChanged$1;->this$0:Landroidx/compose/foundation/MagnifierNode;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 367
    invoke-virtual {p0}, Landroidx/compose/foundation/MagnifierNode$onObservedReadsChanged$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 368
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierNode$onObservedReadsChanged$1;->this$0:Landroidx/compose/foundation/MagnifierNode;

    invoke-static {v0}, Landroidx/compose/foundation/MagnifierNode;->access$getView$p(Landroidx/compose/foundation/MagnifierNode;)Landroid/view/View;

    move-result-object v0

    .line 369
    .local v0, "previousView":Landroid/view/View;
    iget-object v1, p0, Landroidx/compose/foundation/MagnifierNode$onObservedReadsChanged$1;->this$0:Landroidx/compose/foundation/MagnifierNode;

    check-cast v1, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v1, v2}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/foundation/MagnifierNode$onObservedReadsChanged$1;->this$0:Landroidx/compose/foundation/MagnifierNode;

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    .line 468
    .local v3, "it":Landroid/view/View;
    const/4 v4, 0x0

    .line 369
    .local v4, "$i$a$-also-MagnifierNode$onObservedReadsChanged$1$view$1":I
    invoke-static {v2, v3}, Landroidx/compose/foundation/MagnifierNode;->access$setView$p(Landroidx/compose/foundation/MagnifierNode;Landroid/view/View;)V

    .end local v3    # "it":Landroid/view/View;
    .end local v4    # "$i$a$-also-MagnifierNode$onObservedReadsChanged$1$view$1":I
    check-cast v1, Landroid/view/View;

    .line 370
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Landroidx/compose/foundation/MagnifierNode$onObservedReadsChanged$1;->this$0:Landroidx/compose/foundation/MagnifierNode;

    invoke-static {v2}, Landroidx/compose/foundation/MagnifierNode;->access$getDensity$p(Landroidx/compose/foundation/MagnifierNode;)Landroidx/compose/ui/unit/Density;

    move-result-object v2

    .line 371
    .local v2, "previousDensity":Landroidx/compose/ui/unit/Density;
    iget-object v3, p0, Landroidx/compose/foundation/MagnifierNode$onObservedReadsChanged$1;->this$0:Landroidx/compose/foundation/MagnifierNode;

    check-cast v3, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v3, v4}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroidx/compose/foundation/MagnifierNode$onObservedReadsChanged$1;->this$0:Landroidx/compose/foundation/MagnifierNode;

    move-object v5, v3

    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 468
    .local v5, "it":Landroidx/compose/ui/unit/Density;
    const/4 v6, 0x0

    .line 371
    .local v6, "$i$a$-also-MagnifierNode$onObservedReadsChanged$1$density$1":I
    invoke-static {v4, v5}, Landroidx/compose/foundation/MagnifierNode;->access$setDensity$p(Landroidx/compose/foundation/MagnifierNode;Landroidx/compose/ui/unit/Density;)V

    .end local v5    # "it":Landroidx/compose/ui/unit/Density;
    .end local v6    # "$i$a$-also-MagnifierNode$onObservedReadsChanged$1$density$1":I
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 373
    .local v3, "density":Landroidx/compose/ui/unit/Density;
    iget-object v4, p0, Landroidx/compose/foundation/MagnifierNode$onObservedReadsChanged$1;->this$0:Landroidx/compose/foundation/MagnifierNode;

    invoke-static {v4}, Landroidx/compose/foundation/MagnifierNode;->access$getMagnifier$p(Landroidx/compose/foundation/MagnifierNode;)Landroidx/compose/foundation/PlatformMagnifier;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 374
    :cond_0
    iget-object v4, p0, Landroidx/compose/foundation/MagnifierNode$onObservedReadsChanged$1;->this$0:Landroidx/compose/foundation/MagnifierNode;

    invoke-static {v4}, Landroidx/compose/foundation/MagnifierNode;->access$recreateMagnifier(Landroidx/compose/foundation/MagnifierNode;)V

    .line 377
    :cond_1
    iget-object v4, p0, Landroidx/compose/foundation/MagnifierNode$onObservedReadsChanged$1;->this$0:Landroidx/compose/foundation/MagnifierNode;

    invoke-static {v4}, Landroidx/compose/foundation/MagnifierNode;->access$updateMagnifier(Landroidx/compose/foundation/MagnifierNode;)V

    .line 378
    return-void
.end method
