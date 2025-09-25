.class public final Landroidx/compose/runtime/changelist/OperationKt;
.super Ljava/lang/Object;
.source "Operation.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/OperationKt\n+ 2 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n*L\n1#1,879:1\n166#2,8:880\n166#2,8:888\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/OperationKt\n*L\n809#1:880,8\n869#1:888,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a(\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0008H\u0002\u001a(\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u00032\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00082\u0006\u0010\u000c\u001a\u00020\u0001H\u0002\u001a(\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u00a8\u0006\u0014"
    }
    d2 = {
        "currentNodeIndex",
        "",
        "slots",
        "Landroidx/compose/runtime/SlotWriter;",
        "positionToInsert",
        "anchor",
        "Landroidx/compose/runtime/Anchor;",
        "applier",
        "Landroidx/compose/runtime/Applier;",
        "",
        "positionToParentOf",
        "",
        "index",
        "releaseMovableGroupAtCurrent",
        "composition",
        "Landroidx/compose/runtime/ControlledComposition;",
        "parentContext",
        "Landroidx/compose/runtime/CompositionContext;",
        "reference",
        "Landroidx/compose/runtime/MovableContentStateReference;",
        "runtime_release"
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
.method public static final synthetic access$positionToInsert(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/Applier;)I
    .locals 1
    .param p0, "slots"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "anchor"    # Landroidx/compose/runtime/Anchor;
    .param p2, "applier"    # Landroidx/compose/runtime/Applier;

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/changelist/OperationKt;->positionToInsert(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/Applier;)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$positionToParentOf(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Applier;I)V
    .locals 0
    .param p0, "slots"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "applier"    # Landroidx/compose/runtime/Applier;
    .param p2, "index"    # I

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/changelist/OperationKt;->positionToParentOf(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Applier;I)V

    return-void
.end method

.method public static final synthetic access$releaseMovableGroupAtCurrent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/SlotWriter;)V
    .locals 0
    .param p0, "composition"    # Landroidx/compose/runtime/ControlledComposition;
    .param p1, "parentContext"    # Landroidx/compose/runtime/CompositionContext;
    .param p2, "reference"    # Landroidx/compose/runtime/MovableContentStateReference;
    .param p3, "slots"    # Landroidx/compose/runtime/SlotWriter;

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/changelist/OperationKt;->releaseMovableGroupAtCurrent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/SlotWriter;)V

    return-void
.end method

