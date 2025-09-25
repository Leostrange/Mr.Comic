.class final Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FocusInvalidationManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/focus/FocusInvalidationManager;-><init>(Lkotlin/jvm/functions/Function1;)V
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
    value = "SMAP\nFocusInvalidationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusInvalidationManager.kt\nandroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 4 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 5 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 6 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 7 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 8 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 9 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,140:1\n1855#2:141\n1856#2:252\n1855#2:253\n1856#2:364\n1855#2,2:365\n90#3:142\n90#3:254\n282#4:143\n385#4,6:144\n395#4,2:151\n397#4,8:156\n405#4,9:167\n414#4,8:179\n283#4:187\n133#4:188\n134#4,8:190\n142#4,9:199\n385#4,37:208\n151#4,6:245\n284#4:251\n282#4:255\n385#4,6:256\n395#4,2:263\n397#4,8:268\n405#4,9:279\n414#4,8:291\n283#4:299\n133#4:300\n134#4,8:302\n142#4,9:311\n385#4,37:320\n151#4,6:357\n284#4:363\n261#5:150\n261#5:262\n234#6,3:153\n237#6,3:176\n234#6,3:265\n237#6,3:288\n1208#7:164\n1187#7,2:165\n1208#7:276\n1187#7,2:277\n1#8:189\n1#8:301\n1#8:367\n48#9:198\n48#9:310\n*S KotlinDebug\n*F\n+ 1 FocusInvalidationManager.kt\nandroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1\n*L\n59#1:141\n59#1:252\n72#1:253\n72#1:364\n120#1:365,2\n64#1:142\n86#1:254\n64#1:143\n64#1:144,6\n64#1:151,2\n64#1:156,8\n64#1:167,9\n64#1:179,8\n64#1:187\n64#1:188\n64#1:190,8\n64#1:199,9\n64#1:208,37\n64#1:245,6\n64#1:251\n86#1:255\n86#1:256,6\n86#1:263,2\n86#1:268,8\n86#1:279,9\n86#1:291,8\n86#1:299\n86#1:300\n86#1:302,8\n86#1:311,9\n86#1:320,37\n86#1:357,6\n86#1:363\n64#1:150\n86#1:262\n64#1:153,3\n64#1:176,3\n86#1:265,3\n86#1:288,3\n64#1:164\n64#1:165,2\n86#1:276\n86#1:277,2\n64#1:189\n86#1:301\n64#1:198\n86#1:310\n*E\n"
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
.field final synthetic this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;


