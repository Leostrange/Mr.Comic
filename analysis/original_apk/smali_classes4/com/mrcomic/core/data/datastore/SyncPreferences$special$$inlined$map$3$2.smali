.class public final Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$3$2;
.super Ljava/lang/Object;
.source "Emitters.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$3;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 SyncPreferences.kt\ncom/mrcomic/core/data/datastore/SyncPreferences\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,222:1\n54#2:223\n42#3,2:224\n1611#4,9:226\n1863#4:235\n1864#4:237\n1620#4:238\n1#5:236\n*S KotlinDebug\n*F\n+ 1 SyncPreferences.kt\ncom/mrcomic/core/data/datastore/SyncPreferences\n*L\n43#1:226,9\n43#1:235\n43#1:237\n43#1:238\n43#1:236\n*E\n"
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

    iput-object p1, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$3$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$3$2$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$3$2$1;

    iget v2, v1, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$3$2$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$3$2$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$3$2$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$3$2$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$3$2$1;-><init>(Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$3$2;Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$3$2$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 0
    iget v5, v1, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$3$2$1;->label:I

    packed-switch v5, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v4, 0x0

    .local v4, "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v4    # "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    :pswitch_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p0

    .local v5, "this":Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$3$2;
    move-object/from16 v6, p1

    .line 53
    .local v6, "value":Ljava/lang/Object;
    iget-object v5, v5, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$3$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .local v5, "$this$map_u24lambda_u245":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v7, 0x0

    .line 223
    .local v7, "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    move-object v8, v1

    check-cast v8, Lkotlin/coroutines/Continuation;

    check-cast v6, Landroidx/datastore/preferences/core/Preferences;

    .end local v5    # "$this$map_u24lambda_u245":Lkotlinx/coroutines/flow/FlowCollector;
    .local v6, "prefs":Landroidx/datastore/preferences/core/Preferences;
    const/4 v8, 0x0

    .line 224
    .local v8, "$i$a$-map-SyncPreferences$syncHistory$1":I
    sget-object v9, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;->INSTANCE:Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;

    invoke-virtual {v9}, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;->getSYNC_HISTORY()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    check-cast v6, Ljava/lang/String;

    .line 225
    .local v6, "raw":Ljava/lang/String;
    move-object v9, v6

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_2

    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    move v9, v10

    goto :goto_2

    :cond_2
    :goto_1
    move v9, v11

    :goto_2
    if-eqz v9, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    goto :goto_4

    :cond_3
    move-object v12, v6

    check-cast v12, Ljava/lang/CharSequence;

    new-array v13, v11, [C

    const/16 v9, 0x2c

    aput-char v9, v13, v10

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v9

    move-object v6, v9

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 226
    .local v9, "$i$f$mapNotNull":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    .local v6, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .local v10, "destination$iv$iv":Ljava/util/Collection;
    const/4 v12, 0x0

    .line 234
    .local v12, "$i$f$mapNotNullTo":I
    nop

    .local v6, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 235
    .local v13, "$i$f$forEach":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v6    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 234
    .local v15, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object/from16 v16, v6

    check-cast v16, Ljava/lang/String;

    .local v16, "it":Ljava/lang/String;
    const/16 v17, 0x0

    .line 225
    .local v17, "$i$a$-mapNotNull-SyncPreferences$syncHistory$1$1":I
    invoke-static/range {v16 .. v16}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    .line 234
    .end local v16    # "it":Ljava/lang/String;
    .end local v17    # "$i$a$-mapNotNull-SyncPreferences$syncHistory$1$1":I
    if-eqz v16, :cond_4

    move-object/from16 p1, v16

    .line 236
    .local p1, "it$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 234
    .local v16, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    move-object/from16 v11, p1

    .end local p1    # "it$iv$iv":Ljava/lang/Object;
    .local v11, "it$iv$iv":Ljava/lang/Object;
    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    .end local v11    # "it$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v16    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_4
    const/4 v11, 0x1

    goto :goto_3

    .line 237
    :cond_5
    nop

    .line 238
    .end local v13    # "$i$f$forEach":I
    nop

    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v12    # "$i$f$mapNotNullTo":I
    move-object v6, v10

    check-cast v6, Ljava/util/List;

    .line 226
    move-object v9, v6

    .line 225
    .end local v9    # "$i$f$mapNotNull":I
    :goto_4
    nop

    .line 223
    .end local v8    # "$i$a$-map-SyncPreferences$syncHistory$1":I
    const/4 v6, 0x1

    iput v6, v1, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$3$2$1;->label:I

    invoke-interface {v5, v9, v1}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_6

    .line 0
    return-object v4

    .line 223
    :cond_6
    move v4, v7

    .line 53
    .end local v7    # "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    .restart local v4    # "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    :goto_5
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .end local v4    # "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
