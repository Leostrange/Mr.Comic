.class final synthetic Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt;
.super Ljava/lang/Object;
.source "Channels.common.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannels.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,104:1\n58#1,11:105\n81#1:116\n58#1,6:117\n82#1,2:123\n68#1:125\n64#1,3:126\n*S KotlinDebug\n*F\n+ 1 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n81#1:105,11\n92#1:116\n92#1:117,6\n92#1:123,2\n92#1:125\n92#1:126,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\u001a\u001a\u0010\u0002\u001a\u00020\u0003*\u0006\u0012\u0002\u0008\u00030\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0001\u001aP\u0010\u0007\u001a\u0002H\u0008\"\u0004\u0008\u0000\u0010\t\"\u0004\u0008\u0001\u0010\u0008*\u0008\u0012\u0004\u0012\u0002H\t0\u00042\u001d\u0010\n\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\t0\u0004\u0012\u0004\u0012\u0002H\u00080\u000b\u00a2\u0006\u0002\u0008\u000cH\u0086\u0008\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0002\u0010\r\u001a2\u0010\u000e\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\t*\u0008\u0012\u0004\u0012\u0002H\t0\u00042\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u00020\u00030\u000bH\u0086H\u00a2\u0006\u0002\u0010\u0010\u001a$\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\t0\u0012\"\u0008\u0008\u0000\u0010\t*\u00020\u0013*\u0008\u0012\u0004\u0012\u0002H\t0\u0004H\u0007\u001a$\u0010\u0014\u001a\u0004\u0018\u0001H\t\"\u0008\u0008\u0000\u0010\t*\u00020\u0013*\u0008\u0012\u0004\u0012\u0002H\t0\u0004H\u0087@\u00a2\u0006\u0002\u0010\u0015\u001a$\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0017\"\u0004\u0008\u0000\u0010\t*\u0008\u0012\u0004\u0012\u0002H\t0\u0004H\u0086@\u00a2\u0006\u0002\u0010\u0015\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "DEFAULT_CLOSE_MESSAGE",
        "",
        "cancelConsumed",
        "",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "cause",
        "",
        "consume",
        "R",
        "E",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "consumeEach",
        "action",
        "(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onReceiveOrNull",
        "Lkotlinx/coroutines/selects/SelectClause1;",
        "",
        "receiveOrNull",
        "(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "toList",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x5
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
    xs = "kotlinx/coroutines/channels/ChannelsKt"
.end annotation


# direct methods
.method public static final cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "$this$cancelConsumed"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 99
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    move-object v1, p1

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 100
    .local v2, "$i$a$-let-ChannelsKt__Channels_commonKt$cancelConsumed$1":I
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "Channel was consumed, consumer had failed"

    invoke-static {v0, v1}, Lkotlinx/coroutines/ExceptionsKt;->CancellationException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    .line 99
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-ChannelsKt__Channels_commonKt$cancelConsumed$1":I
    :cond_1
    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 102
    return-void
.end method

