.class public interface abstract Landroidx/compose/ui/modifier/ModifierLocalModifierNode;
.super Ljava/lang/Object;
.source "ModifierLocalModifierNode.kt"

# interfaces
.implements Landroidx/compose/ui/modifier/ModifierLocalReadScope;
.implements Landroidx/compose/ui/node/DelegatableNode;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModifierLocalModifierNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModifierLocalModifierNode.kt\nandroidx/compose/ui/modifier/ModifierLocalModifierNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 4 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 5 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 6 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 7 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n*L\n1#1,209:1\n1#2:210\n1#2:218\n80#3:211\n230#4,5:212\n58#4:217\n59#4,8:219\n385#4,6:227\n395#4,2:234\n397#4,8:239\n405#4,9:250\n414#4,8:262\n68#4,7:270\n261#5:233\n234#6,3:236\n237#6,3:259\n1208#7:247\n1187#7,2:248\n*S KotlinDebug\n*F\n+ 1 ModifierLocalModifierNode.kt\nandroidx/compose/ui/modifier/ModifierLocalModifierNode\n*L\n164#1:218\n164#1:211\n164#1:212,5\n164#1:217\n164#1:219,8\n164#1:227,6\n164#1:234,2\n164#1:239,8\n164#1:250,9\n164#1:262,8\n164#1:270,7\n164#1:233\n164#1:236,3\n164#1:259,3\n164#1:247\n164#1:248,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u00012\u00020\u0002J)\u0010\u000c\u001a\u00020\r\"\u0004\u0008\u0000\u0010\u00082\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\t2\u0006\u0010\u000f\u001a\u0002H\u0008H\u0016\u00a2\u0006\u0002\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R$\u0010\u0007\u001a\u0002H\u0008\"\u0004\u0008\u0000\u0010\u0008*\u0008\u0012\u0004\u0012\u0002H\u00080\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0011\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/modifier/ModifierLocalModifierNode;",
        "Landroidx/compose/ui/modifier/ModifierLocalReadScope;",
        "Landroidx/compose/ui/node/DelegatableNode;",
        "providedValues",
        "Landroidx/compose/ui/modifier/ModifierLocalMap;",
        "getProvidedValues",
        "()Landroidx/compose/ui/modifier/ModifierLocalMap;",
        "current",
        "T",
        "Landroidx/compose/ui/modifier/ModifierLocal;",
        "getCurrent",
        "(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;",
        "provide",
        "",
        "key",
        "value",
        "(Landroidx/compose/ui/modifier/ModifierLocal;Ljava/lang/Object;)V",
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