.method private static final currentNodeIndex(Landroidx/compose/runtime/SlotWriter;)I
    .locals 5
    .param p0, "slots"    # Landroidx/compose/runtime/SlotWriter;

    .line 743
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v0

    .line 746
    .local v0, "original":I
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v1

    .line 747
    .local v1, "current":I
    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 748
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result v1

    goto :goto_0

    .line 751
    :cond_0
    const/4 v2, 0x0

    .line 752
    .local v2, "index":I
    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 753
    :goto_1
    if-ge v1, v0, :cond_4

    .line 754
    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->indexInGroup(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 755
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    .line 756
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 758
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->nodeCount(I)I

    move-result v4

    :goto_2
    add-int/2addr v2, v4

    .line 759
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_1

    .line 762
    :cond_4
    return v2
.end method

.method private static final positionToInsert(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/Applier;)I
    .locals 5
    .param p0, "slots"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "anchor"    # Landroidx/compose/runtime/Anchor;
    .param p2, "applier"    # Landroidx/compose/runtime/Applier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/Applier<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 770
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v0

    .line 771
    .local v0, "destination":I
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 772
    invoke-static {p0, p2, v0}, Landroidx/compose/runtime/changelist/OperationKt;->positionToParentOf(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Applier;I)V

    .line 773
    invoke-static {p0}, Landroidx/compose/runtime/changelist/OperationKt;->currentNodeIndex(Landroidx/compose/runtime/SlotWriter;)I

    move-result v1

    .line 774
    .local v1, "nodeIndex":I
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v4

    if-ge v4, v0, :cond_3

    .line 775
    nop

    .line 776
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->indexInCurrentGroup(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 777
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->isNode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 778
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/compose/runtime/SlotWriter;->node(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4}, Landroidx/compose/runtime/Applier;->down(Ljava/lang/Object;)V

    .line 779
    const/4 v1, 0x0

    .line 781
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    goto :goto_1

    .line 783
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->skipGroup()I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_1

    .line 787
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v4

    if-ne v4, v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 788
    return v1
.end method

.method private static final positionToParentOf(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Applier;I)V
    .locals 1
    .param p0, "slots"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "applier"    # Landroidx/compose/runtime/Applier;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/Applier<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 735
    nop

    :goto_0
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotWriter;->indexInParent(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 736
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    .line 737
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroidx/compose/runtime/Applier;->up()V

    .line 738
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    goto :goto_0

    .line 740
    :cond_1
    return-void
.end method

.method private static final releaseMovableGroupAtCurrent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/SlotWriter;)V
    .locals 12
    .param p0, "composition"    # Landroidx/compose/runtime/ControlledComposition;
    .param p1, "parentContext"    # Landroidx/compose/runtime/CompositionContext;
    .param p2, "reference"    # Landroidx/compose/runtime/MovableContentStateReference;
    .param p3, "slots"    # Landroidx/compose/runtime/SlotWriter;

    .line 802
    new-instance v0, Landroidx/compose/runtime/SlotTable;

    invoke-direct {v0}, Landroidx/compose/runtime/SlotTable;-><init>()V

    .line 809
    .local v0, "slotTable":Landroidx/compose/runtime/SlotTable;
    move-object v1, v0

    .local v1, "this_$iv":Landroidx/compose/runtime/SlotTable;
    const/4 v2, 0x0

    .line 880
    .local v2, "$i$f$write":I
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v3

    .line 881
    nop

    .local v3, "writer$iv":Landroidx/compose/runtime/SlotWriter;
    const/4 v4, 0x0

    .line 882
    .local v4, "$i$a$-let-SlotTable$write$1$iv":I
    nop

    .line 883
    move-object v5, v3

    .local v5, "writer":Landroidx/compose/runtime/SlotWriter;
    const/4 v6, 0x0

    .line 810
    .local v6, "$i$a$-write-OperationKt$releaseMovableGroupAtCurrent$anchors$1":I
    :try_start_0
    invoke-virtual {v5}, Landroidx/compose/runtime/SlotWriter;->beginInsert()V

    .line 813
    invoke-virtual {p2}, Landroidx/compose/runtime/MovableContentStateReference;->getContent$runtime_release()Landroidx/compose/runtime/MovableContent;

    move-result-object v7

    const v8, 0x78cc281

    invoke-virtual {v5, v8, v7}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;)V

    .line 814
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v5, v7, v9, v8}, Landroidx/compose/runtime/SlotWriter;->markGroup$default(Landroidx/compose/runtime/SlotWriter;IILjava/lang/Object;)V

    .line 815
    invoke-virtual {p2}, Landroidx/compose/runtime/MovableContentStateReference;->getParameter$runtime_release()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/SlotWriter;->update(Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    invoke-virtual {p2}, Landroidx/compose/runtime/MovableContentStateReference;->getAnchor$runtime_release()Landroidx/compose/runtime/Anchor;

    move-result-object v7

    invoke-virtual {p3, v7, v9, v5}, Landroidx/compose/runtime/SlotWriter;->moveTo(Landroidx/compose/runtime/Anchor;ILandroidx/compose/runtime/SlotWriter;)Ljava/util/List;

    move-result-object v7

    .line 821
    .local v7, "anchors":Ljava/util/List;
    invoke-virtual {v5}, Landroidx/compose/runtime/SlotWriter;->skipGroup()I

    .line 824
    invoke-virtual {v5}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    .line 826
    invoke-virtual {v5}, Landroidx/compose/runtime/SlotWriter;->endInsert()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 828
    nop

    .line 883
    .end local v5    # "writer":Landroidx/compose/runtime/SlotWriter;
    .end local v6    # "$i$a$-write-OperationKt$releaseMovableGroupAtCurrent$anchors$1":I
    .end local v7    # "anchors":Ljava/util/List;
    nop

    .line 885
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotWriter;->close()V

    .line 886
    nop

    .line 882
    nop

    .line 881
    .end local v3    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .end local v4    # "$i$a$-let-SlotTable$write$1$iv":I
    nop

    .line 887
    nop

    .line 809
    .end local v1    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v2    # "$i$f$write":I
    move-object v1, v7

    .line 831
    .local v1, "anchors":Ljava/util/List;
    new-instance v2, Landroidx/compose/runtime/MovableContentState;

    invoke-direct {v2, v0}, Landroidx/compose/runtime/MovableContentState;-><init>(Landroidx/compose/runtime/SlotTable;)V

    .line 832
    .local v2, "state":Landroidx/compose/runtime/MovableContentState;
    sget-object v3, Landroidx/compose/runtime/RecomposeScopeImpl;->Companion:Landroidx/compose/runtime/RecomposeScopeImpl$Companion;

    invoke-virtual {v3, v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl$Companion;->hasAnchoredRecomposeScopes$runtime_release(Landroidx/compose/runtime/SlotTable;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 835
    new-instance v3, Landroidx/compose/runtime/changelist/OperationKt$releaseMovableGroupAtCurrent$movableContentRecomposeScopeOwner$1;

    invoke-direct {v3, p0, p2}, Landroidx/compose/runtime/changelist/OperationKt$releaseMovableGroupAtCurrent$movableContentRecomposeScopeOwner$1;-><init>(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/MovableContentStateReference;)V

    .line 869
    .local v3, "movableContentRecomposeScopeOwner":Landroidx/compose/runtime/changelist/OperationKt$releaseMovableGroupAtCurrent$movableContentRecomposeScopeOwner$1;
    move-object v4, v0

    .local v4, "this_$iv":Landroidx/compose/runtime/SlotTable;
    const/4 v5, 0x0

    .line 888
    .local v5, "$i$f$write":I
    invoke-virtual {v4}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v6

    .line 889
    nop

    .local v6, "writer$iv":Landroidx/compose/runtime/SlotWriter;
    const/4 v7, 0x0

    .line 890
    .local v7, "$i$a$-let-SlotTable$write$1$iv":I
    nop

    .line 891
    move-object v8, v6

    .local v8, "writer":Landroidx/compose/runtime/SlotWriter;
    const/4 v9, 0x0

    .line 870
    .local v9, "$i$a$-write-OperationKt$releaseMovableGroupAtCurrent$1":I
    :try_start_1
    sget-object v10, Landroidx/compose/runtime/RecomposeScopeImpl;->Companion:Landroidx/compose/runtime/RecomposeScopeImpl$Companion;

    .line 871
    nop

    .line 872
    nop

    .line 873
    move-object v11, v3

    check-cast v11, Landroidx/compose/runtime/RecomposeScopeOwner;

    .line 870
    invoke-virtual {v10, v8, v1, v11}, Landroidx/compose/runtime/RecomposeScopeImpl$Companion;->adoptAnchoredScopes$runtime_release(Landroidx/compose/runtime/SlotWriter;Ljava/util/List;Landroidx/compose/runtime/RecomposeScopeOwner;)V

    .line 875
    nop

    .end local v8    # "writer":Landroidx/compose/runtime/SlotWriter;
    .end local v9    # "$i$a$-write-OperationKt$releaseMovableGroupAtCurrent$1":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 891
    nop

    .line 893
    invoke-virtual {v6}, Landroidx/compose/runtime/SlotWriter;->close()V

    .line 894
    nop

    .line 890
    nop

    .line 889
    .end local v6    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .end local v7    # "$i$a$-let-SlotTable$write$1$iv":I
    nop

    .line 895
    goto :goto_0

    .line 893
    .restart local v6    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .restart local v7    # "$i$a$-let-SlotTable$write$1$iv":I
    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Landroidx/compose/runtime/SlotWriter;->close()V

    throw v8

    .line 877
    .end local v3    # "movableContentRecomposeScopeOwner":Landroidx/compose/runtime/changelist/OperationKt$releaseMovableGroupAtCurrent$movableContentRecomposeScopeOwner$1;
    .end local v4    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v5    # "$i$f$write":I
    .end local v6    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .end local v7    # "$i$a$-let-SlotTable$write$1$iv":I
    :cond_0
    :goto_0
    invoke-virtual {p1, p2, v2}, Landroidx/compose/runtime/CompositionContext;->movableContentStateReleased$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentState;)V

    .line 878
    return-void

    .line 885
    .local v1, "this_$iv":Landroidx/compose/runtime/SlotTable;
    .local v2, "$i$f$write":I
    .local v3, "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .local v4, "$i$a$-let-SlotTable$write$1$iv":I
    :catchall_1
    move-exception v5

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotWriter;->close()V

    throw v5
.end method
