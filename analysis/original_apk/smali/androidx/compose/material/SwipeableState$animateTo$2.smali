.class final Landroidx/compose/material/SwipeableState$animateTo$2;
.super Ljava/lang/Object;
.source "Swipeable.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SwipeableState;->animateTo(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
    value = "SMAP\nSwipeable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material/SwipeableState$animateTo$2\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,908:1\n467#2,7:909\n*S KotlinDebug\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material/SwipeableState$animateTo$2\n*L\n345#1:909,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "anchors",
        "",
        "",
        "emit",
        "(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $anim:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $targetValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/material/SwipeableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/material/SwipeableState<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroidx/compose/material/SwipeableState;Landroidx/compose/animation/core/AnimationSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/compose/material/SwipeableState<",
            "TT;>;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/SwipeableState$animateTo$2;->$targetValue:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material/SwipeableState$animateTo$2;->this$0:Landroidx/compose/material/SwipeableState;

    iput-object p3, p0, Landroidx/compose/material/SwipeableState$animateTo$2;->$anim:Landroidx/compose/animation/core/AnimationSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 334
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0, p2}, Landroidx/compose/material/SwipeableState$animateTo$2;->emit(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final emit(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;

    iget v2, v1, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;-><init>(Landroidx/compose/material/SwipeableState$animateTo$2;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 334
    iget v4, v1, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;->label:I

    const/4 v5, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    packed-switch v4, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v0, v1, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;->L$1:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    .local v4, "anchors":Ljava/util/Map;
    iget-object v0, v1, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;->L$0:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Landroidx/compose/material/SwipeableState$animateTo$2;

    .local v8, "this":Landroidx/compose/material/SwipeableState$animateTo$2;
    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v4    # "anchors":Ljava/util/Map;
    .end local v8    # "this":Landroidx/compose/material/SwipeableState$animateTo$2;
    :pswitch_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v8, p0

    .restart local v8    # "this":Landroidx/compose/material/SwipeableState$animateTo$2;
    move-object/from16 v4, p1

    .line 335
    .restart local v4    # "anchors":Ljava/util/Map;
    nop

    .line 336
    :try_start_1
    iget-object v9, v8, Landroidx/compose/material/SwipeableState$animateTo$2;->$targetValue:Ljava/lang/Object;

    invoke-static {v4, v9}, Landroidx/compose/material/SwipeableKt;->access$getOffset(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v9

    .line 337
    .local v9, "targetOffset":Ljava/lang/Float;
    if-eqz v9, :cond_6

    .line 340
    iget-object v10, v8, Landroidx/compose/material/SwipeableState$animateTo$2;->this$0:Landroidx/compose/material/SwipeableState;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iget-object v12, v8, Landroidx/compose/material/SwipeableState$animateTo$2;->$anim:Landroidx/compose/animation/core/AnimationSpec;

    iput-object v8, v1, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;->L$1:Ljava/lang/Object;

    iput v7, v1, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;->label:I

    invoke-static {v10, v11, v12, v1}, Landroidx/compose/material/SwipeableState;->access$animateInternalToOffset(Landroidx/compose/material/SwipeableState;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v9    # "targetOffset":Ljava/lang/Float;
    if-ne v10, v0, :cond_1

    .line 334
    return-object v0

    .line 342
    :cond_1
    :goto_1
    iget-object v0, v8, Landroidx/compose/material/SwipeableState$animateTo$2;->this$0:Landroidx/compose/material/SwipeableState;

    invoke-static {v0}, Landroidx/compose/material/SwipeableState;->access$getAbsoluteOffset$p(Landroidx/compose/material/SwipeableState;)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/MutableFloatState;->getFloatValue()F

    move-result v0

    .line 343
    .local v0, "endOffset":F
    nop

    .line 345
    .local v4, "$this$filterKeys$iv":Ljava/util/Map;
    const/4 v9, 0x0

    .line 909
    .local v9, "$i$f$filterKeys":I
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 910
    .local v10, "result$iv":Ljava/util/LinkedHashMap;
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v4    # "$this$filterKeys$iv":Ljava/util/Map;
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 911
    .local v11, "entry$iv":Ljava/util/Map$Entry;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    .local v12, "anchorOffset":F
    const/4 v13, 0x0

    .line 345
    .local v13, "$i$a$-filterKeys-SwipeableState$animateTo$2$endValue$1":I
    sub-float v14, v12, v0

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .end local v12    # "anchorOffset":F
    cmpg-float v12, v12, v6

    if-gez v12, :cond_3

    move v12, v7

    goto :goto_3

    :cond_3
    move v12, v5

    .line 911
    .end local v13    # "$i$a$-filterKeys-SwipeableState$animateTo$2$endValue$1":I
    :goto_3
    if-eqz v12, :cond_2

    .line 912
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 915
    .end local v0    # "endOffset":F
    .end local v11    # "entry$iv":Ljava/util/Map$Entry;
    :cond_4
    move-object v0, v10

    check-cast v0, Ljava/util/Map;

    .line 345
    .end local v9    # "$i$f$filterKeys":I
    .end local v10    # "result$iv":Ljava/util/LinkedHashMap;
    nop

    .line 346
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    .line 343
    if-nez v0, :cond_5

    .line 346
    iget-object v0, v8, Landroidx/compose/material/SwipeableState$animateTo$2;->this$0:Landroidx/compose/material/SwipeableState;

    invoke-virtual {v0}, Landroidx/compose/material/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    .line 343
    :cond_5
    nop

    .line 347
    .local v0, "endValue":Ljava/lang/Object;
    iget-object v4, v8, Landroidx/compose/material/SwipeableState$animateTo$2;->this$0:Landroidx/compose/material/SwipeableState;

    invoke-static {v4, v0}, Landroidx/compose/material/SwipeableState;->access$setCurrentValue(Landroidx/compose/material/SwipeableState;Ljava/lang/Object;)V

    .line 348
    .end local v0    # "endValue":Ljava/lang/Object;
    .end local v8    # "this":Landroidx/compose/material/SwipeableState$animateTo$2;
    move-object v0, v8

    .line 349
    .local v0, "this":Landroidx/compose/material/SwipeableState$animateTo$2;
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4

    .line 337
    .end local v0    # "this":Landroidx/compose/material/SwipeableState$animateTo$2;
    .local v4, "anchors":Ljava/util/Map;
    .restart local v8    # "this":Landroidx/compose/material/SwipeableState$animateTo$2;
    .local v9, "targetOffset":Ljava/lang/Float;
    :cond_6
    const/4 v0, 0x0

    .line 338
    .end local v9    # "targetOffset":Ljava/lang/Float;
    .local v0, "$i$a$-requireNotNull-SwipeableState$animateTo$2$1":I
    :try_start_2
    const-string/jumbo v9, "The target value must have an associated anchor."

    .line 337
    .end local v0    # "$i$a$-requireNotNull-SwipeableState$animateTo$2$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "anchors":Ljava/util/Map;
    .end local v8    # "this":Landroidx/compose/material/SwipeableState$animateTo$2;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 342
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v4    # "anchors":Ljava/util/Map;
    .restart local v8    # "this":Landroidx/compose/material/SwipeableState$animateTo$2;
    :catchall_0
    move-exception v0

    iget-object v9, v8, Landroidx/compose/material/SwipeableState$animateTo$2;->this$0:Landroidx/compose/material/SwipeableState;

    invoke-static {v9}, Landroidx/compose/material/SwipeableState;->access$getAbsoluteOffset$p(Landroidx/compose/material/SwipeableState;)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v9

    invoke-interface {v9}, Landroidx/compose/runtime/MutableFloatState;->getFloatValue()F

    move-result v9

    .line 343
    .local v9, "endOffset":F
    nop

    .line 345
    .local v4, "$this$filterKeys$iv":Ljava/util/Map;
    const/4 v10, 0x0

    .line 909
    .local v10, "$i$f$filterKeys":I
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 910
    .local v11, "result$iv":Ljava/util/LinkedHashMap;
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v4    # "$this$filterKeys$iv":Ljava/util/Map;
    :cond_7
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 911
    .local v12, "entry$iv":Ljava/util/Map$Entry;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    .local v13, "anchorOffset":F
    const/4 v14, 0x0

    .line 345
    .local v14, "$i$a$-filterKeys-SwipeableState$animateTo$2$endValue$1":I
    sub-float v15, v13, v9

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .end local v13    # "anchorOffset":F
    cmpg-float v13, v13, v6

    if-gez v13, :cond_8

    move v13, v7

    goto :goto_5

    :cond_8
    move v13, v5

    .line 911
    .end local v14    # "$i$a$-filterKeys-SwipeableState$animateTo$2$endValue$1":I
    :goto_5
    if-eqz v13, :cond_7

    .line 912
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 915
    .end local v9    # "endOffset":F
    .end local v12    # "entry$iv":Ljava/util/Map$Entry;
    :cond_9
    move-object v4, v11

    check-cast v4, Ljava/util/Map;

    .line 345
    .end local v10    # "$i$f$filterKeys":I
    .end local v11    # "result$iv":Ljava/util/LinkedHashMap;
    nop

    .line 346
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    .line 343
    if-nez v4, :cond_a

    .line 346
    iget-object v4, v8, Landroidx/compose/material/SwipeableState$animateTo$2;->this$0:Landroidx/compose/material/SwipeableState;

    invoke-virtual {v4}, Landroidx/compose/material/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v4

    .line 343
    :cond_a
    nop

    .line 347
    .local v4, "endValue":Ljava/lang/Object;
    iget-object v5, v8, Landroidx/compose/material/SwipeableState$animateTo$2;->this$0:Landroidx/compose/material/SwipeableState;

    invoke-static {v5, v4}, Landroidx/compose/material/SwipeableState;->access$setCurrentValue(Landroidx/compose/material/SwipeableState;Ljava/lang/Object;)V

    .end local v4    # "endValue":Ljava/lang/Object;
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
