.class public final Landroidx/compose/ui/semantics/SemanticsNodeKt;
.super Ljava/lang/Object;
.source "SemanticsNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSemanticsNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SemanticsNode.kt\nandroidx/compose/ui/semantics/SemanticsNodeKt\n+ 2 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 3 NodeChain.kt\nandroidx/compose/ui/node/NodeChain\n+ 4 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 5 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 6 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 7 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n*L\n1#1,475:1\n76#2:476\n76#2:553\n771#3:477\n702#3,8:478\n725#3,3:486\n710#3,2:489\n703#3:491\n772#3:497\n704#3,11:536\n728#3,3:547\n715#3:550\n705#3:551\n774#3:552\n695#3,15:554\n725#3,3:569\n710#3,2:572\n703#3:574\n696#3,2:580\n704#3,11:620\n728#3,3:631\n715#3:634\n705#3:635\n698#3:636\n385#4,5:492\n390#4:498\n395#4,2:500\n397#4,8:505\n405#4,9:516\n414#4,8:528\n385#4,5:575\n390#4:582\n395#4,2:584\n397#4,8:589\n405#4,9:600\n414#4,8:612\n261#5:499\n261#5:583\n234#6,3:502\n237#6,3:525\n234#6,3:586\n237#6,3:609\n1208#7:513\n1187#7,2:514\n1208#7:597\n1187#7,2:598\n*S KotlinDebug\n*F\n+ 1 SemanticsNode.kt\nandroidx/compose/ui/semantics/SemanticsNodeKt\n*L\n45#1:476\n450#1:553\n45#1:477\n45#1:478,8\n45#1:486,3\n45#1:489,2\n45#1:491\n45#1:497\n45#1:536,11\n45#1:547,3\n45#1:550\n45#1:551\n45#1:552\n450#1:554,15\n450#1:569,3\n450#1:572,2\n450#1:574\n450#1:580,2\n450#1:620,11\n450#1:631,3\n450#1:634\n450#1:635\n450#1:636\n45#1:492,5\n45#1:498\n45#1:500,2\n45#1:505,8\n45#1:516,9\n45#1:528,8\n450#1:575,5\n450#1:582\n450#1:584,2\n450#1:589,8\n450#1:600,9\n450#1:612,8\n45#1:499\n450#1:583\n45#1:502,3\n45#1:525,3\n450#1:586,3\n450#1:609,3\n45#1:513\n45#1:514,2\n450#1:597\n450#1:598,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\rH\u0000\u001a\"\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0002H\u0000\u001a\u000c\u0010\u000f\u001a\u00020\u0010*\u00020\u0007H\u0002\u001a\"\u0010\u0011\u001a\u0004\u0018\u00010\u0002*\u00020\u00022\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\r0\u0013H\u0000\u001a\u000c\u0010\u0014\u001a\u00020\u0010*\u00020\u0007H\u0002\"\u001a\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0015"
    }
    d2 = {
        "outerMergingSemantics",
        "Landroidx/compose/ui/node/SemanticsModifierNode;",
        "Landroidx/compose/ui/node/LayoutNode;",
        "getOuterMergingSemantics",
        "(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/SemanticsModifierNode;",
        "role",
        "Landroidx/compose/ui/semantics/Role;",
        "Landroidx/compose/ui/semantics/SemanticsNode;",
        "getRole",
        "(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/semantics/Role;",
        "SemanticsNode",
        "layoutNode",
        "mergingEnabled",
        "",
        "outerSemanticsNode",
        "contentDescriptionFakeNodeId",
        "",
        "findClosestParentNode",
        "selector",
        "Lkotlin/Function1;",
        "roleFakeNodeId",
        "ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final SemanticsNode(Landroidx/compose/ui/node/LayoutNode;Z)Landroidx/compose/ui/semantics/SemanticsNode;
    .locals 33
    .param p0, "layoutNode"    # Landroidx/compose/ui/node/LayoutNode;
    .param p1, "mergingEnabled"    # Z

    .line 44
    nop

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    const/4 v1, 0x0

    .line 476
    .local v1, "$i$f$getSemantics-OLwlOKw":I
    const/16 v2, 0x8

    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 45
    .end local v1    # "$i$f$getSemantics-OLwlOKw":I
    nop

    .local v0, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v1, "type$iv":I
    const/4 v2, 0x0

    .line 477
    .local v2, "$i$f$head-H91voCI$ui_release":I
    move-object v3, v0

    .local v3, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v4, 0x0

    .line 478
    .local v4, "$i$f$headToTail-aLcG6gQ$ui_release":I
    move v5, v1

    .local v5, "mask$iv$iv$iv":I
    move-object v6, v3

    .local v6, "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v7, 0x0

    .line 484
    .local v7, "$i$f$headToTail$ui_release":I
    invoke-static {v6}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v8

    and-int/2addr v8, v5

    if-eqz v8, :cond_f

    .line 485
    move-object v8, v6

    .local v8, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v9, 0x0

    .line 486
    .local v9, "$i$f$headToTail$ui_release":I
    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 487
    .local v10, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v10, :cond_e

    .line 488
    move-object v11, v10

    .local v11, "it$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 489
    .local v12, "$i$a$-headToTail$ui_release-NodeChain$headToTail$2$iv$iv$iv":I
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int/2addr v13, v5

    if-eqz v13, :cond_d

    .line 490
    move-object v13, v11

    .local v13, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 491
    .local v14, "$i$a$-headToTail$ui_release-NodeChain$headToTail$1$iv$iv":I
    move-object v15, v13

    .local v15, "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v16, 0x0

    .line 492
    .local v16, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v17, 0x0

    .line 493
    .local v17, "stack$iv$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .local v18, "node$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v15

    move-object/from16 v32, v18

    move-object/from16 v18, v0

    move-object/from16 v0, v32

    .line 494
    .local v0, "node$iv$iv$iv":Ljava/lang/Object;
    .local v18, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_1
    if-eqz v0, :cond_c

    .line 495
    move/from16 v19, v2

    .end local v2    # "$i$f$head-H91voCI$ui_release":I
    .local v19, "$i$f$head-H91voCI$ui_release":I
    instance-of v2, v0, Landroidx/compose/ui/node/SemanticsModifierNode;

    if-eqz v2, :cond_0

    .line 496
    move-object v2, v0

    .local v2, "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 497
    .local v20, "$i$a$-headToTail-aLcG6gQ$ui_release-NodeChain$head$1$iv":I
    goto/16 :goto_a

    .line 498
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-headToTail-aLcG6gQ$ui_release-NodeChain$head$1$iv":I
    :cond_0
    move-object v2, v0

    .local v2, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 499
    .local v20, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v21

    and-int v21, v21, v1

    move-object/from16 v22, v2

    .end local v2    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v22, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v21, :cond_1

    const/16 v20, 0x1

    goto :goto_2

    :cond_1
    const/16 v20, 0x0

    .line 498
    .end local v20    # "$i$f$isKind-H91voCI$ui_release":I
    .end local v22    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v20, :cond_a

    instance-of v2, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_a

    .line 500
    const/4 v2, 0x0

    .line 501
    .local v2, "count$iv$iv$iv":I
    move-object/from16 v21, v0

    check-cast v21, Landroidx/compose/ui/node/DelegatingNode;

    .local v21, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v22, 0x0

    .line 502
    .local v22, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v23

    .line 503
    .local v23, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v23, :cond_9

    .line 504
    move-object/from16 v24, v23

    .local v24, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 505
    .local v25, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    move-object/from16 v26, v24

    .local v26, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v27, 0x0

    .line 499
    .local v27, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v28

    and-int v28, v28, v1

    if-eqz v28, :cond_2

    const/16 v26, 0x1

    goto :goto_4

    :cond_2
    const/16 v26, 0x0

    .line 505
    .end local v26    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_4
    if-eqz v26, :cond_8

    .line 506
    add-int/lit8 v2, v2, 0x1

    .line 507
    move/from16 v26, v1

    const/4 v1, 0x1

    .end local v1    # "type$iv":I
    .local v26, "type$iv":I
    if-ne v2, v1, :cond_3

    .line 508
    move-object/from16 v0, v24

    move-object/from16 v30, v3

    move-object/from16 v1, v24

    goto :goto_7

    .line 512
    :cond_3
    if-nez v17, :cond_4

    const/4 v1, 0x0

    .line 513
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 514
    move/from16 v27, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v27, "$i$f$mutableVectorOf":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv$iv$iv":I
    const/16 v28, 0x0

    .line 515
    .local v28, "$i$f$MutableVector":I
    move/from16 v29, v2

    .end local v2    # "count$iv$iv$iv":I
    .local v29, "count$iv$iv$iv":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v30, v3

    .end local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v30, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v31, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv$iv$iv":I
    .local v31, "capacity$iv$iv$iv$iv$iv":I
    invoke-direct {v2, v3, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 513
    .end local v28    # "$i$f$MutableVector":I
    .end local v31    # "capacity$iv$iv$iv$iv$iv":I
    goto :goto_5

    .line 512
    .end local v27    # "$i$f$mutableVectorOf":I
    .end local v29    # "count$iv$iv$iv":I
    .end local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "count$iv$iv$iv":I
    .restart local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_4
    move/from16 v29, v2

    move-object/from16 v30, v3

    const/4 v1, 0x0

    .end local v2    # "count$iv$iv$iv":I
    .end local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v29    # "count$iv$iv$iv":I
    .restart local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    move-object/from16 v2, v17

    :goto_5
    nop

    .line 516
    .end local v17    # "stack$iv$iv$iv":Ljava/lang/Object;
    .local v2, "stack$iv$iv$iv":Ljava/lang/Object;
    move-object v3, v0

    .line 517
    .local v3, "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v3, :cond_6

    .line 518
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_5
    const/4 v0, 0x0

    .line 521
    :cond_6
    if-eqz v2, :cond_7

    move-object/from16 v1, v24

    .end local v24    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v1, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .end local v1    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_7
    move-object/from16 v1, v24

    .line 524
    .end local v3    # "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    move-object/from16 v17, v2

    move/from16 v2, v29

    goto :goto_7

    .line 505
    .end local v26    # "type$iv":I
    .end local v29    # "count$iv$iv$iv":I
    .end local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v1, "type$iv":I
    .local v2, "count$iv$iv$iv":I
    .local v3, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v17    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v24    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_8
    move/from16 v26, v1

    move-object/from16 v30, v3

    move-object/from16 v1, v24

    .line 524
    .end local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v24    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v1, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "type$iv":I
    .restart local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_7
    nop

    .line 504
    .end local v1    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    nop

    .line 525
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v23

    move/from16 v1, v26

    move-object/from16 v3, v30

    goto :goto_3

    .line 527
    .end local v26    # "type$iv":I
    .end local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v1, "type$iv":I
    .restart local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_9
    move/from16 v26, v1

    move-object/from16 v30, v3

    .line 528
    .end local v1    # "type$iv":I
    .end local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v21    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v22    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v23    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "type$iv":I
    .restart local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v1, 0x1

    if-ne v2, v1, :cond_b

    .line 530
    move/from16 v2, v19

    move/from16 v1, v26

    move-object/from16 v3, v30

    goto/16 :goto_1

    .line 498
    .end local v2    # "count$iv$iv$iv":I
    .end local v26    # "type$iv":I
    .end local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v1    # "type$iv":I
    .restart local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_a
    move/from16 v26, v1

    move-object/from16 v30, v3

    .line 533
    .end local v1    # "type$iv":I
    .end local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v26    # "type$iv":I
    .restart local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_b
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move/from16 v2, v19

    move/from16 v1, v26

    move-object/from16 v3, v30

    goto/16 :goto_1

    .line 535
    .end local v19    # "$i$f$head-H91voCI$ui_release":I
    .end local v26    # "type$iv":I
    .end local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v1    # "type$iv":I
    .local v2, "$i$f$head-H91voCI$ui_release":I
    .restart local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_c
    move/from16 v26, v1

    move/from16 v19, v2

    move-object/from16 v30, v3

    .line 536
    .end local v0    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v1    # "type$iv":I
    .end local v2    # "$i$f$head-H91voCI$ui_release":I
    .end local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v15    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v17    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v19    # "$i$f$head-H91voCI$ui_release":I
    .restart local v26    # "type$iv":I
    .restart local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    nop

    .line 490
    .end local v13    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$a$-headToTail$ui_release-NodeChain$headToTail$1$iv$iv":I
    goto :goto_8

    .line 489
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v19    # "$i$f$head-H91voCI$ui_release":I
    .end local v26    # "type$iv":I
    .end local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v0, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v1    # "type$iv":I
    .restart local v2    # "$i$f$head-H91voCI$ui_release":I
    .restart local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_d
    move-object/from16 v18, v0

    move/from16 v26, v1

    move/from16 v19, v2

    move-object/from16 v30, v3

    .line 545
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v1    # "type$iv":I
    .end local v2    # "$i$f$head-H91voCI$ui_release":I
    .end local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v19    # "$i$f$head-H91voCI$ui_release":I
    .restart local v26    # "type$iv":I
    .restart local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_8
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v0

    and-int/2addr v0, v5

    if-eqz v0, :cond_10

    .line 546
    nop

    .line 488
    .end local v11    # "it$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$a$-headToTail$ui_release-NodeChain$headToTail$2$iv$iv$iv":I
    nop

    .line 547
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move-object/from16 v0, v18

    move/from16 v2, v19

    move/from16 v1, v26

    move-object/from16 v3, v30

    goto/16 :goto_0

    .line 549
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v19    # "$i$f$head-H91voCI$ui_release":I
    .end local v26    # "type$iv":I
    .end local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v1    # "type$iv":I
    .restart local v2    # "$i$f$head-H91voCI$ui_release":I
    .restart local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_e
    move-object/from16 v18, v0

    move/from16 v26, v1

    move/from16 v19, v2

    move-object/from16 v30, v3

    .line 550
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v1    # "type$iv":I
    .end local v2    # "$i$f$head-H91voCI$ui_release":I
    .end local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v8    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v9    # "$i$f$headToTail$ui_release":I
    .end local v10    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v19    # "$i$f$head-H91voCI$ui_release":I
    .restart local v26    # "type$iv":I
    .restart local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    goto :goto_9

    .line 484
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v19    # "$i$f$head-H91voCI$ui_release":I
    .end local v26    # "type$iv":I
    .end local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v1    # "type$iv":I
    .restart local v2    # "$i$f$head-H91voCI$ui_release":I
    .restart local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_f
    move-object/from16 v18, v0

    move/from16 v26, v1

    move/from16 v19, v2

    move-object/from16 v30, v3

    .line 551
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v1    # "type$iv":I
    .end local v2    # "$i$f$head-H91voCI$ui_release":I
    .end local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "mask$iv$iv$iv":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v7    # "$i$f$headToTail$ui_release":I
    .restart local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v19    # "$i$f$head-H91voCI$ui_release":I
    .restart local v26    # "type$iv":I
    .restart local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_10
    :goto_9
    nop

    .line 552
    .end local v4    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v2, 0x0

    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v19    # "$i$f$head-H91voCI$ui_release":I
    .end local v26    # "type$iv":I
    :goto_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Landroidx/compose/ui/node/SemanticsModifierNode;

    .line 45
    invoke-interface {v2}, Landroidx/compose/ui/node/SemanticsModifierNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 46
    nop

    .line 47
    nop

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->getCollapsedSemantics$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    new-instance v2, Landroidx/compose/ui/semantics/SemanticsNode;

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-direct {v2, v0, v4, v3, v1}, Landroidx/compose/ui/semantics/SemanticsNode;-><init>(Landroidx/compose/ui/Modifier$Node;ZLandroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    .line 49
    return-object v2
.end method

.method public static final SemanticsNode(Landroidx/compose/ui/node/SemanticsModifierNode;ZLandroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsNode;
    .locals 3
    .param p0, "outerSemanticsNode"    # Landroidx/compose/ui/node/SemanticsModifierNode;
    .param p1, "mergingEnabled"    # Z
    .param p2, "layoutNode"    # Landroidx/compose/ui/node/LayoutNode;

    .line 71
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 72
    invoke-interface {p0}, Landroidx/compose/ui/node/SemanticsModifierNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 73
    nop

    .line 74
    nop

    .line 75
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->getCollapsedSemantics$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-direct {v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;-><init>()V

    .line 71
    :cond_0
    invoke-direct {v0, v1, p1, p2, v2}, Landroidx/compose/ui/semantics/SemanticsNode;-><init>(Landroidx/compose/ui/Modifier$Node;ZLandroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    .line 76
    return-object v0
.end method

.method public static synthetic SemanticsNode$default(Landroidx/compose/ui/node/SemanticsModifierNode;ZLandroidx/compose/ui/node/LayoutNode;ILjava/lang/Object;)Landroidx/compose/ui/semantics/SemanticsNode;
    .locals 0

    .line 51
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 70
    move-object p2, p0

    check-cast p2, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {p2}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p2

    .line 51
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->SemanticsNode(Landroidx/compose/ui/node/SemanticsModifierNode;ZLandroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$contentDescriptionFakeNodeId(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->contentDescriptionFakeNodeId(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getRole(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/semantics/Role;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getRole(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/semantics/Role;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$roleFakeNodeId(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->roleFakeNodeId(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result v0

    return v0
.end method

.method private static final contentDescriptionFakeNodeId(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 2
    .param p0, "$this$contentDescriptionFakeNodeId"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 473
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v0

    const v1, 0x77359400

    add-int/2addr v0, v1

    return v0
.end method

.method public static final findClosestParentNode(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;
    .locals 2
    .param p0, "$this$findClosestParentNode"    # Landroidx/compose/ui/node/LayoutNode;
    .param p1, "selector"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/ui/node/LayoutNode;"
        }
    .end annotation

    .line 460
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    .line 461
    .local v0, "currentParent":Landroidx/compose/ui/node/LayoutNode;
    :goto_0
    if-eqz v0, :cond_1

    .line 462
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    return-object v0

    .line 465
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    goto :goto_0

    .line 469
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static final getOuterMergingSemantics(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/SemanticsModifierNode;
    .locals 33
    .param p0, "$this$outerMergingSemantics"    # Landroidx/compose/ui/node/LayoutNode;

    .line 450
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    const/4 v1, 0x0

    .line 553
    .local v1, "$i$f$getSemantics-OLwlOKw":I
    const/16 v2, 0x8

    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 450
    .end local v1    # "$i$f$getSemantics-OLwlOKw":I
    nop

    .local v0, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v1, "type$iv":I
    const/4 v2, 0x0

    .line 554
    .local v2, "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    move-object v3, v0

    .local v3, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v4, 0x0

    .line 561
    .local v4, "$i$f$headToTail-aLcG6gQ$ui_release":I
    move v5, v1

    .local v5, "mask$iv$iv$iv":I
    move-object v6, v3

    .local v6, "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v7, 0x0

    .line 567
    .local v7, "$i$f$headToTail$ui_release":I
    invoke-static {v6}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v8

    and-int/2addr v8, v5

    if-eqz v8, :cond_10

    .line 568
    move-object v8, v6

    .local v8, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v9, 0x0

    .line 569
    .local v9, "$i$f$headToTail$ui_release":I
    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 570
    .local v10, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v10, :cond_f

    .line 571
    move-object v11, v10

    .local v11, "it$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 572
    .local v12, "$i$a$-headToTail$ui_release-NodeChain$headToTail$2$iv$iv$iv":I
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int/2addr v13, v5

    if-eqz v13, :cond_e

    .line 573
    move-object v13, v11

    .local v13, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 574
    .local v14, "$i$a$-headToTail$ui_release-NodeChain$headToTail$1$iv$iv":I
    move-object v15, v13

    .local v15, "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v16, 0x0

    .line 575
    .local v16, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v17, 0x0

    .line 576
    .local v17, "stack$iv$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .local v18, "node$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v15

    move-object/from16 v32, v18

    move-object/from16 v18, v0

    move-object/from16 v0, v32

    .line 577
    .local v0, "node$iv$iv$iv":Ljava/lang/Object;
    .local v18, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_1
    if-eqz v0, :cond_d

    .line 578
    move/from16 v19, v2

    .end local v2    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .local v19, "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    instance-of v2, v0, Landroidx/compose/ui/node/SemanticsModifierNode;

    if-eqz v2, :cond_1

    .line 579
    move-object v2, v0

    .local v2, "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 580
    .local v20, "$i$a$-headToTail-aLcG6gQ$ui_release-NodeChain$firstFromHead$1$iv":I
    move-object/from16 v21, v2

    check-cast v21, Landroidx/compose/ui/node/SemanticsModifierNode;

    .local v21, "it":Landroidx/compose/ui/node/SemanticsModifierNode;
    const/16 v22, 0x0

    .line 451
    .local v22, "$i$a$-firstFromHead-aLcG6gQ$ui_release-SemanticsNodeKt$outerMergingSemantics$1":I
    invoke-interface/range {v21 .. v21}, Landroidx/compose/ui/node/SemanticsModifierNode;->getShouldMergeDescendantSemantics()Z

    move-result v21

    .line 580
    .end local v21    # "it":Landroidx/compose/ui/node/SemanticsModifierNode;
    .end local v22    # "$i$a$-firstFromHead-aLcG6gQ$ui_release-SemanticsNodeKt$outerMergingSemantics$1":I
    if-eqz v21, :cond_0

    goto/16 :goto_b

    .line 581
    :cond_0
    nop

    .line 579
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-headToTail-aLcG6gQ$ui_release-NodeChain$firstFromHead$1$iv":I
    move/from16 v26, v1

    move-object/from16 v30, v3

    goto/16 :goto_8

    .line 582
    :cond_1
    move-object v2, v0

    .local v2, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 583
    .local v20, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v21

    and-int v21, v21, v1

    move-object/from16 v22, v2

    .end local v2    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v22, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v21, :cond_2

    const/16 v20, 0x1

    goto :goto_2

    :cond_2
    const/16 v20, 0x0

    .line 582
    .end local v20    # "$i$f$isKind-H91voCI$ui_release":I
    .end local v22    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v20, :cond_b

    instance-of v2, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_b

    .line 584
    const/4 v2, 0x0

    .line 585
    .local v2, "count$iv$iv$iv":I
    move-object/from16 v21, v0

    check-cast v21, Landroidx/compose/ui/node/DelegatingNode;

    .local v21, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v22, 0x0

    .line 586
    .local v22, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v23

    .line 587
    .local v23, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v23, :cond_a

    .line 588
    move-object/from16 v24, v23

    .local v24, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 589
    .local v25, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    move-object/from16 v26, v24

    .local v26, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v27, 0x0

    .line 583
    .local v27, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v28

    and-int v28, v28, v1

    if-eqz v28, :cond_3

    const/16 v26, 0x1

    goto :goto_4

    :cond_3
    const/16 v26, 0x0

    .line 589
    .end local v26    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_4
    if-eqz v26, :cond_9

    .line 590
    add-int/lit8 v2, v2, 0x1

    .line 591
    move/from16 v26, v1

    const/4 v1, 0x1

    .end local v1    # "type$iv":I
    .local v26, "type$iv":I
    if-ne v2, v1, :cond_4

    .line 592
    move-object/from16 v0, v24

    move-object/from16 v30, v3

    move-object/from16 v1, v24

    goto :goto_7

    .line 596
    :cond_4
    if-nez v17, :cond_5

    const/4 v1, 0x0

    .line 597
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 598
    move/from16 v27, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v27, "$i$f$mutableVectorOf":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv$iv$iv":I
    const/16 v28, 0x0

    .line 599
    .local v28, "$i$f$MutableVector":I
    move/from16 v29, v2

    .end local v2    # "count$iv$iv$iv":I
    .local v29, "count$iv$iv$iv":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v30, v3

    .end local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v30, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v31, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv$iv$iv":I
    .local v31, "capacity$iv$iv$iv$iv$iv":I
    invoke-direct {v2, v3, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 597
    .end local v28    # "$i$f$MutableVector":I
    .end local v31    # "capacity$iv$iv$iv$iv$iv":I
    goto :goto_5

    .line 596
    .end local v27    # "$i$f$mutableVectorOf":I
    .end local v29    # "count$iv$iv$iv":I
    .end local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "count$iv$iv$iv":I
    .restart local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_5
    move/from16 v29, v2

    move-object/from16 v30, v3

    const/4 v1, 0x0

    .end local v2    # "count$iv$iv$iv":I
    .end local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v29    # "count$iv$iv$iv":I
    .restart local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    move-object/from16 v2, v17

    :goto_5
    nop

    .line 600
    .end local v17    # "stack$iv$iv$iv":Ljava/lang/Object;
    .local v2, "stack$iv$iv$iv":Ljava/lang/Object;
    move-object v3, v0

    .line 601
    .local v3, "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v3, :cond_7

    .line 602
    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 603
    :cond_6
    const/4 v0, 0x0

    .line 605
    :cond_7
    if-eqz v2, :cond_8

    move-object/from16 v1, v24

    .end local v24    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v1, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .end local v1    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_8
    move-object/from16 v1, v24

    .line 608
    .end local v3    # "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    move-object/from16 v17, v2

    move/from16 v2, v29

    goto :goto_7

    .line 589
    .end local v26    # "type$iv":I
    .end local v29    # "count$iv$iv$iv":I
    .end local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v1, "type$iv":I
    .local v2, "count$iv$iv$iv":I
    .local v3, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v17    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v24    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move/from16 v26, v1

    move-object/from16 v30, v3

    move-object/from16 v1, v24

    .line 608
    .end local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v24    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v1, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "type$iv":I
    .restart local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_7
    nop

    .line 588
    .end local v1    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    nop

    .line 609
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v23

    move/from16 v1, v26

    move-object/from16 v3, v30

    goto :goto_3

    .line 611
    .end local v26    # "type$iv":I
    .end local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v1, "type$iv":I
    .restart local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_a
    move/from16 v26, v1

    move-object/from16 v30, v3

    .line 612
    .end local v1    # "type$iv":I
    .end local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v21    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v22    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v23    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "type$iv":I
    .restart local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v1, 0x1

    if-ne v2, v1, :cond_c

    .line 614
    move/from16 v2, v19

    move/from16 v1, v26

    move-object/from16 v3, v30

    goto/16 :goto_1

    .line 582
    .end local v2    # "count$iv$iv$iv":I
    .end local v26    # "type$iv":I
    .end local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v1    # "type$iv":I
    .restart local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_b
    move/from16 v26, v1

    move-object/from16 v30, v3

    .line 617
    .end local v1    # "type$iv":I
    .end local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v26    # "type$iv":I
    .restart local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_c
    :goto_8
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move/from16 v2, v19

    move/from16 v1, v26

    move-object/from16 v3, v30

    goto/16 :goto_1

    .line 619
    .end local v19    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v26    # "type$iv":I
    .end local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v1    # "type$iv":I
    .local v2, "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_d
    move/from16 v26, v1

    move/from16 v19, v2

    move-object/from16 v30, v3

    .line 620
    .end local v0    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v1    # "type$iv":I
    .end local v2    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v15    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v17    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v19    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v26    # "type$iv":I
    .restart local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    nop

    .line 573
    .end local v13    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$a$-headToTail$ui_release-NodeChain$headToTail$1$iv$iv":I
    goto :goto_9

    .line 572
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v19    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v26    # "type$iv":I
    .end local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v0, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v1    # "type$iv":I
    .restart local v2    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_e
    move-object/from16 v18, v0

    move/from16 v26, v1

    move/from16 v19, v2

    move-object/from16 v30, v3

    .line 629
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v1    # "type$iv":I
    .end local v2    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v19    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v26    # "type$iv":I
    .restart local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_9
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v0

    and-int/2addr v0, v5

    if-eqz v0, :cond_11

    .line 630
    nop

    .line 571
    .end local v11    # "it$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$a$-headToTail$ui_release-NodeChain$headToTail$2$iv$iv$iv":I
    nop

    .line 631
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move-object/from16 v0, v18

    move/from16 v2, v19

    move/from16 v1, v26

    move-object/from16 v3, v30

    goto/16 :goto_0

    .line 633
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v19    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v26    # "type$iv":I
    .end local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v1    # "type$iv":I
    .restart local v2    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_f
    move-object/from16 v18, v0

    move/from16 v26, v1

    move/from16 v19, v2

    move-object/from16 v30, v3

    .line 634
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v1    # "type$iv":I
    .end local v2    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v8    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v9    # "$i$f$headToTail$ui_release":I
    .end local v10    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v19    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v26    # "type$iv":I
    .restart local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    goto :goto_a

    .line 567
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v19    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v26    # "type$iv":I
    .end local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v1    # "type$iv":I
    .restart local v2    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_10
    move-object/from16 v18, v0

    move/from16 v26, v1

    move/from16 v19, v2

    move-object/from16 v30, v3

    .line 635
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v1    # "type$iv":I
    .end local v2    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v3    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "mask$iv$iv$iv":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v7    # "$i$f$headToTail$ui_release":I
    .restart local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v19    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v26    # "type$iv":I
    .restart local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_11
    :goto_a
    nop

    .line 636
    .end local v4    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v30    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v2, 0x0

    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v19    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v26    # "type$iv":I
    :goto_b
    check-cast v2, Landroidx/compose/ui/node/SemanticsModifierNode;

    .line 452
    return-object v2
.end method

.method private static final getRole(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/semantics/Role;
    .locals 2
    .param p0, "$this$role"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 472
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getRole()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/Role;

    return-object v0
.end method

.method private static final roleFakeNodeId(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 2
    .param p0, "$this$roleFakeNodeId"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 474
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v0

    const v1, 0x3b9aca00

    add-int/2addr v0, v1

    return v0
.end method
