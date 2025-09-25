.class final Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RecomposeScopeImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/RecomposeScopeImpl;->end(I)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/runtime/Composition;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposeScopeImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecomposeScopeImpl.kt\nandroidx/compose/runtime/RecomposeScopeImpl$end$1$2\n+ 2 ObjectIntMap.kt\nandroidx/collection/MutableObjectIntMap\n+ 3 ObjectIntMap.kt\nandroidx/collection/ObjectIntMap\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,444:1\n843#2:445\n845#2,4:459\n849#2:469\n373#3,6:446\n383#3,3:453\n386#3,2:457\n389#3,6:463\n1810#4:452\n1672#4:456\n*S KotlinDebug\n*F\n+ 1 RecomposeScopeImpl.kt\nandroidx/compose/runtime/RecomposeScopeImpl$end$1$2\n*L\n400#1:445\n400#1:459,4\n400#1:469\n400#1:446,6\n400#1:453,3\n400#1:457,2\n400#1:463,6\n400#1:452\n400#1:456\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "composition",
        "Landroidx/compose/runtime/Composition;",
        "invoke"
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
.field final synthetic $instances:Landroidx/collection/MutableObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableObjectIntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $token:I

.field final synthetic this$0:Landroidx/compose/runtime/RecomposeScopeImpl;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILandroidx/collection/MutableObjectIntMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "I",
            "Landroidx/collection/MutableObjectIntMap<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->this$0:Landroidx/compose/runtime/RecomposeScopeImpl;

    iput p2, p0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->$token:I

    iput-object p3, p0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->$instances:Landroidx/collection/MutableObjectIntMap;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 395
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composition;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->invoke(Landroidx/compose/runtime/Composition;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composition;)V
    .locals 30
    .param p1, "composition"    # Landroidx/compose/runtime/Composition;

    .line 396
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 397
    iget-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->this$0:Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->access$getCurrentToken$p(Landroidx/compose/runtime/RecomposeScopeImpl;)I

    move-result v2

    iget v3, v0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->$token:I

    if-ne v2, v3, :cond_e

    iget-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->$instances:Landroidx/collection/MutableObjectIntMap;

    iget-object v3, v0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->this$0:Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-static {v3}, Landroidx/compose/runtime/RecomposeScopeImpl;->access$getTrackedInstances$p(Landroidx/compose/runtime/RecomposeScopeImpl;)Landroidx/collection/MutableObjectIntMap;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 398
    instance-of v2, v1, Landroidx/compose/runtime/CompositionImpl;

    if-eqz v2, :cond_e

    .line 400
    iget-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->$instances:Landroidx/collection/MutableObjectIntMap;

    .local v2, "this_$iv":Landroidx/collection/MutableObjectIntMap;
    iget v3, v0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->$token:I

    iget-object v4, v0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->this$0:Landroidx/compose/runtime/RecomposeScopeImpl;

    const/4 v5, 0x0

    .line 445
    .local v5, "$i$f$removeIf":I
    move-object v6, v2

    check-cast v6, Landroidx/collection/ObjectIntMap;

    .local v6, "this_$iv$iv":Landroidx/collection/ObjectIntMap;
    const/4 v7, 0x0

    .line 446
    .local v7, "$i$f$forEachIndexed":I
    iget-object v8, v6, Landroidx/collection/ObjectIntMap;->metadata:[J

    .line 447
    .local v8, "m$iv$iv":[J
    array-length v9, v8

    add-int/lit8 v9, v9, -0x2

    .line 449
    .local v9, "lastIndex$iv$iv":I
    const/4 v10, 0x0

    .local v10, "i$iv$iv":I
    if-gt v10, v9, :cond_b

    .line 450
    :goto_0
    aget-wide v12, v8, v10

    .line 451
    .local v12, "slot$iv$iv":J
    move-wide v14, v12

    .local v14, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v16, 0x0

    .line 452
    .local v16, "$i$f$maskEmptyOrDeleted":I
    move-wide/from16 v17, v12

    .end local v12    # "slot$iv$iv":J
    .local v17, "slot$iv$iv":J
    not-long v11, v14

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v14

    const-wide v19, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v11, v11, v19

    .line 451
    .end local v14    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v16    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v11, v11, v19

    if-eqz v11, :cond_a

    .line 453
    sub-int v11, v10, v9

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    .line 454
    .local v11, "bitCount$iv$iv":I
    const/4 v13, 0x0

    .local v13, "j$iv$iv":I
    :goto_1
    if-ge v13, v11, :cond_9

    .line 455
    const-wide/16 v14, 0xff

    and-long v14, v17, v14

    .local v14, "value$iv$iv$iv":J
    const/16 v16, 0x0

    .line 456
    .local v16, "$i$f$isFull":I
    const-wide/16 v19, 0x80

    cmp-long v19, v14, v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    if-gez v19, :cond_0

    move/from16 v14, v21

    goto :goto_2

    :cond_0
    move/from16 v14, v20

    .line 455
    .end local v14    # "value$iv$iv$iv":J
    .end local v16    # "$i$f$isFull":I
    :goto_2
    if-eqz v14, :cond_8

    .line 457
    shl-int/lit8 v14, v10, 0x3

    add-int/2addr v14, v13

    .line 458
    .local v14, "index$iv$iv":I
    move v15, v14

    .local v15, "index$iv":I
    const/16 v16, 0x0

    .line 459
    .local v16, "$i$a$-forEachIndexed-MutableObjectIntMap$removeIf$1$iv":I
    iget-object v12, v2, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    aget-object v12, v12, v15

    move/from16 v22, v5

    .end local v5    # "$i$f$removeIf":I
    .local v12, "instance":Ljava/lang/Object;
    .local v22, "$i$f$removeIf":I
    iget-object v5, v2, Landroidx/collection/MutableObjectIntMap;->values:[I

    aget v5, v5, v15

    .local v5, "instanceToken":I
    const/16 v23, 0x0

    .line 401
    .local v23, "$i$a$-removeIf-RecomposeScopeImpl$end$1$2$1":I
    if-eq v5, v3, :cond_1

    move/from16 v20, v21

    :cond_1
    move/from16 v21, v20

    .local v21, "remove":Z
    const/16 v24, 0x0

    .line 402
    .local v24, "$i$a$-also-RecomposeScopeImpl$end$1$2$1$1":I
    if-eqz v21, :cond_6

    .line 403
    move/from16 v25, v3

    move-object v3, v1

    check-cast v3, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v3, v12, v4}, Landroidx/compose/runtime/CompositionImpl;->removeObservation$runtime_release(Ljava/lang/Object;Landroidx/compose/runtime/RecomposeScopeImpl;)V

    .line 404
    instance-of v3, v12, Landroidx/compose/runtime/DerivedState;

    if-eqz v3, :cond_2

    move-object v3, v12

    check-cast v3, Landroidx/compose/runtime/DerivedState;

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_4

    .local v3, "it":Landroidx/compose/runtime/DerivedState;
    const/16 v26, 0x0

    .line 405
    .local v26, "$i$a$-let-RecomposeScopeImpl$end$1$2$1$1$1":I
    move/from16 v27, v5

    .end local v5    # "instanceToken":I
    .local v27, "instanceToken":I
    move-object v5, v1

    check-cast v5, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/CompositionImpl;->removeDerivedStateObservation$runtime_release(Landroidx/compose/runtime/DerivedState;)V

    .line 406
    invoke-static {v4}, Landroidx/compose/runtime/RecomposeScopeImpl;->access$getTrackedDependencies$p(Landroidx/compose/runtime/RecomposeScopeImpl;)Landroidx/collection/MutableScatterMap;

    move-result-object v5

    if-eqz v5, :cond_5

    .local v5, "dependencies":Landroidx/collection/MutableScatterMap;
    const/16 v28, 0x0

    .line 407
    .local v28, "$i$a$-let-RecomposeScopeImpl$end$1$2$1$1$1$1":I
    invoke-virtual {v5, v3}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-virtual {v5}, Landroidx/collection/MutableScatterMap;->getSize()I

    move-result v29

    if-nez v29, :cond_3

    .line 409
    const/4 v1, 0x0

    invoke-static {v4, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->access$setTrackedDependencies$p(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/collection/MutableScatterMap;)V

    .line 411
    :cond_3
    nop

    .line 406
    .end local v5    # "dependencies":Landroidx/collection/MutableScatterMap;
    .end local v28    # "$i$a$-let-RecomposeScopeImpl$end$1$2$1$1$1$1":I
    goto :goto_4

    .line 404
    .end local v3    # "it":Landroidx/compose/runtime/DerivedState;
    .end local v26    # "$i$a$-let-RecomposeScopeImpl$end$1$2$1$1$1":I
    .end local v27    # "instanceToken":I
    .local v5, "instanceToken":I
    :cond_4
    move/from16 v27, v5

    .end local v5    # "instanceToken":I
    .restart local v27    # "instanceToken":I
    :cond_5
    :goto_4
    goto :goto_5

    .line 402
    .end local v27    # "instanceToken":I
    .restart local v5    # "instanceToken":I
    :cond_6
    move/from16 v25, v3

    move/from16 v27, v5

    .line 414
    .end local v5    # "instanceToken":I
    .restart local v27    # "instanceToken":I
    :goto_5
    nop

    .line 401
    .end local v21    # "remove":Z
    .end local v24    # "$i$a$-also-RecomposeScopeImpl$end$1$2$1$1":I
    nop

    .line 459
    .end local v12    # "instance":Ljava/lang/Object;
    .end local v23    # "$i$a$-removeIf-RecomposeScopeImpl$end$1$2$1":I
    .end local v27    # "instanceToken":I
    if-eqz v20, :cond_7

    .line 460
    invoke-virtual {v2, v15}, Landroidx/collection/MutableObjectIntMap;->removeValueAt(I)V

    .line 462
    :cond_7
    nop

    .line 458
    .end local v15    # "index$iv":I
    .end local v16    # "$i$a$-forEachIndexed-MutableObjectIntMap$removeIf$1$iv":I
    goto :goto_6

    .line 455
    .end local v14    # "index$iv$iv":I
    .end local v22    # "$i$f$removeIf":I
    .local v5, "$i$f$removeIf":I
    :cond_8
    move/from16 v25, v3

    move/from16 v22, v5

    .line 463
    .end local v5    # "$i$f$removeIf":I
    .restart local v22    # "$i$f$removeIf":I
    :goto_6
    const/16 v1, 0x8

    shr-long v17, v17, v1

    .line 454
    add-int/lit8 v13, v13, 0x1

    move v12, v1

    move/from16 v5, v22

    move/from16 v3, v25

    move-object/from16 v1, p1

    goto/16 :goto_1

    .end local v22    # "$i$f$removeIf":I
    .restart local v5    # "$i$f$removeIf":I
    :cond_9
    move/from16 v25, v3

    move/from16 v22, v5

    move v1, v12

    .line 465
    .end local v5    # "$i$f$removeIf":I
    .end local v13    # "j$iv$iv":I
    .restart local v22    # "$i$f$removeIf":I
    if-ne v11, v1, :cond_d

    goto :goto_7

    .line 451
    .end local v11    # "bitCount$iv$iv":I
    .end local v22    # "$i$f$removeIf":I
    .restart local v5    # "$i$f$removeIf":I
    :cond_a
    move/from16 v25, v3

    move/from16 v22, v5

    .line 449
    .end local v5    # "$i$f$removeIf":I
    .end local v17    # "slot$iv$iv":J
    .restart local v22    # "$i$f$removeIf":I
    :goto_7
    if-eq v10, v9, :cond_c

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    move/from16 v5, v22

    move/from16 v3, v25

    goto/16 :goto_0

    .end local v22    # "$i$f$removeIf":I
    .restart local v5    # "$i$f$removeIf":I
    :cond_b
    move/from16 v22, v5

    .line 468
    .end local v5    # "$i$f$removeIf":I
    .end local v10    # "i$iv$iv":I
    .restart local v22    # "$i$f$removeIf":I
    :cond_c
    nop

    .line 469
    .end local v6    # "this_$iv$iv":Landroidx/collection/ObjectIntMap;
    .end local v7    # "$i$f$forEachIndexed":I
    .end local v8    # "m$iv$iv":[J
    .end local v9    # "lastIndex$iv$iv":I
    :cond_d
    nop

    .line 416
    .end local v2    # "this_$iv":Landroidx/collection/MutableObjectIntMap;
    .end local v22    # "$i$f$removeIf":I
    iget-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->$instances:Landroidx/collection/MutableObjectIntMap;

    invoke-virtual {v1}, Landroidx/collection/MutableObjectIntMap;->getSize()I

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->this$0:Landroidx/compose/runtime/RecomposeScopeImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->access$setTrackedInstances$p(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/collection/MutableObjectIntMap;)V

    .line 418
    :cond_e
    return-void
.end method