# virtual methods
.method public getCurrent(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;
    .locals 31
    .param p1, "$this$current"    # Landroidx/compose/ui/modifier/ModifierLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 162
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 163
    move-object/from16 v0, p1

    .line 164
    .local v0, "key":Landroidx/compose/ui/modifier/ModifierLocal;
    move-object/from16 v1, p0

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v2, 0x0

    .line 211
    .local v2, "$i$f$getLocals-OLwlOKw":I
    const/16 v3, 0x20

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 164
    .end local v2    # "$i$f$getLocals-OLwlOKw":I
    nop

    .line 212
    .local v1, "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v2, "type$iv":I
    nop

    .line 214
    const/4 v3, 0x0

    .line 212
    .local v3, "includeSelf$iv":Z
    const/4 v4, 0x0

    .line 216
    .local v4, "$i$f$visitAncestors-Y-YKmho":I
    move v5, v2

    .local v5, "mask$iv$iv":I
    move-object v6, v1

    .local v6, "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v7, 0x0

    .line 217
    .local v7, "$i$f$visitAncestors":I
    invoke-interface {v6}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 219
    invoke-interface {v6}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 220
    .local v8, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static {v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v9

    .line 221
    .local v9, "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_0
    if-eqz v9, :cond_12

    .line 222
    invoke-virtual {v9}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 223
    .local v10, "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v5

    if-eqz v11, :cond_10

    .line 224
    :goto_1
    if-eqz v8, :cond_f

    .line 225
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v5

    if-eqz v11, :cond_e

    .line 226
    move-object v11, v8

    .local v11, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 216
    .local v12, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    move-object v13, v11

    .local v13, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 227
    .local v14, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v15, 0x0

    .line 228
    .local v15, "stack$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .local v16, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v13

    move-object/from16 v30, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v30

    .line 229
    .local v1, "node$iv$iv":Ljava/lang/Object;
    .local v16, "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_2
    if-eqz v1, :cond_d

    .line 230
    move/from16 v17, v3

    .end local v3    # "includeSelf$iv":Z
    .local v17, "includeSelf$iv":Z
    instance-of v3, v1, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    if-eqz v3, :cond_1

    .line 231
    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    .local v3, "it":Landroidx/compose/ui/modifier/ModifierLocalModifierNode;
    const/16 v18, 0x0

    .line 165
    .local v18, "$i$a$-visitAncestors-Y-YKmho$default-ModifierLocalModifierNode$current$2":I
    move/from16 v19, v4

    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .local v19, "$i$f$visitAncestors-Y-YKmho":I
    invoke-interface {v3}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroidx/compose/ui/modifier/ModifierLocalMap;->contains$ui_release(Landroidx/compose/ui/modifier/ModifierLocal;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    invoke-interface {v3}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroidx/compose/ui/modifier/ModifierLocalMap;->get$ui_release(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 169
    :cond_0
    nop

    .line 231
    .end local v3    # "it":Landroidx/compose/ui/modifier/ModifierLocalModifierNode;
    .end local v18    # "$i$a$-visitAncestors-Y-YKmho$default-ModifierLocalModifierNode$current$2":I
    move/from16 v27, v2

    goto/16 :goto_9

    .line 232
    .end local v19    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v4    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_1
    move/from16 v19, v4

    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v19    # "$i$f$visitAncestors-Y-YKmho":I
    move-object v3, v1

    .local v3, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v4, 0x0

    .line 233
    .local v4, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v18

    and-int v18, v18, v2

    move-object/from16 v20, v3

    .end local v3    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v20, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v3, 0x1

    if-eqz v18, :cond_2

    move v4, v3

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    .line 232
    .end local v4    # "$i$f$isKind-H91voCI$ui_release":I
    .end local v20    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v4, :cond_b

    instance-of v4, v1, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v4, :cond_b

    .line 234
    const/4 v4, 0x0

    .line 235
    .local v4, "count$iv$iv":I
    move-object/from16 v18, v1

    check-cast v18, Landroidx/compose/ui/node/DelegatingNode;

    .local v18, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v20, 0x0

    .line 236
    .local v20, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    .line 237
    .local v21, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v21, :cond_a

    .line 238
    move-object/from16 v22, v21

    .local v22, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 239
    .local v23, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move-object/from16 v24, v22

    .local v24, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 233
    .local v25, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v26

    and-int v26, v26, v2

    if-eqz v26, :cond_3

    move/from16 v24, v3

    goto :goto_5

    :cond_3
    const/16 v24, 0x0

    .line 239
    .end local v24    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_5
    if-eqz v24, :cond_9

    .line 240
    add-int/lit8 v4, v4, 0x1

    .line 241
    if-ne v4, v3, :cond_4

    .line 242
    move-object/from16 v1, v22

    move/from16 v27, v2

    move-object/from16 v2, v22

    const/4 v3, 0x0

    goto :goto_8

    .line 246
    :cond_4
    if-nez v15, :cond_5

    const/16 v24, 0x0

    .line 247
    .local v24, "$i$f$mutableVectorOf":I
    nop

    .line 248
    const/16 v3, 0x10

    .local v3, "capacity$iv$iv$iv$iv":I
    const/16 v26, 0x0

    .line 249
    .local v26, "$i$f$MutableVector":I
    move/from16 v27, v2

    .end local v2    # "type$iv":I
    .local v27, "type$iv":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v28, v4

    .end local v4    # "count$iv$iv":I
    .local v28, "count$iv$iv":I
    new-array v4, v3, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v29, v3

    const/4 v3, 0x0

    .end local v3    # "capacity$iv$iv$iv$iv":I
    .local v29, "capacity$iv$iv$iv$iv":I
    invoke-direct {v2, v4, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 247
    .end local v26    # "$i$f$MutableVector":I
    .end local v29    # "capacity$iv$iv$iv$iv":I
    goto :goto_6

    .line 246
    .end local v24    # "$i$f$mutableVectorOf":I
    .end local v27    # "type$iv":I
    .end local v28    # "count$iv$iv":I
    .restart local v2    # "type$iv":I
    .restart local v4    # "count$iv$iv":I
    :cond_5
    move/from16 v27, v2

    move/from16 v28, v4

    const/4 v3, 0x0

    .end local v2    # "type$iv":I
    .end local v4    # "count$iv$iv":I
    .restart local v27    # "type$iv":I
    .restart local v28    # "count$iv$iv":I
    move-object v2, v15

    :goto_6
    move-object v15, v2

    .line 250
    move-object v2, v1

    .line 251
    .local v2, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_7

    .line 252
    if-eqz v15, :cond_6

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_6
    const/4 v1, 0x0

    .line 255
    :cond_7
    if-eqz v15, :cond_8

    move-object/from16 v4, v22

    .end local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v4, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .end local v4    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_8
    move-object/from16 v4, v22

    .line 258
    .end local v2    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v4    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    move-object v2, v4

    move/from16 v4, v28

    goto :goto_8

    .line 239
    .end local v27    # "type$iv":I
    .end local v28    # "count$iv$iv":I
    .local v2, "type$iv":I
    .local v4, "count$iv$iv":I
    .restart local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move/from16 v27, v2

    move-object/from16 v2, v22

    const/4 v3, 0x0

    .line 258
    .end local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "type$iv":I
    :goto_8
    nop

    .line 238
    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 259
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    move/from16 v2, v27

    const/4 v3, 0x1

    goto :goto_4

    .line 261
    .end local v27    # "type$iv":I
    .local v2, "type$iv":I
    :cond_a
    move/from16 v27, v2

    .line 262
    .end local v2    # "type$iv":I
    .end local v18    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v20    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v21    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "type$iv":I
    const/4 v2, 0x1

    if-ne v4, v2, :cond_c

    .line 264
    move/from16 v3, v17

    move/from16 v4, v19

    move/from16 v2, v27

    goto/16 :goto_2

    .line 232
    .end local v4    # "count$iv$iv":I
    .end local v27    # "type$iv":I
    .restart local v2    # "type$iv":I
    :cond_b
    move/from16 v27, v2

    .line 267
    .end local v2    # "type$iv":I
    .restart local v27    # "type$iv":I
    :cond_c
    :goto_9
    invoke-static {v15}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    move/from16 v3, v17

    move/from16 v4, v19

    move/from16 v2, v27

    goto/16 :goto_2

    .line 269
    .end local v17    # "includeSelf$iv":Z
    .end local v19    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v27    # "type$iv":I
    .restart local v2    # "type$iv":I
    .local v3, "includeSelf$iv":Z
    .local v4, "$i$f$visitAncestors-Y-YKmho":I
    :cond_d
    move/from16 v27, v2

    move/from16 v17, v3

    move/from16 v19, v4

    .line 216
    .end local v1    # "node$iv$iv":Ljava/lang/Object;
    .end local v2    # "type$iv":I
    .end local v3    # "includeSelf$iv":Z
    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v13    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v15    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v17    # "includeSelf$iv":Z
    .restart local v19    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v27    # "type$iv":I
    nop

    .line 226
    .end local v11    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    goto :goto_a

    .line 225
    .end local v16    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v17    # "includeSelf$iv":Z
    .end local v19    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v27    # "type$iv":I
    .local v1, "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "type$iv":I
    .restart local v3    # "includeSelf$iv":Z
    .restart local v4    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_e
    move-object/from16 v16, v1

    move/from16 v27, v2

    move/from16 v17, v3

    move/from16 v19, v4

    .line 270
    .end local v1    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "type$iv":I
    .end local v3    # "includeSelf$iv":Z
    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v16    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v17    # "includeSelf$iv":Z
    .restart local v19    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v27    # "type$iv":I
    :goto_a
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move-object/from16 v1, v16

    move/from16 v3, v17

    move/from16 v4, v19

    move/from16 v2, v27

    goto/16 :goto_1

    .line 224
    .end local v16    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v17    # "includeSelf$iv":Z
    .end local v19    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v27    # "type$iv":I
    .restart local v1    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "type$iv":I
    .restart local v3    # "includeSelf$iv":Z
    .restart local v4    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_f
    move-object/from16 v16, v1

    move/from16 v27, v2

    move/from16 v17, v3

    move/from16 v19, v4

    .end local v1    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "type$iv":I
    .end local v3    # "includeSelf$iv":Z
    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v16    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v17    # "includeSelf$iv":Z
    .restart local v19    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v27    # "type$iv":I
    goto :goto_b

    .line 223
    .end local v16    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v17    # "includeSelf$iv":Z
    .end local v19    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v27    # "type$iv":I
    .restart local v1    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "type$iv":I
    .restart local v3    # "includeSelf$iv":Z
    .restart local v4    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_10
    move-object/from16 v16, v1

    move/from16 v27, v2

    move/from16 v17, v3

    move/from16 v19, v4

    .line 273
    .end local v1    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "type$iv":I
    .end local v3    # "includeSelf$iv":Z
    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v16    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v17    # "includeSelf$iv":Z
    .restart local v19    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v27    # "type$iv":I
    :goto_b
    invoke-virtual {v9}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v9

    .line 274
    if-eqz v9, :cond_11

    invoke-virtual {v9}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_c

    :cond_11
    const/4 v1, 0x0

    :goto_c
    move-object v8, v1

    move-object/from16 v1, v16

    move/from16 v3, v17

    move/from16 v4, v19

    move/from16 v2, v27

    .end local v10    # "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_0

    .line 276
    .end local v16    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v17    # "includeSelf$iv":Z
    .end local v19    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v27    # "type$iv":I
    .restart local v1    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "type$iv":I
    .restart local v3    # "includeSelf$iv":Z
    .restart local v4    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_12
    move-object/from16 v16, v1

    .line 216
    .end local v1    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "mask$iv$iv":I
    .end local v6    # "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v7    # "$i$f$visitAncestors":I
    .end local v8    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v16    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 170
    .end local v2    # "type$iv":I
    .end local v3    # "includeSelf$iv":Z
    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v16    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    invoke-virtual {v0}, Landroidx/compose/ui/modifier/ModifierLocal;->getDefaultFactory$ui_release()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 218
    .restart local v1    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "type$iv":I
    .restart local v3    # "includeSelf$iv":Z
    .restart local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v5    # "mask$iv$iv":I
    .restart local v6    # "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v7    # "$i$f$visitAncestors":I
    :cond_13
    move-object/from16 v16, v1

    move/from16 v27, v2

    .end local v1    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "type$iv":I
    .restart local v16    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "type$iv":I
    const/4 v1, 0x0

    .line 217
    .local v1, "$i$a$-check-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    nop

    .end local v1    # "$i$a$-check-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "visitAncestors called on an unattached node"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    .end local v0    # "key":Landroidx/compose/ui/modifier/ModifierLocal;
    .end local v3    # "includeSelf$iv":Z
    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v5    # "mask$iv$iv":I
    .end local v6    # "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v7    # "$i$f$visitAncestors":I
    .end local v16    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "type$iv":I
    :cond_14
    const/4 v0, 0x0

    .line 162
    .local v0, "$i$a$-require-ModifierLocalModifierNode$current$1":I
    nop

    .end local v0    # "$i$a$-require-ModifierLocalModifierNode$current$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ModifierLocal accessed from an unattached node"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;
    .locals 1

    .line 133
    sget-object v0, Landroidx/compose/ui/modifier/EmptyMap;->INSTANCE:Landroidx/compose/ui/modifier/EmptyMap;

    check-cast v0, Landroidx/compose/ui/modifier/ModifierLocalMap;

    return-object v0
.end method

.method public provide(Landroidx/compose/ui/modifier/ModifierLocal;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Landroidx/compose/ui/modifier/ModifierLocal;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 146
    invoke-interface {p0}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/modifier/EmptyMap;->INSTANCE:Landroidx/compose/ui/modifier/EmptyMap;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 149
    invoke-interface {p0}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/modifier/ModifierLocalMap;->contains$ui_release(Landroidx/compose/ui/modifier/ModifierLocal;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-interface {p0}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/modifier/ModifierLocalMap;->set$ui_release(Landroidx/compose/ui/modifier/ModifierLocal;Ljava/lang/Object;)V

    .line 154
    return-void

    .line 149
    :cond_1
    const/4 v0, 0x0

    .line 150
    .local v0, "$i$a$-require-ModifierLocalModifierNode$provide$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Any provided key must be initially provided in the overridden providedValues: ModifierLocalMap property. Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    nop

    .line 150
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    nop

    .line 150
    const-string v2, " was not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .end local v0    # "$i$a$-require-ModifierLocalModifierNode$provide$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_2
    const/4 v0, 0x0

    .line 147
    .local v0, "$i$a$-require-ModifierLocalModifierNode$provide$1":I
    nop

    .line 146
    .end local v0    # "$i$a$-require-ModifierLocalModifierNode$provide$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "In order to provide locals you must override providedValues: ModifierLocalMap"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
