.class public final Landroidx/compose/ui/focus/FocusRestorerKt;
.super Ljava/lang/Object;
.source "FocusRestorer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusRestorer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusRestorer.kt\nandroidx/compose/ui/focus/FocusRestorerKt\n+ 2 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 3 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 6 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 7 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 8 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n*L\n1#1,122:1\n90#2:123\n90#2:194\n276#3:124\n133#3:125\n134#3:127\n135#3,7:131\n142#3,9:139\n385#3,6:148\n395#3,2:155\n397#3,17:160\n414#3,8:180\n151#3,6:188\n276#3:195\n133#3:196\n134#3:198\n135#3,7:202\n142#3,9:210\n385#3,6:219\n395#3,2:226\n397#3,17:231\n414#3,8:251\n151#3,6:259\n1#4:126\n1#4:197\n1208#5:128\n1187#5,2:129\n1208#5:199\n1187#5,2:200\n48#6:138\n48#6:209\n261#7:154\n261#7:225\n234#8,3:157\n237#8,3:177\n234#8,3:228\n237#8,3:248\n*S KotlinDebug\n*F\n+ 1 FocusRestorer.kt\nandroidx/compose/ui/focus/FocusRestorerKt\n*L\n35#1:123\n55#1:194\n35#1:124\n35#1:125\n35#1:127\n35#1:131,7\n35#1:139,9\n35#1:148,6\n35#1:155,2\n35#1:160,17\n35#1:180,8\n35#1:188,6\n55#1:195\n55#1:196\n55#1:198\n55#1:202,7\n55#1:210,9\n55#1:219,6\n55#1:226,2\n55#1:231,17\n55#1:251,8\n55#1:259,6\n35#1:126\n55#1:197\n35#1:128\n35#1:129,2\n55#1:199\n55#1:200,2\n35#1:138\n55#1:209\n35#1:154\n55#1:225\n35#1:157,3\n35#1:177,3\n55#1:228,3\n55#1:248,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001e\u0010\u0004\u001a\u00020\u0005*\u00020\u00052\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u0007\u001a\u000c\u0010\t\u001a\u00020\n*\u00020\u000bH\u0001\u001a\u000c\u0010\u000c\u001a\u00020\n*\u00020\u000bH\u0001\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\r"
    }
    d2 = {
        "PrevFocusedChild",
        "",
        "getPrevFocusedChild$annotations",
        "()V",
        "focusRestorer",
        "Landroidx/compose/ui/Modifier;",
        "onRestoreFailed",
        "Lkotlin/Function0;",
        "Landroidx/compose/ui/focus/FocusRequester;",
        "restoreFocusedChild",
        "",
        "Landroidx/compose/ui/focus/FocusTargetNode;",
        "saveFocusedChild",
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


# static fields
.field private static final PrevFocusedChild:Ljava/lang/String; = "previouslyFocusedChildHash"


# direct methods
.method public static final focusRestorer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0, "$this$focusRestorer"    # Landroidx/compose/ui/Modifier;
    .param p1, "onRestoreFailed"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/focus/FocusRequester;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 79
    new-instance v0, Landroidx/compose/ui/focus/FocusRestorerElement;

    invoke-direct {v0, p1}, Landroidx/compose/ui/focus/FocusRestorerElement;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Landroidx/compose/ui/Modifier;

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic focusRestorer$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 77
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 78
    const/4 p1, 0x0

    .line 77
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusRestorerKt;->focusRestorer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic getPrevFocusedChild$annotations()V
    .locals 0

    return-void
.end method

.method public static final restoreFocusedChild(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 29
    .param p0, "$this$restoreFocusedChild"    # Landroidx/compose/ui/focus/FocusTargetNode;

    .line 48
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getPreviouslyFocusedChildHash()I

    move-result v1

    if-nez v1, :cond_1

    .line 49
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->getLocalSaveableStateRegistry()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v1, v2}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 50
    .local v1, "savableStateRegistry":Landroidx/compose/runtime/saveable/SaveableStateRegistry;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "previouslyFocusedChildHash"

    invoke-interface {v1, v2}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->consumeRestored(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .local v2, "it":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 51
    .local v3, "$i$a$-let-FocusRestorerKt$restoreFocusedChild$1":I
    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/compose/ui/focus/FocusTargetNode;->setPreviouslyFocusedChildHash(I)V

    .line 52
    nop

    .line 50
    .end local v2    # "it":Ljava/lang/Object;
    .end local v3    # "$i$a$-let-FocusRestorerKt$restoreFocusedChild$1":I
    :cond_0
    nop

    .line 54
    .end local v1    # "savableStateRegistry":Landroidx/compose/runtime/saveable/SaveableStateRegistry;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getPreviouslyFocusedChildHash()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 55
    :cond_2
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v3, 0x0

    .line 194
    .local v3, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v4, 0x400

    invoke-static {v4}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    .line 55
    .end local v3    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .local v1, "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v3, "type$iv":I
    const/4 v4, 0x0

    .line 195
    .local v4, "$i$f$visitChildren-6rFNWt0":I
    move v5, v3

    .local v5, "mask$iv$iv":I
    move-object v6, v1

    .local v6, "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v7, 0x0

    .line 196
    .local v7, "$i$f$visitChildren":I
    invoke-interface {v6}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 198
    const/4 v8, 0x0

    .line 199
    .local v8, "$i$f$mutableVectorOf":I
    nop

    .line 200
    const/16 v9, 0x10

    .local v9, "capacity$iv$iv$iv$iv":I
    const/4 v10, 0x0

    .line 201
    .local v10, "$i$f$MutableVector":I
    new-instance v11, Landroidx/compose/runtime/collection/MutableVector;

    new-array v12, v9, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v11, v12, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 199
    .end local v9    # "capacity$iv$iv$iv$iv":I
    .end local v10    # "$i$f$MutableVector":I
    nop

    .line 198
    .end local v8    # "$i$f$mutableVectorOf":I
    move-object v8, v11

    .line 202
    .local v8, "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface {v6}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    .line 203
    .local v9, "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-nez v9, :cond_3

    .line 204
    invoke-interface {v6}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-static {v8, v10}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    .line 206
    :cond_3
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 207
    :goto_0
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 208
    move-object v10, v8

    .local v10, "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v11, 0x0

    .line 209
    .local v11, "$i$f$getLastIndex":I
    invoke-virtual {v10}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    .line 208
    .end local v10    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v11    # "$i$f$getLastIndex":I
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/Modifier$Node;

    .line 210
    .local v10, "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v5

    if-nez v11, :cond_4

    .line 211
    invoke-static {v8, v10}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 213
    goto :goto_0

    .line 215
    :cond_4
    move-object v11, v10

    .line 216
    .local v11, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_1
    if-eqz v11, :cond_16

    .line 217
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v12

    and-int/2addr v12, v5

    if-eqz v12, :cond_15

    .line 218
    move-object v12, v11

    .local v12, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 195
    .local v14, "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2$iv":I
    move-object v15, v12

    .local v15, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v16, 0x0

    .line 219
    .local v16, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v17, 0x0

    .line 220
    .local v17, "stack$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .local v18, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v15

    move-object/from16 v2, v18

    .line 221
    .end local v18    # "node$iv$iv":Ljava/lang/Object;
    .local v2, "node$iv$iv":Ljava/lang/Object;
    :goto_2
    if-eqz v2, :cond_14

    .line 222
    instance-of v13, v2, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v13, :cond_8

    .line 223
    move-object v13, v2

    check-cast v13, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v13, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/16 v19, 0x0

    .line 56
    .local v19, "$i$a$-visitChildren-6rFNWt0-FocusRestorerKt$restoreFocusedChild$2":I
    move-object/from16 v20, v13

    check-cast v20, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static/range {v20 .. v20}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/LayoutNode;->getCompositeKeyHash()I

    move-result v0

    move-object/from16 v20, v1

    .end local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v20, "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getPreviouslyFocusedChildHash()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 57
    invoke-static {v13}, Landroidx/compose/ui/focus/FocusRestorerKt;->restoreFocusedChild(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v13}, Landroidx/compose/ui/focus/FocusTransactionsKt;->requestFocus(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/16 v18, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/16 v18, 0x1

    :goto_4
    return v18

    .line 59
    :cond_7
    nop

    .line 223
    .end local v13    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v19    # "$i$a$-visitChildren-6rFNWt0-FocusRestorerKt$restoreFocusedChild$2":I
    move/from16 v27, v3

    const/4 v1, 0x1

    goto/16 :goto_b

    .line 224
    .end local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_8
    move-object/from16 v20, v1

    .end local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    move-object v0, v2

    .local v0, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v1, 0x0

    .line 225
    .local v1, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int/2addr v13, v3

    if-eqz v13, :cond_9

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    .line 224
    .end local v0    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_5
    if-eqz v0, :cond_12

    instance-of v0, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_12

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "count$iv$iv":I
    move-object v1, v2

    check-cast v1, Landroidx/compose/ui/node/DelegatingNode;

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v13, 0x0

    .line 228
    .local v13, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v1}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    .line 229
    .local v19, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    if-eqz v19, :cond_11

    .line 230
    move-object/from16 v21, v19

    .local v21, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 231
    .local v22, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move-object/from16 v23, v21

    .local v23, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 225
    .local v24, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v25

    and-int v25, v25, v3

    if-eqz v25, :cond_a

    const/16 v23, 0x1

    goto :goto_7

    :cond_a
    const/16 v23, 0x0

    .line 231
    .end local v23    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_7
    if-eqz v23, :cond_10

    .line 232
    add-int/lit8 v0, v0, 0x1

    .line 233
    move-object/from16 v23, v1

    const/4 v1, 0x1

    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v23, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    if-ne v0, v1, :cond_b

    .line 234
    move-object/from16 v2, v21

    move/from16 v27, v3

    move-object/from16 v3, v21

    goto :goto_a

    .line 238
    :cond_b
    if-nez v17, :cond_c

    const/4 v1, 0x0

    .line 199
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 200
    move/from16 v24, v0

    .end local v0    # "count$iv$iv":I
    .local v24, "count$iv$iv":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v25, 0x0

    .line 201
    .local v25, "$i$f$MutableVector":I
    move/from16 v26, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v26, "$i$f$mutableVectorOf":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v27, v3

    .end local v3    # "type$iv":I
    .local v27, "type$iv":I
    new-array v3, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v28, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v28, "capacity$iv$iv$iv$iv":I
    invoke-direct {v1, v3, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 199
    .end local v25    # "$i$f$MutableVector":I
    .end local v28    # "capacity$iv$iv$iv$iv":I
    goto :goto_8

    .line 238
    .end local v24    # "count$iv$iv":I
    .end local v26    # "$i$f$mutableVectorOf":I
    .end local v27    # "type$iv":I
    .local v0, "count$iv$iv":I
    .restart local v3    # "type$iv":I
    :cond_c
    move/from16 v24, v0

    move/from16 v27, v3

    .end local v0    # "count$iv$iv":I
    .end local v3    # "type$iv":I
    .restart local v24    # "count$iv$iv":I
    .restart local v27    # "type$iv":I
    move-object/from16 v1, v17

    :goto_8
    move-object v0, v1

    .line 239
    .end local v17    # "stack$iv$iv":Ljava/lang/Object;
    .local v0, "stack$iv$iv":Ljava/lang/Object;
    move-object v1, v2

    .line 240
    .local v1, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_e

    .line 241
    if-eqz v0, :cond_d

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_d
    const/4 v2, 0x0

    .line 244
    :cond_e
    if-eqz v0, :cond_f

    move-object/from16 v3, v21

    .end local v21    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .end local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v21    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_f
    move-object/from16 v3, v21

    .line 247
    .end local v1    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v21    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_9
    move-object/from16 v17, v0

    move/from16 v0, v24

    goto :goto_a

    .line 231
    .end local v23    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v24    # "count$iv$iv":I
    .end local v27    # "type$iv":I
    .local v0, "count$iv$iv":I
    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v3, "type$iv":I
    .restart local v17    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v21    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_10
    move-object/from16 v23, v1

    move/from16 v27, v3

    move-object/from16 v3, v21

    .line 247
    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v21    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v27    # "type$iv":I
    :goto_a
    nop

    .line 230
    .end local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 248
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    move-object/from16 v1, v23

    move/from16 v3, v27

    goto :goto_6

    .line 250
    .end local v23    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v27    # "type$iv":I
    .restart local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v3, "type$iv":I
    :cond_11
    move-object/from16 v23, v1

    move/from16 v27, v3

    .line 251
    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v3    # "type$iv":I
    .end local v13    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v19    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "type$iv":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 253
    move-object/from16 v0, p0

    move v13, v1

    move-object/from16 v1, v20

    move/from16 v3, v27

    goto/16 :goto_2

    .line 224
    .end local v0    # "count$iv$iv":I
    .end local v27    # "type$iv":I
    .restart local v3    # "type$iv":I
    :cond_12
    move/from16 v27, v3

    const/4 v1, 0x1

    .line 256
    .end local v3    # "type$iv":I
    .restart local v27    # "type$iv":I
    :cond_13
    :goto_b
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    move-object/from16 v0, p0

    move v13, v1

    move-object/from16 v1, v20

    move/from16 v3, v27

    goto/16 :goto_2

    .line 258
    .end local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "type$iv":I
    .local v1, "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "type$iv":I
    :cond_14
    move-object/from16 v20, v1

    move/from16 v27, v3

    .line 195
    .end local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .end local v3    # "type$iv":I
    .end local v15    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v17    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "type$iv":I
    nop

    .line 218
    .end local v12    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2$iv":I
    nop

    .line 259
    move-object/from16 v0, p0

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 261
    .end local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "type$iv":I
    .restart local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "type$iv":I
    :cond_15
    move-object/from16 v20, v1

    move/from16 v27, v3

    move v1, v13

    .end local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "type$iv":I
    .restart local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "type$iv":I
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 216
    .end local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "type$iv":I
    .restart local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "type$iv":I
    :cond_16
    move-object/from16 v20, v1

    move/from16 v27, v3

    .end local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "type$iv":I
    .restart local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "type$iv":I
    move-object/from16 v0, p0

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 264
    .end local v10    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "type$iv":I
    .restart local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "type$iv":I
    :cond_17
    nop

    .line 195
    .end local v5    # "mask$iv$iv":I
    .end local v6    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v7    # "$i$f$visitChildren":I
    .end local v8    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v9    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    nop

    .line 60
    .end local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "type$iv":I
    .end local v4    # "$i$f$visitChildren-6rFNWt0":I
    const/4 v0, 0x0

    return v0

    .line 197
    .restart local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "type$iv":I
    .restart local v4    # "$i$f$visitChildren-6rFNWt0":I
    .restart local v5    # "mask$iv$iv":I
    .restart local v6    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v7    # "$i$f$visitChildren":I
    :cond_18
    move-object/from16 v20, v1

    .end local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v0, 0x0

    .line 196
    .local v0, "$i$a$-check-DelegatableNodeKt$visitChildren$1$iv$iv":I
    nop

    .end local v0    # "$i$a$-check-DelegatableNodeKt$visitChildren$1$iv$iv":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "visitChildren called on an unattached node"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final saveFocusedChild(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 29
    .param p0, "$this$saveFocusedChild"    # Landroidx/compose/ui/focus/FocusTargetNode;

    .line 34
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusStateImpl;->getHasFocus()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 35
    :cond_0
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v3, 0x0

    .line 123
    .local v3, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v4, 0x400

    invoke-static {v4}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    .line 35
    .end local v3    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .local v1, "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v3, "type$iv":I
    const/4 v4, 0x0

    .line 124
    .local v4, "$i$f$visitChildren-6rFNWt0":I
    move v5, v3

    .local v5, "mask$iv$iv":I
    move-object v6, v1

    .local v6, "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v7, 0x0

    .line 125
    .local v7, "$i$f$visitChildren":I
    invoke-interface {v6}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 127
    const/4 v8, 0x0

    .line 128
    .local v8, "$i$f$mutableVectorOf":I
    nop

    .line 129
    const/16 v9, 0x10

    .local v9, "capacity$iv$iv$iv$iv":I
    const/4 v10, 0x0

    .line 130
    .local v10, "$i$f$MutableVector":I
    new-instance v11, Landroidx/compose/runtime/collection/MutableVector;

    new-array v12, v9, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v11, v12, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 128
    .end local v9    # "capacity$iv$iv$iv$iv":I
    .end local v10    # "$i$f$MutableVector":I
    nop

    .line 127
    .end local v8    # "$i$f$mutableVectorOf":I
    move-object v8, v11

    .line 131
    .local v8, "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface {v6}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    .line 132
    .local v9, "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-nez v9, :cond_1

    .line 133
    invoke-interface {v6}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-static {v8, v10}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 136
    :goto_0
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 137
    move-object v10, v8

    .local v10, "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v11, 0x0

    .line 138
    .local v11, "$i$f$getLastIndex":I
    invoke-virtual {v10}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    .line 137
    .end local v10    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v11    # "$i$f$getLastIndex":I
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/Modifier$Node;

    .line 139
    .local v10, "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v5

    if-nez v11, :cond_2

    .line 140
    invoke-static {v8, v10}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 142
    goto :goto_0

    .line 144
    :cond_2
    move-object v11, v10

    .line 145
    .local v11, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_1
    if-eqz v11, :cond_13

    .line 146
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v12

    and-int/2addr v12, v5

    if-eqz v12, :cond_12

    .line 147
    move-object v12, v11

    .local v12, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 124
    .local v14, "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2$iv":I
    move-object v15, v12

    .local v15, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v16, 0x0

    .line 148
    .local v16, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v17, 0x0

    .line 149
    .local v17, "stack$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .local v18, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v15

    move-object/from16 v2, v18

    .line 150
    .end local v18    # "node$iv$iv":Ljava/lang/Object;
    .local v2, "node$iv$iv":Ljava/lang/Object;
    :goto_2
    if-eqz v2, :cond_11

    .line 151
    instance-of v13, v2, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v13, :cond_5

    .line 152
    move-object v13, v2

    check-cast v13, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v13, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/16 v19, 0x0

    .line 36
    .local v19, "$i$a$-visitChildren-6rFNWt0-FocusRestorerKt$saveFocusedChild$1":I
    invoke-virtual {v13}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/focus/FocusStateImpl;->getHasFocus()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 37
    move-object/from16 v18, v13

    check-cast v18, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v18

    move-object/from16 v20, v1

    .end local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v20, "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/LayoutNode;->getCompositeKeyHash()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/focus/FocusTargetNode;->setPreviouslyFocusedChildHash(I)V

    .line 39
    nop

    .line 38
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->getLocalSaveableStateRegistry()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v18

    move/from16 v21, v4

    .end local v4    # "$i$f$visitChildren-6rFNWt0":I
    .local v21, "$i$f$visitChildren-6rFNWt0":I
    move-object/from16 v4, v18

    check-cast v4, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v1, v4}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 39
    if-eqz v1, :cond_3

    .line 38
    nop

    .line 39
    new-instance v4, Landroidx/compose/ui/focus/FocusRestorerKt$saveFocusedChild$1$1;

    invoke-direct {v4, v0}, Landroidx/compose/ui/focus/FocusRestorerKt$saveFocusedChild$1$1;-><init>(Landroidx/compose/ui/focus/FocusTargetNode;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const-string/jumbo v0, "previouslyFocusedChildHash"

    invoke-interface {v1, v0, v4}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->registerProvider(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    .line 40
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 42
    .end local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v21    # "$i$f$visitChildren-6rFNWt0":I
    .restart local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$i$f$visitChildren-6rFNWt0":I
    :cond_4
    move-object/from16 v20, v1

    move/from16 v21, v4

    .line 152
    .end local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$i$f$visitChildren-6rFNWt0":I
    .end local v13    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v19    # "$i$a$-visitChildren-6rFNWt0-FocusRestorerKt$saveFocusedChild$1":I
    .restart local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v21    # "$i$f$visitChildren-6rFNWt0":I
    move/from16 v27, v3

    const/4 v1, 0x1

    goto/16 :goto_9

    .line 153
    .end local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v21    # "$i$f$visitChildren-6rFNWt0":I
    .restart local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$i$f$visitChildren-6rFNWt0":I
    :cond_5
    move-object/from16 v20, v1

    move/from16 v21, v4

    .end local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$i$f$visitChildren-6rFNWt0":I
    .restart local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v21    # "$i$f$visitChildren-6rFNWt0":I
    move-object v0, v2

    .local v0, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v1, 0x0

    .line 154
    .local v1, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v4, v3

    if-eqz v4, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    .line 153
    .end local v0    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_3
    if-eqz v0, :cond_f

    instance-of v0, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_f

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "count$iv$iv":I
    move-object v1, v2

    check-cast v1, Landroidx/compose/ui/node/DelegatingNode;

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v4, 0x0

    .line 157
    .local v4, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v1}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    .line 158
    .local v13, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v13, :cond_e

    .line 159
    move-object/from16 v19, v13

    .local v19, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 160
    .local v22, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move-object/from16 v23, v19

    .local v23, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 154
    .local v24, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v25

    and-int v25, v25, v3

    if-eqz v25, :cond_7

    const/16 v23, 0x1

    goto :goto_5

    :cond_7
    const/16 v23, 0x0

    .line 160
    .end local v23    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_5
    if-eqz v23, :cond_d

    .line 161
    add-int/lit8 v0, v0, 0x1

    .line 162
    move-object/from16 v23, v1

    const/4 v1, 0x1

    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v23, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    if-ne v0, v1, :cond_8

    .line 163
    move-object/from16 v2, v19

    move/from16 v27, v3

    move-object/from16 v3, v19

    goto :goto_8

    .line 167
    :cond_8
    if-nez v17, :cond_9

    const/4 v1, 0x0

    .line 128
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 129
    move/from16 v24, v0

    .end local v0    # "count$iv$iv":I
    .local v24, "count$iv$iv":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v25, 0x0

    .line 130
    .local v25, "$i$f$MutableVector":I
    move/from16 v26, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v26, "$i$f$mutableVectorOf":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v27, v3

    .end local v3    # "type$iv":I
    .local v27, "type$iv":I
    new-array v3, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v28, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v28, "capacity$iv$iv$iv$iv":I
    invoke-direct {v1, v3, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 128
    .end local v25    # "$i$f$MutableVector":I
    .end local v28    # "capacity$iv$iv$iv$iv":I
    goto :goto_6

    .line 167
    .end local v24    # "count$iv$iv":I
    .end local v26    # "$i$f$mutableVectorOf":I
    .end local v27    # "type$iv":I
    .local v0, "count$iv$iv":I
    .restart local v3    # "type$iv":I
    :cond_9
    move/from16 v24, v0

    move/from16 v27, v3

    .end local v0    # "count$iv$iv":I
    .end local v3    # "type$iv":I
    .restart local v24    # "count$iv$iv":I
    .restart local v27    # "type$iv":I
    move-object/from16 v1, v17

    :goto_6
    move-object v0, v1

    .line 168
    .end local v17    # "stack$iv$iv":Ljava/lang/Object;
    .local v0, "stack$iv$iv":Ljava/lang/Object;
    move-object v1, v2

    .line 169
    .local v1, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_b

    .line 170
    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_a
    const/4 v2, 0x0

    .line 173
    :cond_b
    if-eqz v0, :cond_c

    move-object/from16 v3, v19

    .end local v19    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .end local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_c
    move-object/from16 v3, v19

    .line 176
    .end local v1    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    move-object/from16 v17, v0

    move/from16 v0, v24

    goto :goto_8

    .line 160
    .end local v23    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v24    # "count$iv$iv":I
    .end local v27    # "type$iv":I
    .local v0, "count$iv$iv":I
    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v3, "type$iv":I
    .restart local v17    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v19    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_d
    move-object/from16 v23, v1

    move/from16 v27, v3

    move-object/from16 v3, v19

    .line 176
    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v19    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v27    # "type$iv":I
    :goto_8
    nop

    .line 159
    .end local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 177
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    move-object/from16 v1, v23

    move/from16 v3, v27

    goto :goto_4

    .line 179
    .end local v23    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v27    # "type$iv":I
    .restart local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v3, "type$iv":I
    :cond_e
    move-object/from16 v23, v1

    move/from16 v27, v3

    .line 180
    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v3    # "type$iv":I
    .end local v4    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v13    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "type$iv":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 182
    move-object/from16 v0, p0

    move v13, v1

    move-object/from16 v1, v20

    move/from16 v4, v21

    move/from16 v3, v27

    goto/16 :goto_2

    .line 153
    .end local v0    # "count$iv$iv":I
    .end local v27    # "type$iv":I
    .restart local v3    # "type$iv":I
    :cond_f
    move/from16 v27, v3

    const/4 v1, 0x1

    .line 185
    .end local v3    # "type$iv":I
    .restart local v27    # "type$iv":I
    :cond_10
    :goto_9
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    move-object/from16 v0, p0

    move v13, v1

    move-object/from16 v1, v20

    move/from16 v4, v21

    move/from16 v3, v27

    goto/16 :goto_2

    .line 187
    .end local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v21    # "$i$f$visitChildren-6rFNWt0":I
    .end local v27    # "type$iv":I
    .local v1, "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "type$iv":I
    .local v4, "$i$f$visitChildren-6rFNWt0":I
    :cond_11
    move-object/from16 v20, v1

    move/from16 v27, v3

    move/from16 v21, v4

    .line 124
    .end local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .end local v3    # "type$iv":I
    .end local v4    # "$i$f$visitChildren-6rFNWt0":I
    .end local v15    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v17    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v21    # "$i$f$visitChildren-6rFNWt0":I
    .restart local v27    # "type$iv":I
    nop

    .line 147
    .end local v12    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2$iv":I
    nop

    .line 188
    move-object/from16 v0, p0

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 190
    .end local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v21    # "$i$f$visitChildren-6rFNWt0":I
    .end local v27    # "type$iv":I
    .restart local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "type$iv":I
    .restart local v4    # "$i$f$visitChildren-6rFNWt0":I
    :cond_12
    move-object/from16 v20, v1

    move/from16 v27, v3

    move/from16 v21, v4

    move v1, v13

    .end local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "type$iv":I
    .end local v4    # "$i$f$visitChildren-6rFNWt0":I
    .restart local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v21    # "$i$f$visitChildren-6rFNWt0":I
    .restart local v27    # "type$iv":I
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 145
    .end local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v21    # "$i$f$visitChildren-6rFNWt0":I
    .end local v27    # "type$iv":I
    .restart local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "type$iv":I
    .restart local v4    # "$i$f$visitChildren-6rFNWt0":I
    :cond_13
    move-object/from16 v20, v1

    move/from16 v27, v3

    move/from16 v21, v4

    .end local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "type$iv":I
    .end local v4    # "$i$f$visitChildren-6rFNWt0":I
    .restart local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v21    # "$i$f$visitChildren-6rFNWt0":I
    .restart local v27    # "type$iv":I
    move-object/from16 v0, p0

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 193
    .end local v10    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v21    # "$i$f$visitChildren-6rFNWt0":I
    .end local v27    # "type$iv":I
    .restart local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "type$iv":I
    .restart local v4    # "$i$f$visitChildren-6rFNWt0":I
    :cond_14
    nop

    .line 124
    .end local v5    # "mask$iv$iv":I
    .end local v6    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v7    # "$i$f$visitChildren":I
    .end local v8    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v9    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    nop

    .line 43
    .end local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "type$iv":I
    .end local v4    # "$i$f$visitChildren-6rFNWt0":I
    const/4 v0, 0x0

    return v0

    .line 126
    .restart local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "type$iv":I
    .restart local v4    # "$i$f$visitChildren-6rFNWt0":I
    .restart local v5    # "mask$iv$iv":I
    .restart local v6    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v7    # "$i$f$visitChildren":I
    :cond_15
    move-object/from16 v20, v1

    .end local v1    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v0, 0x0

    .line 125
    .local v0, "$i$a$-check-DelegatableNodeKt$visitChildren$1$iv$iv":I
    nop

    .end local v0    # "$i$a$-check-DelegatableNodeKt$visitChildren$1$iv$iv":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "visitChildren called on an unattached node"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
