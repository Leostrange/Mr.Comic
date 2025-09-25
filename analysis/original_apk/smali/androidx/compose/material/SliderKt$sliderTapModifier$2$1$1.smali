.class final Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/gestures/PressGestureScope;",
        "Landroidx/compose/ui/geometry/Offset;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/gestures/PressGestureScope;",
        "pos",
        "Landroidx/compose/ui/geometry/Offset;"
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
    c = "androidx.compose.material.SliderKt$sliderTapModifier$2$1$1"
    f = "Slider.kt"
    i = {}
    l = {
        0x397
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $isRtl:Z

.field final synthetic $maxPx:F

.field final synthetic $pressOffset:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $rawOffset:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field synthetic J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ZFLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZF",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->$isRtl:Z

    iput p2, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->$maxPx:F

    iput-object p3, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->$pressOffset:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->$rawOffset:Landroidx/compose/runtime/State;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/gestures/PressGestureScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v1

    move-object v3, p3

    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->invoke-d-4ec7I(Landroidx/compose/foundation/gestures/PressGestureScope;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke-d-4ec7I(Landroidx/compose/foundation/gestures/PressGestureScope;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/PressGestureScope;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v6, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;

    iget-boolean v1, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->$isRtl:Z

    iget v2, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->$maxPx:F

    iget-object v3, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->$pressOffset:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->$rawOffset:Landroidx/compose/runtime/State;

    move-object v0, v6

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;-><init>(ZFLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->L$0:Ljava/lang/Object;

    iput-wide p2, v6, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->J$0:J

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v6, v0}, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 915
    iget v1, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/compose/foundation/gestures/GestureCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 920
    :catch_0
    move-exception v1

    goto :goto_2

    .line 915
    .end local v0    # "this":Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/gestures/PressGestureScope;

    .local v2, "$this$detectTapGestures":Landroidx/compose/foundation/gestures/PressGestureScope;
    iget-wide v3, v1, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->J$0:J

    .line 916
    .local v3, "pos":J
    iget-boolean v5, v1, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->$isRtl:Z

    if-eqz v5, :cond_0

    iget v5, v1, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->$maxPx:F

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    :cond_0
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v5

    .end local v3    # "pos":J
    :goto_0
    move v3, v5

    .line 917
    .local v3, "to":F
    iget-object v4, v1, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->$pressOffset:Landroidx/compose/runtime/MutableState;

    iget-object v5, v1, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->$rawOffset:Landroidx/compose/runtime/State;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    sub-float v5, v3, v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v4, v5}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 918
    .end local v3    # "to":F
    nop

    .line 919
    :try_start_1
    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x1

    iput v4, v1, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->label:I

    invoke-interface {v2, v3}, Landroidx/compose/foundation/gestures/PressGestureScope;->awaitRelease(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Landroidx/compose/foundation/gestures/GestureCancellationException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "$this$detectTapGestures":Landroidx/compose/foundation/gestures/PressGestureScope;
    if-ne v3, v0, :cond_1

    .line 915
    return-object v0

    .line 919
    :cond_1
    move-object v0, v1

    .end local v1    # "this":Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;
    .restart local v0    # "this":Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;
    :goto_1
    goto :goto_3

    .line 920
    .end local v0    # "this":Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;
    .restart local v1    # "this":Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 921
    .end local v1    # "this":Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;
    .restart local v0    # "this":Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;
    :goto_2
    iget-object v1, v0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->$pressOffset:Landroidx/compose/runtime/MutableState;

    const/4 v2, 0x0

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 923
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
