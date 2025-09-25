.class final Landroidx/compose/ui/node/LayoutNode$collapsedSemantics$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LayoutNode.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/LayoutNode;->getCollapsedSemantics$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode$collapsedSemantics$1\n+ 2 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 3 NodeChain.kt\nandroidx/compose/ui/node/NodeChain\n+ 4 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 7 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 8 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n*L\n1#1,1477:1\n76#2:1478\n741#3,18:1479\n759#3,3:1541\n385#4,5:1497\n390#4:1503\n395#4,2:1505\n397#4,8:1510\n405#4,9:1521\n414#4,8:1533\n1#5:1502\n261#6:1504\n234#7,3:1507\n237#7,3:1530\n1208#8:1518\n1187#8,2:1519\n*S KotlinDebug\n*F\n+ 1 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode$collapsedSemantics$1\n*L\n422#1:1478\n422#1:1479,18\n422#1:1541,3\n422#1:1497,5\n422#1:1503\n422#1:1505,2\n422#1:1510,8\n422#1:1521,9\n422#1:1533,8\n422#1:1504\n422#1:1507,3\n422#1:1530,3\n422#1:1518\n422#1:1519,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $config:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/ui/semantics/SemanticsConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/ui/node/LayoutNode;


# direct methods
.method constructor <init>(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/ui/semantics/SemanticsConfiguration;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode$collapsedSemantics$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode$collapsedSemantics$1;->$config:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 421
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode$collapsedSemantics$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 32

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNode$collapsedSemantics$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v1

    const/4 v2, 0x0

    .line 1478
    .local v2, "$i$f$getSemantics-OLwlOKw":I
    const/16 v3, 0x8

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 422
    .end local v2    # "$i$f$getSemantics-OLwlOKw":I
    iget-object v3, v0, Landroidx/compose/ui/node/LayoutNode$collapsedSemantics$1;->$config:Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v2, "type$iv":I
    const/4 v4, 0x0

    .line 1479
    .local v4, "$i$f$tailToHead-aLcG6gQ$ui_release":I
    move v5, v2

    .local v5, "mask$iv$iv":I
    move-object v6, v1

    .local v6, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v7, 0x0

    .line 1485
    .local v7, "$i$f$tailToHead$ui_release":I
    invoke-static {v6}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v8

    and-int/2addr v8, v5

    if-eqz v8, :cond_11

    .line 1486
    move-object v8, v6

    .local v8, "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v9, 0x0

    .line 1494
    .local v9, "$i$f$tailToHead$ui_release":I
    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 1495
    .local v10, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v10, :cond_10

    .line 1496
    move-object v11, v10

    .local v11, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 1487
    .local v12, "$i$a$-tailToHead$ui_release-NodeChain$tailToHead$2$iv$iv":I
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int/2addr v13, v5

    if-eqz v13, :cond_f

    .line 1488
    move-object v13, v11

    .local v13, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 1480
    .local v14, "$i$a$-tailToHead$ui_release-NodeChain$tailToHead$1$iv":I
    move-object v15, v13

    .local v15, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v16, 0x0

    .line 1497
    .local v16, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v17, 0x0

    .line 1498
    .local v17, "stack$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .local v18, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    .line 1499
    .end local v18    # "node$iv$iv":Ljava/lang/Object;
    .local v0, "node$iv$iv":Ljava/lang/Object;
    :goto_1
    if-eqz v0, :cond_e

    .line 1500
    move-object/from16 v18, v1

    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v18, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    instance-of v1, v0, Landroidx/compose/ui/node/SemanticsModifierNode;

    move/from16 v19, v4

    .end local v4    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .local v19, "$i$f$tailToHead-aLcG6gQ$ui_release":I
    if-eqz v1, :cond_2

    .line 1501
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/node/SemanticsModifierNode;

    .local v1, "it":Landroidx/compose/ui/node/SemanticsModifierNode;
    const/16 v20, 0x0

    .line 423
    .local v20, "$i$a$-tailToHead-aLcG6gQ$ui_release-LayoutNode$collapsedSemantics$1$1":I
    invoke-interface {v1}, Landroidx/compose/ui/node/SemanticsModifierNode;->getShouldClearDescendantSemantics()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 424
    new-instance v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-direct {v4}, Landroidx/compose/ui/semantics/SemanticsConfiguration;-><init>()V

    iput-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 425
    iget-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move/from16 v22, v5

    const/4 v5, 0x1

    .end local v5    # "mask$iv$iv":I
    .local v22, "mask$iv$iv":I
    invoke-virtual {v4, v5}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->setClearingSemantics(Z)V

    goto :goto_2

    .line 423
    .end local v22    # "mask$iv$iv":I
    .restart local v5    # "mask$iv$iv":I
    :cond_0
    move/from16 v22, v5

    const/4 v5, 0x1

    .line 427
    .end local v5    # "mask$iv$iv":I
    .restart local v22    # "mask$iv$iv":I
    :goto_2
    invoke-interface {v1}, Landroidx/compose/ui/node/SemanticsModifierNode;->getShouldMergeDescendantSemantics()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 428
    iget-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-virtual {v4, v5}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->setMergingSemanticsOfDescendants(Z)V

    .line 430
    :cond_1
    iget-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 1502
    .local v4, "$this$invoke_u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    const/4 v5, 0x0

    .line 430
    .local v5, "$i$a$-with-LayoutNode$collapsedSemantics$1$1$1":I
    move-object/from16 v21, v1

    .line 1502
    .local v21, "$this$invoke_u24lambda_u242_u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/node/SemanticsModifierNode;
    const/16 v23, 0x0

    .line 430
    .local v23, "$i$a$-with-LayoutNode$collapsedSemantics$1$1$1$1":I
    move-object/from16 v24, v1

    .end local v1    # "it":Landroidx/compose/ui/node/SemanticsModifierNode;
    .local v24, "it":Landroidx/compose/ui/node/SemanticsModifierNode;
    move-object v1, v4

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    move-object/from16 v25, v3

    move-object/from16 v3, v21

    .end local v21    # "$this$invoke_u24lambda_u242_u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/node/SemanticsModifierNode;
    .local v3, "$this$invoke_u24lambda_u242_u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/node/SemanticsModifierNode;
    invoke-interface {v3, v1}, Landroidx/compose/ui/node/SemanticsModifierNode;->applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 431
    .end local v3    # "$this$invoke_u24lambda_u242_u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/node/SemanticsModifierNode;
    .end local v4    # "$this$invoke_u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    .end local v5    # "$i$a$-with-LayoutNode$collapsedSemantics$1$1$1":I
    .end local v23    # "$i$a$-with-LayoutNode$collapsedSemantics$1$1$1$1":I
    nop

    .line 1501
    .end local v20    # "$i$a$-tailToHead-aLcG6gQ$ui_release-LayoutNode$collapsedSemantics$1$1":I
    .end local v24    # "it":Landroidx/compose/ui/node/SemanticsModifierNode;
    move/from16 v29, v2

    goto/16 :goto_9

    .line 1503
    .end local v22    # "mask$iv$iv":I
    .local v5, "mask$iv$iv":I
    :cond_2
    move-object/from16 v25, v3

    move/from16 v22, v5

    .end local v5    # "mask$iv$iv":I
    .restart local v22    # "mask$iv$iv":I
    move-object v1, v0

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v3, 0x0

    .line 1504
    .local v3, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v4, v2

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 1503
    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v3    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_3
    if-eqz v1, :cond_c

    instance-of v1, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_c

    .line 1505
    const/4 v1, 0x0

    .line 1506
    .local v1, "count$iv$iv":I
    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/node/DelegatingNode;

    .local v3, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v4, 0x0

    .line 1507
    .local v4, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v3}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v20

    .line 1508
    .local v20, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v20, :cond_b

    .line 1509
    move-object/from16 v23, v20

    .local v23, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 1510
    .local v24, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move-object/from16 v26, v23

    .local v26, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v27, 0x0

    .line 1504
    .local v27, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v28

    and-int v28, v28, v2

    if-eqz v28, :cond_4

    const/16 v26, 0x1

    goto :goto_5

    :cond_4
    const/16 v26, 0x0

    .line 1510
    .end local v26    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_5
    if-eqz v26, :cond_a

    .line 1511
    add-int/lit8 v1, v1, 0x1

    .line 1512
    const/4 v5, 0x1

    if-ne v1, v5, :cond_5

    .line 1513
    move-object/from16 v0, v23

    move/from16 v29, v2

    move-object/from16 v30, v3

    move/from16 v31, v4

    move-object/from16 v3, v23

    const/4 v4, 0x0

    goto :goto_8

    .line 1517
    :cond_5
    if-nez v17, :cond_6

    const/4 v5, 0x0

    .line 1518
    .local v5, "$i$f$mutableVectorOf":I
    nop

    .line 1519
    move/from16 v27, v1

    .end local v1    # "count$iv$iv":I
    .local v27, "count$iv$iv":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv$iv":I
    const/16 v28, 0x0

    .line 1520
    .local v28, "$i$f$MutableVector":I
    move/from16 v29, v2

    .end local v2    # "type$iv":I
    .local v29, "type$iv":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v30, v3

    .end local v3    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v30, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v31, v4

    const/4 v4, 0x0

    .end local v4    # "$i$f$forEachImmediateDelegate$ui_release":I
    .local v31, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-direct {v2, v3, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1518
    .end local v1    # "capacity$iv$iv$iv$iv":I
    .end local v28    # "$i$f$MutableVector":I
    goto :goto_6

    .line 1517
    .end local v5    # "$i$f$mutableVectorOf":I
    .end local v27    # "count$iv$iv":I
    .end local v29    # "type$iv":I
    .end local v30    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v31    # "$i$f$forEachImmediateDelegate$ui_release":I
    .local v1, "count$iv$iv":I
    .restart local v2    # "type$iv":I
    .restart local v3    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v4    # "$i$f$forEachImmediateDelegate$ui_release":I
    :cond_6
    move/from16 v27, v1

    move/from16 v29, v2

    move-object/from16 v30, v3

    move/from16 v31, v4

    const/4 v4, 0x0

    .end local v1    # "count$iv$iv":I
    .end local v2    # "type$iv":I
    .end local v3    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v4    # "$i$f$forEachImmediateDelegate$ui_release":I
    .restart local v27    # "count$iv$iv":I
    .restart local v29    # "type$iv":I
    .restart local v30    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v31    # "$i$f$forEachImmediateDelegate$ui_release":I
    move-object/from16 v2, v17

    :goto_6
    move-object v1, v2

    .line 1521
    .end local v17    # "stack$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv":Ljava/lang/Object;
    move-object v2, v0

    .line 1522
    .local v2, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_8

    .line 1523
    if-eqz v1, :cond_7

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1524
    :cond_7
    const/4 v0, 0x0

    .line 1526
    :cond_8
    if-eqz v1, :cond_9

    move-object/from16 v3, v23

    .end local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .end local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v3, v23

    .line 1529
    .end local v2    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    move-object/from16 v17, v1

    move/from16 v1, v27

    goto :goto_8

    .line 1510
    .end local v27    # "count$iv$iv":I
    .end local v29    # "type$iv":I
    .end local v30    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v31    # "$i$f$forEachImmediateDelegate$ui_release":I
    .local v1, "count$iv$iv":I
    .local v2, "type$iv":I
    .local v3, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v4    # "$i$f$forEachImmediateDelegate$ui_release":I
    .restart local v17    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move/from16 v29, v2

    move-object/from16 v30, v3

    move/from16 v31, v4

    move-object/from16 v3, v23

    const/4 v4, 0x0

    .line 1529
    .end local v2    # "type$iv":I
    .end local v4    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v29    # "type$iv":I
    .restart local v30    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v31    # "$i$f$forEachImmediateDelegate$ui_release":I
    :goto_8
    nop

    .line 1509
    .end local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1530
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v20

    move/from16 v2, v29

    move-object/from16 v3, v30

    move/from16 v4, v31

    goto :goto_4

    .line 1532
    .end local v29    # "type$iv":I
    .end local v30    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v31    # "$i$f$forEachImmediateDelegate$ui_release":I
    .restart local v2    # "type$iv":I
    .local v3, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v4    # "$i$f$forEachImmediateDelegate$ui_release":I
    :cond_b
    move/from16 v29, v2

    move-object/from16 v30, v3

    move/from16 v31, v4

    .line 1533
    .end local v2    # "type$iv":I
    .end local v3    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v4    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v20    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v29    # "type$iv":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 1535
    move-object/from16 v1, v18

    move/from16 v4, v19

    move/from16 v5, v22

    move-object/from16 v3, v25

    move/from16 v2, v29

    goto/16 :goto_1

    .line 1503
    .end local v1    # "count$iv$iv":I
    .end local v29    # "type$iv":I
    .restart local v2    # "type$iv":I
    :cond_c
    move/from16 v29, v2

    .line 1538
    .end local v2    # "type$iv":I
    .restart local v29    # "type$iv":I
    :cond_d
    :goto_9
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object/from16 v1, v18

    move/from16 v4, v19

    move/from16 v5, v22

    move-object/from16 v3, v25

    move/from16 v2, v29

    goto/16 :goto_1

    .line 1540
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v19    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v22    # "mask$iv$iv":I
    .end local v29    # "type$iv":I
    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "type$iv":I
    .local v4, "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .local v5, "mask$iv$iv":I
    :cond_e
    move-object/from16 v18, v1

    move/from16 v29, v2

    move-object/from16 v25, v3

    move/from16 v19, v4

    move/from16 v22, v5

    .line 1481
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "type$iv":I
    .end local v4    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v5    # "mask$iv$iv":I
    .end local v15    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v17    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v19    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v22    # "mask$iv$iv":I
    .restart local v29    # "type$iv":I
    nop

    .line 1488
    .end local v13    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$a$-tailToHead$ui_release-NodeChain$tailToHead$1$iv":I
    goto :goto_a

    .line 1487
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v19    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v22    # "mask$iv$iv":I
    .end local v29    # "type$iv":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "type$iv":I
    .restart local v4    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v5    # "mask$iv$iv":I
    :cond_f
    move-object/from16 v18, v1

    move/from16 v29, v2

    move-object/from16 v25, v3

    move/from16 v19, v4

    move/from16 v22, v5

    .line 1490
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "type$iv":I
    .end local v4    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v5    # "mask$iv$iv":I
    .restart local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v19    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v22    # "mask$iv$iv":I
    .restart local v29    # "type$iv":I
    :goto_a
    nop

    .line 1496
    .end local v11    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$a$-tailToHead$ui_release-NodeChain$tailToHead$2$iv$iv":I
    nop

    .line 1541
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v4, v19

    move/from16 v5, v22

    move-object/from16 v3, v25

    move/from16 v2, v29

    goto/16 :goto_0

    .line 1543
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v19    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v22    # "mask$iv$iv":I
    .end local v29    # "type$iv":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "type$iv":I
    .restart local v4    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v5    # "mask$iv$iv":I
    :cond_10
    move-object/from16 v18, v1

    move/from16 v29, v2

    move/from16 v19, v4

    move/from16 v22, v5

    .line 1491
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "type$iv":I
    .end local v4    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v5    # "mask$iv$iv":I
    .end local v8    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v9    # "$i$f$tailToHead$ui_release":I
    .end local v10    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v19    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v22    # "mask$iv$iv":I
    .restart local v29    # "type$iv":I
    goto :goto_b

    .line 1485
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v19    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v22    # "mask$iv$iv":I
    .end local v29    # "type$iv":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "type$iv":I
    .restart local v4    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v5    # "mask$iv$iv":I
    :cond_11
    move-object/from16 v18, v1

    move/from16 v29, v2

    move/from16 v19, v4

    move/from16 v22, v5

    .line 1482
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "type$iv":I
    .end local v4    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v5    # "mask$iv$iv":I
    .end local v6    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v7    # "$i$f$tailToHead$ui_release":I
    .restart local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v19    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v29    # "type$iv":I
    :goto_b
    nop

    .line 432
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v19    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v29    # "type$iv":I
    return-void
.end method
