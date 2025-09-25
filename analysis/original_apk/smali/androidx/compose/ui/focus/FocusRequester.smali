.class public final Landroidx/compose/ui/focus/FocusRequester;
.super Ljava/lang/Object;
.source "FocusRequester.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusRequester$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusRequester.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusRequester.kt\nandroidx/compose/ui/focus/FocusRequester\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 5 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 6 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 7 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 8 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n*L\n1#1,252:1\n237#1:256\n238#1,4:258\n242#1:269\n243#1,5:299\n248#1:345\n249#1:350\n1208#2:253\n1187#2,2:254\n1208#2:274\n1187#2,2:275\n1208#2:408\n1187#2,2:409\n1#3:257\n1#3:351\n1#3:406\n460#4,7:262\n48#4:284\n467#4,4:346\n460#4,11:352\n460#4,11:363\n460#4,11:374\n460#4,11:385\n460#4,7:396\n48#4:418\n467#4,4:474\n90#5:270\n90#5:403\n276#6:271\n133#6,2:272\n135#6,7:277\n142#6,9:285\n385#6,5:294\n390#6:304\n395#6,2:306\n397#6,17:311\n414#6,8:331\n151#6,6:339\n276#6:404\n133#6:405\n134#6:407\n135#6,7:411\n142#6,9:419\n385#6,6:428\n395#6,2:435\n397#6,17:440\n414#6,8:460\n151#6,6:468\n261#7:305\n261#7:434\n234#8,3:308\n237#8,3:328\n234#8,3:437\n237#8,3:457\n*S KotlinDebug\n*F\n+ 1 FocusRequester.kt\nandroidx/compose/ui/focus/FocusRequester\n*L\n71#1:256\n71#1:258,4\n71#1:269\n71#1:299,5\n71#1:345\n71#1:350\n55#1:253\n55#1:254,2\n71#1:274\n71#1:275,2\n242#1:408\n242#1:409,2\n71#1:257\n242#1:406\n71#1:262,7\n71#1:284\n71#1:346,4\n100#1:352,11\n124#1:363,11\n145#1:374,11\n165#1:385,11\n241#1:396,7\n242#1:418\n241#1:474,4\n71#1:270\n242#1:403\n71#1:271\n71#1:272,2\n71#1:277,7\n71#1:285,9\n71#1:294,5\n71#1:304\n71#1:306,2\n71#1:311,17\n71#1:331,8\n71#1:339,6\n242#1:404\n242#1:405\n242#1:407\n242#1:411,7\n242#1:419,9\n242#1:428,6\n242#1:435,2\n242#1:440,17\n242#1:460,8\n242#1:468,6\n71#1:305\n242#1:434\n71#1:308,3\n71#1:328,3\n242#1:437,3\n242#1:457,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\tJ\u001d\u0010\n\u001a\u00020\t2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t0\u000cH\u0083\u0008J\r\u0010\u000e\u001a\u00020\tH\u0000\u00a2\u0006\u0002\u0008\u000fJ\u0006\u0010\u0010\u001a\u00020\tJ\u0006\u0010\u0011\u001a\u00020\u0012J\u0008\u0010\u0013\u001a\u00020\tH\u0007J\u0008\u0010\u0014\u001a\u00020\tH\u0007R\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/compose/ui/focus/FocusRequester;",
        "",
        "()V",
        "focusRequesterNodes",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "Landroidx/compose/ui/focus/FocusRequesterModifierNode;",
        "getFocusRequesterNodes$ui_release",
        "()Landroidx/compose/runtime/collection/MutableVector;",
        "captureFocus",
        "",
        "findFocusTarget",
        "onFound",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/focus/FocusTargetNode;",
        "focus",
        "focus$ui_release",
        "freeFocus",
        "requestFocus",
        "",
        "restoreFocusedChild",
        "saveFocusedChild",
        "Companion",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field private static final Cancel:Landroidx/compose/ui/focus/FocusRequester;

.field public static final Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

.field private static final Default:Landroidx/compose/ui/focus/FocusRequester;