# direct methods
.method constructor <init>(Landroidx/compose/ui/focus/FocusInvalidationManager;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 45

    .line 59
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-static {v1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusPropertiesNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    const/4 v3, 0x0

    .line 141
    .local v3, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string/jumbo v6, "visitChildren called on an unattached node"

    const/16 v7, 0x400

    if-eqz v5, :cond_21

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v10, v5

    check-cast v10, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    .local v10, "it":Landroidx/compose/ui/focus/FocusPropertiesModifierNode;
    const/4 v11, 0x0

    .line 62
    .local v11, "$i$a$-forEach-FocusInvalidationManager$invalidateNodes$1$1":I
    invoke-interface {v10}, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v12

    if-eqz v12, :cond_20

    .line 64
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v13, 0x0

    .line 142
    .local v13, "$i$f$getFocusTarget-OLwlOKw":I
    invoke-static {v7}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v7

    .line 64
    .end local v13    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .local v7, "type$iv":I
    .local v12, "$this$visitSelfAndChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v13, 0x0

    .line 143
    .local v13, "$i$f$visitSelfAndChildren-6rFNWt0":I
    invoke-interface {v12}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    .local v14, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 144
    .local v15, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v16, 0x0

    .line 145
    .local v16, "stack$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .local v17, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v14

    move-object/from16 v8, v17

    .line 146
    .end local v17    # "node$iv$iv":Ljava/lang/Object;
    .local v8, "node$iv$iv":Ljava/lang/Object;
    :goto_1
    if-eqz v8, :cond_c

    .line 147
    instance-of v9, v8, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v9, :cond_0

    .line 148
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v9, "focusTarget":Landroidx/compose/ui/focus/FocusTargetNode;
    const/16 v19, 0x0

    .line 65
    .local v19, "$i$a$-visitSelfAndChildren-6rFNWt0-FocusInvalidationManager$invalidateNodes$1$1$1":I
    move-object/from16 v20, v1

    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .local v20, "$this$forEach$iv":Ljava/lang/Iterable;
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    nop

    .line 148
    .end local v9    # "focusTarget":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v19    # "$i$a$-visitSelfAndChildren-6rFNWt0-FocusInvalidationManager$invalidateNodes$1$1$1":I
    move/from16 v24, v3

    move-object/from16 v28, v4

    goto/16 :goto_8

    .line 149
    .end local v20    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    :cond_0
    move-object/from16 v20, v1

    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v20    # "$this$forEach$iv":Ljava/lang/Iterable;
    move-object v1, v8

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v9, 0x0

    .line 150
    .local v9, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v19

    and-int v19, v19, v7

    if-eqz v19, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 149
    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_2
    if-eqz v1, :cond_a

    instance-of v1, v8, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_a

    .line 151
    const/4 v1, 0x0

    .line 152
    .local v1, "count$iv$iv":I
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    .local v9, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v19, 0x0

    .line 153
    .local v19, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v9}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    .line 154
    .local v21, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v21, :cond_9

    .line 155
    move-object/from16 v22, v21

    .local v22, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 156
    .local v23, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move-object/from16 v24, v22

    .local v24, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 150
    .local v25, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v26

    and-int v26, v26, v7

    if-eqz v26, :cond_2

    const/16 v24, 0x1

    goto :goto_4

    :cond_2
    const/16 v24, 0x0

    .line 156
    .end local v24    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_4
    if-eqz v24, :cond_8

    .line 157
    add-int/lit8 v1, v1, 0x1

    .line 158
    move/from16 v24, v3

    const/4 v3, 0x1

    .end local v3    # "$i$f$forEach":I
    .local v24, "$i$f$forEach":I
    if-ne v1, v3, :cond_3

    .line 159
    move-object/from16 v8, v22

    move-object/from16 v28, v4

    move-object/from16 v4, v22

    goto :goto_7

    .line 163
    :cond_3
    if-nez v16, :cond_4

    const/4 v3, 0x0

    .line 164
    .local v3, "$i$f$mutableVectorOf":I
    nop

    .line 165
    move/from16 v25, v1

    .end local v1    # "count$iv$iv":I
    .local v25, "count$iv$iv":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv$iv":I
    const/16 v26, 0x0

    .line 166
    .local v26, "$i$f$MutableVector":I
    move/from16 v27, v3

    .end local v3    # "$i$f$mutableVectorOf":I
    .local v27, "$i$f$mutableVectorOf":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v28, v4

    new-array v4, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v29, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv$iv":I
    .local v29, "capacity$iv$iv$iv$iv":I
    invoke-direct {v3, v4, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 164
    .end local v26    # "$i$f$MutableVector":I
    .end local v29    # "capacity$iv$iv$iv$iv":I
    goto :goto_5

    .line 163
    .end local v25    # "count$iv$iv":I
    .end local v27    # "$i$f$mutableVectorOf":I
    .local v1, "count$iv$iv":I
    :cond_4
    move/from16 v25, v1

    move-object/from16 v28, v4

    .end local v1    # "count$iv$iv":I
    .restart local v25    # "count$iv$iv":I
    move-object/from16 v3, v16

    :goto_5
    move-object v1, v3

    .line 167
    .end local v16    # "stack$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv":Ljava/lang/Object;
    move-object v3, v8

    .line 168
    .local v3, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v3, :cond_6

    .line 169
    if-eqz v1, :cond_5

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 170
    :cond_5
    const/4 v4, 0x0

    move-object v8, v4

    .line 172
    :cond_6
    if-eqz v1, :cond_7

    move-object/from16 v4, v22

    .end local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v4, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_6

    .end local v4    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_7
    move-object/from16 v4, v22

    .end local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v4    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    move-object/from16 v16, v1

    move/from16 v1, v25

    goto :goto_7

    .line 156
    .end local v4    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$f$forEach":I
    .end local v25    # "count$iv$iv":I
    .local v1, "count$iv$iv":I
    .local v3, "$i$f$forEach":I
    .restart local v16    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_8
    move/from16 v24, v3

    move-object/from16 v28, v4

    move-object/from16 v4, v22

    .line 175
    .end local v3    # "$i$f$forEach":I
    .end local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v4    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "$i$f$forEach":I
    :goto_7
    nop

    .line 155
    .end local v4    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 176
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    move/from16 v3, v24

    move-object/from16 v4, v28

    goto :goto_3

    .line 178
    .end local v24    # "$i$f$forEach":I
    .restart local v3    # "$i$f$forEach":I
    :cond_9
    move/from16 v24, v3

    move-object/from16 v28, v4

    .line 179
    .end local v3    # "$i$f$forEach":I
    .end local v9    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v19    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v21    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "$i$f$forEach":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_b

    .line 181
    move-object/from16 v1, v20

    move/from16 v3, v24

    move-object/from16 v4, v28

    goto/16 :goto_1

    .line 149
    .end local v1    # "count$iv$iv":I
    .end local v24    # "$i$f$forEach":I
    .restart local v3    # "$i$f$forEach":I
    :cond_a
    move/from16 v24, v3

    move-object/from16 v28, v4

    .line 184
    .end local v3    # "$i$f$forEach":I
    .restart local v24    # "$i$f$forEach":I
    :cond_b
    :goto_8
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move-object/from16 v1, v20

    move/from16 v3, v24

    move-object/from16 v4, v28

    goto/16 :goto_1

    .line 186
    .end local v20    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v24    # "$i$f$forEach":I
    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v3    # "$i$f$forEach":I
    :cond_c
    move-object/from16 v20, v1

    move/from16 v24, v3

    move-object/from16 v28, v4

    .line 187
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    .end local v8    # "node$iv$iv":Ljava/lang/Object;
    .end local v14    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v16    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v20    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v24    # "$i$f$forEach":I
    move v1, v7

    .local v1, "mask$iv$iv":I
    move-object v3, v12

    .local v3, "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v4, 0x0

    .line 188
    .local v4, "$i$f$visitChildren":I
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 190
    const/4 v6, 0x0

    .line 164
    .local v6, "$i$f$mutableVectorOf":I
    nop

    .line 165
    const/16 v8, 0x10

    .local v8, "capacity$iv$iv$iv$iv":I
    const/4 v9, 0x0

    .line 166
    .local v9, "$i$f$MutableVector":I
    new-instance v14, Landroidx/compose/runtime/collection/MutableVector;

    new-array v15, v8, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v16, v4

    const/4 v4, 0x0

    .end local v4    # "$i$f$visitChildren":I
    .local v16, "$i$f$visitChildren":I
    invoke-direct {v14, v15, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 164
    .end local v8    # "capacity$iv$iv$iv$iv":I
    .end local v9    # "$i$f$MutableVector":I
    nop

    .line 190
    .end local v6    # "$i$f$mutableVectorOf":I
    move-object v4, v14

    .line 191
    .local v4, "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    .line 192
    .local v6, "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-nez v6, :cond_d

    .line 193
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    invoke-static {v4, v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_9

    .line 195
    :cond_d
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 196
    :goto_9
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 197
    move-object v8, v4

    .local v8, "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v9, 0x0

    .line 198
    .local v9, "$i$f$getLastIndex":I
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    .line 197
    .end local v8    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v9    # "$i$f$getLastIndex":I
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/Modifier$Node;

    .line 199
    .local v8, "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v1

    if-nez v9, :cond_e

    .line 200
    invoke-static {v4, v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 202
    goto :goto_9

    .line 204
    :cond_e
    move-object v9, v8

    .line 205
    .local v9, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_a
    if-eqz v9, :cond_1d

    .line 206
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v14

    and-int/2addr v14, v1

    if-eqz v14, :cond_1c

    .line 207
    move-object v14, v9

    .local v14, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 187
    .local v15, "$i$a$-visitChildren-DelegatableNodeKt$visitSelfAndChildren$1$iv":I
    move-object/from16 v19, v14

    .local v19, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v21, 0x0

    .line 208
    .local v21, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v22, 0x0

    .line 209
    .local v22, "stack$iv$iv":Ljava/lang/Object;
    const/16 v23, 0x0

    .local v23, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v23, v19

    move-object/from16 v44, v23

    move/from16 v23, v1

    move-object/from16 v1, v44

    .line 210
    .local v1, "node$iv$iv":Ljava/lang/Object;
    .local v23, "mask$iv$iv":I
    :goto_b
    if-eqz v1, :cond_1b

    .line 211
    move-object/from16 v25, v3

    .end local v3    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v25, "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    instance-of v3, v1, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v3, :cond_f

    .line 212
    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v3, "focusTarget":Landroidx/compose/ui/focus/FocusTargetNode;
    const/16 v26, 0x0

    .line 65
    .local v26, "$i$a$-visitSelfAndChildren-6rFNWt0-FocusInvalidationManager$invalidateNodes$1$1$1":I
    move-object/from16 v27, v4

    .end local v4    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .local v27, "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    nop

    .line 212
    .end local v3    # "focusTarget":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v26    # "$i$a$-visitSelfAndChildren-6rFNWt0-FocusInvalidationManager$invalidateNodes$1$1$1":I
    move-object/from16 v32, v2

    goto/16 :goto_12

    .line 213
    .end local v27    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v4    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    :cond_f
    move-object/from16 v27, v4

    .end local v4    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v27    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    move-object v3, v1

    .local v3, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v4, 0x0

    .line 150
    .local v4, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v26

    and-int v26, v26, v7

    if-eqz v26, :cond_10

    const/4 v3, 0x1

    goto :goto_c

    :cond_10
    const/4 v3, 0x0

    .line 213
    .end local v3    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v4    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_c
    if-eqz v3, :cond_19

    instance-of v3, v1, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v3, :cond_19

    .line 218
    const/4 v3, 0x0

    .line 219
    .local v3, "count$iv$iv":I
    move-object v4, v1

    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    .local v4, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v26, 0x0

    .line 153
    .local v26, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v4}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v29

    .line 154
    .local v29, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_d
    if-eqz v29, :cond_18

    .line 155
    move-object/from16 v30, v29

    .local v30, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v31, 0x0

    .line 220
    .local v31, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move-object/from16 v32, v30

    .local v32, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v33, 0x0

    .line 150
    .local v33, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v34

    and-int v34, v34, v7

    if-eqz v34, :cond_11

    const/16 v32, 0x1

    goto :goto_e

    :cond_11
    const/16 v32, 0x0

    .line 220
    .end local v32    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v33    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_e
    if-eqz v32, :cond_17

    .line 221
    add-int/lit8 v3, v3, 0x1

    .line 222
    move-object/from16 v32, v2

    const/4 v2, 0x1

    if-ne v3, v2, :cond_12

    .line 223
    move-object/from16 v1, v30

    move-object/from16 v36, v4

    move-object/from16 v4, v30

    goto :goto_11

    .line 227
    :cond_12
    if-nez v22, :cond_13

    const/4 v2, 0x0

    .line 164
    .local v2, "$i$f$mutableVectorOf":I
    nop

    .line 165
    move/from16 v33, v2

    .end local v2    # "$i$f$mutableVectorOf":I
    .local v33, "$i$f$mutableVectorOf":I
    const/16 v2, 0x10

    .local v2, "capacity$iv$iv$iv$iv":I
    const/16 v34, 0x0

    .line 166
    .local v34, "$i$f$MutableVector":I
    move/from16 v35, v3

    .end local v3    # "count$iv$iv":I
    .local v35, "count$iv$iv":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v36, v4

    .end local v4    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v36, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    new-array v4, v2, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v37, v2

    const/4 v2, 0x0

    .end local v2    # "capacity$iv$iv$iv$iv":I
    .local v37, "capacity$iv$iv$iv$iv":I
    invoke-direct {v3, v4, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 164
    .end local v34    # "$i$f$MutableVector":I
    .end local v37    # "capacity$iv$iv$iv$iv":I
    goto :goto_f

    .line 227
    .end local v33    # "$i$f$mutableVectorOf":I
    .end local v35    # "count$iv$iv":I
    .end local v36    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v3    # "count$iv$iv":I
    .restart local v4    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    :cond_13
    move/from16 v35, v3

    move-object/from16 v36, v4

    .end local v3    # "count$iv$iv":I
    .end local v4    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v35    # "count$iv$iv":I
    .restart local v36    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    move-object/from16 v3, v22

    :goto_f
    move-object v2, v3

    .line 228
    .end local v22    # "stack$iv$iv":Ljava/lang/Object;
    .local v2, "stack$iv$iv":Ljava/lang/Object;
    move-object v3, v1

    .line 229
    .local v3, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v3, :cond_15

    .line 230
    if-eqz v2, :cond_14

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 231
    :cond_14
    const/4 v1, 0x0

    .line 233
    :cond_15
    if-eqz v2, :cond_16

    move-object/from16 v4, v30

    .end local v30    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v4, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_10

    .end local v4    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v30    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_16
    move-object/from16 v4, v30

    .end local v30    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v4    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_10
    move-object/from16 v22, v2

    move/from16 v3, v35

    goto :goto_11

    .line 220
    .end local v2    # "stack$iv$iv":Ljava/lang/Object;
    .end local v35    # "count$iv$iv":I
    .end local v36    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v3, "count$iv$iv":I
    .local v4, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v22    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v30    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_17
    move-object/from16 v32, v2

    move-object/from16 v36, v4

    move-object/from16 v4, v30

    .line 236
    .end local v30    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v4, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v36    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    :goto_11
    nop

    .line 155
    .end local v4    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v31    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 176
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v29

    move-object/from16 v2, v32

    move-object/from16 v4, v36

    goto :goto_d

    .line 178
    .end local v36    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v4, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    :cond_18
    move-object/from16 v32, v2

    move-object/from16 v36, v4

    .line 237
    .end local v4    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v26    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v29    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v2, 0x1

    if-ne v3, v2, :cond_1a

    .line 239
    move-object/from16 v3, v25

    move-object/from16 v4, v27

    move-object/from16 v2, v32

    goto/16 :goto_b

    .line 213
    .end local v3    # "count$iv$iv":I
    :cond_19
    move-object/from16 v32, v2

    .line 242
    :cond_1a
    :goto_12
    invoke-static/range {v22 .. v22}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    move-object/from16 v3, v25

    move-object/from16 v4, v27

    move-object/from16 v2, v32

    goto/16 :goto_b

    .line 244
    .end local v25    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .local v3, "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v4, "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    :cond_1b
    move-object/from16 v32, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    .line 187
    .end local v1    # "node$iv$iv":Ljava/lang/Object;
    .end local v3    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v22    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v25    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    nop

    .line 207
    .end local v14    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$a$-visitChildren-DelegatableNodeKt$visitSelfAndChildren$1$iv":I
    nop

    .line 245
    move/from16 v1, v23

    goto/16 :goto_9

    .line 247
    .end local v23    # "mask$iv$iv":I
    .end local v25    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .local v1, "mask$iv$iv":I
    .restart local v3    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    :cond_1c
    move/from16 v23, v1

    move-object/from16 v32, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    .end local v1    # "mask$iv$iv":I
    .end local v3    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v23    # "mask$iv$iv":I
    .restart local v25    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    goto/16 :goto_a

    .line 205
    .end local v23    # "mask$iv$iv":I
    .end local v25    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v1    # "mask$iv$iv":I
    .restart local v3    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    :cond_1d
    move/from16 v23, v1

    move-object/from16 v32, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    .end local v1    # "mask$iv$iv":I
    .end local v3    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v23    # "mask$iv$iv":I
    .restart local v25    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    goto/16 :goto_9

    .line 250
    .end local v8    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "mask$iv$iv":I
    .end local v25    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v1    # "mask$iv$iv":I
    .restart local v3    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    :cond_1e
    move/from16 v23, v1

    move-object/from16 v32, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    .line 251
    .end local v1    # "mask$iv$iv":I
    .end local v3    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v6    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$f$visitChildren":I
    nop

    .line 67
    .end local v7    # "type$iv":I
    .end local v12    # "$this$visitSelfAndChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v13    # "$i$f$visitSelfAndChildren-6rFNWt0":I
    goto :goto_13

    .line 189
    .restart local v1    # "mask$iv$iv":I
    .restart local v3    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v4, "$i$f$visitChildren":I
    .restart local v7    # "type$iv":I
    .restart local v12    # "$this$visitSelfAndChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v13    # "$i$f$visitSelfAndChildren-6rFNWt0":I
    :cond_1f
    move/from16 v23, v1

    .end local v1    # "mask$iv$iv":I
    .restart local v23    # "mask$iv$iv":I
    const/4 v1, 0x0

    .line 188
    .local v1, "$i$a$-check-DelegatableNodeKt$visitChildren$1$iv$iv":I
    nop

    .end local v1    # "$i$a$-check-DelegatableNodeKt$visitChildren$1$iv$iv":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    .end local v4    # "$i$f$visitChildren":I
    .end local v7    # "type$iv":I
    .end local v12    # "$this$visitSelfAndChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v13    # "$i$f$visitSelfAndChildren-6rFNWt0":I
    .end local v20    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v23    # "mask$iv$iv":I
    .end local v24    # "$i$f$forEach":I
    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    .local v3, "$i$f$forEach":I
    :cond_20
    move-object/from16 v20, v1

    move-object/from16 v32, v2

    move/from16 v24, v3

    move-object/from16 v28, v4

    .line 141
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    .end local v10    # "it":Landroidx/compose/ui/focus/FocusPropertiesModifierNode;
    .end local v11    # "$i$a$-forEach-FocusInvalidationManager$invalidateNodes$1$1":I
    .restart local v20    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v24    # "$i$f$forEach":I
    :goto_13
    move-object/from16 v1, v20

    move/from16 v3, v24

    move-object/from16 v4, v28

    move-object/from16 v2, v32

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto/16 :goto_0

    .line 252
    .end local v20    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v24    # "$i$f$forEach":I
    .restart local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v3    # "$i$f$forEach":I
    :cond_21
    move-object/from16 v20, v1

    move/from16 v24, v3

    .line 68
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-static {v1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusPropertiesNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 71
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    .line 72
    .local v1, "focusTargetsWithInvalidatedFocusEvents":Ljava/util/Set;
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusEventNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    iget-object v3, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    const/4 v4, 0x0

    .line 253
    .local v4, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .local v9, "focusEventNode":Landroidx/compose/ui/focus/FocusEventModifierNode;
    const/4 v10, 0x0

    .line 78
    .local v10, "$i$a$-forEach-FocusInvalidationManager$invalidateNodes$1$2":I
    invoke-interface {v9}, Landroidx/compose/ui/focus/FocusEventModifierNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v11

    if-nez v11, :cond_22

    .line 79
    sget-object v11, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v11, Landroidx/compose/ui/focus/FocusState;

    invoke-interface {v9, v11}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V

    .line 80
    move-object/from16 v23, v2

    move-object/from16 v38, v3

    move/from16 v25, v4

    move-object/from16 v33, v5

    move-object/from16 v24, v8

    const/4 v3, 0x1

    goto/16 :goto_2b

    .line 83
    :cond_22
    const/4 v11, 0x0

    .local v11, "requiresUpdate":Z
    const/4 v11, 0x1

    .line 84
    const/4 v12, 0x0

    .line 85
    .local v12, "aggregatedNode":Z
    const/4 v13, 0x0

    .line 86
    .local v13, "focusTarget":Ljava/lang/Object;
    move-object v14, v9

    check-cast v14, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v15, 0x0

    .line 254
    .local v15, "$i$f$getFocusTarget-OLwlOKw":I
    invoke-static {v7}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v15

    .line 86
    .end local v15    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .local v14, "$this$visitSelfAndChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v15, "type$iv":I
    const/16 v16, 0x0

    .line 255
    .local v16, "$i$f$visitSelfAndChildren-6rFNWt0":I
    invoke-interface {v14}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    .restart local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 256
    .local v20, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v21, 0x0

    .line 257
    .local v21, "stack$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .local v22, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v22, v19

    move-object/from16 v7, v22

    .line 258
    .end local v22    # "node$iv$iv":Ljava/lang/Object;
    .local v7, "node$iv$iv":Ljava/lang/Object;
    :goto_15
    if-eqz v7, :cond_31

    .line 259
    move-object/from16 v23, v2

    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .local v23, "$this$forEach$iv":Ljava/lang/Iterable;
    instance-of v2, v7, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v2, :cond_25

    .line 260
    move-object v2, v7

    check-cast v2, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v2, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/16 v24, 0x0

    .line 90
    .local v24, "$i$a$-visitSelfAndChildren-6rFNWt0-FocusInvalidationManager$invalidateNodes$1$2$1":I
    if-eqz v13, :cond_23

    .line 91
    const/4 v12, 0x1

    .line 94
    :cond_23
    move-object v13, v2

    .line 100
    move/from16 v25, v4

    .end local v4    # "$i$f$forEach":I
    .local v25, "$i$f$forEach":I
    invoke-static {v3}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 101
    const/4 v11, 0x0

    .line 102
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    goto :goto_16

    .line 105
    :cond_24
    nop

    .line 260
    .end local v2    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v24    # "$i$a$-visitSelfAndChildren-6rFNWt0-FocusInvalidationManager$invalidateNodes$1$2$1":I
    :goto_16
    move-object/from16 v33, v5

    goto/16 :goto_1d

    .line 261
    .end local v25    # "$i$f$forEach":I
    .restart local v4    # "$i$f$forEach":I
    :cond_25
    move/from16 v25, v4

    .end local v4    # "$i$f$forEach":I
    .restart local v25    # "$i$f$forEach":I
    move-object v2, v7

    .local v2, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v4, 0x0

    .line 262
    .local v4, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v24

    and-int v24, v24, v15

    if-eqz v24, :cond_26

    const/4 v2, 0x1

    goto :goto_17

    :cond_26
    const/4 v2, 0x0

    .line 261
    .end local v2    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v4    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_17
    if-eqz v2, :cond_2f

    instance-of v2, v7, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_2f

    .line 263
    const/4 v2, 0x0

    .line 264
    .local v2, "count$iv$iv":I
    move-object v4, v7

    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    .local v4, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v24, 0x0

    .line 265
    .local v24, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v4}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v26

    .line 266
    .local v26, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_18
    if-eqz v26, :cond_2e

    .line 267
    move-object/from16 v27, v26

    .local v27, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v28, 0x0

    .line 268
    .local v28, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move-object/from16 v29, v27

    .local v29, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v30, 0x0

    .line 262
    .local v30, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v31

    and-int v31, v31, v15

    if-eqz v31, :cond_27

    const/16 v29, 0x1

    goto :goto_19

    :cond_27
    const/16 v29, 0x0

    .line 268
    .end local v29    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v30    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_19
    if-eqz v29, :cond_2d

    .line 269
    add-int/lit8 v2, v2, 0x1

    .line 270
    move-object/from16 v29, v4

    const/4 v4, 0x1

    .end local v4    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v29, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    if-ne v2, v4, :cond_28

    .line 271
    move-object/from16 v7, v27

    move-object/from16 v33, v5

    move-object/from16 v5, v27

    goto :goto_1c

    .line 275
    :cond_28
    if-nez v21, :cond_29

    const/4 v4, 0x0

    .line 276
    .local v4, "$i$f$mutableVectorOf":I
    nop

    .line 277
    move/from16 v30, v2

    .end local v2    # "count$iv$iv":I
    .local v30, "count$iv$iv":I
    const/16 v2, 0x10

    .local v2, "capacity$iv$iv$iv$iv":I
    const/16 v31, 0x0

    .line 278
    .local v31, "$i$f$MutableVector":I
    move/from16 v32, v4

    .end local v4    # "$i$f$mutableVectorOf":I
    .local v32, "$i$f$mutableVectorOf":I
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v33, v5

    new-array v5, v2, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v34, v2

    const/4 v2, 0x0

    .end local v2    # "capacity$iv$iv$iv$iv":I
    .local v34, "capacity$iv$iv$iv$iv":I
    invoke-direct {v4, v5, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 276
    .end local v31    # "$i$f$MutableVector":I
    .end local v34    # "capacity$iv$iv$iv$iv":I
    goto :goto_1a

    .line 275
    .end local v30    # "count$iv$iv":I
    .end local v32    # "$i$f$mutableVectorOf":I
    .local v2, "count$iv$iv":I
    :cond_29
    move/from16 v30, v2

    move-object/from16 v33, v5

    .end local v2    # "count$iv$iv":I
    .restart local v30    # "count$iv$iv":I
    move-object/from16 v4, v21

    :goto_1a
    move-object v2, v4

    .line 279
    .end local v21    # "stack$iv$iv":Ljava/lang/Object;
    .local v2, "stack$iv$iv":Ljava/lang/Object;
    move-object v4, v7

    .line 280
    .local v4, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v4, :cond_2b

    .line 281
    if-eqz v2, :cond_2a

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 282
    :cond_2a
    const/4 v5, 0x0

    move-object v7, v5

    .line 284
    :cond_2b
    if-eqz v2, :cond_2c

    move-object/from16 v5, v27

    .end local v27    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v5, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_1b

    .end local v5    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_2c
    move-object/from16 v5, v27

    .end local v27    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v5    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_1b
    move-object/from16 v21, v2

    move/from16 v2, v30

    goto :goto_1c

    .line 268
    .end local v5    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v29    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v30    # "count$iv$iv":I
    .local v2, "count$iv$iv":I
    .local v4, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v21    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v27    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_2d
    move-object/from16 v29, v4

    move-object/from16 v33, v5

    move-object/from16 v5, v27

    .line 287
    .end local v4    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v27    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v5    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v29    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    :goto_1c
    nop

    .line 267
    .end local v5    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 288
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v26

    move-object/from16 v4, v29

    move-object/from16 v5, v33

    goto :goto_18

    .line 290
    .end local v29    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v4    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    :cond_2e
    move-object/from16 v29, v4

    move-object/from16 v33, v5

    .line 291
    .end local v4    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v24    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v26    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v4, 0x1

    if-ne v2, v4, :cond_30

    .line 293
    move-object/from16 v2, v23

    move/from16 v4, v25

    move-object/from16 v5, v33

    goto/16 :goto_15

    .line 261
    .end local v2    # "count$iv$iv":I
    :cond_2f
    move-object/from16 v33, v5

    .line 296
    :cond_30
    :goto_1d
    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    move-object/from16 v2, v23

    move/from16 v4, v25

    move-object/from16 v5, v33

    goto/16 :goto_15

    .line 298
    .end local v23    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v25    # "$i$f$forEach":I
    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    .local v4, "$i$f$forEach":I
    :cond_31
    move-object/from16 v23, v2

    move/from16 v25, v4

    move-object/from16 v33, v5

    .line 299
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    .end local v7    # "node$iv$iv":Ljava/lang/Object;
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v21    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v23    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v25    # "$i$f$forEach":I
    move v2, v15

    .local v2, "mask$iv$iv":I
    move-object v4, v14

    .local v4, "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v5, 0x0

    .line 300
    .local v5, "$i$f$visitChildren":I
    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 302
    const/4 v7, 0x0

    .line 276
    .local v7, "$i$f$mutableVectorOf":I
    nop

    .line 277
    move/from16 v19, v5

    .end local v5    # "$i$f$visitChildren":I
    .local v19, "$i$f$visitChildren":I
    const/16 v5, 0x10

    .local v5, "capacity$iv$iv$iv$iv":I
    const/16 v20, 0x0

    .line 278
    .local v20, "$i$f$MutableVector":I
    move/from16 v21, v7

    .end local v7    # "$i$f$mutableVectorOf":I
    .local v21, "$i$f$mutableVectorOf":I
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v24, v8

    .end local v8    # "element$iv":Ljava/lang/Object;
    .local v24, "element$iv":Ljava/lang/Object;
    new-array v8, v5, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v26, v5

    const/4 v5, 0x0

    .end local v5    # "capacity$iv$iv$iv$iv":I
    .local v26, "capacity$iv$iv$iv$iv":I
    invoke-direct {v7, v8, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 276
    .end local v20    # "$i$f$MutableVector":I
    .end local v26    # "capacity$iv$iv$iv$iv":I
    nop

    .line 302
    .end local v21    # "$i$f$mutableVectorOf":I
    move-object v5, v7

    .line 303
    .local v5, "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    .line 304
    .local v7, "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-nez v7, :cond_32

    .line 305
    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    invoke-static {v5, v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_1e

    .line 307
    :cond_32
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 308
    :goto_1e
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v8

    if-eqz v8, :cond_45

    .line 309
    move-object v8, v5

    .local v8, "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/16 v20, 0x0

    .line 310
    .local v20, "$i$f$getLastIndex":I
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v21

    const/16 v18, 0x1

    add-int/lit8 v8, v21, -0x1

    .line 309
    .end local v8    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v20    # "$i$f$getLastIndex":I
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/Modifier$Node;

    .line 311
    .local v8, "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v20

    and-int v20, v20, v2

    if-nez v20, :cond_33

    .line 312
    invoke-static {v5, v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 314
    move/from16 v30, v2

    move-object/from16 v38, v3

    move-object/from16 v31, v4

    move-object/from16 v34, v5

    const/4 v3, 0x1

    goto/16 :goto_29

    .line 316
    :cond_33
    move-object/from16 v20, v8

    .line 317
    .local v20, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_1f
    if-eqz v20, :cond_44

    .line 318
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v21

    and-int v21, v21, v2

    if-eqz v21, :cond_43

    .line 319
    move-object/from16 v21, v20

    .local v21, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v26, 0x0

    .line 299
    .local v26, "$i$a$-visitChildren-DelegatableNodeKt$visitSelfAndChildren$1$iv":I
    move-object/from16 v27, v21

    .local v27, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v28, 0x0

    .line 320
    .local v28, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v29, 0x0

    .line 321
    .local v29, "stack$iv$iv":Ljava/lang/Object;
    const/16 v30, 0x0

    .local v30, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v30, v27

    move-object/from16 v44, v30

    move/from16 v30, v2

    move-object/from16 v2, v44

    .line 322
    .local v2, "node$iv$iv":Ljava/lang/Object;
    .local v30, "mask$iv$iv":I
    :goto_20
    if-eqz v2, :cond_42

    .line 323
    move-object/from16 v31, v4

    .end local v4    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v31, "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    instance-of v4, v2, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v4, :cond_36

    .line 324
    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v4, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/16 v32, 0x0

    .line 90
    .local v32, "$i$a$-visitSelfAndChildren-6rFNWt0-FocusInvalidationManager$invalidateNodes$1$2$1":I
    if-eqz v13, :cond_34

    .line 91
    const/4 v12, 0x1

    .line 94
    :cond_34
    move-object v13, v4

    .line 100
    move-object/from16 v34, v5

    .end local v5    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .local v34, "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-static {v3}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 101
    const/4 v11, 0x0

    .line 102
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    goto :goto_21

    .line 105
    :cond_35
    nop

    .line 324
    .end local v4    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v32    # "$i$a$-visitSelfAndChildren-6rFNWt0-FocusInvalidationManager$invalidateNodes$1$2$1":I
    :goto_21
    move-object/from16 v38, v3

    const/4 v3, 0x1

    goto/16 :goto_28

    .line 325
    .end local v34    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v5    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    :cond_36
    move-object/from16 v34, v5

    .end local v5    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v34    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    move-object v4, v2

    .local v4, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v5, 0x0

    .line 262
    .local v5, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v32

    and-int v32, v32, v15

    if-eqz v32, :cond_37

    const/4 v4, 0x1

    goto :goto_22

    :cond_37
    const/4 v4, 0x0

    .line 325
    .end local v4    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v5    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_22
    if-eqz v4, :cond_40

    instance-of v4, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v4, :cond_40

    .line 330
    const/4 v4, 0x0

    .line 331
    .local v4, "count$iv$iv":I
    move-object v5, v2

    check-cast v5, Landroidx/compose/ui/node/DelegatingNode;

    .local v5, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v32, 0x0

    .line 265
    .local v32, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v5}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v35

    .line 266
    .local v35, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_23
    if-eqz v35, :cond_3f

    .line 267
    move-object/from16 v36, v35

    .local v36, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v37, 0x0

    .line 332
    .local v37, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move-object/from16 v38, v36

    .local v38, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v39, 0x0

    .line 262
    .local v39, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v40

    and-int v40, v40, v15

    if-eqz v40, :cond_38

    const/16 v38, 0x1

    goto :goto_24

    :cond_38
    const/16 v38, 0x0

    .line 332
    .end local v38    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v39    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_24
    if-eqz v38, :cond_3e

    .line 333
    add-int/lit8 v4, v4, 0x1

    .line 334
    move-object/from16 v38, v3

    const/4 v3, 0x1

    if-ne v4, v3, :cond_39

    .line 335
    move-object/from16 v2, v36

    move-object/from16 v42, v5

    move-object/from16 v3, v36

    goto :goto_27

    .line 339
    :cond_39
    if-nez v29, :cond_3a

    const/4 v3, 0x0

    .line 276
    .local v3, "$i$f$mutableVectorOf":I
    nop

    .line 277
    move/from16 v39, v3

    .end local v3    # "$i$f$mutableVectorOf":I
    .local v39, "$i$f$mutableVectorOf":I
    const/16 v3, 0x10

    .local v3, "capacity$iv$iv$iv$iv":I
    const/16 v40, 0x0

    .line 278
    .local v40, "$i$f$MutableVector":I
    move/from16 v41, v4

    .end local v4    # "count$iv$iv":I
    .local v41, "count$iv$iv":I
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v42, v5

    .end local v5    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v42, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    new-array v5, v3, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v43, v3

    const/4 v3, 0x0

    .end local v3    # "capacity$iv$iv$iv$iv":I
    .local v43, "capacity$iv$iv$iv$iv":I
    invoke-direct {v4, v5, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 276
    .end local v40    # "$i$f$MutableVector":I
    .end local v43    # "capacity$iv$iv$iv$iv":I
    goto :goto_25

    .line 339
    .end local v39    # "$i$f$mutableVectorOf":I
    .end local v41    # "count$iv$iv":I
    .end local v42    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v4    # "count$iv$iv":I
    .restart local v5    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    :cond_3a
    move/from16 v41, v4

    move-object/from16 v42, v5

    const/4 v3, 0x0

    .end local v4    # "count$iv$iv":I
    .end local v5    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v41    # "count$iv$iv":I
    .restart local v42    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    move-object/from16 v4, v29

    :goto_25
    nop

    .line 340
    .end local v29    # "stack$iv$iv":Ljava/lang/Object;
    .local v4, "stack$iv$iv":Ljava/lang/Object;
    move-object v5, v2

    .line 341
    .local v5, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v5, :cond_3c

    .line 342
    if-eqz v4, :cond_3b

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 343
    :cond_3b
    const/4 v2, 0x0

    .line 345
    :cond_3c
    if-eqz v4, :cond_3d

    move-object/from16 v3, v36

    .end local v36    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_26

    .end local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v36    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_3d
    move-object/from16 v3, v36

    .end local v36    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_26
    move-object/from16 v29, v4

    move/from16 v4, v41

    goto :goto_27

    .line 332
    .end local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v41    # "count$iv$iv":I
    .end local v42    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v4, "count$iv$iv":I
    .local v5, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v29    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v36    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_3e
    move-object/from16 v38, v3

    move-object/from16 v42, v5

    move-object/from16 v3, v36

    .line 348
    .end local v5    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v36    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v42    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    :goto_27
    nop

    .line 267
    .end local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v37    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 288
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v35

    move-object/from16 v3, v38

    move-object/from16 v5, v42

    goto :goto_23

    .line 290
    .end local v42    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v5    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    :cond_3f
    move-object/from16 v38, v3

    move-object/from16 v42, v5

    .line 349
    .end local v5    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v32    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v35    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v3, 0x1

    if-ne v4, v3, :cond_41

    .line 351
    move-object/from16 v4, v31

    move-object/from16 v5, v34

    move-object/from16 v3, v38

    goto/16 :goto_20

    .line 325
    .end local v4    # "count$iv$iv":I
    :cond_40
    move-object/from16 v38, v3

    const/4 v3, 0x1

    .line 354
    :cond_41
    :goto_28
    invoke-static/range {v29 .. v29}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    move-object/from16 v4, v31

    move-object/from16 v5, v34

    move-object/from16 v3, v38

    goto/16 :goto_20

    .line 356
    .end local v31    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v34    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .local v4, "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v5, "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    :cond_42
    move-object/from16 v38, v3

    move-object/from16 v31, v4

    move-object/from16 v34, v5

    const/4 v3, 0x1

    .line 299
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .end local v4    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v27    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v29    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v31    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v34    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    nop

    .line 319
    .end local v21    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$i$a$-visitChildren-DelegatableNodeKt$visitSelfAndChildren$1$iv":I
    nop

    .line 357
    move/from16 v2, v30

    move-object/from16 v3, v38

    goto/16 :goto_1e

    .line 359
    .end local v30    # "mask$iv$iv":I
    .end local v31    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v34    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .local v2, "mask$iv$iv":I
    .restart local v4    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v5    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    :cond_43
    move/from16 v30, v2

    move-object/from16 v38, v3

    move-object/from16 v31, v4

    move-object/from16 v34, v5

    const/4 v3, 0x1

    .end local v2    # "mask$iv$iv":I
    .end local v4    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v30    # "mask$iv$iv":I
    .restart local v31    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v34    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v20

    move-object/from16 v3, v38

    goto/16 :goto_1f

    .line 317
    .end local v30    # "mask$iv$iv":I
    .end local v31    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v34    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v2    # "mask$iv$iv":I
    .restart local v4    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v5    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    :cond_44
    move/from16 v30, v2

    move-object/from16 v38, v3

    move-object/from16 v31, v4

    move-object/from16 v34, v5

    const/4 v3, 0x1

    .line 308
    .end local v8    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_29
    move/from16 v2, v30

    move-object/from16 v4, v31

    move-object/from16 v5, v34

    move-object/from16 v3, v38

    .end local v2    # "mask$iv$iv":I
    .end local v4    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v30    # "mask$iv$iv":I
    .restart local v31    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v34    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    goto/16 :goto_1e

    .line 362
    .end local v30    # "mask$iv$iv":I
    .end local v31    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v34    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v2    # "mask$iv$iv":I
    .restart local v4    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v5    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    :cond_45
    move/from16 v30, v2

    move-object/from16 v38, v3

    move-object/from16 v31, v4

    move-object/from16 v34, v5

    const/4 v3, 0x1

    .line 363
    .end local v2    # "mask$iv$iv":I
    .end local v4    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v7    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$i$f$visitChildren":I
    nop

    .line 107
    .end local v14    # "$this$visitSelfAndChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v15    # "type$iv":I
    .end local v16    # "$i$f$visitSelfAndChildren-6rFNWt0":I
    if-eqz v11, :cond_49

    .line 108
    nop

    .line 109
    if-eqz v12, :cond_46

    .line 110
    invoke-static {v9}, Landroidx/compose/ui/focus/FocusEventModifierNodeKt;->getFocusState(Landroidx/compose/ui/focus/FocusEventModifierNode;)Landroidx/compose/ui/focus/FocusState;

    move-result-object v2

    goto :goto_2a

    .line 112
    :cond_46
    if-eqz v13, :cond_47

    invoke-virtual {v13}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v2

    if-nez v2, :cond_48

    :cond_47
    sget-object v2, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    :cond_48
    check-cast v2, Landroidx/compose/ui/focus/FocusState;

    .line 108
    :goto_2a
    invoke-interface {v9, v2}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V

    .line 116
    :cond_49
    nop

    .line 253
    .end local v9    # "focusEventNode":Landroidx/compose/ui/focus/FocusEventModifierNode;
    .end local v10    # "$i$a$-forEach-FocusInvalidationManager$invalidateNodes$1$2":I
    .end local v11    # "requiresUpdate":Z
    .end local v12    # "aggregatedNode":Z
    .end local v13    # "focusTarget":Ljava/lang/Object;
    :goto_2b
    move-object/from16 v2, v23

    move/from16 v4, v25

    move-object/from16 v5, v33

    move-object/from16 v3, v38

    const/16 v7, 0x400

    .end local v24    # "element$iv":Ljava/lang/Object;
    goto/16 :goto_14

    .line 301
    .restart local v2    # "mask$iv$iv":I
    .restart local v4    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v5, "$i$f$visitChildren":I
    .local v8, "element$iv":Ljava/lang/Object;
    .restart local v9    # "focusEventNode":Landroidx/compose/ui/focus/FocusEventModifierNode;
    .restart local v10    # "$i$a$-forEach-FocusInvalidationManager$invalidateNodes$1$2":I
    .restart local v11    # "requiresUpdate":Z
    .restart local v12    # "aggregatedNode":Z
    .restart local v13    # "focusTarget":Ljava/lang/Object;
    .restart local v14    # "$this$visitSelfAndChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v15    # "type$iv":I
    .restart local v16    # "$i$f$visitSelfAndChildren-6rFNWt0":I
    :cond_4a
    move/from16 v30, v2

    .end local v2    # "mask$iv$iv":I
    .restart local v30    # "mask$iv$iv":I
    const/4 v2, 0x0

    .line 300
    .local v2, "$i$a$-check-DelegatableNodeKt$visitChildren$1$iv$iv":I
    nop

    .end local v2    # "$i$a$-check-DelegatableNodeKt$visitChildren$1$iv$iv":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 364
    .end local v5    # "$i$f$visitChildren":I
    .end local v8    # "element$iv":Ljava/lang/Object;
    .end local v9    # "focusEventNode":Landroidx/compose/ui/focus/FocusEventModifierNode;
    .end local v10    # "$i$a$-forEach-FocusInvalidationManager$invalidateNodes$1$2":I
    .end local v11    # "requiresUpdate":Z
    .end local v12    # "aggregatedNode":Z
    .end local v13    # "focusTarget":Ljava/lang/Object;
    .end local v14    # "$this$visitSelfAndChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v15    # "type$iv":I
    .end local v16    # "$i$f$visitSelfAndChildren-6rFNWt0":I
    .end local v23    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v25    # "$i$f$forEach":I
    .end local v30    # "mask$iv$iv":I
    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    .local v4, "$i$f$forEach":I
    :cond_4b
    move-object/from16 v23, v2

    move/from16 v25, v4

    .line 117
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusEventNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 120
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .restart local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 365
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v6, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/4 v7, 0x0

    .line 123
    .local v7, "$i$a$-forEach-FocusInvalidationManager$invalidateNodes$1$3":I
    invoke-virtual {v6}, Landroidx/compose/ui/focus/FocusTargetNode;->isAttached()Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 125
    invoke-virtual {v6}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v8

    .line 126
    .local v8, "preInvalidationState":Landroidx/compose/ui/focus/FocusStateImpl;
    invoke-virtual {v6}, Landroidx/compose/ui/focus/FocusTargetNode;->invalidateFocus$ui_release()V

    .line 127
    invoke-virtual {v6}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v9

    if-ne v8, v9, :cond_4c

    .line 128
    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 129
    :cond_4c
    invoke-static {v6}, Landroidx/compose/ui/focus/FocusEventModifierNodeKt;->refreshFocusEventNodes(Landroidx/compose/ui/focus/FocusTargetNode;)V

    .line 131
    :cond_4d
    nop

    .line 365
    .end local v6    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v7    # "$i$a$-forEach-FocusInvalidationManager$invalidateNodes$1$3":I
    .end local v8    # "preInvalidationState":Landroidx/compose/ui/focus/FocusStateImpl;
    :cond_4e
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_2c

    .line 366
    :cond_4f
    nop

    .line 132
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 133
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 135
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusPropertiesNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 136
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusEventNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 137
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 138
    return-void

    .line 367
    :cond_50
    const/4 v2, 0x0

    .line 137
    .local v2, "$i$a$-check-FocusInvalidationManager$invalidateNodes$1$6":I
    nop

    .end local v2    # "$i$a$-check-FocusInvalidationManager$invalidateNodes$1$6":I
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Unprocessed FocusTarget nodes"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 367
    :cond_51
    const/4 v2, 0x0

    .line 136
    .local v2, "$i$a$-check-FocusInvalidationManager$invalidateNodes$1$5":I
    nop

    .end local v2    # "$i$a$-check-FocusInvalidationManager$invalidateNodes$1$5":I
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Unprocessed FocusEvent nodes"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 367
    :cond_52
    const/4 v2, 0x0

    .line 135
    .local v2, "$i$a$-check-FocusInvalidationManager$invalidateNodes$1$4":I
    nop

    .end local v2    # "$i$a$-check-FocusInvalidationManager$invalidateNodes$1$4":I
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Unprocessed FocusProperties nodes"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
