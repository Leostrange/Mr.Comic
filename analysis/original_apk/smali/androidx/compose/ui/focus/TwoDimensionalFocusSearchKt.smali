.class public final Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;
.super Ljava/lang/Object;
.source "TwoDimensionalFocusSearch.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTwoDimensionalFocusSearch.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TwoDimensionalFocusSearch.kt\nandroidx/compose/ui/focus/TwoDimensionalFocusSearchKt\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 6 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 7 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 8 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n*L\n1#1,386:1\n1187#2,2:387\n1187#2,2:392\n1208#2:399\n1187#2,2:400\n1208#2:470\n1187#2,2:471\n359#3:389\n523#3:390\n48#3:409\n48#3:480\n460#3,11:536\n1#4:391\n1#4:397\n1#4:468\n90#5:394\n90#5:465\n276#6:395\n133#6:396\n134#6:398\n135#6,7:402\n142#6,9:410\n385#6,6:419\n395#6,2:426\n397#6,17:431\n414#6,8:451\n151#6,6:459\n276#6:466\n133#6:467\n134#6:469\n135#6,7:473\n142#6,9:481\n385#6,6:490\n395#6,2:497\n397#6,17:502\n414#6,8:522\n151#6,6:530\n261#7:425\n261#7:496\n234#8,3:428\n237#8,3:448\n234#8,3:499\n237#8,3:519\n*S KotlinDebug\n*F\n+ 1 TwoDimensionalFocusSearch.kt\nandroidx/compose/ui/focus/TwoDimensionalFocusSearchKt\n*L\n104#1:387,2\n160#1:392,2\n161#1:399\n161#1:400,2\n190#1:470\n190#1:471,2\n109#1:389\n109#1:390\n161#1:409\n190#1:480\n221#1:536,11\n161#1:397\n190#1:468\n161#1:394\n190#1:465\n161#1:395\n161#1:396\n161#1:398\n161#1:402,7\n161#1:410,9\n161#1:419,6\n161#1:426,2\n161#1:431,17\n161#1:451,8\n161#1:459,6\n190#1:466\n190#1:467\n190#1:469\n190#1:473,7\n190#1:481,9\n190#1:490,6\n190#1:497,2\n190#1:502,17\n190#1:522,8\n190#1:530,6\n161#1:425\n190#1:496\n161#1:428,3\n161#1:448,3\n190#1:499,3\n190#1:519,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\u001a2\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\rH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a2\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\rH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u000f\u001a\u000c\u0010\u0015\u001a\u00020\u0016*\u00020\u0016H\u0002\u001a\u000c\u0010\u0017\u001a\u00020\t*\u00020\tH\u0002\u001a\u001a\u0010\u0018\u001a\u00020\u0019*\u00020\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u001cH\u0002\u001a.\u0010\u001d\u001a\u0004\u0018\u00010\u0016*\u0008\u0012\u0004\u0012\u00020\u00160\u001c2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\rH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001f\u0010 \u001a2\u0010!\u001a\u00020\u0007*\u00020\u00162\u0006\u0010\u000c\u001a\u00020\r2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00070#H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008$\u0010%\u001a:\u0010&\u001a\u00020\u0007*\u00020\u00162\u0006\u0010\'\u001a\u00020\u00162\u0006\u0010\u000c\u001a\u00020\r2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00070#H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008(\u0010)\u001a:\u0010*\u001a\u00020\u0007*\u00020\u00162\u0006\u0010\'\u001a\u00020\u00162\u0006\u0010\u000c\u001a\u00020\r2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00070#H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008+\u0010)\u001a\u000c\u0010,\u001a\u00020\t*\u00020\tH\u0002\u001a4\u0010-\u001a\u0004\u0018\u00010\u0007*\u00020\u00162\u0006\u0010\u000c\u001a\u00020\r2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00070#H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008.\u0010/\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0003\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u00060"
    }
    d2 = {
        "InvalidFocusDirection",
        "",
        "getInvalidFocusDirection$annotations",
        "()V",
        "NoActiveChild",
        "getNoActiveChild$annotations",
        "beamBeats",
        "",
        "source",
        "Landroidx/compose/ui/geometry/Rect;",
        "rect1",
        "rect2",
        "direction",
        "Landroidx/compose/ui/focus/FocusDirection;",
        "beamBeats-I7lrPNg",
        "(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z",
        "isBetterCandidate",
        "proposedCandidate",
        "currentCandidate",
        "focusedRect",
        "isBetterCandidate-I7lrPNg",
        "activeNode",
        "Landroidx/compose/ui/focus/FocusTargetNode;",
        "bottomRight",
        "collectAccessibleChildren",
        "",
        "Landroidx/compose/ui/node/DelegatableNode;",
        "accessibleChildren",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "findBestCandidate",
        "focusRect",
        "findBestCandidate-4WY_MpI",
        "(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/geometry/Rect;I)Landroidx/compose/ui/focus/FocusTargetNode;",
        "findChildCorrespondingToFocusEnter",
        "onFound",
        "Lkotlin/Function1;",
        "findChildCorrespondingToFocusEnter--OM-vw8",
        "(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z",
        "generateAndSearchChildren",
        "focusedItem",
        "generateAndSearchChildren-4C6V_qg",
        "(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z",
        "searchChildren",
        "searchChildren-4C6V_qg",
        "topLeft",
        "twoDimensionalFocusSearch",
        "twoDimensionalFocusSearch--OM-vw8",
        "(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;",
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
.field private static final InvalidFocusDirection:Ljava/lang/String; = "This function should only be used for 2-D focus search"

.field private static final NoActiveChild:Ljava/lang/String; = "ActiveParent must have a focusedChild"


# direct methods
.method public static final synthetic access$searchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/focus/FocusTargetNode;
    .param p1, "focusedItem"    # Landroidx/compose/ui/focus/FocusTargetNode;
    .param p2, "direction"    # I
    .param p3, "onFound"    # Lkotlin/jvm/functions/Function1;

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->searchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    move-result v0

    return v0
.end method

.method private static final activeNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 2
    .param p0, "$this$activeNode"    # Landroidx/compose/ui/focus/FocusTargetNode;

    .line 383
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 384
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ActiveParent must have a focusedChild"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_2
    const/4 v0, 0x0

    .line 383
    .local v0, "$i$a$-check-TwoDimensionalFocusSearchKt$activeNode$1":I
    nop

    .end local v0    # "$i$a$-check-TwoDimensionalFocusSearchKt$activeNode$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Searching for active node in inactive hierarchy"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final beamBeats-I7lrPNg(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z
    .locals 4
    .param p0, "source"    # Landroidx/compose/ui/geometry/Rect;
    .param p1, "rect1"    # Landroidx/compose/ui/geometry/Rect;
    .param p2, "rect2"    # Landroidx/compose/ui/geometry/Rect;
    .param p3, "direction"    # I

    .line 358
    nop

    .line 360
    invoke-static {p2, p3, p0}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->beamBeats_I7lrPNg$inSourceBeam(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p1, p3, p0}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->beamBeats_I7lrPNg$inSourceBeam(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 364
    :cond_0
    invoke-static {p2, p3, p0}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->beamBeats_I7lrPNg$isInDirectionOfSearch(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_1

    .line 367
    :cond_1
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    move-result v0

    invoke-static {p3, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    move-result v0

    invoke-static {p3, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 373
    :cond_2
    invoke-static {p1, p3, p0}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->beamBeats_I7lrPNg$majorAxisDistance$6(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)F

    move-result v0

    invoke-static {p2, p3, p0}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->beamBeats_I7lrPNg$majorAxisDistanceToFarEdge(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    move v1, v2

    goto :goto_1

    .line 367
    :cond_3
    :goto_0
    move v1, v2

    .line 358
    :cond_4
    :goto_1
    return v1
.end method

.method private static final beamBeats_I7lrPNg$inSourceBeam(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)Z
    .locals 4
    .param p0, "$this$beamBeats_I7lrPNg_u24inSourceBeam"    # Landroidx/compose/ui/geometry/Rect;
    .param p1, "$direction"    # I
    .param p2, "$source"    # Landroidx/compose/ui/geometry/Rect;

    .line 316
    nop

    .line 317
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    goto :goto_2

    .line 318
    :cond_2
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getUp-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    .line 320
    :goto_2
    return v1

    .line 318
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 319
    const-string/jumbo v1, "This function should only be used for 2-D focus search"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final beamBeats_I7lrPNg$isInDirectionOfSearch(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)Z
    .locals 4
    .param p0, "$this$beamBeats_I7lrPNg_u24isInDirectionOfSearch"    # Landroidx/compose/ui/geometry/Rect;
    .param p1, "$direction"    # I
    .param p2, "$source"    # Landroidx/compose/ui/geometry/Rect;

    .line 323
    nop

    .line 324
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    .line 325
    :cond_1
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 326
    :cond_3
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getUp-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 327
    :cond_5
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_6

    goto :goto_0

    :cond_6
    move v1, v2

    .line 329
    :goto_0
    return v1

    .line 327
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 328
    const-string/jumbo v1, "This function should only be used for 2-D focus search"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final beamBeats_I7lrPNg$majorAxisDistance$6(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)F
    .locals 2
    .param p0, "$this$beamBeats_I7lrPNg_u24majorAxisDistance_u246"    # Landroidx/compose/ui/geometry/Rect;
    .param p1, "$direction"    # I
    .param p2, "$source"    # Landroidx/compose/ui/geometry/Rect;

    .line 334
    nop

    .line 335
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 336
    :cond_0
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 337
    :cond_1
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getUp-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 338
    :cond_2
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v1

    sub-float/2addr v0, v1

    .line 334
    :goto_0
    nop

    .line 341
    .local v0, "majorAxisDistance":F
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1

    .line 338
    .end local v0    # "majorAxisDistance":F
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 339
    const-string/jumbo v1, "This function should only be used for 2-D focus search"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final beamBeats_I7lrPNg$majorAxisDistanceToFarEdge(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)F
    .locals 2
    .param p0, "$this$beamBeats_I7lrPNg_u24majorAxisDistanceToFarEdge"    # Landroidx/compose/ui/geometry/Rect;
    .param p1, "$direction"    # I
    .param p2, "$source"    # Landroidx/compose/ui/geometry/Rect;

    .line 348
    nop

    .line 349
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 350
    :cond_0
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 351
    :cond_1
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getUp-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 352
    :cond_2
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v1

    sub-float/2addr v0, v1

    .line 348
    :goto_0
    nop

    .line 355
    .local v0, "majorAxisDistance":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1

    .line 352
    .end local v0    # "majorAxisDistance":F
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 353
    const-string/jumbo v1, "This function should only be used for 2-D focus search"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final bottomRight(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;
    .locals 5
    .param p0, "$this$bottomRight"    # Landroidx/compose/ui/geometry/Rect;

    .line 378
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v3

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v0
.end method

.method private static final collectAccessibleChildren(Landroidx/compose/ui/node/DelegatableNode;Landroidx/compose/runtime/collection/MutableVector;)V
    .locals 29
    .param p0, "$this$collectAccessibleChildren"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "accessibleChildren"    # Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/focus/FocusTargetNode;",
            ">;)V"
        }
    .end annotation

    .line 190
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 465
    .local v1, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v2, 0x400

    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 190
    .end local v1    # "$i$f$getFocusTarget-OLwlOKw":I
    move-object/from16 v2, p0

    .local v1, "type$iv":I
    .local v2, "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v3, 0x0

    .line 466
    .local v3, "$i$f$visitChildren-6rFNWt0":I
    move v4, v1

    .local v4, "mask$iv$iv":I
    move-object v5, v2

    .local v5, "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v6, 0x0

    .line 467
    .local v6, "$i$f$visitChildren":I
    invoke-interface {v5}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 469
    const/4 v7, 0x0

    .line 470
    .local v7, "$i$f$mutableVectorOf":I
    nop

    .line 471
    const/16 v8, 0x10

    .local v8, "capacity$iv$iv$iv$iv":I
    const/4 v9, 0x0

    .line 472
    .local v9, "$i$f$MutableVector":I
    new-instance v10, Landroidx/compose/runtime/collection/MutableVector;

    new-array v11, v8, [Landroidx/compose/ui/Modifier$Node;

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 470
    .end local v8    # "capacity$iv$iv$iv$iv":I
    .end local v9    # "$i$f$MutableVector":I
    nop

    .line 469
    .end local v7    # "$i$f$mutableVectorOf":I
    move-object v7, v10

    .line 473
    .local v7, "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface {v5}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 474
    .local v8, "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-nez v8, :cond_0

    .line 475
    invoke-interface {v5}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    invoke-static {v7, v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    .line 477
    :cond_0
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 478
    :goto_0
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 479
    move-object v9, v7

    .local v9, "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v10, 0x0

    .line 480
    .local v10, "$i$f$getLastIndex":I
    invoke-virtual {v9}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v11

    const/4 v13, 0x1

    sub-int/2addr v11, v13

    .line 479
    .end local v9    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v10    # "$i$f$getLastIndex":I
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/Modifier$Node;

    .line 481
    .local v9, "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, v4

    if-nez v10, :cond_1

    .line 482
    invoke-static {v7, v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 484
    goto :goto_0

    .line 486
    :cond_1
    move-object v10, v9

    .line 487
    .local v10, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_1
    if-eqz v10, :cond_12

    .line 488
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v4

    if-eqz v11, :cond_11

    .line 489
    move-object v11, v10

    .local v11, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 466
    .local v14, "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2$iv":I
    move-object v15, v11

    .local v15, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v16, 0x0

    .line 490
    .local v16, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v17, 0x0

    .line 491
    .local v17, "stack$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .local v18, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v15

    move-object/from16 v12, v18

    .line 492
    .end local v18    # "node$iv$iv":Ljava/lang/Object;
    .local v12, "node$iv$iv":Ljava/lang/Object;
    :goto_2
    if-eqz v12, :cond_10

    .line 493
    instance-of v13, v12, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v13, :cond_4

    .line 494
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v13, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/16 v19, 0x0

    .line 192
    .local v19, "$i$a$-visitChildren-6rFNWt0-TwoDimensionalFocusSearchKt$collectAccessibleChildren$1":I
    invoke-virtual {v13}, Landroidx/compose/ui/focus/FocusTargetNode;->isAttached()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 194
    invoke-virtual {v13}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroidx/compose/ui/focus/FocusProperties;->getCanFocus()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 195
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-object/from16 v20, v2

    goto :goto_3

    .line 197
    :cond_2
    move-object/from16 v20, v2

    .end local v2    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v20, "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    move-object v2, v13

    check-cast v2, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v2, v0}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->collectAccessibleChildren(Landroidx/compose/ui/node/DelegatableNode;Landroidx/compose/runtime/collection/MutableVector;)V

    .line 199
    :goto_3
    goto :goto_4

    .line 192
    .end local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_3
    move-object/from16 v20, v2

    .line 494
    .end local v2    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v13    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v19    # "$i$a$-visitChildren-6rFNWt0-TwoDimensionalFocusSearchKt$collectAccessibleChildren$1":I
    .restart local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_4
    move/from16 v26, v1

    const/4 v0, 0x1

    goto/16 :goto_b

    .line 495
    .end local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_4
    move-object/from16 v20, v2

    .end local v2    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    move-object v2, v12

    .local v2, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 496
    .local v13, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v19

    and-int v19, v19, v1

    if-eqz v19, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    .line 495
    .end local v2    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_5
    if-eqz v2, :cond_e

    instance-of v2, v12, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_e

    .line 497
    const/4 v2, 0x0

    .line 498
    .local v2, "count$iv$iv":I
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/node/DelegatingNode;

    .local v13, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v19, 0x0

    .line 499
    .local v19, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v13}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    .line 500
    .local v21, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    if-eqz v21, :cond_d

    .line 501
    move-object/from16 v22, v21

    .local v22, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 502
    .local v23, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move-object/from16 v24, v22

    .local v24, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 496
    .local v25, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v26

    and-int v26, v26, v1

    if-eqz v26, :cond_6

    const/16 v24, 0x1

    goto :goto_7

    :cond_6
    const/16 v24, 0x0

    .line 502
    .end local v24    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_7
    if-eqz v24, :cond_c

    .line 503
    add-int/lit8 v2, v2, 0x1

    .line 504
    const/4 v0, 0x1

    if-ne v2, v0, :cond_7

    .line 505
    move-object/from16 v12, v22

    move/from16 v26, v1

    move-object/from16 v0, v22

    goto :goto_a

    .line 509
    :cond_7
    if-nez v17, :cond_8

    const/4 v0, 0x0

    .line 470
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 471
    move/from16 v24, v0

    .end local v0    # "$i$f$mutableVectorOf":I
    .local v24, "$i$f$mutableVectorOf":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v25, 0x0

    .line 472
    .local v25, "$i$f$MutableVector":I
    move/from16 v26, v1

    .end local v1    # "type$iv":I
    .local v26, "type$iv":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v27, v2

    .end local v2    # "count$iv$iv":I
    .local v27, "count$iv$iv":I
    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v28, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v28, "capacity$iv$iv$iv$iv":I
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 470
    .end local v25    # "$i$f$MutableVector":I
    .end local v28    # "capacity$iv$iv$iv$iv":I
    goto :goto_8

    .line 509
    .end local v24    # "$i$f$mutableVectorOf":I
    .end local v26    # "type$iv":I
    .end local v27    # "count$iv$iv":I
    .restart local v1    # "type$iv":I
    .restart local v2    # "count$iv$iv":I
    :cond_8
    move/from16 v26, v1

    move/from16 v27, v2

    const/4 v0, 0x0

    .end local v1    # "type$iv":I
    .end local v2    # "count$iv$iv":I
    .restart local v26    # "type$iv":I
    .restart local v27    # "count$iv$iv":I
    move-object/from16 v1, v17

    :goto_8
    nop

    .line 510
    .end local v17    # "stack$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv":Ljava/lang/Object;
    move-object v2, v12

    .line 511
    .local v2, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_a

    .line 512
    if-eqz v1, :cond_9

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 513
    :cond_9
    const/4 v12, 0x0

    .line 515
    :cond_a
    if-eqz v1, :cond_b

    move-object/from16 v0, v22

    .end local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_b
    move-object/from16 v0, v22

    .line 518
    .end local v2    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_9
    move-object/from16 v17, v1

    move/from16 v2, v27

    goto :goto_a

    .line 502
    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "type$iv":I
    .end local v27    # "count$iv$iv":I
    .local v1, "type$iv":I
    .local v2, "count$iv$iv":I
    .restart local v17    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_c
    move/from16 v26, v1

    move-object/from16 v0, v22

    .line 518
    .end local v1    # "type$iv":I
    .end local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "type$iv":I
    :goto_a
    nop

    .line 501
    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 519
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    move-object/from16 v0, p1

    move/from16 v1, v26

    goto :goto_6

    .line 521
    .end local v26    # "type$iv":I
    .restart local v1    # "type$iv":I
    :cond_d
    move/from16 v26, v1

    .line 522
    .end local v1    # "type$iv":I
    .end local v13    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v19    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v21    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "type$iv":I
    const/4 v0, 0x1

    if-ne v2, v0, :cond_f

    .line 524
    move v13, v0

    move-object/from16 v2, v20

    move/from16 v1, v26

    move-object/from16 v0, p1

    goto/16 :goto_2

    .line 495
    .end local v2    # "count$iv$iv":I
    .end local v26    # "type$iv":I
    .restart local v1    # "type$iv":I
    :cond_e
    move/from16 v26, v1

    const/4 v0, 0x1

    .line 527
    .end local v1    # "type$iv":I
    .restart local v26    # "type$iv":I
    :cond_f
    :goto_b
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    move v13, v0

    move-object/from16 v2, v20

    move/from16 v1, v26

    move-object/from16 v0, p1

    goto/16 :goto_2

    .line 529
    .end local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v26    # "type$iv":I
    .restart local v1    # "type$iv":I
    .local v2, "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_10
    move/from16 v26, v1

    move-object/from16 v20, v2

    .line 466
    .end local v1    # "type$iv":I
    .end local v2    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v12    # "node$iv$iv":Ljava/lang/Object;
    .end local v15    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v17    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v26    # "type$iv":I
    nop

    .line 489
    .end local v11    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2$iv":I
    nop

    .line 530
    move-object/from16 v0, p1

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 532
    .end local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v26    # "type$iv":I
    .restart local v1    # "type$iv":I
    .restart local v2    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_11
    move/from16 v26, v1

    move-object/from16 v20, v2

    move v0, v13

    .end local v1    # "type$iv":I
    .end local v2    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v26    # "type$iv":I
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    const/4 v12, 0x0

    move-object/from16 v0, p1

    goto/16 :goto_1

    .line 487
    .end local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v26    # "type$iv":I
    .restart local v1    # "type$iv":I
    .restart local v2    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_12
    move/from16 v26, v1

    move-object/from16 v20, v2

    .end local v1    # "type$iv":I
    .end local v2    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v26    # "type$iv":I
    move-object/from16 v0, p1

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 535
    .end local v9    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v26    # "type$iv":I
    .restart local v1    # "type$iv":I
    .restart local v2    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_13
    nop

    .line 466
    .end local v4    # "mask$iv$iv":I
    .end local v5    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v6    # "$i$f$visitChildren":I
    .end local v7    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v8    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    nop

    .line 200
    .end local v1    # "type$iv":I
    .end local v2    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$i$f$visitChildren-6rFNWt0":I
    return-void

    .line 468
    .restart local v1    # "type$iv":I
    .restart local v2    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$i$f$visitChildren-6rFNWt0":I
    .restart local v4    # "mask$iv$iv":I
    .restart local v5    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v6    # "$i$f$visitChildren":I
    :cond_14
    move/from16 v26, v1

    .end local v1    # "type$iv":I
    .restart local v26    # "type$iv":I
    const/4 v0, 0x0

    .line 467
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

.method private static final findBestCandidate-4WY_MpI(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/geometry/Rect;I)Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 11
    .param p0, "$this$findBestCandidate_u2d4WY_MpI"    # Landroidx/compose/runtime/collection/MutableVector;
    .param p1, "focusRect"    # Landroidx/compose/ui/geometry/Rect;
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/focus/FocusTargetNode;",
            ">;",
            "Landroidx/compose/ui/geometry/Rect;",
            "I)",
            "Landroidx/compose/ui/focus/FocusTargetNode;"
        }
    .end annotation

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "bestCandidate":Ljava/lang/Object;
    sget-object v1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    move-result v1

    invoke-static {p2, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    move-result v1

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    goto :goto_0

    .line 214
    :cond_0
    sget-object v1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    move-result v1

    invoke-static {p2, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    move-result v1

    int-to-float v3, v3

    add-float/2addr v1, v3

    neg-float v1, v1

    invoke-virtual {p1, v1, v2}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    goto :goto_0

    .line 215
    :cond_1
    sget-object v1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getUp-dhqQ-8s()I

    move-result v1

    invoke-static {p2, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    move-result v1

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {p1, v2, v1}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    goto :goto_0

    .line 216
    :cond_2
    sget-object v1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    move-result v1

    invoke-static {p2, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    move-result v1

    int-to-float v3, v3

    add-float/2addr v1, v3

    neg-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 212
    :goto_0
    move-object v0, v1

    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, "searchResult":Ljava/lang/Object;
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v3, 0x0

    .line 536
    .local v3, "$i$f$forEach":I
    nop

    .line 537
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v4

    .line 538
    .local v4, "size$iv":I
    if-lez v4, :cond_5

    .line 539
    const/4 v5, 0x0

    .line 540
    .local v5, "i$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v6

    .line 542
    .local v6, "content$iv":[Ljava/lang/Object;
    :cond_3
    aget-object v7, v6, v5

    check-cast v7, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v7, "candidateNode":Landroidx/compose/ui/focus/FocusTargetNode;
    const/4 v8, 0x0

    .line 222
    .local v8, "$i$a$-forEach-TwoDimensionalFocusSearchKt$findBestCandidate$1":I
    invoke-static {v7}, Landroidx/compose/ui/focus/FocusTraversalKt;->isEligibleForFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 223
    invoke-static {v7}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v9

    .line 224
    .local v9, "candidateRect":Landroidx/compose/ui/geometry/Rect;
    invoke-static {v9, v0, p1, p2}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->isBetterCandidate-I7lrPNg(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 225
    move-object v0, v9

    .line 226
    move-object v1, v7

    .line 229
    .end local v9    # "candidateRect":Landroidx/compose/ui/geometry/Rect;
    :cond_4
    nop

    .line 542
    .end local v7    # "candidateNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v8    # "$i$a$-forEach-TwoDimensionalFocusSearchKt$findBestCandidate$1":I
    nop

    .line 543
    add-int/lit8 v5, v5, 0x1

    .line 544
    if-lt v5, v4, :cond_3

    .line 546
    .end local v5    # "i$iv":I
    .end local v6    # "content$iv":[Ljava/lang/Object;
    :cond_5
    nop

    .line 230
    .end local v2    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "$i$f$forEach":I
    .end local v4    # "size$iv":I
    return-object v1

    .line 216
    .end local v1    # "searchResult":Ljava/lang/Object;
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 217
    const-string/jumbo v2, "This function should only be used for 2-D focus search"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final findChildCorrespondingToFocusEnter--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z
    .locals 8
    .param p0, "$this$findChildCorrespondingToFocusEnter_u2d_u2dOM_u2dvw8"    # Landroidx/compose/ui/focus/FocusTargetNode;
    .param p1, "direction"    # I
    .param p2, "onFound"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/focus/FocusTargetNode;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusTargetNode;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 104
    nop

    .line 387
    const/16 v0, 0x10

    .local v0, "capacity$iv":I
    const/4 v1, 0x0

    .line 388
    .local v1, "$i$f$MutableVector":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    new-array v3, v0, [Landroidx/compose/ui/focus/FocusTargetNode;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 104
    .end local v0    # "capacity$iv":I
    .end local v1    # "$i$f$MutableVector":I
    move-object v0, v2

    .line 105
    .local v0, "focusableChildren":Landroidx/compose/runtime/collection/MutableVector;
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v1, v0}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->collectAccessibleChildren(Landroidx/compose/ui/node/DelegatableNode;Landroidx/compose/runtime/collection/MutableVector;)V

    .line 108
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    .line 109
    move-object v1, v0

    .local v1, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v2, 0x0

    .line 389
    .local v2, "$i$f$firstOrNull":I
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .local v3, "index$iv$iv":I
    move-object v5, v1

    .local v5, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v6, 0x0

    .line 390
    .local v6, "$i$f$get":I
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v7

    aget-object v7, v7, v3

    move-object v3, v7

    .line 389
    .end local v3    # "index$iv$iv":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v6    # "$i$f$get":I
    :goto_0
    nop

    .line 109
    .end local v1    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v2    # "$i$f$firstOrNull":I
    check-cast v3, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v3, :cond_1

    move-object v1, v3

    .line 391
    .local v1, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/4 v2, 0x0

    .line 109
    .local v2, "$i$a$-let-TwoDimensionalFocusSearchKt$findChildCorrespondingToFocusEnter$1":I
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .end local v1    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v2    # "$i$a$-let-TwoDimensionalFocusSearchKt$findChildCorrespondingToFocusEnter$1":I
    :cond_1
    return v4

    .line 115
    :cond_2
    nop

    .line 117
    nop

    .line 118
    sget-object v1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getEnter-dhqQ-8s()I

    move-result v1

    .line 117
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    sget-object v1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    move-result v1

    goto :goto_1

    .line 119
    :cond_3
    move v1, p1

    .line 115
    :goto_1
    nop

    .line 124
    .local v1, "requestedDirection":I
    nop

    .line 125
    sget-object v3, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    move-result v3

    invoke-static {v1, v3}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    sget-object v3, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    move-result v3

    invoke-static {v1, v3}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v3

    :goto_2
    if-eqz v3, :cond_5

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->topLeft(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    goto :goto_4

    .line 126
    :cond_5
    sget-object v3, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    move-result v3

    invoke-static {v1, v3}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    sget-object v2, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getUp-dhqQ-8s()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v2

    :goto_3
    if-eqz v2, :cond_8

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->bottomRight(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    .line 124
    :goto_4
    nop

    .line 129
    .local v2, "initialFocusRect":Landroidx/compose/ui/geometry/Rect;
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->findBestCandidate-4WY_MpI(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/geometry/Rect;I)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v3

    .line 130
    .local v3, "nextCandidate":Landroidx/compose/ui/focus/FocusTargetNode;
    if-eqz v3, :cond_7

    move-object v4, v3

    .line 391
    .local v4, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/4 v5, 0x0

    .line 130
    .local v5, "$i$a$-let-TwoDimensionalFocusSearchKt$findChildCorrespondingToFocusEnter$2":I
    invoke-interface {p2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .end local v4    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v5    # "$i$a$-let-TwoDimensionalFocusSearchKt$findChildCorrespondingToFocusEnter$2":I
    :cond_7
    return v4

    .line 126
    .end local v2    # "initialFocusRect":Landroidx/compose/ui/geometry/Rect;
    .end local v3    # "nextCandidate":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 127
    const-string/jumbo v3, "This function should only be used for 2-D focus search"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static final generateAndSearchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z
    .locals 1
    .param p0, "$this$generateAndSearchChildren_u2d4C6V_qg"    # Landroidx/compose/ui/focus/FocusTargetNode;
    .param p1, "focusedItem"    # Landroidx/compose/ui/focus/FocusTargetNode;
    .param p2, "direction"    # I
    .param p3, "onFound"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/focus/FocusTargetNode;",
            "Landroidx/compose/ui/focus/FocusTargetNode;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusTargetNode;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 141
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->searchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x1

    return v0

    .line 146
    :cond_0
    new-instance v0, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt$generateAndSearchChildren$1;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt$generateAndSearchChildren$1;-><init>(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p2, v0}, Landroidx/compose/ui/focus/BeyondBoundsLayoutKt;->searchBeyondBounds--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 152
    :cond_1
    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0
.end method

.method private static synthetic getInvalidFocusDirection$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getNoActiveChild$annotations()V
    .locals 0

    return-void
.end method

.method private static final isBetterCandidate-I7lrPNg(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z
    .locals 7
    .param p0, "proposedCandidate"    # Landroidx/compose/ui/geometry/Rect;
    .param p1, "currentCandidate"    # Landroidx/compose/ui/geometry/Rect;
    .param p2, "focusedRect"    # Landroidx/compose/ui/geometry/Rect;
    .param p3, "direction"    # I

    .line 286
    nop

    .line 288
    invoke-static {p0, p3, p2}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->isBetterCandidate_I7lrPNg$isCandidate(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    invoke-static {p1, p3, p2}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->isBetterCandidate_I7lrPNg$isCandidate(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    .line 294
    :cond_1
    invoke-static {p2, p0, p1, p3}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->beamBeats-I7lrPNg(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    goto :goto_0

    .line 297
    :cond_2
    invoke-static {p2, p1, p0, p3}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->beamBeats-I7lrPNg(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 299
    :cond_3
    invoke-static {p3, p2, p0}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->isBetterCandidate_I7lrPNg$weightedDistance(ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)J

    move-result-wide v3

    invoke-static {p3, p2, p1}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->isBetterCandidate_I7lrPNg$weightedDistance(ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    move v1, v2

    .line 286
    :cond_4
    :goto_0
    return v1
.end method

.method private static final isBetterCandidate_I7lrPNg$isCandidate(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)Z
    .locals 4
    .param p0, "$this$isBetterCandidate_I7lrPNg_u24isCandidate"    # Landroidx/compose/ui/geometry/Rect;
    .param p1, "$direction"    # I
    .param p2, "$focusedRect"    # Landroidx/compose/ui/geometry/Rect;

    .line 247
    nop

    .line 248
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    move v1, v2

    goto/16 :goto_0

    .line 249
    :cond_2
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v3

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_3

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_4

    :cond_3
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 250
    :cond_5
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getUp-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_6

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_7

    :cond_6
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_0

    .line 251
    :cond_8
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v3

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_9

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_a

    :cond_9
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_a

    goto :goto_0

    :cond_a
    move v1, v2

    .line 253
    :goto_0
    return v1

    .line 251
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 252
    const-string/jumbo v1, "This function should only be used for 2-D focus search"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final isBetterCandidate_I7lrPNg$majorAxisDistance(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)F
    .locals 2
    .param p0, "$this$isBetterCandidate_I7lrPNg_u24majorAxisDistance"    # Landroidx/compose/ui/geometry/Rect;
    .param p1, "$direction"    # I
    .param p2, "$focusedRect"    # Landroidx/compose/ui/geometry/Rect;

    .line 258
    nop

    .line 259
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 260
    :cond_0
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 261
    :cond_1
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getUp-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 262
    :cond_2
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v1

    sub-float/2addr v0, v1

    .line 258
    :goto_0
    nop

    .line 265
    .local v0, "majorAxisDistance":F
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1

    .line 262
    .end local v0    # "majorAxisDistance":F
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 263
    const-string/jumbo v1, "This function should only be used for 2-D focus search"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final isBetterCandidate_I7lrPNg$minorAxisDistance(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)F
    .locals 4
    .param p0, "$this$isBetterCandidate_I7lrPNg_u24minorAxisDistance"    # Landroidx/compose/ui/geometry/Rect;
    .param p1, "$direction"    # I
    .param p2, "$focusedRect"    # Landroidx/compose/ui/geometry/Rect;

    .line 270
    nop

    .line 272
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    :goto_0
    const/4 v2, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    move-result v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    move-result v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    sub-float/2addr v0, v1

    goto :goto_2

    .line 274
    :cond_1
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getUp-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    move-result v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    move-result v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    sub-float/2addr v0, v1

    .line 276
    :goto_2
    return v0

    .line 274
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 275
    const-string/jumbo v1, "This function should only be used for 2-D focus search"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final isBetterCandidate_I7lrPNg$weightedDistance(ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)J
    .locals 8
    .param p0, "$direction"    # I
    .param p1, "$focusedRect"    # Landroidx/compose/ui/geometry/Rect;
    .param p2, "candidate"    # Landroidx/compose/ui/geometry/Rect;

    .line 281
    invoke-static {p2, p0, p1}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->isBetterCandidate_I7lrPNg$majorAxisDistance(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-long v0, v0

    .line 282
    .local v0, "majorAxisDistance":J
    invoke-static {p2, p0, p1}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->isBetterCandidate_I7lrPNg$minorAxisDistance(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-long v2, v2

    .line 283
    .local v2, "minorAxisDistance":J
    const/16 v4, 0xd

    int-to-long v4, v4

    mul-long/2addr v4, v0

    mul-long/2addr v4, v0

    mul-long v6, v2, v2

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private static final searchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z
    .locals 34
    .param p0, "$this$searchChildren_u2d4C6V_qg"    # Landroidx/compose/ui/focus/FocusTargetNode;
    .param p1, "focusedItem"    # Landroidx/compose/ui/focus/FocusTargetNode;
    .param p2, "direction"    # I
    .param p3, "onFound"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/focus/FocusTargetNode;",
            "Landroidx/compose/ui/focus/FocusTargetNode;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusTargetNode;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 160
    move/from16 v0, p2

    move-object/from16 v1, p3

    .line 392
    const/16 v2, 0x10

    .local v2, "capacity$iv":I
    const/4 v3, 0x0

    .line 393
    .local v3, "$i$f$MutableVector":I
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    new-array v5, v2, [Landroidx/compose/ui/focus/FocusTargetNode;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 160
    .end local v2    # "capacity$iv":I
    .end local v3    # "$i$f$MutableVector":I
    move-object v2, v4

    .local v2, "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v3, 0x0

    .line 161
    .local v3, "$i$a$-apply-TwoDimensionalFocusSearchKt$searchChildren$children$1":I
    move-object/from16 v5, p0

    check-cast v5, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v7, 0x0

    .line 394
    .local v7, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v8, 0x400

    invoke-static {v8}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v7

    .line 161
    .end local v7    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .local v5, "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v7, "type$iv":I
    const/4 v8, 0x0

    .line 395
    .local v8, "$i$f$visitChildren-6rFNWt0":I
    move v9, v7

    .local v9, "mask$iv$iv":I
    move-object v10, v5

    .local v10, "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v11, 0x0

    .line 396
    .local v11, "$i$f$visitChildren":I
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v12

    if-eqz v12, :cond_16

    .line 398
    const/4 v12, 0x0

    .line 399
    .local v12, "$i$f$mutableVectorOf":I
    nop

    .line 400
    const/16 v13, 0x10

    .local v13, "capacity$iv$iv$iv$iv":I
    const/4 v14, 0x0

    .line 401
    .local v14, "$i$f$MutableVector":I
    new-instance v15, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v16, v3

    .end local v3    # "$i$a$-apply-TwoDimensionalFocusSearchKt$searchChildren$children$1":I
    .local v16, "$i$a$-apply-TwoDimensionalFocusSearchKt$searchChildren$children$1":I
    new-array v3, v13, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v15, v3, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 399
    .end local v13    # "capacity$iv$iv$iv$iv":I
    .end local v14    # "$i$f$MutableVector":I
    nop

    .line 398
    .end local v12    # "$i$f$mutableVectorOf":I
    move-object v3, v15

    .line 402
    .local v3, "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    .line 403
    .local v12, "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-nez v12, :cond_0

    .line 404
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    invoke-static {v3, v13}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    .line 406
    :cond_0
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 407
    :goto_0
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_11

    .line 408
    move-object v13, v3

    .local v13, "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v15, 0x0

    .line 409
    .local v15, "$i$f$getLastIndex":I
    invoke-virtual {v13}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v17

    add-int/lit8 v13, v17, -0x1

    .line 408
    .end local v13    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v15    # "$i$f$getLastIndex":I
    invoke-virtual {v3, v13}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/Modifier$Node;

    .line 410
    .local v13, "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v15

    and-int/2addr v15, v9

    if-nez v15, :cond_1

    .line 411
    invoke-static {v3, v13}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 413
    goto :goto_0

    .line 415
    :cond_1
    move-object v15, v13

    .line 416
    .local v15, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_1
    if-eqz v15, :cond_10

    .line 417
    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v17

    and-int v17, v17, v9

    if-eqz v17, :cond_f

    .line 418
    move-object/from16 v17, v15

    .local v17, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 395
    .local v18, "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2$iv":I
    move-object/from16 v19, v17

    .local v19, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 419
    .local v20, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v21, 0x0

    .line 420
    .local v21, "stack$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .local v22, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v22, v19

    move-object/from16 v6, v22

    .line 421
    .end local v22    # "node$iv$iv":Ljava/lang/Object;
    .local v6, "node$iv$iv":Ljava/lang/Object;
    :goto_2
    if-eqz v6, :cond_e

    .line 422
    instance-of v14, v6, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v14, :cond_2

    .line 423
    move-object v14, v6

    check-cast v14, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v14, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/16 v23, 0x0

    .line 162
    .local v23, "$i$a$-visitChildren-6rFNWt0-TwoDimensionalFocusSearchKt$searchChildren$children$1$1":I
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 163
    nop

    .line 423
    .end local v14    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v23    # "$i$a$-visitChildren-6rFNWt0-TwoDimensionalFocusSearchKt$searchChildren$children$1$1":I
    move-object/from16 v28, v2

    move-object/from16 v31, v3

    move-object/from16 v32, v5

    goto/16 :goto_9

    .line 424
    :cond_2
    move-object v14, v6

    .local v14, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 425
    .local v23, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v14}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v24

    and-int v24, v24, v7

    if-eqz v24, :cond_3

    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    .line 424
    .end local v14    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_3
    if-eqz v14, :cond_c

    instance-of v14, v6, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v14, :cond_c

    .line 426
    const/4 v14, 0x0

    .line 427
    .local v14, "count$iv$iv":I
    move-object/from16 v23, v6

    check-cast v23, Landroidx/compose/ui/node/DelegatingNode;

    .local v23, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v24, 0x0

    .line 428
    .local v24, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v25

    .line 429
    .local v25, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v25, :cond_b

    .line 430
    move-object/from16 v26, v25

    .local v26, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v27, 0x0

    .line 431
    .local v27, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move-object/from16 v28, v26

    .local v28, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v29, 0x0

    .line 425
    .local v29, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v30

    and-int v30, v30, v7

    if-eqz v30, :cond_4

    const/16 v28, 0x1

    goto :goto_5

    :cond_4
    const/16 v28, 0x0

    .line 431
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v29    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_5
    if-eqz v28, :cond_a

    .line 432
    add-int/lit8 v14, v14, 0x1

    .line 433
    move-object/from16 v28, v2

    const/4 v2, 0x1

    .end local v2    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .local v28, "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    if-ne v14, v2, :cond_5

    .line 434
    move-object/from16 v6, v26

    move-object/from16 v31, v3

    move-object/from16 v32, v5

    move-object/from16 v5, v26

    goto :goto_8

    .line 438
    :cond_5
    if-nez v21, :cond_6

    const/4 v2, 0x0

    .line 399
    .local v2, "$i$f$mutableVectorOf":I
    nop

    .line 400
    move/from16 v29, v2

    .end local v2    # "$i$f$mutableVectorOf":I
    .local v29, "$i$f$mutableVectorOf":I
    const/16 v2, 0x10

    .local v2, "capacity$iv$iv$iv$iv":I
    const/16 v30, 0x0

    .line 401
    .local v30, "$i$f$MutableVector":I
    move-object/from16 v31, v3

    .end local v3    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .local v31, "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v32, v5

    .end local v5    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v32, "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    new-array v5, v2, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v33, v2

    const/4 v2, 0x0

    .end local v2    # "capacity$iv$iv$iv$iv":I
    .local v33, "capacity$iv$iv$iv$iv":I
    invoke-direct {v3, v5, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 399
    .end local v30    # "$i$f$MutableVector":I
    .end local v33    # "capacity$iv$iv$iv$iv":I
    goto :goto_6

    .line 438
    .end local v29    # "$i$f$mutableVectorOf":I
    .end local v31    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v32    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v5    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_6
    move-object/from16 v31, v3

    move-object/from16 v32, v5

    .end local v3    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v5    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v31    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v32    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    move-object/from16 v3, v21

    :goto_6
    move-object v2, v3

    .line 439
    .end local v21    # "stack$iv$iv":Ljava/lang/Object;
    .local v2, "stack$iv$iv":Ljava/lang/Object;
    move-object v3, v6

    .line 440
    .local v3, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v3, :cond_8

    .line 441
    if-eqz v2, :cond_7

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_7
    const/4 v5, 0x0

    move-object v6, v5

    .line 444
    :cond_8
    if-eqz v2, :cond_9

    move-object/from16 v5, v26

    .end local v26    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v5, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .end local v5    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v5, v26

    .line 447
    .end local v3    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v5    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    move-object/from16 v21, v2

    goto :goto_8

    .line 431
    .end local v28    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .end local v31    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v32    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v2, "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .local v3, "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .local v5, "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v21    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v26    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move-object/from16 v28, v2

    move-object/from16 v31, v3

    move-object/from16 v32, v5

    move-object/from16 v5, v26

    .line 447
    .end local v2    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v26    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v5, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v28    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v31    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v32    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_8
    nop

    .line 430
    .end local v5    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 448
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v25

    move-object/from16 v2, v28

    move-object/from16 v3, v31

    move-object/from16 v5, v32

    goto :goto_4

    .line 450
    .end local v28    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .end local v31    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v32    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v3    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .local v5, "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_b
    move-object/from16 v28, v2

    move-object/from16 v31, v3

    move-object/from16 v32, v5

    .line 451
    .end local v2    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v5    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v23    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v24    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v25    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v28    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v31    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v32    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v2, 0x1

    if-ne v14, v2, :cond_d

    .line 453
    move-object/from16 v2, v28

    move-object/from16 v3, v31

    move-object/from16 v5, v32

    const/4 v14, 0x1

    goto/16 :goto_2

    .line 424
    .end local v14    # "count$iv$iv":I
    .end local v28    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .end local v31    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v32    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v3    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v5    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_c
    move-object/from16 v28, v2

    move-object/from16 v31, v3

    move-object/from16 v32, v5

    .line 456
    .end local v2    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v5    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v28    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v31    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v32    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_d
    :goto_9
    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    move-object/from16 v2, v28

    move-object/from16 v3, v31

    move-object/from16 v5, v32

    const/4 v14, 0x1

    goto/16 :goto_2

    .line 458
    .end local v28    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .end local v31    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v32    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v3    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v5    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_e
    move-object/from16 v28, v2

    move-object/from16 v31, v3

    move-object/from16 v32, v5

    .line 395
    .end local v2    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v5    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v6    # "node$iv$iv":Ljava/lang/Object;
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v21    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v28    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v31    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v32    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 418
    .end local v17    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2$iv":I
    nop

    .line 459
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 461
    .end local v28    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .end local v31    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v32    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v3    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v5    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_f
    move-object/from16 v28, v2

    move-object/from16 v31, v3

    move-object/from16 v32, v5

    .end local v2    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v5    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v28    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v31    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v32    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    const/4 v6, 0x0

    const/4 v14, 0x1

    goto/16 :goto_1

    .line 416
    .end local v28    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .end local v31    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v32    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v3    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v5    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_10
    move-object/from16 v28, v2

    move-object/from16 v31, v3

    move-object/from16 v32, v5

    .end local v2    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v5    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v28    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v31    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v32    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 464
    .end local v13    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .end local v31    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v32    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v3    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v5    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_11
    move-object/from16 v28, v2

    move-object/from16 v31, v3

    move-object/from16 v32, v5

    .line 395
    .end local v2    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v5    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v9    # "mask$iv$iv":I
    .end local v10    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v11    # "$i$f$visitChildren":I
    .end local v12    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v28    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v32    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 164
    .end local v7    # "type$iv":I
    .end local v8    # "$i$f$visitChildren-6rFNWt0":I
    .end local v32    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 160
    .end local v16    # "$i$a$-apply-TwoDimensionalFocusSearchKt$searchChildren$children$1":I
    .end local v28    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    move-object v2, v4

    .line 165
    .local v2, "children":Landroidx/compose/runtime/collection/MutableVector;
    :goto_a
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 166
    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->findBestCandidate-4WY_MpI(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/geometry/Rect;I)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v3

    if-nez v3, :cond_12

    .line 167
    const/4 v3, 0x0

    return v3

    .line 170
    .local v3, "nextItem":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_12
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/focus/FocusProperties;->getCanFocus()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 173
    :cond_13
    move-object/from16 v4, p1

    invoke-static {v3, v4, v0, v1}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->generateAndSearchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v5, 0x1

    return v5

    .line 177
    :cond_14
    const/4 v5, 0x1

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    .line 179
    .end local v3    # "nextItem":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_15
    move-object/from16 v4, p1

    const/4 v3, 0x0

    return v3

    .line 397
    .local v2, "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .local v3, "$i$a$-apply-TwoDimensionalFocusSearchKt$searchChildren$children$1":I
    .restart local v5    # "$this$visitChildren_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v7    # "type$iv":I
    .restart local v8    # "$i$f$visitChildren-6rFNWt0":I
    .restart local v9    # "mask$iv$iv":I
    .restart local v10    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v11    # "$i$f$visitChildren":I
    :cond_16
    move-object/from16 v28, v2

    move/from16 v16, v3

    .end local v2    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "$i$a$-apply-TwoDimensionalFocusSearchKt$searchChildren$children$1":I
    .restart local v16    # "$i$a$-apply-TwoDimensionalFocusSearchKt$searchChildren$children$1":I
    .restart local v28    # "$this$searchChildren_4C6V_qg_u24lambda_u243":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v2, 0x0

    .line 396
    .local v2, "$i$a$-check-DelegatableNodeKt$visitChildren$1$iv$iv":I
    nop

    .end local v2    # "$i$a$-check-DelegatableNodeKt$visitChildren$1$iv$iv":I
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "visitChildren called on an unattached node"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static final topLeft(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;
    .locals 5
    .param p0, "$this$topLeft"    # Landroidx/compose/ui/geometry/Rect;

    .line 377
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v0
.end method

.method public static final twoDimensionalFocusSearch--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;
    .locals 5
    .param p0, "$this$twoDimensionalFocusSearch_u2d_u2dOM_u2dvw8"    # Landroidx/compose/ui/focus/FocusTargetNode;
    .param p1, "direction"    # I
    .param p2, "onFound"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/focus/FocusTargetNode;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusTargetNode;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    .line 58
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 57
    packed-switch v0, :pswitch_data_0

    .line 86
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 58
    :pswitch_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->getCanFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    :cond_0
    return-object v1

    .line 86
    :pswitch_1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->findChildCorrespondingToFocusEnter--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 60
    :pswitch_2
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->getActiveChild(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    const-string v2, "ActiveParent must have a focusedChild"

    if-eqz v0, :cond_2

    .line 66
    .local v0, "focusedChild":Landroidx/compose/ui/focus/FocusTargetNode;
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusStateImpl;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_1

    .line 79
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 78
    :pswitch_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 79
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :pswitch_4
    invoke-static {p0, v0, p1, p2}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->generateAndSearchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 70
    :pswitch_5
    invoke-static {v0, p1, p2}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->twoDimensionalFocusSearch--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object v2

    .line 71
    .local v2, "found":Ljava/lang/Boolean;
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    .line 74
    :cond_1
    invoke-static {v0}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->activeNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v1

    invoke-static {p0, v1, p1, p2}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->generateAndSearchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 60
    .end local v0    # "focusedChild":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v2    # "found":Ljava/lang/Boolean;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
