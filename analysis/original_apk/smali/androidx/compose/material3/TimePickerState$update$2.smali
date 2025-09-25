.class final Landroidx/compose/material3/TimePickerState$update$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TimePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TimePickerState;->update$material3_release(FZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
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
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        ""
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
    c = "androidx.compose.material3.TimePickerState$update$2"
    f = "TimePicker.kt"
    i = {}
    l = {
        0x2b1,
        0x2b3
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $fromTap:Z

.field final synthetic $value:F

.field label:I

.field final synthetic this$0:Landroidx/compose/material3/TimePickerState;


# direct methods
.method constructor <init>(Landroidx/compose/material3/TimePickerState;FZLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/TimePickerState;",
            "FZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/TimePickerState$update$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/TimePickerState$update$2;->this$0:Landroidx/compose/material3/TimePickerState;

    iput p2, p0, Landroidx/compose/material3/TimePickerState$update$2;->$value:F

    iput-boolean p3, p0, Landroidx/compose/material3/TimePickerState$update$2;->$fromTap:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/material3/TimePickerState$update$2;

    iget-object v1, p0, Landroidx/compose/material3/TimePickerState$update$2;->this$0:Landroidx/compose/material3/TimePickerState;

    iget v2, p0, Landroidx/compose/material3/TimePickerState$update$2;->$value:F

    iget-boolean v3, p0, Landroidx/compose/material3/TimePickerState$update$2;->$fromTap:Z

    invoke-direct {v0, v1, v2, v3, p1}, Landroidx/compose/material3/TimePickerState$update$2;-><init>(Landroidx/compose/material3/TimePickerState;FZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TimePickerState$update$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TimePickerState$update$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/TimePickerState$update$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/compose/material3/TimePickerState$update$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 679
    iget v1, p0, Landroidx/compose/material3/TimePickerState$update$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Landroidx/compose/material3/TimePickerState$update$2;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v0    # "this":Landroidx/compose/material3/TimePickerState$update$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v0, p0

    .restart local v0    # "this":Landroidx/compose/material3/TimePickerState$update$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v0    # "this":Landroidx/compose/material3/TimePickerState$update$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 680
    .local v1, "this":Landroidx/compose/material3/TimePickerState$update$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Landroidx/compose/material3/TimePickerState$update$2;->this$0:Landroidx/compose/material3/TimePickerState;

    invoke-virtual {v2}, Landroidx/compose/material3/TimePickerState;->getSelection-JiIwxys$material3_release()I

    move-result v2

    sget-object v3, Landroidx/compose/material3/Selection;->Companion:Landroidx/compose/material3/Selection$Companion;

    invoke-virtual {v3}, Landroidx/compose/material3/Selection$Companion;->getHour-JiIwxys()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/material3/Selection;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 681
    iget-object v2, v1, Landroidx/compose/material3/TimePickerState$update$2;->this$0:Landroidx/compose/material3/TimePickerState;

    iget-object v3, v1, Landroidx/compose/material3/TimePickerState$update$2;->this$0:Landroidx/compose/material3/TimePickerState;

    iget v4, v1, Landroidx/compose/material3/TimePickerState$update$2;->$value:F

    invoke-static {v3, v4}, Landroidx/compose/material3/TimePickerState;->access$toHour(Landroidx/compose/material3/TimePickerState;F)I

    move-result v3

    rem-int/lit8 v3, v3, 0xc

    int-to-float v3, v3

    const v4, 0x3f060a92

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroidx/compose/material3/TimePickerState;->setHourAngle$material3_release(F)V

    goto :goto_0

    .line 682
    :cond_0
    iget-boolean v2, v1, Landroidx/compose/material3/TimePickerState$update$2;->$fromTap:Z

    const v3, 0x3dd67750

    if-eqz v2, :cond_1

    .line 683
    iget-object v2, v1, Landroidx/compose/material3/TimePickerState$update$2;->this$0:Landroidx/compose/material3/TimePickerState;

    iget-object v4, v1, Landroidx/compose/material3/TimePickerState$update$2;->this$0:Landroidx/compose/material3/TimePickerState;

    iget v5, v1, Landroidx/compose/material3/TimePickerState$update$2;->$value:F

    invoke-static {v4, v5}, Landroidx/compose/material3/TimePickerState;->access$toMinute(Landroidx/compose/material3/TimePickerState;F)I

    move-result v4

    iget-object v5, v1, Landroidx/compose/material3/TimePickerState$update$2;->this$0:Landroidx/compose/material3/TimePickerState;

    iget v6, v1, Landroidx/compose/material3/TimePickerState$update$2;->$value:F

    invoke-static {v5, v6}, Landroidx/compose/material3/TimePickerState;->access$toMinute(Landroidx/compose/material3/TimePickerState;F)I

    move-result v5

    rem-int/lit8 v5, v5, 0x5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-virtual {v2, v4}, Landroidx/compose/material3/TimePickerState;->setMinuteAngle$material3_release(F)V

    goto :goto_0

    .line 685
    :cond_1
    iget-object v2, v1, Landroidx/compose/material3/TimePickerState$update$2;->this$0:Landroidx/compose/material3/TimePickerState;

    iget-object v4, v1, Landroidx/compose/material3/TimePickerState$update$2;->this$0:Landroidx/compose/material3/TimePickerState;

    iget v5, v1, Landroidx/compose/material3/TimePickerState$update$2;->$value:F

    invoke-static {v4, v5}, Landroidx/compose/material3/TimePickerState;->access$toMinute(Landroidx/compose/material3/TimePickerState;F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-virtual {v2, v4}, Landroidx/compose/material3/TimePickerState;->setMinuteAngle$material3_release(F)V

    .line 688
    :goto_0
    iget-boolean v2, v1, Landroidx/compose/material3/TimePickerState$update$2;->$fromTap:Z

    if-eqz v2, :cond_3

    .line 689
    iget-object v2, v1, Landroidx/compose/material3/TimePickerState$update$2;->this$0:Landroidx/compose/material3/TimePickerState;

    invoke-virtual {v2}, Landroidx/compose/material3/TimePickerState;->getCurrentAngle$material3_release()Landroidx/compose/animation/core/Animatable;

    move-result-object v2

    iget-object v3, v1, Landroidx/compose/material3/TimePickerState$update$2;->this$0:Landroidx/compose/material3/TimePickerState;

    invoke-virtual {v3}, Landroidx/compose/material3/TimePickerState;->getMinuteAngle$material3_release()F

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x1

    iput v5, v1, Landroidx/compose/material3/TimePickerState$update$2;->label:I

    invoke-virtual {v2, v3, v4}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    .line 679
    return-object v0

    .line 689
    :cond_2
    move-object v0, v1

    .end local v1    # "this":Landroidx/compose/material3/TimePickerState$update$2;
    .restart local v0    # "this":Landroidx/compose/material3/TimePickerState$update$2;
    :goto_1
    goto :goto_3

    .line 691
    .end local v0    # "this":Landroidx/compose/material3/TimePickerState$update$2;
    .restart local v1    # "this":Landroidx/compose/material3/TimePickerState$update$2;
    :cond_3
    iget-object v2, v1, Landroidx/compose/material3/TimePickerState$update$2;->this$0:Landroidx/compose/material3/TimePickerState;

    invoke-virtual {v2}, Landroidx/compose/material3/TimePickerState;->getCurrentAngle$material3_release()Landroidx/compose/animation/core/Animatable;

    move-result-object v2

    iget-object v3, v1, Landroidx/compose/material3/TimePickerState$update$2;->this$0:Landroidx/compose/material3/TimePickerState;

    iget v4, v1, Landroidx/compose/material3/TimePickerState$update$2;->$value:F

    invoke-static {v3, v4}, Landroidx/compose/material3/TimePickerState;->access$offsetHour(Landroidx/compose/material3/TimePickerState;F)F

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x2

    iput v5, v1, Landroidx/compose/material3/TimePickerState$update$2;->label:I

    invoke-virtual {v2, v3, v4}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_4

    .line 679
    return-object v0

    .line 691
    :cond_4
    move-object v0, v1

    .line 693
    .end local v1    # "this":Landroidx/compose/material3/TimePickerState$update$2;
    .restart local v0    # "this":Landroidx/compose/material3/TimePickerState$update$2;
    :goto_2
    nop

    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
