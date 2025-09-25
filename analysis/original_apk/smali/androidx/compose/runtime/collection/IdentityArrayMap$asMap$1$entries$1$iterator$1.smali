.class final Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "IdentityArrayMap.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-",
        "Ljava/util/Map$Entry<",
        "+TKey;+TValue;>;>;",
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010&\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\u0004\u0008\u0001\u0010\u0004*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\u00060\u0005H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Key",
        "",
        "Value",
        "Lkotlin/sequences/SequenceScope;",
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
    c = "androidx.compose.runtime.collection.IdentityArrayMap$asMap$1$entries$1$iterator$1"
    f = "IdentityArrayMap.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0xe5
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "index"
    }
    s = {
        "L$0",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/runtime/collection/IdentityArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/IdentityArrayMap<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/collection/IdentityArrayMap;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/IdentityArrayMap<",
            "TKey;TValue;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;->this$0:Landroidx/compose/runtime/collection/IdentityArrayMap;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;

    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;->this$0:Landroidx/compose/runtime/collection/IdentityArrayMap;

    invoke-direct {v0, v1, p2}, Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;-><init>(Landroidx/compose/runtime/collection/IdentityArrayMap;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/SequenceScope<",
            "-",
            "Ljava/util/Map$Entry<",
            "+TKey;+TValue;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 227
    iget v1, p0, Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v1, p0

    .local v1, "this":Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;
    .local p1, "$result":Ljava/lang/Object;
    iget v3, v1, Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;->I$1:I

    iget v4, v1, Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;->I$0:I

    .local v4, "index":I
    iget-object v5, v1, Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlin/sequences/SequenceScope;

    .local v5, "$this$sequence":Lkotlin/sequences/SequenceScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "this":Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;
    .end local v4    # "index":I
    .end local v5    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlin/sequences/SequenceScope;

    .line 228
    .local v3, "$this$sequence":Lkotlin/sequences/SequenceScope;
    const/4 v4, 0x0

    .restart local v4    # "index":I
    iget-object v5, v1, Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;->this$0:Landroidx/compose/runtime/collection/IdentityArrayMap;

    invoke-virtual {v5}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getSize()I

    move-result v5

    move v8, v5

    move-object v5, v3

    move v3, v8

    .end local v3    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    .restart local v5    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    :goto_0
    if-ge v4, v3, :cond_1

    .line 229
    nop

    .line 230
    new-instance v6, Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1$1;

    iget-object v7, v1, Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;->this$0:Landroidx/compose/runtime/collection/IdentityArrayMap;

    invoke-direct {v6, v7, v4}, Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1$1;-><init>(Landroidx/compose/runtime/collection/IdentityArrayMap;I)V

    move-object v7, v1

    check-cast v7, Lkotlin/coroutines/Continuation;

    .line 229
    iput-object v5, v1, Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;->L$0:Ljava/lang/Object;

    iput v4, v1, Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;->I$0:I

    iput v3, v1, Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;->I$1:I

    iput v2, v1, Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1$entries$1$iterator$1;->label:I

    invoke-virtual {v5, v6, v7}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_0

    .line 227
    return-object v0

    .line 228
    :cond_0
    :goto_1
    add-int/2addr v4, v2

    goto :goto_0

    .line 238
    .end local v4    # "index":I
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
