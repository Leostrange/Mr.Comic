.class final Landroidx/compose/ui/focus/FocusOwnerImpl$moveFocus$foundNextItem$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FocusOwnerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/focus/FocusOwnerImpl;->moveFocus-3ESFkO8(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusOwnerImpl$moveFocus$foundNextItem$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/focus/FocusTargetNode;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusOwnerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusOwnerImpl.kt\nandroidx/compose/ui/focus/FocusOwnerImpl$moveFocus$foundNextItem$1\n+ 2 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 3 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 6 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 7 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 8 FocusTransactionManager.kt\nandroidx/compose/ui/focus/FocusTransactionManager\n+ 9 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,335:1\n90#2:336\n262#3:337\n230#3,5:338\n58#3:343\n59#3,8:345\n385#3,5:353\n263#3:358\n390#3:359\n395#3,2:361\n397#3,8:366\n405#3,9:377\n414#3,8:389\n68#3,7:397\n265#3:404\n1#4:344\n1#4:412\n261#5:360\n234#6,3:363\n237#6,3:386\n1208#7:374\n1187#7,2:375\n39#8,7:405\n46#8,4:415\n728#9,2:413\n*S KotlinDebug\n*F\n+ 1 FocusOwnerImpl.kt\nandroidx/compose/ui/focus/FocusOwnerImpl$moveFocus$foundNextItem$1\n*L\n182#1:336\n182#1:337\n182#1:338,5\n182#1:343\n182#1:345,8\n182#1:353,5\n182#1:358\n182#1:359\n182#1:361,2\n182#1:366,8\n182#1:377,9\n182#1:389,8\n182#1:397,7\n182#1:404\n182#1:344\n187#1:412\n182#1:360\n182#1:363,3\n182#1:386,3\n182#1:374\n182#1:375,2\n187#1:405,7\n187#1:415,4\n187#1:413,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "destination",
        "Landroidx/compose/ui/focus/FocusTargetNode;",
        "invoke",
        "(Landroidx/compose/ui/focus/FocusTargetNode;)Ljava/lang/Boolean;"
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
.field final synthetic $focusDirection:I

.field final synthetic $isCancelled:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $source:Landroidx/compose/ui/focus/FocusTargetNode;

.field final synthetic this$0:Landroidx/compose/ui/focus/FocusOwnerImpl;


# direct methods
.method constructor <init>(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl;ILkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$moveFocus$foundNextItem$1;->$source:Landroidx/compose/ui/focus/FocusTargetNode;

    iput-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$moveFocus$foundNextItem$1;->this$0:Landroidx/compose/ui/focus/FocusOwnerImpl;

    iput p3, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$moveFocus$foundNextItem$1;->$focusDirection:I

    iput-object p4, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$moveFocus$foundNextItem$1;->$isCancelled:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/focus/FocusTargetNode;)Ljava/lang/Boolean;
    .locals 34
    .param p1, "destination"    # Landroidx/compose/ui/focus/FocusTargetNode;

    .line 181
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Landroidx/compose/ui/focus/FocusOwnerImpl$moveFocus$foundNextItem$1;->$source:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 182
    :cond_0
    move-object v0, v2

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v4, 0x0

    .line 336
    .local v4, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v5, 0x400

    invoke-static {v5}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v4

    .line 182
    .end local v4    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .local v0, "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v4, "type$iv":I
    const/4 v5, 0x0

    .line 337
    .local v5, "$i$f$nearestAncestor-64DMado":I
    move-object v6, v0

    .line 338
    .local v6, "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 340
    const/4 v7, 0x0

    .line 338
    .local v7, "includeSelf$iv$iv":Z
    const/4 v8, 0x0

    .line 342
    .local v8, "$i$f$visitAncestors-Y-YKmho":I
    move v9, v4

    .local v9, "mask$iv$iv$iv":I
    move-object v10, v6

    .local v10, "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v11, 0x0

    .line 343
    .local v11, "$i$f$visitAncestors":I
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v12

    if-eqz v12, :cond_15

    .line 345
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    .line 346
    .local v12, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static {v10}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v13

    .line 347
    .local v13, "layout$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_0
    const/4 v15, 0x1

    if-eqz v13, :cond_12

    .line 348
    invoke-virtual {v13}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v16

    .line 349
    .local v16, "head$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v17

    and-int v17, v17, v9

    if-eqz v17, :cond_10

    .line 350
    :goto_1
    if-eqz v12, :cond_f

    .line 351
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v17

    and-int v17, v17, v9

    if-eqz v17, :cond_e

    .line 352
    move-object/from16 v17, v12

    .local v17, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 342
    .local v18, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv":I
    move-object/from16 v19, v17

    .local v19, "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 353
    .local v20, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v21, 0x0

    .line 354
    .local v21, "stack$iv$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .local v22, "node$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v22, v19

    move-object/from16 v14, v22

    .line 355
    .end local v22    # "node$iv$iv$iv":Ljava/lang/Object;
    .local v14, "node$iv$iv$iv":Ljava/lang/Object;
    :goto_2
    if-eqz v14, :cond_d

    .line 356
    instance-of v3, v14, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v3, :cond_1

    .line 357
    move-object v3, v14

    .local v3, "it$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 358
    .local v22, "$i$a$-visitAncestors-Y-YKmho$default-DelegatableNodeKt$nearestAncestor$2$iv":I
    goto/16 :goto_c

    .line 359
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v22    # "$i$a$-visitAncestors-Y-YKmho$default-DelegatableNodeKt$nearestAncestor$2$iv":I
    :cond_1
    move-object v3, v14

    .local v3, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 360
    .local v23, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v24

    and-int v24, v24, v4

    if-eqz v24, :cond_2

    move v3, v15

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    .line 359
    .end local v3    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_3
    if-eqz v3, :cond_b

    instance-of v3, v14, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v3, :cond_b

    .line 361
    const/4 v3, 0x0

    .line 362
    .local v3, "count$iv$iv$iv":I
    move-object/from16 v23, v14

    check-cast v23, Landroidx/compose/ui/node/DelegatingNode;

    .local v23, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v24, 0x0

    .line 363
    .local v24, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v25

    .line 364
    .local v25, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v25, :cond_a

    .line 365
    move-object/from16 v26, v25

    .local v26, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v27, 0x0

    .line 366
    .local v27, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    move-object/from16 v28, v26

    .local v28, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v29, 0x0

    .line 360
    .local v29, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v30

    and-int v30, v30, v4

    if-eqz v30, :cond_3

    move/from16 v28, v15

    goto :goto_5

    :cond_3
    const/16 v28, 0x0

    .line 366
    .end local v28    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v29    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_5
    if-eqz v28, :cond_9

    .line 367
    add-int/lit8 v3, v3, 0x1

    .line 368
    if-ne v3, v15, :cond_4

    .line 369
    move-object/from16 v14, v26

    move-object/from16 v31, v0

    move/from16 v33, v4

    move-object/from16 v15, v26

    const/4 v4, 0x0

    goto :goto_8

    .line 373
    :cond_4
    if-nez v21, :cond_5

    const/16 v28, 0x0

    .line 374
    .local v28, "$i$f$mutableVectorOf":I
    nop

    .line 375
    const/16 v15, 0x10

    .local v15, "capacity$iv$iv$iv$iv$iv":I
    const/16 v30, 0x0

    .line 376
    .local v30, "$i$f$MutableVector":I
    move-object/from16 v31, v0

    .end local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v31, "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v32, v3

    .end local v3    # "count$iv$iv$iv":I
    .local v32, "count$iv$iv$iv":I
    new-array v3, v15, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v33, v4

    const/4 v4, 0x0

    .end local v4    # "type$iv":I
    .local v33, "type$iv":I
    invoke-direct {v0, v3, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 374
    .end local v15    # "capacity$iv$iv$iv$iv$iv":I
    .end local v30    # "$i$f$MutableVector":I
    goto :goto_6

    .line 373
    .end local v28    # "$i$f$mutableVectorOf":I
    .end local v31    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v32    # "count$iv$iv$iv":I
    .end local v33    # "type$iv":I
    .restart local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "count$iv$iv$iv":I
    .restart local v4    # "type$iv":I
    :cond_5
    move-object/from16 v31, v0

    move/from16 v32, v3

    move/from16 v33, v4

    const/4 v4, 0x0

    .end local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "count$iv$iv$iv":I
    .end local v4    # "type$iv":I
    .restart local v31    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v32    # "count$iv$iv$iv":I
    .restart local v33    # "type$iv":I
    move-object/from16 v0, v21

    :goto_6
    nop

    .line 377
    .end local v21    # "stack$iv$iv$iv":Ljava/lang/Object;
    .local v0, "stack$iv$iv$iv":Ljava/lang/Object;
    move-object v3, v14

    .line 378
    .local v3, "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v3, :cond_7

    .line 379
    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_6
    const/4 v14, 0x0

    .line 382
    :cond_7
    if-eqz v0, :cond_8

    move-object/from16 v15, v26

    .end local v26    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v15, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .end local v15    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_8
    move-object/from16 v15, v26

    .line 385
    .end local v3    # "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v15    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    move-object/from16 v21, v0

    move/from16 v3, v32

    goto :goto_8

    .line 366
    .end local v15    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v31    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v32    # "count$iv$iv$iv":I
    .end local v33    # "type$iv":I
    .local v0, "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v3, "count$iv$iv$iv":I
    .restart local v4    # "type$iv":I
    .restart local v21    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v26    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v31, v0

    move/from16 v33, v4

    move-object/from16 v15, v26

    const/4 v4, 0x0

    .line 385
    .end local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "type$iv":I
    .end local v26    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v15    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v31    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v33    # "type$iv":I
    :goto_8
    nop

    .line 365
    .end local v15    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    nop

    .line 386
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v25

    move-object/from16 v0, v31

    move/from16 v4, v33

    const/4 v15, 0x1

    goto :goto_4

    .line 388
    .end local v31    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v33    # "type$iv":I
    .restart local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "type$iv":I
    :cond_a
    move-object/from16 v31, v0

    move/from16 v33, v4

    const/4 v4, 0x0

    .line 389
    .end local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "type$iv":I
    .end local v23    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v24    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v25    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v31    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v33    # "type$iv":I
    const/4 v0, 0x1

    if-ne v3, v0, :cond_c

    .line 391
    move v3, v4

    move-object/from16 v0, v31

    move/from16 v4, v33

    const/4 v15, 0x1

    goto/16 :goto_2

    .line 359
    .end local v3    # "count$iv$iv$iv":I
    .end local v31    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v33    # "type$iv":I
    .restart local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "type$iv":I
    :cond_b
    move-object/from16 v31, v0

    move/from16 v33, v4

    const/4 v4, 0x0

    .line 394
    .end local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "type$iv":I
    .restart local v31    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v33    # "type$iv":I
    :cond_c
    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    move v3, v4

    move-object/from16 v0, v31

    move/from16 v4, v33

    const/4 v15, 0x1

    goto/16 :goto_2

    .line 396
    .end local v31    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v33    # "type$iv":I
    .restart local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "type$iv":I
    :cond_d
    move-object/from16 v31, v0

    move/from16 v33, v4

    move v4, v3

    .line 342
    .end local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "type$iv":I
    .end local v14    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v21    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v31    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v33    # "type$iv":I
    nop

    .line 352
    .end local v17    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv":I
    goto :goto_9

    .line 351
    .end local v31    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v33    # "type$iv":I
    .restart local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "type$iv":I
    :cond_e
    move-object/from16 v31, v0

    move/from16 v33, v4

    move v4, v3

    .line 397
    .end local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "type$iv":I
    .restart local v31    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v33    # "type$iv":I
    :goto_9
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    move v3, v4

    move-object/from16 v0, v31

    move/from16 v4, v33

    const/4 v15, 0x1

    goto/16 :goto_1

    .line 350
    .end local v31    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v33    # "type$iv":I
    .restart local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "type$iv":I
    :cond_f
    move-object/from16 v31, v0

    move/from16 v33, v4

    move v4, v3

    .end local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "type$iv":I
    .restart local v31    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v33    # "type$iv":I
    goto :goto_a

    .line 349
    .end local v31    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v33    # "type$iv":I
    .restart local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "type$iv":I
    :cond_10
    move-object/from16 v31, v0

    move/from16 v33, v4

    move v4, v3

    .line 400
    .end local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "type$iv":I
    .restart local v31    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v33    # "type$iv":I
    :goto_a
    invoke-virtual {v13}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v13

    .line 401
    if-eqz v13, :cond_11

    invoke-virtual {v13}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    goto :goto_b

    :cond_11
    const/4 v14, 0x0

    :goto_b
    move-object v12, v14

    move v3, v4

    move-object/from16 v0, v31

    move/from16 v4, v33

    .end local v16    # "head$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_0

    .line 403
    .end local v31    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v33    # "type$iv":I
    .restart local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "type$iv":I
    :cond_12
    move-object/from16 v31, v0

    move/from16 v33, v4

    .line 342
    .end local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "type$iv":I
    .end local v9    # "mask$iv$iv$iv":I
    .end local v10    # "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v11    # "$i$f$visitAncestors":I
    .end local v12    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "layout$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v31    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v33    # "type$iv":I
    nop

    .line 404
    .end local v6    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v7    # "includeSelf$iv$iv":Z
    .end local v8    # "$i$f$visitAncestors-Y-YKmho":I
    const/4 v14, 0x0

    .line 182
    .end local v5    # "$i$f$nearestAncestor-64DMado":I
    .end local v31    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v33    # "type$iv":I
    :goto_c
    if-eqz v14, :cond_14

    .line 187
    iget-object v0, v1, Landroidx/compose/ui/focus/FocusOwnerImpl$moveFocus$foundNextItem$1;->this$0:Landroidx/compose/ui/focus/FocusOwnerImpl;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getFocusTransactionManager()Landroidx/compose/ui/focus/FocusTransactionManager;

    move-result-object v3

    .local v3, "$this$iv":Landroidx/compose/ui/focus/FocusTransactionManager;
    iget v0, v1, Landroidx/compose/ui/focus/FocusOwnerImpl$moveFocus$foundNextItem$1;->$focusDirection:I

    iget-object v4, v1, Landroidx/compose/ui/focus/FocusOwnerImpl$moveFocus$foundNextItem$1;->$isCancelled:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 405
    nop

    .line 406
    const/4 v5, 0x0

    .line 405
    .local v5, "onCancelled$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 408
    .local v6, "$i$f$withNewTransaction":I
    nop

    .line 409
    :try_start_0
    invoke-static {v3}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$getOngoingTransaction$p(Landroidx/compose/ui/focus/FocusTransactionManager;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-static {v3}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$cancelTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V

    .line 410
    :cond_13
    invoke-static {v3}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$beginTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V

    .line 411
    nop

    .line 415
    const/4 v7, 0x0

    .line 188
    .local v7, "$i$a$-withNewTransaction$default-FocusOwnerImpl$moveFocus$foundNextItem$1$2":I
    invoke-static {v2, v0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->performCustomRequestFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    move-result-object v0

    sget-object v8, Landroidx/compose/ui/focus/FocusOwnerImpl$moveFocus$foundNextItem$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/ui/focus/CustomDestinationResult;->ordinal()I

    move-result v0

    aget v0, v8, v0

    packed-switch v0, :pswitch_data_0

    .line 191
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    goto :goto_e

    :pswitch_0
    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->performRequestFocus(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v15

    goto :goto_d

    .line 190
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    move v15, v0

    goto :goto_d

    .line 189
    :pswitch_2
    const/4 v0, 0x1

    move v15, v0

    .line 188
    :goto_d
    nop

    .end local v7    # "$i$a$-withNewTransaction$default-FocusOwnerImpl$moveFocus$foundNextItem$1$2":I
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    nop

    .line 417
    invoke-static {v3}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$commitTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V

    .line 418
    nop

    .line 187
    .end local v3    # "$this$iv":Landroidx/compose/ui/focus/FocusTransactionManager;
    .end local v5    # "onCancelled$iv":Lkotlin/jvm/functions/Function0;
    .end local v6    # "$i$f$withNewTransaction":I
    return-object v0

    .line 191
    .restart local v3    # "$this$iv":Landroidx/compose/ui/focus/FocusTransactionManager;
    .restart local v5    # "onCancelled$iv":Lkotlin/jvm/functions/Function0;
    .restart local v6    # "$i$f$withNewTransaction":I
    .restart local v7    # "$i$a$-withNewTransaction$default-FocusOwnerImpl$moveFocus$foundNextItem$1$2":I
    :goto_e
    :try_start_1
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .end local v3    # "$this$iv":Landroidx/compose/ui/focus/FocusTransactionManager;
    .end local v5    # "onCancelled$iv":Lkotlin/jvm/functions/Function0;
    .end local v6    # "$i$f$withNewTransaction":I
    .end local p1    # "destination":Landroidx/compose/ui/focus/FocusTargetNode;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    .end local v7    # "$i$a$-withNewTransaction$default-FocusOwnerImpl$moveFocus$foundNextItem$1$2":I
    .restart local v3    # "$this$iv":Landroidx/compose/ui/focus/FocusTransactionManager;
    .restart local v5    # "onCancelled$iv":Lkotlin/jvm/functions/Function0;
    .restart local v6    # "$i$f$withNewTransaction":I
    .restart local p1    # "destination":Landroidx/compose/ui/focus/FocusTargetNode;
    :catchall_0
    move-exception v0

    invoke-static {v3}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$commitTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V

    throw v0

    .line 182
    .end local v3    # "$this$iv":Landroidx/compose/ui/focus/FocusTransactionManager;
    .end local v5    # "onCancelled$iv":Lkotlin/jvm/functions/Function0;
    .end local v6    # "$i$f$withNewTransaction":I
    :cond_14
    const/4 v0, 0x0

    .line 183
    .local v0, "$i$a$-checkNotNull-FocusOwnerImpl$moveFocus$foundNextItem$1$1":I
    nop

    .line 182
    .end local v0    # "$i$a$-checkNotNull-FocusOwnerImpl$moveFocus$foundNextItem$1$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Focus search landed at the root."

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    .local v0, "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "type$iv":I
    .local v5, "$i$f$nearestAncestor-64DMado":I
    .local v6, "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v7, "includeSelf$iv$iv":Z
    .restart local v8    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v9    # "mask$iv$iv$iv":I
    .restart local v10    # "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v11    # "$i$f$visitAncestors":I
    :cond_15
    move-object/from16 v31, v0

    .end local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v31    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v0, 0x0

    .line 343
    .local v0, "$i$a$-check-DelegatableNodeKt$visitAncestors$1$iv$iv$iv":I
    nop

    .end local v0    # "$i$a$-check-DelegatableNodeKt$visitAncestors$1$iv$iv$iv":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "visitAncestors called on an unattached node"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 180
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusOwnerImpl$moveFocus$foundNextItem$1;->invoke(Landroidx/compose/ui/focus/FocusTargetNode;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
