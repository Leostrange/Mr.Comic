.class final Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TextFieldCoreModifier.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroidx/compose/foundation/text2/input/TextFieldCharSequence;"
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
    c = "androidx.compose.foundation.text2.input.internal.TextFieldCoreModifierNode$updateNode$2$1$2"
    f = "TextFieldCoreModifier.kt"
    i = {}
    l = {
        0xe6,
        0xe8
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2$1$2;->this$0:Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2$1$2;

    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2$1$2;->this$0:Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;

    invoke-direct {v0, v1, p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2$1$2;-><init>(Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2$1$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2$1$2;->invoke(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 228
    iget v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2$1$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2$1$2;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v0    # "this":Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2$1$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2$1$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "this":Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2$1$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 230
    .restart local v1    # "this":Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2$1$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2$1$2;->this$0:Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;

    invoke-static {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->access$getCursorAlpha$p(Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;)Landroidx/compose/animation/core/Animatable;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x1

    iput v5, v1, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2$1$2;->label:I

    invoke-virtual {v2, v3, v4}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 228
    return-object v0

    .line 232
    :cond_0
    :goto_0
    iget-object v2, v1, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2$1$2;->this$0:Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;

    invoke-static {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->access$getCursorAlpha$p(Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;)Landroidx/compose/animation/core/Animatable;

    move-result-object v3

    const/4 v2, 0x0

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierKt;->access$getCursorAnimationSpec$p()Landroidx/compose/animation/core/AnimationSpec;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v1

    check-cast v8, Lkotlin/coroutines/Continuation;

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v2, 0x2

    iput v2, v1, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2$1$2;->label:I

    invoke-static/range {v3 .. v10}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_1

    .line 228
    return-object v0

    .line 232
    :cond_1
    move-object v0, v1

    .line 233
    .end local v1    # "this":Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2$1$2;
    .restart local v0    # "this":Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2$1$2;
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
