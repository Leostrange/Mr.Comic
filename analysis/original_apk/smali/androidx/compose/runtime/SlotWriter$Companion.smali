.class public final Landroidx/compose/runtime/SlotWriter$Companion;
.super Ljava/lang/Object;
.source "SlotTable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/SlotWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotWriter$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,3745:1\n1#2:3746\n33#3,6:3747\n4178#4,5:3753\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotWriter$Companion\n*L\n2302#1:3747,6\n2367#1:3753,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J@\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000cH\u0002\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/compose/runtime/SlotWriter$Companion;",
        "",
        "()V",
        "moveGroup",
        "",
        "Landroidx/compose/runtime/Anchor;",
        "fromWriter",
        "Landroidx/compose/runtime/SlotWriter;",
        "fromIndex",
        "",
        "toWriter",
        "updateFromCursor",
        "",
        "updateToCursor",
        "removeSourceGroup",
        "runtime_release"
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
.method private constructor <init>()V
    .locals 0

    .line 2183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$moveGroup(Landroidx/compose/runtime/SlotWriter$Companion;Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter$Companion;
    .param p1, "fromWriter"    # Landroidx/compose/runtime/SlotWriter;
    .param p2, "fromIndex"    # I
    .param p3, "toWriter"    # Landroidx/compose/runtime/SlotWriter;
    .param p4, "updateFromCursor"    # Z
    .param p5, "updateToCursor"    # Z
    .param p6, "removeSourceGroup"    # Z

    .line 2183
    invoke-direct/range {p0 .. p6}, Landroidx/compose/runtime/SlotWriter$Companion;->moveGroup(Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final moveGroup(Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;
    .locals 38
    .param p1, "fromWriter"    # Landroidx/compose/runtime/SlotWriter;
    .param p2, "fromIndex"    # I
    .param p3, "toWriter"    # Landroidx/compose/runtime/SlotWriter;
    .param p4, "updateFromCursor"    # Z
    .param p5, "updateToCursor"    # Z
    .param p6, "removeSourceGroup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotWriter;",
            "I",
            "Landroidx/compose/runtime/SlotWriter;",
            "ZZZ)",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation

    .line 2192
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p2}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v3

    .line 2193
    .local v3, "groupsToMove":I
    add-int v4, v1, v3

    .line 2194
    .local v4, "sourceGroupsEnd":I
    invoke-static/range {p1 .. p2}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;I)I

    move-result v5

    .line 2195
    .local v5, "sourceSlotsStart":I
    invoke-static {v0, v4}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;I)I

    move-result v6

    .line 2196
    .local v6, "sourceSlotsEnd":I
    sub-int v7, v6, v5

    .line 2197
    .local v7, "slotsToMove":I
    invoke-static/range {p1 .. p2}, Landroidx/compose/runtime/SlotWriter;->access$containsAnyGroupMarks(Landroidx/compose/runtime/SlotWriter;I)Z

    move-result v8

    .line 2200
    .local v8, "hasMarks":Z
    invoke-static {v2, v3}, Landroidx/compose/runtime/SlotWriter;->access$insertGroups(Landroidx/compose/runtime/SlotWriter;I)V

    .line 2201
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v9

    invoke-static {v2, v7, v9}, Landroidx/compose/runtime/SlotWriter;->access$insertSlots(Landroidx/compose/runtime/SlotWriter;II)V

    .line 2205
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getGroupGapStart$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v9

    if-ge v9, v4, :cond_0

    .line 2206
    invoke-static {v0, v4}, Landroidx/compose/runtime/SlotWriter;->access$moveGroupGapTo(Landroidx/compose/runtime/SlotWriter;I)V

    .line 2208
    :cond_0
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getSlotsGapStart$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v9

    if-ge v9, v6, :cond_1

    .line 2209
    invoke-static {v0, v6, v4}, Landroidx/compose/runtime/SlotWriter;->access$moveSlotGapTo(Landroidx/compose/runtime/SlotWriter;II)V

    .line 2213
    :cond_1
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I

    move-result-object v9

    .line 2214
    .local v9, "groups":[I
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v10

    .line 2215
    .local v10, "currentGroup":I
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I

    move-result-object v11

    .line 2216
    nop

    .line 2217
    mul-int/lit8 v12, v10, 0x5

    .line 2218
    mul-int/lit8 v13, v1, 0x5

    .line 2219
    mul-int/lit8 v14, v4, 0x5

    .line 2215
    invoke-static {v11, v9, v12, v13, v14}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 2221
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getSlots$p(Landroidx/compose/runtime/SlotWriter;)[Ljava/lang/Object;

    move-result-object v11

    .line 2222
    .local v11, "slots":[Ljava/lang/Object;
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getCurrentSlot$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v12

    .line 2223
    .local v12, "currentSlot":I
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getSlots$p(Landroidx/compose/runtime/SlotWriter;)[Ljava/lang/Object;

    move-result-object v13

    .line 2224
    nop

    .line 2225
    nop

    .line 2226
    nop

    .line 2227
    nop

    .line 2223
    invoke-static {v13, v11, v12, v5, v6}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 2232
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v13

    .line 2233
    .local v13, "parent":I
    invoke-static {v9, v10, v13}, Landroidx/compose/runtime/SlotTableKt;->access$updateParentAnchor([III)V

    .line 2234
    sub-int v14, v10, v1

    .line 2235
    .local v14, "parentDelta":I
    add-int v15, v10, v3

    .line 2236
    .local v15, "moveEnd":I
    nop

    .line 3746
    move-object/from16 v16, p3

    .local v16, "$this$moveGroup_u24lambda_u240":Landroidx/compose/runtime/SlotWriter;
    const/16 v17, 0x0

    .line 2236
    .local v17, "$i$a$-with-SlotWriter$Companion$moveGroup$dataIndexDelta$1":I
    move/from16 v18, v6

    move-object/from16 v6, v16

    .end local v16    # "$this$moveGroup_u24lambda_u240":Landroidx/compose/runtime/SlotWriter;
    .local v6, "$this$moveGroup_u24lambda_u240":Landroidx/compose/runtime/SlotWriter;
    .local v18, "sourceSlotsEnd":I
    invoke-static {v6, v9, v10}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;[II)I

    move-result v6

    .end local v6    # "$this$moveGroup_u24lambda_u240":Landroidx/compose/runtime/SlotWriter;
    .end local v17    # "$i$a$-with-SlotWriter$Companion$moveGroup$dataIndexDelta$1":I
    sub-int v6, v12, v6

    .line 2237
    .local v6, "dataIndexDelta":I
    const/16 v16, 0x0

    .local v16, "slotsGapOwner":I
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getSlotsGapOwner$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v16

    .line 2238
    move/from16 v17, v8

    .end local v8    # "hasMarks":Z
    .local v17, "hasMarks":Z
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getSlotsGapLen$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v8

    .line 2239
    .local v8, "slotsGapLen":I
    move/from16 v19, v12

    .end local v12    # "currentSlot":I
    .local v19, "currentSlot":I
    array-length v12, v11

    .line 2240
    .local v12, "slotsCapacity":I
    move/from16 v20, v10

    move-object/from16 v21, v11

    move/from16 v11, v16

    move/from16 v16, v5

    move/from16 v5, v20

    .local v5, "groupAddress":I
    .local v11, "slotsGapOwner":I
    .local v16, "sourceSlotsStart":I
    .local v21, "slots":[Ljava/lang/Object;
    :goto_0
    const/16 v20, 0x0

    if-ge v5, v15, :cond_5

    .line 2242
    if-eq v5, v10, :cond_2

    .line 2243
    invoke-static {v9, v5}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v22

    .line 2244
    .local v22, "previousParent":I
    move/from16 v23, v15

    .end local v15    # "moveEnd":I
    .local v23, "moveEnd":I
    add-int v15, v22, v14

    invoke-static {v9, v5, v15}, Landroidx/compose/runtime/SlotTableKt;->access$updateParentAnchor([III)V

    goto :goto_1

    .line 2242
    .end local v22    # "previousParent":I
    .end local v23    # "moveEnd":I
    .restart local v15    # "moveEnd":I
    :cond_2
    move/from16 v23, v15

    .line 2247
    .end local v15    # "moveEnd":I
    .restart local v23    # "moveEnd":I
    :goto_1
    move-object/from16 v15, p3

    .local v15, "$this$moveGroup_u24lambda_u241":Landroidx/compose/runtime/SlotWriter;
    const/16 v22, 0x0

    .line 2248
    .local v22, "$i$a$-with-SlotWriter$Companion$moveGroup$newDataIndex$1":I
    invoke-static {v15, v9, v5}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;[II)I

    move-result v24

    add-int v24, v24, v6

    .line 2247
    .end local v15    # "$this$moveGroup_u24lambda_u241":Landroidx/compose/runtime/SlotWriter;
    .end local v22    # "$i$a$-with-SlotWriter$Companion$moveGroup$newDataIndex$1":I
    move/from16 v15, v24

    .line 2250
    .local v15, "newDataIndex":I
    move-object/from16 v22, p3

    .local v22, "$this$moveGroup_u24lambda_u242":Landroidx/compose/runtime/SlotWriter;
    const/16 v24, 0x0

    .line 2251
    .local v24, "$i$a$-with-SlotWriter$Companion$moveGroup$newDataAnchor$1":I
    nop

    .line 2252
    nop

    .line 2255
    if-ge v11, v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-static/range {v22 .. v22}, Landroidx/compose/runtime/SlotWriter;->access$getSlotsGapStart$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v20

    :goto_2
    move/from16 v25, v6

    move/from16 v6, v20

    .line 2256
    .end local v6    # "dataIndexDelta":I
    .local v25, "dataIndexDelta":I
    nop

    .line 2257
    nop

    .line 2251
    move/from16 v26, v14

    move-object/from16 v14, v22

    .end local v22    # "$this$moveGroup_u24lambda_u242":Landroidx/compose/runtime/SlotWriter;
    .local v14, "$this$moveGroup_u24lambda_u242":Landroidx/compose/runtime/SlotWriter;
    .local v26, "parentDelta":I
    invoke-static {v14, v15, v6, v8, v12}, Landroidx/compose/runtime/SlotWriter;->access$dataIndexToDataAnchor(Landroidx/compose/runtime/SlotWriter;IIII)I

    move-result v6

    .line 2250
    .end local v14    # "$this$moveGroup_u24lambda_u242":Landroidx/compose/runtime/SlotWriter;
    .end local v24    # "$i$a$-with-SlotWriter$Companion$moveGroup$newDataAnchor$1":I
    nop

    .line 2262
    .local v6, "newDataAnchor":I
    invoke-static {v9, v5, v6}, Landroidx/compose/runtime/SlotTableKt;->access$updateDataAnchor([III)V

    .line 2265
    if-ne v5, v11, :cond_4

    add-int/lit8 v11, v11, 0x1

    .line 2240
    .end local v6    # "newDataAnchor":I
    .end local v15    # "newDataIndex":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v23

    move/from16 v6, v25

    move/from16 v14, v26

    goto :goto_0

    .end local v23    # "moveEnd":I
    .end local v25    # "dataIndexDelta":I
    .end local v26    # "parentDelta":I
    .local v6, "dataIndexDelta":I
    .local v14, "parentDelta":I
    .local v15, "moveEnd":I
    :cond_5
    move/from16 v25, v6

    move/from16 v26, v14

    move/from16 v23, v15

    .line 2267
    .end local v5    # "groupAddress":I
    .end local v6    # "dataIndexDelta":I
    .end local v14    # "parentDelta":I
    .end local v15    # "moveEnd":I
    .restart local v23    # "moveEnd":I
    .restart local v25    # "dataIndexDelta":I
    .restart local v26    # "parentDelta":I
    invoke-static {v2, v11}, Landroidx/compose/runtime/SlotWriter;->access$setSlotsGapOwner$p(Landroidx/compose/runtime/SlotWriter;I)V

    .line 2270
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v6

    invoke-static {v5, v1, v6}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v5

    .line 2271
    .local v5, "startAnchors":I
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v14

    invoke-static {v6, v4, v14}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v6

    .line 2272
    .local v6, "endAnchors":I
    if-ge v5, v6, :cond_7

    .line 2273
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    move-result-object v14

    .line 2274
    .local v14, "sourceAnchors":Ljava/util/ArrayList;
    new-instance v15, Ljava/util/ArrayList;

    move/from16 v22, v4

    .end local v4    # "sourceGroupsEnd":I
    .local v22, "sourceGroupsEnd":I
    sub-int v4, v6, v5

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v15

    .line 2277
    .local v4, "anchors":Ljava/util/ArrayList;
    sub-int v15, v10, v1

    .line 2278
    .local v15, "anchorDelta":I
    move/from16 v24, v5

    move/from16 v27, v8

    move/from16 v8, v24

    .local v8, "anchorIndex":I
    .local v27, "slotsGapLen":I
    :goto_3
    if-ge v8, v6, :cond_6

    .line 2279
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    move/from16 v28, v11

    .end local v11    # "slotsGapOwner":I
    .local v28, "slotsGapOwner":I
    move-object/from16 v11, v24

    check-cast v11, Landroidx/compose/runtime/Anchor;

    .line 2280
    .local v11, "sourceAnchor":Landroidx/compose/runtime/Anchor;
    invoke-virtual {v11}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result v24

    move/from16 v29, v12

    .end local v12    # "slotsCapacity":I
    .local v29, "slotsCapacity":I
    add-int v12, v24, v15

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/Anchor;->setLocation$runtime_release(I)V

    .line 2281
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2278
    .end local v11    # "sourceAnchor":Landroidx/compose/runtime/Anchor;
    add-int/lit8 v8, v8, 0x1

    move/from16 v11, v28

    move/from16 v12, v29

    goto :goto_3

    .end local v28    # "slotsGapOwner":I
    .end local v29    # "slotsCapacity":I
    .local v11, "slotsGapOwner":I
    .restart local v12    # "slotsCapacity":I
    :cond_6
    move/from16 v28, v11

    move/from16 v29, v12

    .line 2285
    .end local v8    # "anchorIndex":I
    .end local v11    # "slotsGapOwner":I
    .end local v12    # "slotsCapacity":I
    .restart local v28    # "slotsGapOwner":I
    .restart local v29    # "slotsCapacity":I
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    move-result-object v8

    .line 2286
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v11

    .line 2287
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v12

    .line 2285
    invoke-static {v8, v11, v12}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v8

    .line 2289
    .local v8, "insertLocation":I
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    move-result-object v11

    move-object v12, v4

    check-cast v12, Ljava/util/Collection;

    invoke-virtual {v11, v8, v12}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 2292
    invoke-virtual {v14, v5, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 2294
    nop

    .end local v4    # "anchors":Ljava/util/ArrayList;
    .end local v8    # "insertLocation":I
    .end local v14    # "sourceAnchors":Ljava/util/ArrayList;
    .end local v15    # "anchorDelta":I
    check-cast v4, Ljava/util/List;

    goto :goto_4

    .line 2295
    .end local v22    # "sourceGroupsEnd":I
    .end local v27    # "slotsGapLen":I
    .end local v28    # "slotsGapOwner":I
    .end local v29    # "slotsCapacity":I
    .local v4, "sourceGroupsEnd":I
    .local v8, "slotsGapLen":I
    .restart local v11    # "slotsGapOwner":I
    .restart local v12    # "slotsCapacity":I
    :cond_7
    move/from16 v22, v4

    move/from16 v27, v8

    move/from16 v28, v11

    move/from16 v29, v12

    .end local v4    # "sourceGroupsEnd":I
    .end local v8    # "slotsGapLen":I
    .end local v11    # "slotsGapOwner":I
    .end local v12    # "slotsCapacity":I
    .restart local v22    # "sourceGroupsEnd":I
    .restart local v27    # "slotsGapLen":I
    .restart local v28    # "slotsGapOwner":I
    .restart local v29    # "slotsCapacity":I
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 2272
    :goto_4
    nop

    .line 2298
    .local v4, "anchors":Ljava/util/List;
    move-object v8, v4

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    const/4 v11, 0x1

    xor-int/2addr v8, v11

    if-eqz v8, :cond_c

    .line 2299
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getSourceInformationMap$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/HashMap;

    move-result-object v8

    .line 2300
    .local v8, "sourceSourceInformationMap":Ljava/util/HashMap;
    if-eqz v8, :cond_b

    .line 2301
    const/4 v12, 0x0

    .local v12, "destinationSourceInformation":Ljava/lang/Object;
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getSourceInformationMap$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/HashMap;

    move-result-object v12

    .line 2302
    move-object v14, v4

    .local v14, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v15, 0x0

    .line 3747
    .local v15, "$i$f$fastForEach":I
    nop

    .line 3748
    const/16 v24, 0x0

    .local v24, "index$iv":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v11

    move/from16 v37, v24

    move/from16 v24, v5

    move/from16 v5, v37

    .local v5, "index$iv":I
    .local v24, "startAnchors":I
    :goto_5
    if-ge v5, v11, :cond_a

    .line 3749
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    .line 3750
    .local v30, "item$iv":Ljava/lang/Object;
    move/from16 v31, v6

    .end local v6    # "endAnchors":I
    .local v31, "endAnchors":I
    move-object/from16 v6, v30

    check-cast v6, Landroidx/compose/runtime/Anchor;

    .local v6, "anchor":Landroidx/compose/runtime/Anchor;
    const/16 v32, 0x0

    .line 2303
    .local v32, "$i$a$-fastForEach-SlotWriter$Companion$moveGroup$1":I
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    move/from16 v34, v11

    move-object/from16 v11, v33

    check-cast v11, Landroidx/compose/runtime/GroupSourceInformation;

    .line 2304
    .local v11, "information":Landroidx/compose/runtime/GroupSourceInformation;
    if-eqz v11, :cond_9

    .line 2305
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2306
    if-nez v12, :cond_8

    sget-object v33, Landroidx/compose/runtime/SlotWriter;->Companion:Landroidx/compose/runtime/SlotWriter$Companion;

    .local v33, "$this$moveGroup_u24lambda_u244_u24lambda_u243":Landroidx/compose/runtime/SlotWriter$Companion;
    const/16 v35, 0x0

    .line 2307
    .local v35, "$i$a$-run-SlotWriter$Companion$moveGroup$1$map$1":I
    new-instance v36, Ljava/util/HashMap;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashMap;-><init>()V

    .line 2308
    .local v36, "map":Ljava/util/HashMap;
    move-object/from16 v12, v36

    .line 2309
    invoke-static {v2, v12}, Landroidx/compose/runtime/SlotWriter;->access$setSourceInformationMap$p(Landroidx/compose/runtime/SlotWriter;Ljava/util/HashMap;)V

    .line 2310
    nop

    .line 2306
    .end local v33    # "$this$moveGroup_u24lambda_u244_u24lambda_u243":Landroidx/compose/runtime/SlotWriter$Companion;
    .end local v35    # "$i$a$-run-SlotWriter$Companion$moveGroup$1$map$1":I
    .end local v36    # "map":Ljava/util/HashMap;
    nop

    :cond_8
    move-object/from16 v33, v12

    .line 2312
    .local v12, "map":Ljava/util/HashMap;
    .local v33, "destinationSourceInformation":Ljava/lang/Object;
    move-object/from16 v35, v14

    .end local v14    # "$this$fastForEach$iv":Ljava/util/List;
    .local v35, "$this$fastForEach$iv":Ljava/util/List;
    move-object v14, v12

    check-cast v14, Ljava/util/Map;

    invoke-interface {v14, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, v33

    goto :goto_6

    .line 2304
    .end local v33    # "destinationSourceInformation":Ljava/lang/Object;
    .end local v35    # "$this$fastForEach$iv":Ljava/util/List;
    .local v12, "destinationSourceInformation":Ljava/lang/Object;
    .restart local v14    # "$this$fastForEach$iv":Ljava/util/List;
    :cond_9
    move-object/from16 v35, v14

    .line 2314
    .end local v14    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v35    # "$this$fastForEach$iv":Ljava/util/List;
    :goto_6
    nop

    .line 3750
    .end local v6    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v11    # "information":Landroidx/compose/runtime/GroupSourceInformation;
    .end local v32    # "$i$a$-fastForEach-SlotWriter$Companion$moveGroup$1":I
    nop

    .line 3748
    .end local v30    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v31

    move/from16 v11, v34

    move-object/from16 v14, v35

    goto :goto_5

    .end local v31    # "endAnchors":I
    .end local v35    # "$this$fastForEach$iv":Ljava/util/List;
    .local v6, "endAnchors":I
    .restart local v14    # "$this$fastForEach$iv":Ljava/util/List;
    :cond_a
    move/from16 v31, v6

    move-object/from16 v35, v14

    .line 3752
    .end local v5    # "index$iv":I
    .end local v6    # "endAnchors":I
    .end local v14    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v31    # "endAnchors":I
    .restart local v35    # "$this$fastForEach$iv":Ljava/util/List;
    nop

    .line 2315
    .end local v15    # "$i$f$fastForEach":I
    .end local v35    # "$this$fastForEach$iv":Ljava/util/List;
    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2316
    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroidx/compose/runtime/SlotWriter;->access$setSourceInformationMap$p(Landroidx/compose/runtime/SlotWriter;Ljava/util/HashMap;)V

    goto :goto_7

    .line 2300
    .end local v12    # "destinationSourceInformation":Ljava/lang/Object;
    .end local v24    # "startAnchors":I
    .end local v31    # "endAnchors":I
    .local v5, "startAnchors":I
    .restart local v6    # "endAnchors":I
    :cond_b
    move/from16 v24, v5

    move/from16 v31, v6

    .end local v5    # "startAnchors":I
    .end local v6    # "endAnchors":I
    .restart local v24    # "startAnchors":I
    .restart local v31    # "endAnchors":I
    goto :goto_7

    .line 2298
    .end local v8    # "sourceSourceInformationMap":Ljava/util/HashMap;
    .end local v24    # "startAnchors":I
    .end local v31    # "endAnchors":I
    .restart local v5    # "startAnchors":I
    .restart local v6    # "endAnchors":I
    :cond_c
    move/from16 v24, v5

    move/from16 v31, v6

    .line 2322
    .end local v5    # "startAnchors":I
    .end local v6    # "endAnchors":I
    .restart local v24    # "startAnchors":I
    .restart local v31    # "endAnchors":I
    :cond_d
    :goto_7
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v5

    .line 2323
    .local v5, "toWriterParent":I
    invoke-static {v2, v13}, Landroidx/compose/runtime/SlotWriter;->access$sourceInformationOf(Landroidx/compose/runtime/SlotWriter;I)Landroidx/compose/runtime/GroupSourceInformation;

    move-result-object v6

    if-eqz v6, :cond_f

    .local v6, "it":Landroidx/compose/runtime/GroupSourceInformation;
    const/4 v8, 0x0

    .line 2324
    .local v8, "$i$a$-let-SlotWriter$Companion$moveGroup$2":I
    const/4 v11, -0x1

    .line 2325
    .local v11, "predecessor":I
    add-int/lit8 v12, v5, 0x1

    .line 2326
    .local v12, "child":I
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v14

    .line 2327
    .local v14, "endGroup":I
    :goto_8
    if-ge v12, v14, :cond_e

    .line 2328
    move v11, v12

    .line 2329
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I

    move-result-object v15

    invoke-static {v15, v12}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v15

    add-int/2addr v12, v15

    goto :goto_8

    .line 2331
    :cond_e
    invoke-virtual {v6, v2, v11, v14}, Landroidx/compose/runtime/GroupSourceInformation;->addGroupAfter(Landroidx/compose/runtime/SlotWriter;II)V

    .line 2332
    nop

    .line 2323
    .end local v6    # "it":Landroidx/compose/runtime/GroupSourceInformation;
    .end local v8    # "$i$a$-let-SlotWriter$Companion$moveGroup$2":I
    .end local v11    # "predecessor":I
    .end local v12    # "child":I
    .end local v14    # "endGroup":I
    nop

    .line 2333
    :cond_f
    invoke-virtual/range {p1 .. p2}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result v6

    .line 2334
    .local v6, "parentGroup":I
    if-nez p6, :cond_10

    .line 2337
    move/from16 v12, v16

    move/from16 v11, v20

    goto :goto_a

    .line 2338
    :cond_10
    if-eqz p4, :cond_14

    .line 2342
    if-ltz v6, :cond_11

    const/4 v8, 0x1

    goto :goto_9

    :cond_11
    move/from16 v8, v20

    .line 2343
    .local v8, "needsStartGroups":Z
    :goto_9
    if-eqz v8, :cond_12

    .line 2346
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    .line 2347
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v11

    sub-int v11, v6, v11

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/SlotWriter;->advanceBy(I)V

    .line 2348
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    .line 2350
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v11

    sub-int v11, v1, v11

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/SlotWriter;->advanceBy(I)V

    .line 2351
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->removeGroup()Z

    move-result v11

    .line 2352
    .local v11, "anchorsRemoved":Z
    if-eqz v8, :cond_13

    .line 2353
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    .line 2354
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    .line 2355
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    .line 2356
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    .line 2358
    :cond_13
    move/from16 v12, v16

    .end local v8    # "needsStartGroups":Z
    .end local v11    # "anchorsRemoved":Z
    goto :goto_a

    .line 2361
    :cond_14
    invoke-static {v0, v1, v3}, Landroidx/compose/runtime/SlotWriter;->access$removeGroups(Landroidx/compose/runtime/SlotWriter;II)Z

    move-result v11

    .line 2362
    .restart local v11    # "anchorsRemoved":Z
    add-int/lit8 v8, v1, -0x1

    move/from16 v12, v16

    .end local v16    # "sourceSlotsStart":I
    .local v12, "sourceSlotsStart":I
    invoke-static {v0, v12, v7, v8}, Landroidx/compose/runtime/SlotWriter;->access$removeSlots(Landroidx/compose/runtime/SlotWriter;III)V

    .line 2363
    nop

    .line 2334
    .end local v11    # "anchorsRemoved":Z
    :goto_a
    move v8, v11

    .line 2367
    .local v8, "anchorsRemoved":Z
    if-nez v8, :cond_15

    const/16 v20, 0x1

    :cond_15
    move/from16 v11, v20

    .local v11, "value$iv":Z
    const/4 v14, 0x0

    .line 3753
    .local v14, "$i$f$runtimeCheck":I
    if-eqz v11, :cond_19

    .line 3757
    nop

    .line 2370
    .end local v11    # "value$iv":Z
    .end local v14    # "$i$f$runtimeCheck":I
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getNodeCount$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v11

    invoke-static {v9, v10}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v14

    if-eqz v14, :cond_16

    const/4 v14, 0x1

    goto :goto_b

    .line 2371
    :cond_16
    nop

    .line 2370
    invoke-static {v9, v10}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v14

    :goto_b
    add-int/2addr v11, v14

    invoke-static {v2, v11}, Landroidx/compose/runtime/SlotWriter;->access$setNodeCount$p(Landroidx/compose/runtime/SlotWriter;I)V

    .line 2375
    if-eqz p5, :cond_17

    .line 2376
    add-int v11, v10, v3

    invoke-static {v2, v11}, Landroidx/compose/runtime/SlotWriter;->access$setCurrentGroup$p(Landroidx/compose/runtime/SlotWriter;I)V

    .line 2377
    add-int v11, v19, v7

    invoke-static {v2, v11}, Landroidx/compose/runtime/SlotWriter;->access$setCurrentSlot$p(Landroidx/compose/runtime/SlotWriter;I)V

    .line 2381
    :cond_17
    if-eqz v17, :cond_18

    .line 2382
    invoke-static {v2, v13}, Landroidx/compose/runtime/SlotWriter;->access$updateContainsMark(Landroidx/compose/runtime/SlotWriter;I)V

    .line 2385
    :cond_18
    return-object v4

    .line 3754
    .restart local v11    # "value$iv":Z
    .restart local v14    # "$i$f$runtimeCheck":I
    :cond_19
    const/4 v15, 0x0

    .line 2367
    .local v15, "$i$a$-runtimeCheck-SlotWriter$Companion$moveGroup$3":I
    nop

    .line 3754
    .end local v15    # "$i$a$-runtimeCheck-SlotWriter$Companion$moveGroup$3":I
    const-string/jumbo v15, "Unexpectedly removed anchors"

    .line 3755
    .local v15, "message$iv":Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v16, Lkotlin/KotlinNothingValueException;

    invoke-direct/range {v16 .. v16}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v16
.end method

.method static synthetic moveGroup$default(Landroidx/compose/runtime/SlotWriter$Companion;Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZILjava/lang/Object;)Ljava/util/List;
    .locals 7

    .line 2184
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    .line 2190
    const/4 p6, 0x1

    move v6, p6

    goto :goto_0

    .line 2184
    :cond_0
    move v6, p6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroidx/compose/runtime/SlotWriter$Companion;->moveGroup(Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