# instance fields
.field private final focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/focus/FocusRequesterModifierNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/focus/FocusRequester$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/focus/FocusRequester$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    .line 177
    new-instance v0, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    sput-object v0, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    .line 189
    new-instance v0, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    sput-object v0, Landroidx/compose/ui/focus/FocusRequester;->Cancel:Landroidx/compose/ui/focus/FocusRequester;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    .line 253
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 254
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv":I
    const/4 v2, 0x0

    .line 255
    .local v2, "$i$f$MutableVector":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v4, v1, [Landroidx/compose/ui/focus/FocusRequesterModifierNode;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 253
    .end local v1    # "capacity$iv$iv":I
    .end local v2    # "$i$f$MutableVector":I
    nop

    .line 55
    .end local v0    # "$i$f$mutableVectorOf":I
    iput-object v3, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 53
    return-void
.end method

.method public static final synthetic access$getCancel$cp()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    .line 52
    sget-object v0, Landroidx/compose/ui/focus/FocusRequester;->Cancel:Landroidx/compose/ui/focus/FocusRequester;

    return-object v0
.end method

.method public static final synthetic access$getDefault$cp()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    .line 52
    sget-object v0, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    return-object v0
.end method

.method private final findFocusTarget(Lkotlin/jvm/functions/Function1;)Z
    .locals 39
    .param p1, "onFound"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusTargetNode;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 237
    .local v1, "$i$f$findFocusTarget":I
    sget-object v2, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v5, "\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n"

    if-eqz v2, :cond_1a

    .line 238
    sget-object v2, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getCancel()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_19

    .line 239
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 240
    const/4 v2, 0x0

    .line 241
    .local v2, "success":Z
    iget-object v5, v0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    .local v5, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v6, 0x0

    .line 396
    .local v6, "$i$f$forEach":I
    nop

    .line 397
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v7

    .line 398
    .local v7, "size$iv":I
    if-lez v7, :cond_17

    .line 399
    const/4 v8, 0x0

    .line 400
    .local v8, "i$iv":I
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v9

    .line 402
    .local v9, "content$iv":[Ljava/lang/Object;
    :goto_2
    aget-object v10, v9, v8

    check-cast v10, Landroidx/compose/ui/focus/FocusRequesterModifierNode;

    .local v10, "node":Landroidx/compose/ui/focus/FocusRequesterModifierNode;
    const/4 v11, 0x0

    .line 242
    .local v11, "$i$a$-forEach-FocusRequester$findFocusTarget$4":I
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v13, 0x0

    .line 403
    .local v13, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v14, 0x400

    invoke-static {v14}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v13

    .line 242
    .end local v13    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .local v12, "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v13, "type$iv":I
    const/4 v14, 0x0

    .line 404
    .local v14, "$i$f$visitChildren-6rFNWt0":I
    move v15, v13

    .local v15, "mask$iv$iv":I
    move-object/from16 v16, v12

    .local v16, "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/16 v17, 0x0

    .line 405
    .local v17, "$i$f$visitChildren":I
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v18

    if-eqz v18, :cond_16

    .line 407
    const/16 v18, 0x0

    .line 408
    .local v18, "$i$f$mutableVectorOf":I
    nop

    .line 409
    const/16 v4, 0x10

    .local v4, "capacity$iv$iv$iv$iv":I
    const/16 v20, 0x0

    .line 410
    .local v20, "$i$f$MutableVector":I
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v21, v1

    .end local v1    # "$i$f$findFocusTarget":I
    .local v21, "$i$f$findFocusTarget":I
    new-array v1, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v0, v1, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 408
    .end local v4    # "capacity$iv$iv$iv$iv":I
    .end local v20    # "$i$f$MutableVector":I
    nop

    .line 407
    .end local v18    # "$i$f$mutableVectorOf":I
    nop

    .line 411
    .local v0, "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 412
    .local v1, "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-nez v1, :cond_2

    .line 413
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    invoke-static {v0, v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_3

    .line 415
    :cond_2
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 416
    :goto_3
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 417
    move-object v4, v0

    .local v4, "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/16 v18, 0x0

    .line 418
    .local v18, "$i$f$getLastIndex":I
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v20

    const/16 v19, 0x1

    add-int/lit8 v4, v20, -0x1

    .line 417
    .end local v4    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v18    # "$i$f$getLastIndex":I
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/Modifier$Node;

    .line 419
    .local v4, "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v18

    and-int v18, v18, v15

    if-nez v18, :cond_3

    .line 420
    invoke-static {v0, v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 422
    goto :goto_3

    .line 424
    :cond_3
    move-object/from16 v18, v4

    .line 425
    .local v18, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v18, :cond_13

    .line 426
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v20

    and-int v20, v20, v15

    if-eqz v20, :cond_12

    .line 427
    move-object/from16 v20, v18

    .local v20, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 404
    .local v22, "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2$iv":I
    move-object/from16 v23, v20

    .local v23, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 428
    .local v24, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v25, 0x0

    .line 429
    .local v25, "stack$iv$iv":Ljava/lang/Object;
    const/16 v26, 0x0

    .local v26, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v26, v23

    move-object/from16 v3, v26

    .line 430
    .end local v26    # "node$iv$iv":Ljava/lang/Object;
    .local v3, "node$iv$iv":Ljava/lang/Object;
    :goto_5
    if-eqz v3, :cond_11

    .line 431
    move-object/from16 v27, v0

    .end local v0    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .local v27, "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    instance-of v0, v3, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v0, :cond_5

    .line 432
    move-object v0, v3

    check-cast v0, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v0, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/16 v28, 0x0

    .line 243
    .local v28, "$i$a$-visitChildren-6rFNWt0-FocusRequester$findFocusTarget$4$1":I
    move-object/from16 v29, v1

    move-object/from16 v1, p1

    .end local v1    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v29, "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Boolean;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_4

    .line 244
    const/4 v2, 0x1

    .line 245
    const/4 v1, 0x1

    const/4 v4, 0x0

    goto/16 :goto_d

    .line 247
    :cond_4
    nop

    .line 432
    .end local v0    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v28    # "$i$a$-visitChildren-6rFNWt0-FocusRequester$findFocusTarget$4$1":I
    move/from16 v37, v2

    move-object/from16 v38, v4

    const/4 v1, 0x1

    const/4 v4, 0x0

    goto/16 :goto_c

    .line 433
    .end local v29    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_5
    move-object/from16 v29, v1

    move-object/from16 v1, p1

    .end local v1    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v29    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move-object v0, v3

    .local v0, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v28, 0x0

    .line 434
    .local v28, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v30

    and-int v30, v30, v13

    if-eqz v30, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    .line 433
    .end local v0    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_6
    if-eqz v0, :cond_f

    instance-of v0, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_f

    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, "count$iv$iv":I
    move-object/from16 v28, v3

    check-cast v28, Landroidx/compose/ui/node/DelegatingNode;

    .local v28, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v30, 0x0

    .line 437
    .local v30, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v31

    .line 438
    .local v31, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    if-eqz v31, :cond_e

    .line 439
    move-object/from16 v32, v31

    .local v32, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v33, 0x0

    .line 440
    .local v33, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move-object/from16 v34, v32

    .local v34, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v35, 0x0

    .line 434
    .local v35, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v36

    and-int v36, v36, v13

    if-eqz v36, :cond_7

    const/16 v34, 0x1

    goto :goto_8

    :cond_7
    const/16 v34, 0x0

    .line 440
    .end local v34    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v35    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_8
    if-eqz v34, :cond_d

    .line 441
    add-int/lit8 v0, v0, 0x1

    .line 442
    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 443
    move-object/from16 v3, v32

    move/from16 v37, v2

    move-object/from16 v38, v4

    move-object/from16 v2, v32

    const/4 v4, 0x0

    goto :goto_b

    .line 447
    :cond_8
    if-nez v25, :cond_9

    const/4 v1, 0x0

    .line 408
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 409
    move/from16 v34, v0

    .end local v0    # "count$iv$iv":I
    .local v34, "count$iv$iv":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v35, 0x0

    .line 410
    .local v35, "$i$f$MutableVector":I
    move/from16 v36, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v36, "$i$f$mutableVectorOf":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v37, v2

    .end local v2    # "success":Z
    .local v37, "success":Z
    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v38, v4

    const/4 v4, 0x0

    .end local v4    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v38, "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-direct {v1, v2, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 408
    .end local v0    # "capacity$iv$iv$iv$iv":I
    .end local v35    # "$i$f$MutableVector":I
    goto :goto_9

    .line 447
    .end local v34    # "count$iv$iv":I
    .end local v36    # "$i$f$mutableVectorOf":I
    .end local v37    # "success":Z
    .end local v38    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "count$iv$iv":I
    .restart local v2    # "success":Z
    .restart local v4    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move/from16 v34, v0

    move/from16 v37, v2

    move-object/from16 v38, v4

    const/4 v4, 0x0

    .end local v0    # "count$iv$iv":I
    .end local v2    # "success":Z
    .end local v4    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v34    # "count$iv$iv":I
    .restart local v37    # "success":Z
    .restart local v38    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move-object/from16 v1, v25

    :goto_9
    move-object v0, v1

    .line 448
    .end local v25    # "stack$iv$iv":Ljava/lang/Object;
    .local v0, "stack$iv$iv":Ljava/lang/Object;
    move-object v1, v3

    .line 449
    .local v1, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_b

    .line 450
    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_a
    const/4 v2, 0x0

    move-object v3, v2

    .line 453
    :cond_b
    if-eqz v0, :cond_c

    move-object/from16 v2, v32

    .end local v32    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v32    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_c
    move-object/from16 v2, v32

    .line 456
    .end local v1    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v32    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_a
    move-object/from16 v25, v0

    move/from16 v0, v34

    goto :goto_b

    .line 440
    .end local v34    # "count$iv$iv":I
    .end local v37    # "success":Z
    .end local v38    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "count$iv$iv":I
    .local v2, "success":Z
    .restart local v4    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v25    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v32    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_d
    move/from16 v37, v2

    move-object/from16 v38, v4

    move-object/from16 v2, v32

    const/4 v4, 0x0

    .line 456
    .end local v4    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v32    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v37    # "success":Z
    .restart local v38    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_b
    nop

    .line 439
    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v33    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 457
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v31

    move-object/from16 v1, p1

    move/from16 v2, v37

    move-object/from16 v4, v38

    goto :goto_7

    .line 459
    .end local v37    # "success":Z
    .end local v38    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "success":Z
    .restart local v4    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_e
    move/from16 v37, v2

    move-object/from16 v38, v4

    const/4 v4, 0x0

    .line 460
    .end local v2    # "success":Z
    .end local v4    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v30    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v31    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v37    # "success":Z
    .restart local v38    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 462
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v37

    move-object/from16 v4, v38

    goto/16 :goto_5

    .line 433
    .end local v0    # "count$iv$iv":I
    .end local v37    # "success":Z
    .end local v38    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "success":Z
    .restart local v4    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_f
    move/from16 v37, v2

    move-object/from16 v38, v4

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 465
    .end local v2    # "success":Z
    .end local v4    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v37    # "success":Z
    .restart local v38    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_10
    :goto_c
    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v37

    move-object/from16 v4, v38

    goto/16 :goto_5

    .line 467
    .end local v27    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v29    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v37    # "success":Z
    .end local v38    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .local v1, "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "success":Z
    .restart local v4    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_11
    move-object/from16 v27, v0

    move-object/from16 v29, v1

    move/from16 v37, v2

    move-object/from16 v38, v4

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 404
    .end local v0    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "success":Z
    .end local v3    # "node$iv$iv":Ljava/lang/Object;
    .end local v4    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v25    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v27    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v29    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v37    # "success":Z
    .restart local v38    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    nop

    .line 427
    .end local v20    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2$iv":I
    nop

    .line 468
    move v3, v4

    move-object/from16 v1, v29

    goto/16 :goto_3

    .line 470
    .end local v27    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v29    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v37    # "success":Z
    .end local v38    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v1    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "success":Z
    .restart local v4    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_12
    move-object/from16 v27, v0

    move-object/from16 v29, v1

    move/from16 v37, v2

    move-object/from16 v38, v4

    const/4 v1, 0x1

    move v4, v3

    .end local v0    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "success":Z
    .end local v4    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v29    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v37    # "success":Z
    .restart local v38    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v18

    move-object/from16 v1, v29

    move-object/from16 v4, v38

    goto/16 :goto_4

    .line 425
    .end local v27    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v29    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v37    # "success":Z
    .end local v38    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v1    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "success":Z
    .restart local v4    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_13
    move-object/from16 v27, v0

    move-object/from16 v29, v1

    move/from16 v37, v2

    move-object/from16 v38, v4

    const/4 v1, 0x1

    move v4, v3

    .end local v0    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "success":Z
    .end local v4    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v29    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v37    # "success":Z
    .restart local v38    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move-object/from16 v1, v29

    goto/16 :goto_3

    .line 473
    .end local v18    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v29    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v37    # "success":Z
    .end local v38    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v1    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "success":Z
    :cond_14
    move-object/from16 v27, v0

    move-object/from16 v29, v1

    move/from16 v37, v2

    move v4, v3

    const/4 v1, 0x1

    .line 404
    .end local v0    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "success":Z
    .end local v15    # "mask$iv$iv":I
    .end local v16    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v17    # "$i$f$visitChildren":I
    .restart local v37    # "success":Z
    nop

    .line 248
    .end local v12    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v13    # "type$iv":I
    .end local v14    # "$i$f$visitChildren-6rFNWt0":I
    nop

    .line 402
    .end local v10    # "node":Landroidx/compose/ui/focus/FocusRequesterModifierNode;
    .end local v11    # "$i$a$-forEach-FocusRequester$findFocusTarget$4":I
    .end local v37    # "success":Z
    .restart local v2    # "success":Z
    :goto_d
    nop

    .line 474
    add-int/lit8 v8, v8, 0x1

    .line 475
    if-lt v8, v7, :cond_15

    goto :goto_e

    :cond_15
    move-object/from16 v0, p0

    move v3, v4

    move/from16 v1, v21

    goto/16 :goto_2

    .line 406
    .end local v21    # "$i$f$findFocusTarget":I
    .local v1, "$i$f$findFocusTarget":I
    .restart local v10    # "node":Landroidx/compose/ui/focus/FocusRequesterModifierNode;
    .restart local v11    # "$i$a$-forEach-FocusRequester$findFocusTarget$4":I
    .restart local v12    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v13    # "type$iv":I
    .restart local v14    # "$i$f$visitChildren-6rFNWt0":I
    .restart local v15    # "mask$iv$iv":I
    .restart local v16    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v17    # "$i$f$visitChildren":I
    :cond_16
    move/from16 v21, v1

    .end local v1    # "$i$f$findFocusTarget":I
    .restart local v21    # "$i$f$findFocusTarget":I
    const/4 v0, 0x0

    .line 405
    .local v0, "$i$a$-check-DelegatableNodeKt$visitChildren$1$iv$iv":I
    nop

    .end local v0    # "$i$a$-check-DelegatableNodeKt$visitChildren$1$iv$iv":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "visitChildren called on an unattached node"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    .end local v8    # "i$iv":I
    .end local v9    # "content$iv":[Ljava/lang/Object;
    .end local v10    # "node":Landroidx/compose/ui/focus/FocusRequesterModifierNode;
    .end local v11    # "$i$a$-forEach-FocusRequester$findFocusTarget$4":I
    .end local v12    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v13    # "type$iv":I
    .end local v14    # "$i$f$visitChildren-6rFNWt0":I
    .end local v15    # "mask$iv$iv":I
    .end local v16    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v17    # "$i$f$visitChildren":I
    .end local v21    # "$i$f$findFocusTarget":I
    .restart local v1    # "$i$f$findFocusTarget":I
    :cond_17
    move/from16 v21, v1

    .line 477
    .end local v1    # "$i$f$findFocusTarget":I
    .restart local v21    # "$i$f$findFocusTarget":I
    :goto_e
    nop

    .line 249
    .end local v5    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v6    # "$i$f$forEach":I
    .end local v7    # "size$iv":I
    return v2

    .line 351
    .end local v2    # "success":Z
    .end local v21    # "$i$f$findFocusTarget":I
    .restart local v1    # "$i$f$findFocusTarget":I
    :cond_18
    move/from16 v21, v1

    .end local v1    # "$i$f$findFocusTarget":I
    .restart local v21    # "$i$f$findFocusTarget":I
    const/4 v0, 0x0

    .line 239
    .local v0, "$i$a$-check-FocusRequester$findFocusTarget$3":I
    nop

    .end local v0    # "$i$a$-check-FocusRequester$findFocusTarget$3":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    .end local v21    # "$i$f$findFocusTarget":I
    .restart local v1    # "$i$f$findFocusTarget":I
    :cond_19
    move/from16 v21, v1

    .end local v1    # "$i$f$findFocusTarget":I
    .restart local v21    # "$i$f$findFocusTarget":I
    const/4 v0, 0x0

    .line 238
    .local v0, "$i$a$-check-FocusRequester$findFocusTarget$2":I
    nop

    .end local v0    # "$i$a$-check-FocusRequester$findFocusTarget$2":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    .end local v21    # "$i$f$findFocusTarget":I
    .restart local v1    # "$i$f$findFocusTarget":I
    :cond_1a
    move/from16 v21, v1

    .end local v1    # "$i$f$findFocusTarget":I
    .restart local v21    # "$i$f$findFocusTarget":I
    const/4 v0, 0x0

    .line 237
    .local v0, "$i$a$-check-FocusRequester$findFocusTarget$1":I
    nop

    .end local v0    # "$i$a$-check-FocusRequester$findFocusTarget$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final captureFocus()Z
    .locals 8

    .line 99
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 352
    .local v1, "$i$f$forEach":I
    nop

    .line 353
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    .line 354
    .local v2, "size$iv":I
    if-lez v2, :cond_2

    .line 355
    const/4 v3, 0x0

    .line 356
    .local v3, "i$iv":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v4

    .line 358
    .local v4, "content$iv":[Ljava/lang/Object;
    :cond_0
    aget-object v5, v4, v3

    check-cast v5, Landroidx/compose/ui/focus/FocusRequesterModifierNode;

    .local v5, "it":Landroidx/compose/ui/focus/FocusRequesterModifierNode;
    const/4 v6, 0x0

    .line 101
    .local v6, "$i$a$-forEach-FocusRequester$captureFocus$2":I
    invoke-static {v5}, Landroidx/compose/ui/focus/FocusRequesterModifierNodeKt;->captureFocus(Landroidx/compose/ui/focus/FocusRequesterModifierNode;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 102
    const/4 v7, 0x1

    return v7

    .line 104
    :cond_1
    nop

    .line 358
    .end local v5    # "it":Landroidx/compose/ui/focus/FocusRequesterModifierNode;
    .end local v6    # "$i$a$-forEach-FocusRequester$captureFocus$2":I
    nop

    .line 359
    add-int/lit8 v3, v3, 0x1

    .line 360
    if-lt v3, v2, :cond_0

    .line 362
    .end local v3    # "i$iv":I
    .end local v4    # "content$iv":[Ljava/lang/Object;
    :cond_2
    nop

    .line 105
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$f$forEach":I
    .end local v2    # "size$iv":I
    const/4 v0, 0x0

    return v0

    .line 351
    :cond_3
    const/4 v0, 0x0

    .line 99
    .local v0, "$i$a$-check-FocusRequester$captureFocus$1":I
    nop

    .end local v0    # "$i$a$-check-FocusRequester$captureFocus$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final focus$ui_release()Z
    .locals 40

    .line 71
    move-object/from16 v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    const/4 v1, 0x0

    .line 256
    .local v1, "$i$f$findFocusTarget":I
    sget-object v2, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v5, "\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n"

    if-eqz v2, :cond_1b

    .line 258
    sget-object v2, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getCancel()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_1a

    .line 259
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 260
    const/4 v2, 0x0

    .line 261
    .local v2, "success$iv":Z
    iget-object v5, v0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    .local v5, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v6, 0x0

    .line 262
    .local v6, "$i$f$forEach":I
    nop

    .line 263
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v7

    .line 264
    .local v7, "size$iv$iv":I
    if-lez v7, :cond_18

    .line 265
    const/4 v8, 0x0

    .line 266
    .local v8, "i$iv$iv":I
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v9

    .line 268
    .local v9, "content$iv$iv":[Ljava/lang/Object;
    :goto_2
    aget-object v10, v9, v8

    check-cast v10, Landroidx/compose/ui/focus/FocusRequesterModifierNode;

    .local v10, "node$iv":Landroidx/compose/ui/focus/FocusRequesterModifierNode;
    const/4 v11, 0x0

    .line 269
    .local v11, "$i$a$-forEach-FocusRequester$findFocusTarget$4$iv":I
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v13, 0x0

    .line 270
    .local v13, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v14, 0x400

    invoke-static {v14}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v13

    .line 269
    .end local v13    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .local v12, "$this$visitChildren_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v13, "type$iv$iv":I
    const/4 v14, 0x0

    .line 271
    .local v14, "$i$f$visitChildren-6rFNWt0":I
    move v15, v13

    .local v15, "mask$iv$iv$iv":I
    move-object/from16 v16, v12

    .local v16, "$this$visitChildren$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/16 v17, 0x0

    .line 272
    .local v17, "$i$f$visitChildren":I
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v18

    if-eqz v18, :cond_17

    .line 273
    const/16 v18, 0x0

    .line 274
    .local v18, "$i$f$mutableVectorOf":I
    nop

    .line 275
    const/16 v4, 0x10

    .local v4, "capacity$iv$iv$iv$iv$iv":I
    const/16 v20, 0x0

    .line 276
    .local v20, "$i$f$MutableVector":I
    move-object/from16 v21, v0

    .end local v0    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .local v21, "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v22, v1

    .end local v1    # "$i$f$findFocusTarget":I
    .local v22, "$i$f$findFocusTarget":I
    new-array v1, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v0, v1, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 274
    .end local v4    # "capacity$iv$iv$iv$iv$iv":I
    .end local v20    # "$i$f$MutableVector":I
    nop

    .line 273
    .end local v18    # "$i$f$mutableVectorOf":I
    nop

    .line 277
    .local v0, "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 278
    .local v1, "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-nez v1, :cond_2

    .line 279
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    invoke-static {v0, v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_3

    .line 281
    :cond_2
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 282
    :goto_3
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 283
    move-object v4, v0

    .local v4, "this_$iv$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/16 v18, 0x0

    .line 284
    .local v18, "$i$f$getLastIndex":I
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v20

    const/16 v19, 0x1

    add-int/lit8 v4, v20, -0x1

    .line 283
    .end local v4    # "this_$iv$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v18    # "$i$f$getLastIndex":I
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/Modifier$Node;

    .line 285
    .local v4, "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v18

    and-int v18, v18, v15

    if-nez v18, :cond_3

    .line 286
    invoke-static {v0, v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 288
    goto :goto_3

    .line 290
    :cond_3
    move-object/from16 v18, v4

    .line 291
    .local v18, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v18, :cond_14

    .line 292
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v20

    and-int v20, v20, v15

    if-eqz v20, :cond_13

    .line 293
    move-object/from16 v20, v18

    .local v20, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 271
    .local v23, "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2$iv$iv":I
    move-object/from16 v24, v20

    .local v24, "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 294
    .local v25, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v26, 0x0

    .line 295
    .local v26, "stack$iv$iv$iv":Ljava/lang/Object;
    const/16 v27, 0x0

    .local v27, "node$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v27, v24

    move-object/from16 v3, v27

    .line 296
    .end local v27    # "node$iv$iv$iv":Ljava/lang/Object;
    .local v3, "node$iv$iv$iv":Ljava/lang/Object;
    :goto_5
    if-eqz v3, :cond_12

    .line 297
    move-object/from16 v28, v0

    .end local v0    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .local v28, "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    instance-of v0, v3, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v0, :cond_6

    .line 298
    move-object v0, v3

    check-cast v0, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v0, "it$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    const/16 v29, 0x0

    .line 299
    .local v29, "$i$a$-visitChildren-6rFNWt0-FocusRequester$findFocusTarget$4$1$iv":I
    move-object/from16 v30, v0

    .local v30, "focusTarget":Landroidx/compose/ui/focus/FocusTargetNode;
    const/16 v31, 0x0

    .line 72
    .local v31, "$i$a$-findFocusTarget-FocusRequester$focus$1":I
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object v32

    .line 73
    .local v32, "focusProperties":Landroidx/compose/ui/focus/FocusProperties;
    invoke-interface/range {v32 .. v32}, Landroidx/compose/ui/focus/FocusProperties;->getCanFocus()Z

    move-result v33

    if-eqz v33, :cond_4

    .line 74
    invoke-static/range {v30 .. v30}, Landroidx/compose/ui/focus/FocusTransactionsKt;->requestFocus(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v33

    move-object/from16 v34, v0

    move-object/from16 v35, v1

    move/from16 v0, v33

    move/from16 v33, v2

    move-object/from16 v2, v30

    goto :goto_6

    .line 76
    :cond_4
    sget-object v33, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    move-object/from16 v34, v0

    .end local v0    # "it$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .local v34, "it$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    invoke-virtual/range {v33 .. v33}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getEnter-dhqQ-8s()I

    move-result v0

    sget-object v33, Landroidx/compose/ui/focus/FocusRequester$focus$1$1;->INSTANCE:Landroidx/compose/ui/focus/FocusRequester$focus$1$1;

    move-object/from16 v35, v1

    .end local v1    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v35, "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move-object/from16 v1, v33

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move/from16 v33, v2

    move-object/from16 v2, v30

    .end local v30    # "focusTarget":Landroidx/compose/ui/focus/FocusTargetNode;
    .local v2, "focusTarget":Landroidx/compose/ui/focus/FocusTargetNode;
    .local v33, "success$iv":Z
    invoke-static {v2, v0, v1}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->findChildCorrespondingToFocusEnter--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    move-result v0

    .line 73
    :goto_6
    nop

    .line 299
    .end local v2    # "focusTarget":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v31    # "$i$a$-findFocusTarget-FocusRequester$focus$1":I
    .end local v32    # "focusProperties":Landroidx/compose/ui/focus/FocusProperties;
    if-eqz v0, :cond_5

    .line 300
    const/4 v0, 0x1

    .line 301
    .end local v33    # "success$iv":Z
    .local v0, "success$iv":Z
    move v2, v0

    const/4 v1, 0x1

    const/4 v4, 0x0

    goto/16 :goto_e

    .line 303
    .end local v0    # "success$iv":Z
    .restart local v33    # "success$iv":Z
    :cond_5
    nop

    .line 298
    .end local v29    # "$i$a$-visitChildren-6rFNWt0-FocusRequester$findFocusTarget$4$1$iv":I
    .end local v34    # "it$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    move-object/from16 v39, v4

    const/4 v1, 0x1

    const/4 v4, 0x0

    goto/16 :goto_d

    .line 304
    .end local v33    # "success$iv":Z
    .end local v35    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "success$iv":Z
    :cond_6
    move-object/from16 v35, v1

    move/from16 v33, v2

    .end local v1    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "success$iv":Z
    .restart local v33    # "success$iv":Z
    .restart local v35    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move-object v0, v3

    .local v0, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v1, 0x0

    .line 305
    .local v1, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v2

    and-int/2addr v2, v13

    if-eqz v2, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    .line 304
    .end local v0    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_7
    if-eqz v0, :cond_10

    instance-of v0, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_10

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "count$iv$iv$iv":I
    move-object v1, v3

    check-cast v1, Landroidx/compose/ui/node/DelegatingNode;

    .local v1, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v2, 0x0

    .line 308
    .local v2, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v1}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v29

    .line 309
    .local v29, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_8
    if-eqz v29, :cond_f

    .line 310
    move-object/from16 v30, v29

    .local v30, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v31, 0x0

    .line 311
    .local v31, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    move-object/from16 v32, v30

    .local v32, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v34, 0x0

    .line 305
    .local v34, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v36

    and-int v36, v36, v13

    if-eqz v36, :cond_8

    const/16 v32, 0x1

    goto :goto_9

    :cond_8
    const/16 v32, 0x0

    .line 311
    .end local v32    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v34    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_9
    if-eqz v32, :cond_e

    .line 312
    add-int/lit8 v0, v0, 0x1

    .line 313
    move-object/from16 v32, v1

    const/4 v1, 0x1

    .end local v1    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v32, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    if-ne v0, v1, :cond_9

    .line 314
    move-object/from16 v3, v30

    move/from16 v38, v2

    move-object/from16 v39, v4

    move-object/from16 v2, v30

    const/4 v4, 0x0

    goto :goto_c

    .line 318
    :cond_9
    if-nez v26, :cond_a

    const/4 v1, 0x0

    .line 274
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 275
    move/from16 v34, v0

    .end local v0    # "count$iv$iv$iv":I
    .local v34, "count$iv$iv$iv":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv$iv":I
    const/16 v36, 0x0

    .line 276
    .local v36, "$i$f$MutableVector":I
    move/from16 v37, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v37, "$i$f$mutableVectorOf":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v38, v2

    .end local v2    # "$i$f$forEachImmediateDelegate$ui_release":I
    .local v38, "$i$f$forEachImmediateDelegate$ui_release":I
    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v39, v4

    const/4 v4, 0x0

    .end local v4    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v39, "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-direct {v1, v2, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 274
    .end local v0    # "capacity$iv$iv$iv$iv$iv":I
    .end local v36    # "$i$f$MutableVector":I
    goto :goto_a

    .line 318
    .end local v34    # "count$iv$iv$iv":I
    .end local v37    # "$i$f$mutableVectorOf":I
    .end local v38    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v39    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "count$iv$iv$iv":I
    .restart local v2    # "$i$f$forEachImmediateDelegate$ui_release":I
    .restart local v4    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move/from16 v34, v0

    move/from16 v38, v2

    move-object/from16 v39, v4

    const/4 v4, 0x0

    .end local v0    # "count$iv$iv$iv":I
    .end local v2    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v4    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v34    # "count$iv$iv$iv":I
    .restart local v38    # "$i$f$forEachImmediateDelegate$ui_release":I
    .restart local v39    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move-object/from16 v1, v26

    :goto_a
    move-object v0, v1

    .line 319
    .end local v26    # "stack$iv$iv$iv":Ljava/lang/Object;
    .local v0, "stack$iv$iv$iv":Ljava/lang/Object;
    move-object v1, v3

    .line 320
    .local v1, "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_c

    .line 321
    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_b
    const/4 v2, 0x0

    move-object v3, v2

    .line 324
    :cond_c
    if-eqz v0, :cond_d

    move-object/from16 v2, v30

    .end local v30    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .end local v2    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v30    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_d
    move-object/from16 v2, v30

    .line 327
    .end local v1    # "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v30    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_b
    move-object/from16 v26, v0

    move/from16 v0, v34

    goto :goto_c

    .line 311
    .end local v32    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v34    # "count$iv$iv$iv":I
    .end local v38    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v39    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "count$iv$iv$iv":I
    .local v1, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v2, "$i$f$forEachImmediateDelegate$ui_release":I
    .restart local v4    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v30    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_e
    move-object/from16 v32, v1

    move/from16 v38, v2

    move-object/from16 v39, v4

    move-object/from16 v2, v30

    const/4 v4, 0x0

    .line 327
    .end local v1    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v4    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v30    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v32    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v38    # "$i$f$forEachImmediateDelegate$ui_release":I
    .restart local v39    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_c
    nop

    .line 310
    .end local v2    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v31    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    nop

    .line 328
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v29

    move-object/from16 v1, v32

    move/from16 v2, v38

    move-object/from16 v4, v39

    goto :goto_8

    .line 330
    .end local v32    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v38    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v39    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v2, "$i$f$forEachImmediateDelegate$ui_release":I
    .restart local v4    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_f
    move-object/from16 v32, v1

    move/from16 v38, v2

    move-object/from16 v39, v4

    const/4 v4, 0x0

    .line 331
    .end local v1    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v2    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v4    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v29    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v39    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 333
    move-object/from16 v0, v28

    move/from16 v2, v33

    move-object/from16 v1, v35

    move-object/from16 v4, v39

    goto/16 :goto_5

    .line 304
    .end local v0    # "count$iv$iv$iv":I
    .end local v39    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v4    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_10
    move-object/from16 v39, v4

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 336
    .end local v4    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v39    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_11
    :goto_d
    invoke-static/range {v26 .. v26}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    move-object/from16 v0, v28

    move/from16 v2, v33

    move-object/from16 v1, v35

    move-object/from16 v4, v39

    goto/16 :goto_5

    .line 338
    .end local v28    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v33    # "success$iv":Z
    .end local v35    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v39    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .local v1, "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "success$iv":Z
    .restart local v4    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_12
    move-object/from16 v28, v0

    move-object/from16 v35, v1

    move/from16 v33, v2

    move-object/from16 v39, v4

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 271
    .end local v0    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "success$iv":Z
    .end local v3    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v4    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v26    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v28    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v33    # "success$iv":Z
    .restart local v35    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v39    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    nop

    .line 293
    .end local v20    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2$iv$iv":I
    nop

    .line 339
    move v3, v4

    move-object/from16 v1, v35

    goto/16 :goto_3

    .line 341
    .end local v28    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v33    # "success$iv":Z
    .end local v35    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v39    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v1    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "success$iv":Z
    .restart local v4    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_13
    move-object/from16 v28, v0

    move-object/from16 v35, v1

    move/from16 v33, v2

    move-object/from16 v39, v4

    const/4 v1, 0x1

    move v4, v3

    .end local v0    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "success$iv":Z
    .end local v4    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v28    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v33    # "success$iv":Z
    .restart local v35    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v39    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v18

    move-object/from16 v1, v35

    move-object/from16 v4, v39

    goto/16 :goto_4

    .line 291
    .end local v28    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v33    # "success$iv":Z
    .end local v35    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v39    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v1    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "success$iv":Z
    .restart local v4    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_14
    move-object/from16 v28, v0

    move-object/from16 v35, v1

    move/from16 v33, v2

    move-object/from16 v39, v4

    const/4 v1, 0x1

    move v4, v3

    .end local v0    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "success$iv":Z
    .end local v4    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v28    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v33    # "success$iv":Z
    .restart local v35    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v39    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move-object/from16 v1, v35

    goto/16 :goto_3

    .line 344
    .end local v18    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v33    # "success$iv":Z
    .end local v35    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v39    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v1    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "success$iv":Z
    :cond_15
    move-object/from16 v28, v0

    move-object/from16 v35, v1

    move/from16 v33, v2

    move v4, v3

    const/4 v1, 0x1

    .line 271
    .end local v0    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "success$iv":Z
    .end local v15    # "mask$iv$iv$iv":I
    .end local v16    # "$this$visitChildren$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v17    # "$i$f$visitChildren":I
    .restart local v33    # "success$iv":Z
    nop

    .line 345
    .end local v12    # "$this$visitChildren_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v13    # "type$iv$iv":I
    .end local v14    # "$i$f$visitChildren-6rFNWt0":I
    nop

    .line 268
    .end local v10    # "node$iv":Landroidx/compose/ui/focus/FocusRequesterModifierNode;
    .end local v11    # "$i$a$-forEach-FocusRequester$findFocusTarget$4$iv":I
    .end local v33    # "success$iv":Z
    .restart local v2    # "success$iv":Z
    :goto_e
    nop

    .line 346
    add-int/lit8 v8, v8, 0x1

    .line 347
    if-lt v8, v7, :cond_16

    goto :goto_f

    :cond_16
    move v3, v4

    move-object/from16 v0, v21

    move/from16 v1, v22

    goto/16 :goto_2

    .line 257
    .end local v21    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .end local v22    # "$i$f$findFocusTarget":I
    .local v0, "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .local v1, "$i$f$findFocusTarget":I
    .restart local v10    # "node$iv":Landroidx/compose/ui/focus/FocusRequesterModifierNode;
    .restart local v11    # "$i$a$-forEach-FocusRequester$findFocusTarget$4$iv":I
    .restart local v12    # "$this$visitChildren_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v13    # "type$iv$iv":I
    .restart local v14    # "$i$f$visitChildren-6rFNWt0":I
    .restart local v15    # "mask$iv$iv$iv":I
    .restart local v16    # "$this$visitChildren$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v17    # "$i$f$visitChildren":I
    :cond_17
    move-object/from16 v21, v0

    move/from16 v22, v1

    .end local v0    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .end local v1    # "$i$f$findFocusTarget":I
    .restart local v21    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .restart local v22    # "$i$f$findFocusTarget":I
    const/4 v0, 0x0

    .line 272
    .local v0, "$i$a$-check-DelegatableNodeKt$visitChildren$1$iv$iv$iv":I
    nop

    .end local v0    # "$i$a$-check-DelegatableNodeKt$visitChildren$1$iv$iv$iv":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "visitChildren called on an unattached node"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    .end local v8    # "i$iv$iv":I
    .end local v9    # "content$iv$iv":[Ljava/lang/Object;
    .end local v10    # "node$iv":Landroidx/compose/ui/focus/FocusRequesterModifierNode;
    .end local v11    # "$i$a$-forEach-FocusRequester$findFocusTarget$4$iv":I
    .end local v12    # "$this$visitChildren_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v13    # "type$iv$iv":I
    .end local v14    # "$i$f$visitChildren-6rFNWt0":I
    .end local v15    # "mask$iv$iv$iv":I
    .end local v16    # "$this$visitChildren$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v17    # "$i$f$visitChildren":I
    .end local v21    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .end local v22    # "$i$f$findFocusTarget":I
    .local v0, "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .restart local v1    # "$i$f$findFocusTarget":I
    :cond_18
    move-object/from16 v21, v0

    move/from16 v22, v1

    .line 349
    .end local v0    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .end local v1    # "$i$f$findFocusTarget":I
    .restart local v21    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .restart local v22    # "$i$f$findFocusTarget":I
    :goto_f
    nop

    .line 350
    .end local v5    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v6    # "$i$f$forEach":I
    .end local v7    # "size$iv$iv":I
    nop

    .line 71
    .end local v2    # "success$iv":Z
    .end local v21    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .end local v22    # "$i$f$findFocusTarget":I
    return v2

    .line 257
    .restart local v0    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .restart local v1    # "$i$f$findFocusTarget":I
    :cond_19
    move-object/from16 v21, v0

    move/from16 v22, v1

    .end local v0    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .end local v1    # "$i$f$findFocusTarget":I
    .restart local v21    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .restart local v22    # "$i$f$findFocusTarget":I
    const/4 v0, 0x0

    .line 259
    .local v0, "$i$a$-check-FocusRequester$findFocusTarget$3$iv":I
    nop

    .end local v0    # "$i$a$-check-FocusRequester$findFocusTarget$3$iv":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    .end local v21    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .end local v22    # "$i$f$findFocusTarget":I
    .local v0, "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .restart local v1    # "$i$f$findFocusTarget":I
    :cond_1a
    move-object/from16 v21, v0

    move/from16 v22, v1

    .end local v0    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .end local v1    # "$i$f$findFocusTarget":I
    .restart local v21    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .restart local v22    # "$i$f$findFocusTarget":I
    const/4 v0, 0x0

    .line 258
    .local v0, "$i$a$-check-FocusRequester$findFocusTarget$2$iv":I
    nop

    .end local v0    # "$i$a$-check-FocusRequester$findFocusTarget$2$iv":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    .end local v21    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .end local v22    # "$i$f$findFocusTarget":I
    .local v0, "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .restart local v1    # "$i$f$findFocusTarget":I
    :cond_1b
    move-object/from16 v21, v0

    move/from16 v22, v1

    .end local v0    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .end local v1    # "$i$f$findFocusTarget":I
    .restart local v21    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .restart local v22    # "$i$f$findFocusTarget":I
    const/4 v0, 0x0

    .line 256
    .local v0, "$i$a$-check-FocusRequester$findFocusTarget$1$iv":I
    nop

    .end local v0    # "$i$a$-check-FocusRequester$findFocusTarget$1$iv":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final freeFocus()Z
    .locals 8

    .line 123
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 363
    .local v1, "$i$f$forEach":I
    nop

    .line 364
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    .line 365
    .local v2, "size$iv":I
    if-lez v2, :cond_2

    .line 366
    const/4 v3, 0x0

    .line 367
    .local v3, "i$iv":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v4

    .line 369
    .local v4, "content$iv":[Ljava/lang/Object;
    :cond_0
    aget-object v5, v4, v3

    check-cast v5, Landroidx/compose/ui/focus/FocusRequesterModifierNode;

    .local v5, "it":Landroidx/compose/ui/focus/FocusRequesterModifierNode;
    const/4 v6, 0x0

    .line 125
    .local v6, "$i$a$-forEach-FocusRequester$freeFocus$2":I
    invoke-static {v5}, Landroidx/compose/ui/focus/FocusRequesterModifierNodeKt;->freeFocus(Landroidx/compose/ui/focus/FocusRequesterModifierNode;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 126
    const/4 v7, 0x1

    return v7

    .line 128
    :cond_1
    nop

    .line 369
    .end local v5    # "it":Landroidx/compose/ui/focus/FocusRequesterModifierNode;
    .end local v6    # "$i$a$-forEach-FocusRequester$freeFocus$2":I
    nop

    .line 370
    add-int/lit8 v3, v3, 0x1

    .line 371
    if-lt v3, v2, :cond_0

    .line 373
    .end local v3    # "i$iv":I
    .end local v4    # "content$iv":[Ljava/lang/Object;
    :cond_2
    nop

    .line 129
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$f$forEach":I
    .end local v2    # "size$iv":I
    const/4 v0, 0x0

    return v0

    .line 351
    :cond_3
    const/4 v0, 0x0

    .line 123
    .local v0, "$i$a$-check-FocusRequester$freeFocus$1":I
    nop

    .end local v0    # "$i$a$-check-FocusRequester$freeFocus$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getFocusRequesterNodes$ui_release()Landroidx/compose/runtime/collection/MutableVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/focus/FocusRequesterModifierNode;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    return-object v0
.end method

.method public final requestFocus()V
    .locals 0

    .line 65
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusRequester;->focus$ui_release()Z

    .line 66
    return-void
.end method

.method public final restoreFocusedChild()Z
    .locals 9

    .line 163
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "success":Z
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    .local v1, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v2, 0x0

    .line 385
    .local v2, "$i$f$forEach":I
    nop

    .line 386
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v3

    .line 387
    .local v3, "size$iv":I
    if-lez v3, :cond_3

    .line 388
    const/4 v4, 0x0

    .line 389
    .local v4, "i$iv":I
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v5

    .line 391
    .local v5, "content$iv":[Ljava/lang/Object;
    :cond_0
    aget-object v6, v5, v4

    check-cast v6, Landroidx/compose/ui/focus/FocusRequesterModifierNode;

    .local v6, "it":Landroidx/compose/ui/focus/FocusRequesterModifierNode;
    const/4 v7, 0x0

    .line 166
    .local v7, "$i$a$-forEach-FocusRequester$restoreFocusedChild$2":I
    invoke-static {v6}, Landroidx/compose/ui/focus/FocusRequesterModifierNodeKt;->restoreFocusedChild(Landroidx/compose/ui/focus/FocusRequesterModifierNode;)Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v8, 0x1

    :goto_1
    move v0, v8

    .line 167
    nop

    .line 391
    .end local v6    # "it":Landroidx/compose/ui/focus/FocusRequesterModifierNode;
    .end local v7    # "$i$a$-forEach-FocusRequester$restoreFocusedChild$2":I
    nop

    .line 392
    add-int/lit8 v4, v4, 0x1

    .line 393
    if-lt v4, v3, :cond_0

    .line 395
    .end local v4    # "i$iv":I
    .end local v5    # "content$iv":[Ljava/lang/Object;
    :cond_3
    nop

    .line 168
    .end local v1    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v2    # "$i$f$forEach":I
    .end local v3    # "size$iv":I
    return v0

    .line 351
    .end local v0    # "success":Z
    :cond_4
    const/4 v0, 0x0

    .line 163
    .local v0, "$i$a$-check-FocusRequester$restoreFocusedChild$1":I
    nop

    .end local v0    # "$i$a$-check-FocusRequester$restoreFocusedChild$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final saveFocusedChild()Z
    .locals 8

    .line 144
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 374
    .local v1, "$i$f$forEach":I
    nop

    .line 375
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    .line 376
    .local v2, "size$iv":I
    if-lez v2, :cond_2

    .line 377
    const/4 v3, 0x0

    .line 378
    .local v3, "i$iv":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v4

    .line 380
    .local v4, "content$iv":[Ljava/lang/Object;
    :cond_0
    aget-object v5, v4, v3

    check-cast v5, Landroidx/compose/ui/focus/FocusRequesterModifierNode;

    .local v5, "it":Landroidx/compose/ui/focus/FocusRequesterModifierNode;
    const/4 v6, 0x0

    .line 146
    .local v6, "$i$a$-forEach-FocusRequester$saveFocusedChild$2":I
    invoke-static {v5}, Landroidx/compose/ui/focus/FocusRequesterModifierNodeKt;->saveFocusedChild(Landroidx/compose/ui/focus/FocusRequesterModifierNode;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    return v7

    .line 147
    :cond_1
    nop

    .line 380
    .end local v5    # "it":Landroidx/compose/ui/focus/FocusRequesterModifierNode;
    .end local v6    # "$i$a$-forEach-FocusRequester$saveFocusedChild$2":I
    nop

    .line 381
    add-int/lit8 v3, v3, 0x1

    .line 382
    if-lt v3, v2, :cond_0

    .line 384
    .end local v3    # "i$iv":I
    .end local v4    # "content$iv":[Ljava/lang/Object;
    :cond_2
    nop

    .line 148
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$f$forEach":I
    .end local v2    # "size$iv":I
    const/4 v0, 0x0

    return v0

    .line 351
    :cond_3
    const/4 v0, 0x0

    .line 144
    .local v0, "$i$a$-check-FocusRequester$saveFocusedChild$1":I
    nop

    .end local v0    # "$i$a$-check-FocusRequester$saveFocusedChild$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
