.class final Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LazyLayoutAnimation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->animateAppearance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.lazy.layout.LazyLayoutAnimation$animateAppearance$1"
    f = "LazyLayoutAnimation.kt"
    i = {}
    l = {
        0x9b,
        0x9c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $spec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;->$spec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;->$spec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    invoke-direct {v0, v1, v2, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 153
    iget v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 160
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 153
    .end local v0    # "this":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 160
    :catchall_1
    move-exception v0

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_2

    .line 153
    .end local v1    # "this":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 154
    .restart local v1    # "this":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 155
    :try_start_2
    iget-object v3, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    invoke-static {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->access$getVisibilityAnimation$p(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;)Landroidx/compose/animation/core/Animatable;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x1

    iput v6, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;->label:I

    invoke-virtual {v3, v4, v5}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 153
    return-object v0

    .line 156
    :cond_0
    :goto_0
    iget-object v3, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    invoke-static {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->access$getVisibilityAnimation$p(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;)Landroidx/compose/animation/core/Animatable;

    move-result-object v4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v3, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;->$spec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-object v6, v3

    check-cast v6, Landroidx/compose/animation/core/AnimationSpec;

    const/4 v7, 0x0

    new-instance v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1$1;

    iget-object v8, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    invoke-direct {v3, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;)V

    move-object v8, v3

    check-cast v8, Lkotlin/jvm/functions/Function1;

    move-object v9, v1

    check-cast v9, Lkotlin/coroutines/Continuation;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v3, 0x2

    iput v3, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;->label:I

    invoke-static/range {v4 .. v11}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v3, v0, :cond_1

    .line 153
    return-object v0

    .line 156
    :cond_1
    move-object v0, v1

    .line 160
    .end local v1    # "this":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;
    .restart local v0    # "this":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;
    :goto_1
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    invoke-static {v1, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->access$setAppearanceAnimationInProgress(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;Z)V

    .line 161
    nop

    .line 162
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 160
    :goto_2
    iget-object v3, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    invoke-static {v3, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->access$setAppearanceAnimationInProgress(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;Z)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
