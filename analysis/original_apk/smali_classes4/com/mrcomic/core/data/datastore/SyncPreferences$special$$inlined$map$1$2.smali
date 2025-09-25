.class public final Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "Emitters.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 SyncPreferences.kt\ncom/mrcomic/core/data/datastore/SyncPreferences\n*L\n1#1,222:1\n54#2:223\n33#3,2:224\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "R",
        "value",
        "emit",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1",
        "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    iput-object p1, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    instance-of v0, p2, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$1$2$1;

    iget v1, v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$1$2$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$1$2$1;-><init>(Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 0
    iget v3, v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$1$2$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 p1, 0x0

    .local p1, "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    .end local p1    # "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 53
    .local v3, "this":Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$1$2;
    .local p1, "value":Ljava/lang/Object;
    iget-object v3, v3, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .local v3, "$this$map_u24lambda_u245":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v4, 0x0

    .line 223
    .local v4, "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    move-object v5, v0

    check-cast v5, Lkotlin/coroutines/Continuation;

    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    .end local v3    # "$this$map_u24lambda_u245":Lkotlinx/coroutines/flow/FlowCollector;
    .local p1, "prefs":Landroidx/datastore/preferences/core/Preferences;
    const/4 v5, 0x0

    .line 224
    .local v5, "$i$a$-map-SyncPreferences$lastSyncTime$1":I
    sget-object v6, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;->INSTANCE:Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;

    invoke-virtual {v6}, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;->getLAST_SYNC()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_1

    :cond_1
    move-wide v9, v7

    .line 225
    .end local p1    # "prefs":Landroidx/datastore/preferences/core/Preferences;
    .local v9, "ts":J
    :goto_1
    cmp-long p1, v9, v7

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    invoke-static {v9, v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    .line 223
    .end local v5    # "$i$a$-map-SyncPreferences$lastSyncTime$1":I
    .end local v9    # "ts":J
    :goto_2
    const/4 v5, 0x1

    iput v5, v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$1$2$1;->label:I

    invoke-interface {v3, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_3

    .line 0
    return-object v2

    .line 223
    :cond_3
    move p1, v4

    .line 53
    .end local v4    # "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    .local p1, "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .end local p1    # "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
