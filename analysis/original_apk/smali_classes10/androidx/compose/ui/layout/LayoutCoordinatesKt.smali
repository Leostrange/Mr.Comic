.class public final Landroidx/compose/ui/layout/LayoutCoordinatesKt;
.super Ljava/lang/Object;
.source "LayoutCoordinates.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0005\u001a\u00020\u0002*\u00020\u0002\u001a\u000f\u0010\u0006\u001a\u00020\u0007*\u00020\u0002\u00a2\u0006\u0002\u0010\u0008\u001a\u000f\u0010\t\u001a\u00020\u0007*\u00020\u0002\u00a2\u0006\u0002\u0010\u0008\u001a\u000f\u0010\n\u001a\u00020\u0007*\u00020\u0002\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "boundsInParent",
        "Landroidx/compose/ui/geometry/Rect;",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "boundsInRoot",
        "boundsInWindow",
        "findRootCoordinates",
        "positionInParent",
        "Landroidx/compose/ui/geometry/Offset;",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;)J",
        "positionInRoot",
        "positionInWindow",
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
.method public static final boundsInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 4
    .param p0, "$this$boundsInParent"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 169
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf$default(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;ZILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    if-nez v0, :cond_1

    .line 170
    :cond_0
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v1

    int-to-float v1, v1

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    :cond_1
    return-object v0
.end method

.method public static final boundsInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 4
    .param p0, "$this$boundsInRoot"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 128
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf$default(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;ZILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static final boundsInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 25
    .param p0, "$this$boundsInWindow"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 134
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    .line 135
    .local v0, "root":Landroidx/compose/ui/layout/LayoutCoordinates;
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 136
    .local v1, "bounds":Landroidx/compose/ui/geometry/Rect;
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v2

    int-to-float v2, v2

    .line 137
    .local v2, "rootWidth":F
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v3

    int-to-float v3, v3

    .line 138
    .local v3, "rootHeight":F
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v4

    .line 139
    .local v4, "boundsLeft":F
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v6

    invoke-static {v6, v5, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v6

    .line 140
    .local v6, "boundsTop":F
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v7

    invoke-static {v7, v5, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v7

    .line 141
    .local v7, "boundsRight":F
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v8

    invoke-static {v8, v5, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v5

    .line 142
    .local v5, "boundsBottom":F
    cmpg-float v8, v4, v7

    if-nez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-nez v8, :cond_3

    cmpg-float v8, v6, v5

    if-nez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_2

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move/from16 v23, v2

    goto/16 :goto_2

    .line 145
    :cond_2
    invoke-static {v4, v6}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v11

    invoke-interface {v0, v11, v12}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    move-result-wide v11

    .line 146
    .local v11, "topLeft":J
    invoke-static {v7, v6}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v13

    invoke-interface {v0, v13, v14}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    move-result-wide v13

    .line 147
    .local v13, "topRight":J
    invoke-static {v7, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v9

    invoke-interface {v0, v9, v10}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    move-result-wide v9

    .line 148
    .local v9, "bottomRight":J
    move-wide/from16 v17, v9

    .end local v9    # "bottomRight":J
    .local v17, "bottomRight":J
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v8

    invoke-interface {v0, v8, v9}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    move-result-wide v8

    .line 149
    .local v8, "bottomLeft":J
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v10

    const/4 v15, 0x3

    move-object/from16 v20, v0

    .end local v0    # "root":Landroidx/compose/ui/layout/LayoutCoordinates;
    .local v20, "root":Landroidx/compose/ui/layout/LayoutCoordinates;
    new-array v0, v15, [F

    invoke-static {v13, v14}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v21

    const/16 v19, 0x0

    aput v21, v0, v19

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v21

    const/16 v16, 0x1

    aput v21, v0, v16

    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v21

    const/16 v22, 0x2

    aput v21, v0, v22

    invoke-static {v10, v0}, Lkotlin/comparisons/ComparisonsKt;->minOf(F[F)F

    move-result v0

    .line 150
    .local v0, "left":F
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v10

    move-object/from16 v21, v1

    .end local v1    # "bounds":Landroidx/compose/ui/geometry/Rect;
    .local v21, "bounds":Landroidx/compose/ui/geometry/Rect;
    new-array v1, v15, [F

    invoke-static {v13, v14}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v23

    aput v23, v1, v19

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v23

    aput v23, v1, v16

    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v23

    aput v23, v1, v22

    invoke-static {v10, v1}, Lkotlin/comparisons/ComparisonsKt;->minOf(F[F)F

    move-result v1

    .line 151
    .local v1, "top":F
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v10

    move/from16 v23, v2

    .end local v2    # "rootWidth":F
    .local v23, "rootWidth":F
    new-array v2, v15, [F

    invoke-static {v13, v14}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v24

    aput v24, v2, v19

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v24

    aput v24, v2, v16

    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v24

    aput v24, v2, v22

    invoke-static {v10, v2}, Lkotlin/comparisons/ComparisonsKt;->maxOf(F[F)F

    move-result v2

    .line 152
    .local v2, "right":F
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v10

    new-array v15, v15, [F

    invoke-static {v13, v14}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v24

    aput v24, v15, v19

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v19

    aput v19, v15, v16

    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v16

    aput v16, v15, v22

    invoke-static {v10, v15}, Lkotlin/comparisons/ComparisonsKt;->maxOf(F[F)F

    move-result v10

    .line 153
    .local v10, "bottom":F
    new-instance v15, Landroidx/compose/ui/geometry/Rect;

    invoke-direct {v15, v0, v1, v2, v10}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v15

    .line 142
    .end local v8    # "bottomLeft":J
    .end local v10    # "bottom":F
    .end local v11    # "topLeft":J
    .end local v13    # "topRight":J
    .end local v17    # "bottomRight":J
    .end local v20    # "root":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v21    # "bounds":Landroidx/compose/ui/geometry/Rect;
    .end local v23    # "rootWidth":F
    .local v0, "root":Landroidx/compose/ui/layout/LayoutCoordinates;
    .local v1, "bounds":Landroidx/compose/ui/geometry/Rect;
    .local v2, "rootWidth":F
    :cond_3
    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move/from16 v23, v2

    .line 143
    .end local v0    # "root":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v1    # "bounds":Landroidx/compose/ui/geometry/Rect;
    .end local v2    # "rootWidth":F
    .restart local v20    # "root":Landroidx/compose/ui/layout/LayoutCoordinates;
    .restart local v21    # "bounds":Landroidx/compose/ui/geometry/Rect;
    .restart local v23    # "rootWidth":F
    :goto_2
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static final findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 5
    .param p0, "$this$findRootCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 179
    move-object v0, p0

    .line 180
    .local v0, "root":Landroidx/compose/ui/layout/LayoutCoordinates;
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    .line 181
    .local v1, "parent":Landroidx/compose/ui/layout/LayoutCoordinates;
    :goto_0
    if-eqz v1, :cond_0

    .line 182
    move-object v0, v1

    .line 183
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    goto :goto_0

    .line 185
    :cond_0
    instance-of v2, v0, Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    return-object v0

    .line 186
    .local v2, "rootCoordinator":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_2
    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->getWrappedBy$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    .line 187
    .local v3, "parentCoordinator":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_2
    if-eqz v3, :cond_3

    .line 188
    move-object v2, v3

    .line 189
    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeCoordinator;->getWrappedBy$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    goto :goto_2

    .line 191
    :cond_3
    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object v4
.end method

.method public static final positionInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)J
    .locals 3
    .param p0, "$this$positionInParent"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 161
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static final positionInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)J
    .locals 2
    .param p0, "$this$positionInRoot"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 117
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final positionInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)J
    .locals 2
    .param p0, "$this$positionInWindow"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 122
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    move-result-wide v0

    return-wide v0
.end method
