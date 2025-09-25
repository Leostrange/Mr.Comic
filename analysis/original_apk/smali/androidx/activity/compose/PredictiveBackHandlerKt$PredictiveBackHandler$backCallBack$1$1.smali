.class public final Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "PredictiveBackHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/compose/PredictiveBackHandlerKt;->PredictiveBackHandler(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "androidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1",
        "Landroidx/activity/OnBackPressedCallback;",
        "onBackInstance",
        "Landroidx/activity/compose/OnBackInstance;",
        "getOnBackInstance",
        "()Landroidx/activity/compose/OnBackInstance;",
        "setOnBackInstance",
        "(Landroidx/activity/compose/OnBackInstance;)V",
        "handleOnBackCancelled",
        "",
        "handleOnBackPressed",
        "handleOnBackProgressed",
        "backEvent",
        "Landroidx/activity/BackEventCompat;",
        "handleOnBackStarted",
        "activity-compose_release"
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
.field final synthetic $currentOnBack$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function2<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Landroidx/activity/BackEventCompat;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $onBackScope:Lkotlinx/coroutines/CoroutineScope;

.field private onBackInstance:Landroidx/activity/compose/OnBackInstance;


# direct methods
.method constructor <init>(ZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/State;)V
    .locals 0
    .param p1, "$enabled"    # Z
    .param p2, "$onBackScope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p3, "$currentOnBack$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function2<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Landroidx/activity/BackEventCompat;",
            ">;-",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iput-object p2, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->$onBackScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->$currentOnBack$delegate:Landroidx/compose/runtime/State;

    .line 82
    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final getOnBackInstance()Landroidx/activity/compose/OnBackInstance;
    .locals 1

    .line 83
    iget-object v0, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->onBackInstance:Landroidx/activity/compose/OnBackInstance;

    return-object v0
.end method

.method public handleOnBackCancelled()V
    .locals 1

    .line 120
    invoke-super {p0}, Landroidx/activity/OnBackPressedCallback;->handleOnBackCancelled()V

    .line 122
    iget-object v0, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->onBackInstance:Landroidx/activity/compose/OnBackInstance;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/activity/compose/OnBackInstance;->cancel()V

    .line 123
    :cond_0
    return-void
.end method

.method public handleOnBackPressed()V
    .locals 4

    .line 104
    iget-object v0, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->onBackInstance:Landroidx/activity/compose/OnBackInstance;

    if-eqz v0, :cond_1

    .local v0, "$this$handleOnBackPressed_u24lambda_u240":Landroidx/activity/compose/OnBackInstance;
    const/4 v1, 0x0

    .line 105
    .local v1, "$i$a$-apply-PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1$handleOnBackPressed$1":I
    invoke-virtual {v0}, Landroidx/activity/compose/OnBackInstance;->isPredictiveBack()Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    invoke-virtual {v0}, Landroidx/activity/compose/OnBackInstance;->cancel()V

    .line 107
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->onBackInstance:Landroidx/activity/compose/OnBackInstance;

    .line 109
    :cond_0
    nop

    .line 104
    .end local v0    # "$this$handleOnBackPressed_u24lambda_u240":Landroidx/activity/compose/OnBackInstance;
    .end local v1    # "$i$a$-apply-PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1$handleOnBackPressed$1":I
    nop

    .line 110
    :cond_1
    iget-object v0, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->onBackInstance:Landroidx/activity/compose/OnBackInstance;

    if-nez v0, :cond_2

    .line 111
    new-instance v0, Landroidx/activity/compose/OnBackInstance;

    iget-object v1, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->$onBackScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->$currentOnBack$delegate:Landroidx/compose/runtime/State;

    invoke-static {v2}, Landroidx/activity/compose/PredictiveBackHandlerKt;->access$PredictiveBackHandler$lambda$0(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroidx/activity/compose/OnBackInstance;-><init>(Lkotlinx/coroutines/CoroutineScope;ZLkotlin/jvm/functions/Function2;)V

    iput-object v0, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->onBackInstance:Landroidx/activity/compose/OnBackInstance;

    .line 116
    :cond_2
    iget-object v0, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->onBackInstance:Landroidx/activity/compose/OnBackInstance;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/activity/compose/OnBackInstance;->close()Z

    .line 117
    :cond_3
    return-void
.end method

.method public handleOnBackProgressed(Landroidx/activity/BackEventCompat;)V
    .locals 1
    .param p1, "backEvent"    # Landroidx/activity/BackEventCompat;

    .line 95
    invoke-super {p0, p1}, Landroidx/activity/OnBackPressedCallback;->handleOnBackProgressed(Landroidx/activity/BackEventCompat;)V

    .line 96
    iget-object v0, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->onBackInstance:Landroidx/activity/compose/OnBackInstance;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/activity/compose/OnBackInstance;->send-JP2dKIU(Landroidx/activity/BackEventCompat;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    .line 97
    :cond_0
    return-void
.end method

.method public handleOnBackStarted(Landroidx/activity/BackEventCompat;)V
    .locals 4
    .param p1, "backEvent"    # Landroidx/activity/BackEventCompat;

    .line 86
    invoke-super {p0, p1}, Landroidx/activity/OnBackPressedCallback;->handleOnBackStarted(Landroidx/activity/BackEventCompat;)V

    .line 90
    iget-object v0, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->onBackInstance:Landroidx/activity/compose/OnBackInstance;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/activity/compose/OnBackInstance;->cancel()V

    .line 91
    :cond_0
    new-instance v0, Landroidx/activity/compose/OnBackInstance;

    iget-object v1, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->$onBackScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->$currentOnBack$delegate:Landroidx/compose/runtime/State;

    invoke-static {v2}, Landroidx/activity/compose/PredictiveBackHandlerKt;->access$PredictiveBackHandler$lambda$0(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroidx/activity/compose/OnBackInstance;-><init>(Lkotlinx/coroutines/CoroutineScope;ZLkotlin/jvm/functions/Function2;)V

    iput-object v0, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->onBackInstance:Landroidx/activity/compose/OnBackInstance;

    .line 92
    return-void
.end method

.method public final setOnBackInstance(Landroidx/activity/compose/OnBackInstance;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/activity/compose/OnBackInstance;

    .line 83
    iput-object p1, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->onBackInstance:Landroidx/activity/compose/OnBackInstance;

    return-void
.end method