.method public static final consume(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this$consume"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;+TR;>;)TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 58
    .local v0, "$i$f$consume":I
    nop

    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, "cause":Ljava/lang/Throwable;
    nop

    .line 63
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 68
    invoke-static {p0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 63
    return-object v3

    .line 64
    :catchall_0
    move-exception v3

    .line 65
    .local v3, "e":Ljava/lang/Throwable;
    move-object v1, v3

    .line 66
    nop

    .end local v0    # "$i$f$consume":I
    .end local v1    # "cause":Ljava/lang/Throwable;
    .end local p0    # "$this$consume":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p1    # "block":Lkotlin/jvm/functions/Function1;
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v0    # "$i$f$consume":I
    .restart local v1    # "cause":Ljava/lang/Throwable;
    .restart local p0    # "$this$consume":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p1    # "block":Lkotlin/jvm/functions/Function1;
    :catchall_1
    move-exception v3

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {p0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method

.method public static final consumeEach(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 80
    iget v2, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$f$consumeEach":I
    const/4 p1, 0x0

    .local p1, "$i$f$consume":I
    const/4 v2, 0x0

    .local v2, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2":I
    iget-object v4, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v5, 0x0

    .local v5, "cause$iv":Ljava/lang/Throwable;
    iget-object v6, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v6, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v7, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .local v7, "action":Lkotlin/jvm/functions/Function1;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move v4, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    .line 111
    .end local v2    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2":I
    .end local v7    # "action":Lkotlin/jvm/functions/Function1;
    :catchall_0
    move-exception v1

    goto/16 :goto_3

    .line 80
    .end local v5    # "cause$iv":Ljava/lang/Throwable;
    .end local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$f$consumeEach":I
    .end local p1    # "$i$f$consume":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$consumeEach":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p1, "action":Lkotlin/jvm/functions/Function1;
    const/4 v2, 0x0

    .line 81
    .local v2, "$i$f$consumeEach":I
    move-object v6, p0

    .end local p0    # "$this$consumeEach":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 p0, 0x0

    .line 105
    .local p0, "$i$f$consume":I
    nop

    .line 108
    const/4 v5, 0x0

    .line 109
    .restart local v5    # "cause$iv":Ljava/lang/Throwable;
    nop

    .line 110
    move-object v4, v6

    .local v4, "$this$consumeEach_u24lambda_u241":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v7, 0x0

    .line 82
    .local v7, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2":I
    :try_start_1
    invoke-interface {v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v4, v8

    move-object v9, p1

    move p1, p0

    move p0, v2

    move v2, v7

    move-object v7, v9

    .end local v4    # "$this$consumeEach_u24lambda_u241":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v2, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2":I
    .local v7, "action":Lkotlin/jvm/functions/Function1;
    .local p0, "$i$f$consumeEach":I
    .local p1, "$i$f$consume":I
    :goto_1
    :try_start_2
    iput-object v7, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$0:Ljava/lang/Object;

    iput-object v6, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$1:Ljava/lang/Object;

    iput-object v4, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$2:Ljava/lang/Object;

    iput v3, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->label:I

    invoke-interface {v4, p2}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v8, v1, :cond_1

    .line 80
    return-object v1

    .line 82
    :cond_1
    move-object v9, v1

    move-object v1, v0

    move-object v0, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move v4, v2

    move-object v2, v9

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2":I
    .end local v5    # "cause$iv":Ljava/lang/Throwable;
    .local v1, "$result":Ljava/lang/Object;
    .local v4, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2":I
    .local v6, "cause$iv":Ljava/lang/Throwable;
    .local v7, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v8, "action":Lkotlin/jvm/functions/Function1;
    :goto_2
    :try_start_3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "e":Ljava/lang/Object;
    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    move-object v1, v2

    move v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto :goto_1

    .line 83
    .end local v0    # "e":Ljava/lang/Object;
    .end local v8    # "action":Lkotlin/jvm/functions/Function1;
    :cond_2
    nop

    .end local v4    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 110
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 115
    invoke-static {v7, v6}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 110
    .end local v6    # "cause$iv":Ljava/lang/Throwable;
    .end local v7    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    nop

    .line 115
    .end local p1    # "$i$f$consume":I
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 83
    return-object p1

    .line 111
    .restart local v6    # "cause$iv":Ljava/lang/Throwable;
    .restart local v7    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p1    # "$i$f$consume":I
    :catchall_1
    move-exception v0

    move-object v5, v6

    move-object v6, v7

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v7    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p1    # "$i$f$consume":I
    .local v0, "$result":Ljava/lang/Object;
    .local v2, "$i$f$consumeEach":I
    .restart local v5    # "cause$iv":Ljava/lang/Throwable;
    .local v6, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p0, "$i$f$consume":I
    :catchall_2
    move-exception v1

    move p1, p0

    move p0, v2

    .line 112
    .end local v2    # "$i$f$consumeEach":I
    .local v1, "e$iv":Ljava/lang/Throwable;
    .local p0, "$i$f$consumeEach":I
    .restart local p1    # "$i$f$consume":I
    :goto_3
    move-object v2, v1

    .line 113
    .end local v5    # "cause$iv":Ljava/lang/Throwable;
    .local v2, "cause$iv":Ljava/lang/Throwable;
    nop

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "cause$iv":Ljava/lang/Throwable;
    .end local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$f$consumeEach":I
    .end local p1    # "$i$f$consume":I
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 115
    .end local v1    # "e$iv":Ljava/lang/Throwable;
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v2    # "cause$iv":Ljava/lang/Throwable;
    .restart local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p0    # "$i$f$consumeEach":I
    .restart local p1    # "$i$f$consume":I
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :catchall_3
    move-exception v1

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {v6, v2}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final consumeEach$$forInline(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p0, "$this$consumeEach"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p1, "action"    # Lkotlin/jvm/functions/Function1;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    .local v0, "$i$f$consumeEach":I
    move-object v1, p0

    .local v1, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v2, 0x0

    .line 105
    .local v2, "$i$f$consume":I
    nop

    .line 108
    const/4 v3, 0x0

    .line 109
    .local v3, "cause$iv":Ljava/lang/Throwable;
    nop

    .line 110
    const/4 v4, 0x1

    :try_start_0
    move-object v5, v1

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v5, "$this$consumeEach_u24lambda_u241":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v6, 0x0

    .line 82
    .local v6, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2":I
    invoke-interface {v5}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v7

    :goto_0
    const/4 v8, 0x3

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    const/4 v8, 0x0

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "e":Ljava/lang/Object;
    invoke-interface {p1, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 83
    .end local v8    # "e":Ljava/lang/Object;
    :cond_0
    nop

    .end local v5    # "$this$consumeEach_u24lambda_u241":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v6    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 115
    invoke-static {v1, v3}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 110
    nop

    .line 115
    .end local v1    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v2    # "$i$f$consume":I
    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 83
    return-object v1

    .line 111
    .restart local v1    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v2    # "$i$f$consume":I
    .restart local v3    # "cause$iv":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    .line 112
    .local v5, "e$iv":Ljava/lang/Throwable;
    move-object v3, v5

    .line 113
    nop

    .end local v0    # "$i$f$consumeEach":I
    .end local v1    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v2    # "$i$f$consume":I
    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .end local p0    # "$this$consumeEach":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p1    # "action":Lkotlin/jvm/functions/Function1;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_1
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    .end local v5    # "e$iv":Ljava/lang/Throwable;
    .restart local v0    # "$i$f$consumeEach":I
    .restart local v1    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v2    # "$i$f$consume":I
    .restart local v3    # "cause$iv":Ljava/lang/Throwable;
    .restart local p0    # "$this$consumeEach":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p1    # "action":Lkotlin/jvm/functions/Function1;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_1
    move-exception v5

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {v1, v3}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v5
.end method

.method public static final synthetic onReceiveOrNull(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/selects/SelectClause1;
    .locals 1
    .param p0, "$this$onReceiveOrNull"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Deprecated in the favour of \'onReceiveCatching\'"
    .end annotation

    .line 48
    const-string/jumbo v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveChannel<E of kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.onReceiveOrNull?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->getOnReceiveOrNull()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic receiveOrNull(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this$receiveOrNull"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Deprecated in the favour of \'receiveCatching\'"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "receiveCatching().getOrNull()"
            imports = {}
        .end subannotation
    .end annotation

    .line 36
    const-string/jumbo v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveChannel<E of kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.receiveOrNull?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->receiveOrNull(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final toList(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 91
    iget v2, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$a$-buildList-ChannelsKt__Channels_commonKt$toList$2":I
    const/4 v2, 0x0

    .local v2, "$i$f$consumeEach":I
    const/4 v3, 0x0

    .local v3, "$i$f$consume":I
    const/4 v4, 0x0

    .local v4, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    iget-object v5, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v6, 0x0

    .local v6, "cause$iv$iv":Ljava/lang/Throwable;
    iget-object v7, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v7, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v8, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    .local v8, "$this$toList_u24lambda_u243":Ljava/util/List;
    iget-object v9, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->L$0:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    .line 126
    .end local v4    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v8    # "$this$toList_u24lambda_u243":Ljava/util/List;
    :catchall_0
    move-exception v1

    goto/16 :goto_3

    .line 91
    .end local v2    # "$i$f$consumeEach":I
    .end local v3    # "$i$f$consume":I
    .end local v6    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v7    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$a$-buildList-ChannelsKt__Channels_commonKt$toList$2":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$toList":Lkotlinx/coroutines/channels/ReceiveChannel;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    .local v3, "$this$toList_u24lambda_u243":Ljava/util/List;
    const/4 v4, 0x0

    .line 92
    .local v4, "$i$a$-buildList-ChannelsKt__Channels_commonKt$toList$2":I
    nop

    .local p0, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v5, 0x0

    .line 116
    .local v5, "$i$f$consumeEach":I
    move-object v7, p0

    .end local p0    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v7    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 p0, 0x0

    .line 117
    .local p0, "$i$f$consume":I
    nop

    .line 120
    const/4 v6, 0x0

    .line 121
    .restart local v6    # "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .line 122
    move-object v8, v7

    .local v8, "$this$consumeEach_u24lambda_u241$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v9, 0x0

    .line 123
    .local v9, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :try_start_1
    invoke-interface {v8}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v8, v3

    move v3, p0

    move p0, v4

    move v4, v9

    move-object v9, v2

    move v2, v5

    move-object v5, v10

    .end local v5    # "$i$f$consumeEach":I
    .end local v9    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .restart local v2    # "$i$f$consumeEach":I
    .local v3, "$i$f$consume":I
    .local v4, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v8, "$this$toList_u24lambda_u243":Ljava/util/List;
    .local p0, "$i$a$-buildList-ChannelsKt__Channels_commonKt$toList$2":I
    :goto_1
    :try_start_2
    iput-object v9, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->L$0:Ljava/lang/Object;

    iput-object v8, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->L$1:Ljava/lang/Object;

    iput-object v7, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->L$2:Ljava/lang/Object;

    iput-object v5, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->L$3:Ljava/lang/Object;

    const/4 v10, 0x1

    iput v10, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->label:I

    invoke-interface {v5, p1}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v10, v1, :cond_1

    .line 91
    return-object v1

    .line 123
    :cond_1
    move-object v13, v1

    move-object v1, v0

    move-object v0, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move-object v2, v13

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "$i$f$consumeEach":I
    .end local v6    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v1, "$result":Ljava/lang/Object;
    .local v3, "$i$f$consumeEach":I
    .local v4, "$i$f$consume":I
    .local v5, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v7, "cause$iv$iv":Ljava/lang/Throwable;
    .local v8, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v9, "$this$toList_u24lambda_u243":Ljava/util/List;
    :goto_2
    :try_start_3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "e$iv":Ljava/lang/Object;
    move-object v11, v0

    .local v11, "it":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 93
    .local v12, "$i$a$-consumeEach-ChannelsKt__Channels_commonKt$toList$2$1":I
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    nop

    .line 123
    .end local v0    # "e$iv":Ljava/lang/Object;
    .end local v11    # "it":Ljava/lang/Object;
    .end local v12    # "$i$a$-consumeEach-ChannelsKt__Channels_commonKt$toList$2$1":I
    move-object v0, v1

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    goto :goto_1

    .line 124
    .end local v9    # "$this$toList_u24lambda_u243":Ljava/util/List;
    :cond_2
    nop

    .end local v5    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    nop

    .line 125
    invoke-static {v8, v7}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 122
    .end local v7    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v8    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    nop

    .line 124
    .end local v4    # "$i$f$consume":I
    nop

    .line 95
    .end local v3    # "$i$f$consumeEach":I
    nop

    .line 91
    .end local p0    # "$i$a$-buildList-ChannelsKt__Channels_commonKt$toList$2":I
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 95
    return-object p0

    .line 126
    .restart local v3    # "$i$f$consumeEach":I
    .restart local v4    # "$i$f$consume":I
    .restart local v7    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v8    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p0    # "$i$a$-buildList-ChannelsKt__Channels_commonKt$toList$2":I
    :catchall_1
    move-exception v0

    move v2, v3

    move v3, v4

    move-object v6, v7

    move-object v7, v8

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_3

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v3    # "$i$f$consumeEach":I
    .end local v8    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v0, "$result":Ljava/lang/Object;
    .local v4, "$i$a$-buildList-ChannelsKt__Channels_commonKt$toList$2":I
    .local v5, "$i$f$consumeEach":I
    .restart local v6    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v7, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p0, "$i$f$consume":I
    :catchall_2
    move-exception v1

    move v3, p0

    move p0, v4

    move v2, v5

    .line 127
    .end local v4    # "$i$a$-buildList-ChannelsKt__Channels_commonKt$toList$2":I
    .end local v5    # "$i$f$consumeEach":I
    .local v1, "e$iv$iv":Ljava/lang/Throwable;
    .restart local v2    # "$i$f$consumeEach":I
    .local v3, "$i$f$consume":I
    .local p0, "$i$a$-buildList-ChannelsKt__Channels_commonKt$toList$2":I
    :goto_3
    move-object v4, v1

    .line 128
    .end local v6    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v4, "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "$i$f$consumeEach":I
    .end local v3    # "$i$f$consume":I
    .end local v4    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v7    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$a$-buildList-ChannelsKt__Channels_commonKt$toList$2":I
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 125
    .end local v1    # "e$iv$iv":Ljava/lang/Throwable;
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v2    # "$i$f$consumeEach":I
    .restart local v3    # "$i$f$consume":I
    .restart local v4    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v7    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p0    # "$i$a$-buildList-ChannelsKt__Channels_commonKt$toList$2":I
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :catchall_3
    move-exception v1

    invoke-static {v7, v4}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
