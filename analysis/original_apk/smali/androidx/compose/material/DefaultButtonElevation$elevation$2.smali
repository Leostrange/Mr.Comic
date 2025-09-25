.class final Landroidx/compose/material/DefaultButtonElevation$elevation$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Button.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/DefaultButtonElevation;->elevation(ZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
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
    c = "androidx.compose.material.DefaultButtonElevation$elevation$2"
    f = "Button.kt"
    i = {}
    l = {
        0x22a,
        0x232
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $animatable:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Landroidx/compose/ui/unit/Dp;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $enabled:Z

.field final synthetic $interaction:Landroidx/compose/foundation/interaction/Interaction;

.field final synthetic $target:F

.field label:I

.field final synthetic this$0:Landroidx/compose/material/DefaultButtonElevation;


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/Animatable;FZLandroidx/compose/material/DefaultButtonElevation;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Animatable<",
            "Landroidx/compose/ui/unit/Dp;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;FZ",
            "Landroidx/compose/material/DefaultButtonElevation;",
            "Landroidx/compose/foundation/interaction/Interaction;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material/DefaultButtonElevation$elevation$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->$animatable:Landroidx/compose/animation/core/Animatable;

    iput p2, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->$target:F

    iput-boolean p3, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->$enabled:Z

    iput-object p4, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->this$0:Landroidx/compose/material/DefaultButtonElevation;

    iput-object p5, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v7, Landroidx/compose/material/DefaultButtonElevation$elevation$2;

    iget-object v1, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->$animatable:Landroidx/compose/animation/core/Animatable;

    iget v2, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->$target:F

    iget-boolean v3, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->$enabled:Z

    iget-object v4, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->this$0:Landroidx/compose/material/DefaultButtonElevation;

    iget-object v5, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/DefaultButtonElevation$elevation$2;-><init>(Landroidx/compose/animation/core/Animatable;FZLandroidx/compose/material/DefaultButtonElevation;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/DefaultButtonElevation$elevation$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 550
    iget v1, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Landroidx/compose/material/DefaultButtonElevation$elevation$2;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v0    # "this":Landroidx/compose/material/DefaultButtonElevation$elevation$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v0, p0

    .restart local v0    # "this":Landroidx/compose/material/DefaultButtonElevation$elevation$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Landroidx/compose/material/DefaultButtonElevation$elevation$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 551
    .local v1, "this":Landroidx/compose/material/DefaultButtonElevation$elevation$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->$animatable:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->getTargetValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v2

    iget v3, v1, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->$target:F

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v2

    if-nez v2, :cond_6

    .line 552
    iget-boolean v2, v1, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->$enabled:Z

    if-nez v2, :cond_1

    .line 554
    iget-object v2, v1, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->$animatable:Landroidx/compose/animation/core/Animatable;

    iget v3, v1, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->$target:F

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x1

    iput v5, v1, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->label:I

    invoke-virtual {v2, v3, v4}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 550
    return-object v0

    .line 554
    :cond_0
    move-object v0, v1

    .end local v1    # "this":Landroidx/compose/material/DefaultButtonElevation$elevation$2;
    .restart local v0    # "this":Landroidx/compose/material/DefaultButtonElevation$elevation$2;
    :goto_0
    move-object v1, v0

    goto :goto_3

    .line 556
    .end local v0    # "this":Landroidx/compose/material/DefaultButtonElevation$elevation$2;
    .restart local v1    # "this":Landroidx/compose/material/DefaultButtonElevation$elevation$2;
    :cond_1
    iget-object v2, v1, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->$animatable:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->getTargetValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v2

    .line 557
    iget-object v3, v1, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->this$0:Landroidx/compose/material/DefaultButtonElevation;

    invoke-static {v3}, Landroidx/compose/material/DefaultButtonElevation;->access$getPressedElevation$p(Landroidx/compose/material/DefaultButtonElevation;)F

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    new-instance v2, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    sget-object v3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v5

    invoke-direct {v2, v5, v6, v4}, Landroidx/compose/foundation/interaction/PressInteraction$Press;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v2

    check-cast v4, Landroidx/compose/foundation/interaction/Interaction;

    goto :goto_1

    .line 558
    :cond_2
    iget-object v3, v1, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->this$0:Landroidx/compose/material/DefaultButtonElevation;

    invoke-static {v3}, Landroidx/compose/material/DefaultButtonElevation;->access$getHoveredElevation$p(Landroidx/compose/material/DefaultButtonElevation;)F

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    invoke-direct {v2}, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;-><init>()V

    move-object v4, v2

    check-cast v4, Landroidx/compose/foundation/interaction/Interaction;

    goto :goto_1

    .line 559
    :cond_3
    iget-object v3, v1, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->this$0:Landroidx/compose/material/DefaultButtonElevation;

    invoke-static {v3}, Landroidx/compose/material/DefaultButtonElevation;->access$getFocusedElevation$p(Landroidx/compose/material/DefaultButtonElevation;)F

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    invoke-direct {v2}, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;-><init>()V

    move-object v4, v2

    check-cast v4, Landroidx/compose/foundation/interaction/Interaction;

    goto :goto_1

    .line 560
    :cond_4
    nop

    .line 556
    :goto_1
    move-object v2, v4

    .line 562
    .local v2, "lastInteraction":Landroidx/compose/foundation/interaction/Interaction;
    iget-object v3, v1, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->$animatable:Landroidx/compose/animation/core/Animatable;

    .line 565
    iget v4, v1, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->$target:F

    .line 563
    nop

    .line 564
    .end local v2    # "lastInteraction":Landroidx/compose/foundation/interaction/Interaction;
    iget-object v5, v1, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    .line 562
    const/4 v7, 0x2

    iput v7, v1, Landroidx/compose/material/DefaultButtonElevation$elevation$2;->label:I

    invoke-static {v3, v4, v2, v5, v6}, Landroidx/compose/material/ElevationKt;->animateElevation-rAjV9yQ(Landroidx/compose/animation/core/Animatable;FLandroidx/compose/foundation/interaction/Interaction;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_5

    .line 550
    return-object v0

    .line 562
    :cond_5
    move-object v0, v1

    .line 569
    .end local v1    # "this":Landroidx/compose/material/DefaultButtonElevation$elevation$2;
    .restart local v0    # "this":Landroidx/compose/material/DefaultButtonElevation$elevation$2;
    :goto_2
    move-object v1, v0

    .end local v0    # "this":Landroidx/compose/material/DefaultButtonElevation$elevation$2;
    .restart local v1    # "this":Landroidx/compose/material/DefaultButtonElevation$elevation$2;
    :cond_6
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
