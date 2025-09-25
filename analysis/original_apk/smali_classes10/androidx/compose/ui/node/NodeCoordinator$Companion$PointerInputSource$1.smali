.class public final Landroidx/compose/ui/node/NodeCoordinator$Companion$PointerInputSource$1;
.super Ljava/lang/Object;
.source "NodeCoordinator.kt"

# interfaces
.implements Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/NodeCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNodeCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NodeCoordinator.kt\nandroidx/compose/ui/node/NodeCoordinator$Companion$PointerInputSource$1\n+ 2 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 3 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 4 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 5 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 6 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n*L\n1#1,1329:1\n78#2:1330\n78#2:1331\n385#3,6:1332\n395#3,2:1339\n397#3,8:1344\n405#3,9:1355\n414#3,8:1367\n261#4:1338\n234#5,3:1341\n237#5,3:1364\n1208#6:1352\n1187#6,2:1353\n*S KotlinDebug\n*F\n+ 1 NodeCoordinator.kt\nandroidx/compose/ui/node/NodeCoordinator$Companion$PointerInputSource$1\n*L\n1212#1:1330\n1215#1:1331\n1215#1:1332,6\n1215#1:1339,2\n1215#1:1344,8\n1215#1:1355,9\n1215#1:1367,8\n1215#1:1338\n1215#1:1341,3\n1215#1:1364,3\n1215#1:1352\n1215#1:1353,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000?\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J:\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001b\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0005H\u0016\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0019"
    }
    d2 = {
        "androidx/compose/ui/node/NodeCoordinator$Companion$PointerInputSource$1",
        "Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;",
        "childHitTest",
        "",
        "layoutNode",
        "Landroidx/compose/ui/node/LayoutNode;",
        "pointerPosition",
        "Landroidx/compose/ui/geometry/Offset;",
        "hitTestResult",
        "Landroidx/compose/ui/node/HitTestResult;",
        "isTouchEvent",
        "",
        "isInLayer",
        "childHitTest-YqVAtuI",
        "(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/HitTestResult;ZZ)V",
        "entityType",
        "Landroidx/compose/ui/node/NodeKind;",
        "Landroidx/compose/ui/node/PointerInputModifierNode;",
        "entityType-OLwlOKw",
        "()I",
        "interceptOutOfBoundsChildEvents",
        "node",
        "Landroidx/compose/ui/Modifier$Node;",
        "shouldHitTestChildren",
        "parentLayoutNode",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childHitTest-YqVAtuI(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 0
    .param p1, "layoutNode"    # Landroidx/compose/ui/node/LayoutNode;
    .param p2, "pointerPosition"    # J
    .param p4, "hitTestResult"    # Landroidx/compose/ui/node/HitTestResult;
    .param p5, "isTouchEvent"    # Z
    .param p6, "isInLayer"    # Z

    .line 1229
    invoke-virtual/range {p1 .. p6}, Landroidx/compose/ui/node/LayoutNode;->hitTest-M_7yMNQ$ui_release(JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    return-void
.end method

.method public entityType-OLwlOKw()I
    .locals 2

    .line 1212
    const/4 v0, 0x0

    .line 1330
    .local v0, "$i$f$getPointerInput-OLwlOKw":I
    const/16 v1, 0x10

    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 1212
    .end local v0    # "$i$f$getPointerInput-OLwlOKw":I
    return v0
.end method

.method public interceptOutOfBoundsChildEvents(Landroidx/compose/ui/Modifier$Node;)Z
    .locals 17
    .param p1, "node"    # Landroidx/compose/ui/Modifier$Node;

    .line 1215
    const/4 v0, 0x0

    .line 1331
    .local v0, "$i$f$getPointerInput-OLwlOKw":I
    const/16 v1, 0x10

    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 1215
    .end local v0    # "$i$f$getPointerInput-OLwlOKw":I
    move-object/from16 v1, p1

    .local v0, "kind$iv":I
    .local v1, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v2, 0x0

    .line 1332
    .local v2, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v3, 0x0

    .line 1333
    .local v3, "stack$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "node$iv":Ljava/lang/Object;
    move-object v4, v1

    .line 1334
    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_d

    .line 1335
    instance-of v6, v4, Landroidx/compose/ui/node/PointerInputModifierNode;

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    .line 1336
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/node/PointerInputModifierNode;

    .local v5, "it":Landroidx/compose/ui/node/PointerInputModifierNode;
    const/4 v6, 0x0

    .line 1216
    .local v6, "$i$a$-dispatchForKind-6rFNWt0-NodeCoordinator$Companion$PointerInputSource$1$interceptOutOfBoundsChildEvents$1":I
    invoke-interface {v5}, Landroidx/compose/ui/node/PointerInputModifierNode;->interceptOutOfBoundsChildEvents()Z

    move-result v8

    if-eqz v8, :cond_0

    return v7

    .line 1217
    :cond_0
    nop

    .line 1336
    .end local v5    # "it":Landroidx/compose/ui/node/PointerInputModifierNode;
    .end local v6    # "$i$a$-dispatchForKind-6rFNWt0-NodeCoordinator$Companion$PointerInputSource$1$interceptOutOfBoundsChildEvents$1":I
    move/from16 v16, v0

    goto/16 :goto_6

    .line 1337
    :cond_1
    move-object v6, v4

    .local v6, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v8, 0x0

    .line 1338
    .local v8, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v0

    if-eqz v9, :cond_2

    move v6, v7

    goto :goto_1

    :cond_2
    move v6, v5

    .line 1337
    .end local v6    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v8    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_1
    if-eqz v6, :cond_b

    instance-of v6, v4, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v6, :cond_b

    .line 1339
    const/4 v6, 0x0

    .line 1340
    .local v6, "count$iv":I
    move-object v8, v4

    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .local v8, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v9, 0x0

    .line 1341
    .local v9, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v8}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 1342
    .local v10, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v10, :cond_a

    .line 1343
    move-object v11, v10

    .local v11, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 1344
    .local v12, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    move-object v13, v11

    .local v13, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 1338
    .local v14, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v15

    and-int/2addr v15, v0

    if-eqz v15, :cond_3

    move v13, v7

    goto :goto_3

    :cond_3
    move v13, v5

    .line 1344
    .end local v13    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_3
    if-eqz v13, :cond_8

    .line 1345
    add-int/lit8 v6, v6, 0x1

    .line 1346
    if-ne v6, v7, :cond_4

    .line 1347
    move-object v4, v11

    move/from16 v16, v0

    goto :goto_5

    .line 1351
    :cond_4
    if-nez v3, :cond_5

    const/4 v13, 0x0

    .line 1352
    .local v13, "$i$f$mutableVectorOf":I
    nop

    .line 1353
    const/16 v14, 0x10

    .local v14, "capacity$iv$iv$iv":I
    const/4 v15, 0x0

    .line 1354
    .local v15, "$i$f$MutableVector":I
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v16, v0

    .end local v0    # "kind$iv":I
    .local v16, "kind$iv":I
    new-array v0, v14, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v7, v0, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1352
    .end local v14    # "capacity$iv$iv$iv":I
    .end local v15    # "$i$f$MutableVector":I
    goto :goto_4

    .line 1351
    .end local v13    # "$i$f$mutableVectorOf":I
    .end local v16    # "kind$iv":I
    .restart local v0    # "kind$iv":I
    :cond_5
    move/from16 v16, v0

    .end local v0    # "kind$iv":I
    .restart local v16    # "kind$iv":I
    move-object v7, v3

    :goto_4
    move-object v3, v7

    .line 1355
    move-object v0, v4

    .line 1356
    .local v0, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_7

    .line 1357
    if-eqz v3, :cond_6

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1358
    :cond_6
    const/4 v4, 0x0

    .line 1360
    :cond_7
    if-eqz v3, :cond_9

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1344
    .end local v16    # "kind$iv":I
    .local v0, "kind$iv":I
    :cond_8
    move/from16 v16, v0

    .line 1363
    .end local v0    # "kind$iv":I
    .restart local v16    # "kind$iv":I
    :cond_9
    :goto_5
    nop

    .line 1343
    .end local v11    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 1364
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move/from16 v0, v16

    const/4 v7, 0x1

    goto :goto_2

    .line 1366
    .end local v16    # "kind$iv":I
    .restart local v0    # "kind$iv":I
    :cond_a
    move/from16 v16, v0

    .line 1367
    .end local v0    # "kind$iv":I
    .end local v8    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v9    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v10    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v16    # "kind$iv":I
    const/4 v0, 0x1

    if-ne v6, v0, :cond_c

    .line 1369
    move/from16 v0, v16

    goto/16 :goto_0

    .line 1337
    .end local v6    # "count$iv":I
    .end local v16    # "kind$iv":I
    .restart local v0    # "kind$iv":I
    :cond_b
    move/from16 v16, v0

    .line 1372
    .end local v0    # "kind$iv":I
    .restart local v16    # "kind$iv":I
    :cond_c
    :goto_6
    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    move/from16 v0, v16

    goto/16 :goto_0

    .line 1374
    .end local v16    # "kind$iv":I
    .restart local v0    # "kind$iv":I
    :cond_d
    nop

    .line 1218
    .end local v0    # "kind$iv":I
    .end local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v3    # "stack$iv":Ljava/lang/Object;
    .end local v4    # "node$iv":Ljava/lang/Object;
    return v5
.end method

.method public shouldHitTestChildren(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 1
    .param p1, "parentLayoutNode"    # Landroidx/compose/ui/node/LayoutNode;

    .line 1221
    const/4 v0, 0x1

    return v0
.end method
