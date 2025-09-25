.class public final Landroidx/compose/runtime/SlotTableKt;
.super Ljava/lang/Object;
.source "SlotTable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n+ 2 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3745:1\n82#2,3:3746\n33#2,4:3749\n85#2,2:3753\n38#2:3755\n87#2:3756\n1#3:3757\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n*L\n3539#1:3746,3\n3539#1:3749,4\n3539#1:3753,2\n3539#1:3755\n3539#1:3756\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0015\n\u0002\u0010\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u001c\n\u0002\u0008\n\u001a\u0010\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u0001H\u0002\u001a\u0014\u0010\u0016\u001a\u00020\u0017*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0001H\u0002\u001a\u0014\u0010\u001a\u001a\u00020\u0001*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0001H\u0002\u001a\u0014\u0010\u001b\u001a\u00020\u001c*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0001H\u0002\u001a\u0014\u0010\u001d\u001a\u00020\u001c*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0001H\u0002\u001a\u0014\u0010\u001e\u001a\u00020\u0001*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0001H\u0002\u001a\u001c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00010 *\u00020\u00182\u0008\u0008\u0002\u0010!\u001a\u00020\u0001H\u0002\u001a7\u0010\"\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010#*\u0012\u0012\u0004\u0012\u0002H#0$j\u0008\u0012\u0004\u0012\u0002H#`%2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u0002H#\u0012\u0004\u0012\u00020\u001c0\'H\u0082\u0008\u001a>\u0010(\u001a\u0004\u0018\u0001H#\"\u0004\u0008\u0000\u0010#*\u0012\u0012\u0004\u0012\u0002H#0$j\u0008\u0012\u0004\u0012\u0002H#`%2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u0002H#\u0012\u0004\u0012\u00020\u001c0\'H\u0082\u0008\u00a2\u0006\u0002\u0010)\u001a.\u0010*\u001a\u0004\u0018\u00010+*\u0012\u0012\u0004\u0012\u00020+0$j\u0008\u0012\u0004\u0012\u00020+`%2\u0006\u0010,\u001a\u00020\u00012\u0006\u0010-\u001a\u00020\u0001H\u0002\u001a;\u0010.\u001a\u00020+*\u0012\u0012\u0004\u0012\u00020+0$j\u0008\u0012\u0004\u0012\u00020+`%2\u0006\u0010,\u001a\u00020\u00012\u0006\u0010-\u001a\u00020\u00012\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020+00H\u0082\u0008\u001a\u0014\u00101\u001a\u00020\u0001*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0001H\u0002\u001a\u0014\u00102\u001a\u00020\u0001*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0001H\u0002\u001a\u001c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u00010 *\u00020\u00182\u0008\u0008\u0002\u0010!\u001a\u00020\u0001H\u0002\u001a\u0014\u00104\u001a\u00020\u001c*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0001H\u0002\u001a\u0014\u00105\u001a\u00020\u001c*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0001H\u0002\u001a\u0014\u00106\u001a\u00020\u001c*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0001H\u0002\u001aD\u00107\u001a\u00020\u0017*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00012\u0006\u00108\u001a\u00020\u00012\u0006\u00109\u001a\u00020\u001c2\u0006\u0010:\u001a\u00020\u001c2\u0006\u0010;\u001a\u00020\u001c2\u0006\u0010<\u001a\u00020\u00012\u0006\u0010\u001e\u001a\u00020\u0001H\u0002\u001a\u0014\u00109\u001a\u00020\u001c*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0001H\u0002\u001a\u0014\u00108\u001a\u00020\u0001*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0001H\u0002\u001a\u001c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u00010 *\u00020\u00182\u0008\u0008\u0002\u0010!\u001a\u00020\u0001H\u0002\u001a,\u0010>\u001a\u00020\u0001*\u0012\u0012\u0004\u0012\u00020+0$j\u0008\u0012\u0004\u0012\u00020+`%2\u0006\u0010,\u001a\u00020\u00012\u0006\u0010-\u001a\u00020\u0001H\u0002\u001a\u0014\u0010?\u001a\u00020\u0001*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0001H\u0002\u001a\u001c\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\u00010 *\u00020\u00182\u0008\u0008\u0002\u0010!\u001a\u00020\u0001H\u0002\u001a\u0014\u0010A\u001a\u00020\u0001*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0001H\u0002\u001a\u0014\u0010B\u001a\u00020\u0001*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0001H\u0002\u001a\u0014\u0010<\u001a\u00020\u0001*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0001H\u0002\u001a\u001c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u00010 *\u00020\u00182\u0008\u0008\u0002\u0010!\u001a\u00020\u0001H\u0002\u001a,\u0010D\u001a\u00020\u0001*\u0012\u0012\u0004\u0012\u00020+0$j\u0008\u0012\u0004\u0012\u00020+`%2\u0006\u0010E\u001a\u00020\u00012\u0006\u0010-\u001a\u00020\u0001H\u0002\u001a \u0010F\u001a\u0008\u0012\u0004\u0012\u00020\u00010 *\u00020\u00182\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u00010HH\u0002\u001a\u0014\u0010I\u001a\u00020\u0001*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0001H\u0002\u001a\u001c\u0010J\u001a\u00020\u0017*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u001cH\u0002\u001a\u001c\u0010K\u001a\u00020\u0017*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00012\u0006\u0010L\u001a\u00020\u0001H\u0002\u001a\u001c\u0010M\u001a\u00020\u0017*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00012\u0006\u00108\u001a\u00020\u0001H\u0002\u001a\u001c\u0010N\u001a\u00020\u0017*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u0001H\u0002\u001a\u001c\u0010O\u001a\u00020\u0017*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u001cH\u0002\u001a\u001c\u0010P\u001a\u00020\u0017*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u0001H\u0002\u001a\u001c\u0010Q\u001a\u00020\u0017*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u0001H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0008\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000c\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0010\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0011\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0012\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0013\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006R"
    }
    d2 = {
        "Aux_Mask",
        "",
        "Aux_Shift",
        "ContainsMark_Mask",
        "DataAnchor_Offset",
        "GroupInfo_Offset",
        "Group_Fields_Size",
        "Key_Offset",
        "LIVE_EDIT_INVALID_KEY",
        "Mark_Mask",
        "MinGroupGrowthSize",
        "MinSlotsGrowthSize",
        "NodeBit_Mask",
        "NodeCount_Mask",
        "ObjectKey_Mask",
        "ObjectKey_Shift",
        "ParentAnchor_Offset",
        "Size_Offset",
        "Slots_Shift",
        "parentAnchorPivot",
        "countOneBits",
        "value",
        "addAux",
        "",
        "",
        "address",
        "auxIndex",
        "containsAnyMark",
        "",
        "containsMark",
        "dataAnchor",
        "dataAnchors",
        "",
        "len",
        "fastIndexOf",
        "T",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "predicate",
        "Lkotlin/Function1;",
        "fastLastOrNull",
        "(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "find",
        "Landroidx/compose/runtime/Anchor;",
        "index",
        "effectiveSize",
        "getOrAdd",
        "block",
        "Lkotlin/Function0;",
        "groupInfo",
        "groupSize",
        "groupSizes",
        "hasAux",
        "hasMark",
        "hasObjectKey",
        "initGroup",
        "key",
        "isNode",
        "hasDataKey",
        "hasData",
        "parentAnchor",
        "keys",
        "locationOf",
        "nodeCount",
        "nodeCounts",
        "nodeIndex",
        "objectKeyIndex",
        "parentAnchors",
        "search",
        "location",
        "slice",
        "indices",
        "",
        "slotAnchor",
        "updateContainsMark",
        "updateDataAnchor",
        "anchor",
        "updateGroupKey",
        "updateGroupSize",
        "updateMark",
        "updateNodeCount",
        "updateParentAnchor",
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


# static fields
.field private static final Aux_Mask:I = 0x10000000

.field private static final Aux_Shift:I = 0x1c

.field private static final ContainsMark_Mask:I = 0x4000000

.field private static final DataAnchor_Offset:I = 0x4

.field private static final GroupInfo_Offset:I = 0x1

.field private static final Group_Fields_Size:I = 0x5

.field private static final Key_Offset:I = 0x0

.field private static final LIVE_EDIT_INVALID_KEY:I = -0x3

.field private static final Mark_Mask:I = 0x8000000

.field private static final MinGroupGrowthSize:I = 0x20

.field private static final MinSlotsGrowthSize:I = 0x20

.field private static final NodeBit_Mask:I = 0x40000000

.field private static final NodeCount_Mask:I = 0x3ffffff

.field private static final ObjectKey_Mask:I = 0x20000000

.field private static final ObjectKey_Shift:I = 0x1d

.field private static final ParentAnchor_Offset:I = 0x2

.field private static final Size_Offset:I = 0x3

.field private static final Slots_Shift:I = 0x1c

.field private static final parentAnchorPivot:I = -0x2


# direct methods
.method public static final synthetic access$addAux([II)V
    .locals 0
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->addAux([II)V

    return-void
.end method

.method public static final synthetic access$auxIndex([II)I
    .locals 1
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->auxIndex([II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$containsAnyMark([II)Z
    .locals 1
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->containsAnyMark([II)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$containsMark([II)Z
    .locals 1
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->containsMark([II)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$countOneBits(I)I
    .locals 1
    .param p0, "value"    # I

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/SlotTableKt;->countOneBits(I)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$dataAnchor([II)I
    .locals 1
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->dataAnchor([II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$dataAnchors([II)Ljava/util/List;
    .locals 1
    .param p0, "$receiver"    # [I
    .param p1, "len"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->dataAnchors([II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$find(Ljava/util/ArrayList;II)Landroidx/compose/runtime/Anchor;
    .locals 1
    .param p0, "$receiver"    # Ljava/util/ArrayList;
    .param p1, "index"    # I
    .param p2, "effectiveSize"    # I

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->find(Ljava/util/ArrayList;II)Landroidx/compose/runtime/Anchor;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$groupInfo([II)I
    .locals 1
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->groupInfo([II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$groupSize([II)I
    .locals 1
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->groupSize([II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$groupSizes([II)Ljava/util/List;
    .locals 1
    .param p0, "$receiver"    # [I
    .param p1, "len"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->groupSizes([II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$hasAux([II)Z
    .locals 1
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->hasAux([II)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$hasMark([II)Z
    .locals 1
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->hasMark([II)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$hasObjectKey([II)Z
    .locals 1
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->hasObjectKey([II)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$initGroup([IIIZZZII)V
    .locals 0
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I
    .param p2, "key"    # I
    .param p3, "isNode"    # Z
    .param p4, "hasDataKey"    # Z
    .param p5, "hasData"    # Z
    .param p6, "parentAnchor"    # I
    .param p7, "dataAnchor"    # I

    .line 1
    invoke-static/range {p0 .. p7}, Landroidx/compose/runtime/SlotTableKt;->initGroup([IIIZZZII)V

    return-void
.end method

.method public static final synthetic access$isNode([II)Z
    .locals 1
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->isNode([II)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$key([II)I
    .locals 1
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->key([II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$keys([II)Ljava/util/List;
    .locals 1
    .param p0, "$receiver"    # [I
    .param p1, "len"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->keys([II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$locationOf(Ljava/util/ArrayList;II)I
    .locals 1
    .param p0, "$receiver"    # Ljava/util/ArrayList;
    .param p1, "index"    # I
    .param p2, "effectiveSize"    # I

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->locationOf(Ljava/util/ArrayList;II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$nodeCount([II)I
    .locals 1
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->nodeCount([II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$nodeCounts([II)Ljava/util/List;
    .locals 1
    .param p0, "$receiver"    # [I
    .param p1, "len"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->nodeCounts([II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$nodeIndex([II)I
    .locals 1
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->nodeIndex([II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$objectKeyIndex([II)I
    .locals 1
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->objectKeyIndex([II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$parentAnchor([II)I
    .locals 1
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->parentAnchor([II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$parentAnchors([II)Ljava/util/List;
    .locals 1
    .param p0, "$receiver"    # [I
    .param p1, "len"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->parentAnchors([II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$search(Ljava/util/ArrayList;II)I
    .locals 1
    .param p0, "$receiver"    # Ljava/util/ArrayList;
    .param p1, "location"    # I
    .param p2, "effectiveSize"    # I

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->search(Ljava/util/ArrayList;II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$slotAnchor([II)I
    .locals 1
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->slotAnchor([II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$updateContainsMark([IIZ)V
    .locals 0
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I
    .param p2, "value"    # Z

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->updateContainsMark([IIZ)V

    return-void
.end method

.method public static final synthetic access$updateDataAnchor([III)V
    .locals 0
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I
    .param p2, "anchor"    # I

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->updateDataAnchor([III)V

    return-void
.end method

.method public static final synthetic access$updateGroupKey([III)V
    .locals 0
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I
    .param p2, "key"    # I

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->updateGroupKey([III)V

    return-void
.end method

.method public static final synthetic access$updateGroupSize([III)V
    .locals 0
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I
    .param p2, "value"    # I

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->updateGroupSize([III)V

    return-void
.end method

.method public static final synthetic access$updateMark([IIZ)V
    .locals 0
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I
    .param p2, "value"    # Z

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->updateMark([IIZ)V

    return-void
.end method

.method public static final synthetic access$updateNodeCount([III)V
    .locals 0
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I
    .param p2, "value"    # I

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->updateNodeCount([III)V

    return-void
.end method

.method public static final synthetic access$updateParentAnchor([III)V
    .locals 0
    .param p0, "$receiver"    # [I
    .param p1, "address"    # I
    .param p2, "value"    # I

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->updateParentAnchor([III)V

    return-void
.end method

.method private static final addAux([II)V
    .locals 3
    .param p0, "$this$addAux"    # [I
    .param p1, "address"    # I

    .line 3466
    mul-int/lit8 v0, p1, 0x5

    add-int/lit8 v0, v0, 0x1

    .line 3467
    .local v0, "arrayIndex":I
    aget v1, p0, v0

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    aput v1, p0, v0

    .line 3468
    return-void
.end method

.method private static final auxIndex([II)I
    .locals 4
    .param p0, "$this$auxIndex"    # [I
    .param p1, "address"    # I

    .line 3498
    mul-int/lit8 v0, p1, 0x5

    .local v0, "slot":I
    const/4 v1, 0x0

    .line 3499
    .local v1, "$i$a$-let-SlotTableKt$auxIndex$1":I
    array-length v2, p0

    if-lt v0, v2, :cond_0

    array-length v2, p0

    goto :goto_0

    .line 3500
    :cond_0
    add-int/lit8 v2, v0, 0x4

    aget v2, p0, v2

    .line 3501
    add-int/lit8 v3, v0, 0x1

    aget v3, p0, v3

    shr-int/lit8 v3, v3, 0x1d

    invoke-static {v3}, Landroidx/compose/runtime/SlotTableKt;->countOneBits(I)I

    move-result v3

    .line 3500
    add-int/2addr v2, v3

    .line 3499
    :goto_0
    nop

    .line 3498
    .end local v0    # "slot":I
    .end local v1    # "$i$a$-let-SlotTableKt$auxIndex$1":I
    nop

    .line 3502
    return v2
.end method

.method private static final containsAnyMark([II)Z
    .locals 3
    .param p0, "$this$containsAnyMark"    # [I
    .param p1, "address"    # I

    .line 3495
    mul-int/lit8 v0, p1, 0x5

    const/4 v1, 0x1

    add-int/2addr v0, v1

    aget v0, p0, v0

    .line 3496
    nop

    .line 3495
    const/high16 v2, 0xc000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3496
    :goto_0
    return v1
.end method

.method private static final containsMark([II)Z
    .locals 3
    .param p0, "$this$containsMark"    # [I
    .param p1, "address"    # I

    .line 3483
    mul-int/lit8 v0, p1, 0x5

    const/4 v1, 0x1

    add-int/2addr v0, v1

    aget v0, p0, v0

    const/high16 v2, 0x4000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static final countOneBits(I)I
    .locals 2
    .param p0, "value"    # I

    .line 3510
    const/4 v0, 0x2

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    .line 3518
    const/4 v0, 0x3

    goto :goto_0

    .line 3517
    :pswitch_0
    goto :goto_0

    .line 3516
    :pswitch_1
    goto :goto_0

    .line 3515
    :pswitch_2
    move v0, v1

    goto :goto_0

    .line 3514
    :pswitch_3
    goto :goto_0

    .line 3513
    :pswitch_4
    move v0, v1

    goto :goto_0

    .line 3512
    :pswitch_5
    move v0, v1

    goto :goto_0

    .line 3511
    :pswitch_6
    const/4 v0, 0x0

    .line 3519
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final dataAnchor([II)I
    .locals 1
    .param p0, "$this$dataAnchor"    # [I
    .param p1, "address"    # I

    .line 3573
    mul-int/lit8 v0, p1, 0x5

    add-int/lit8 v0, v0, 0x4

    aget v0, p0, v0

    return v0
.end method

.method private static final dataAnchors([II)Ljava/util/List;
    .locals 2
    .param p0, "$this$dataAnchors"    # [I
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3580
    const/4 v0, 0x4

    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Lkotlin/ranges/IntProgression;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p0, v0}, Landroidx/compose/runtime/SlotTableKt;->slice([ILjava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic dataAnchors$default([IIILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 3579
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    array-length p1, p0

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->dataAnchors([II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final fastIndexOf(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;)I
    .locals 5
    .param p0, "$this$fastIndexOf"    # Ljava/util/ArrayList;
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 788
    .local v0, "$i$f$fastIndexOf":I
    const/4 v1, 0x0

    .line 789
    .local v1, "index":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 790
    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 791
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 792
    .local v3, "value":Ljava/lang/Object;
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    .line 793
    :cond_0
    nop

    .end local v3    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 795
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private static final fastLastOrNull(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this$fastLastOrNull"    # Ljava/util/ArrayList;
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 778
    .local v0, "$i$f$fastLastOrNull":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 779
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_1

    .line 780
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 781
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    .line 782
    :cond_0
    nop

    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 784
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private static final find(Ljava/util/ArrayList;II)Landroidx/compose/runtime/Anchor;
    .locals 2
    .param p0, "$this$find"    # Ljava/util/ArrayList;
    .param p1, "index"    # I
    .param p2, "effectiveSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;II)",
            "Landroidx/compose/runtime/Anchor;"
        }
    .end annotation

    .line 3625
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->search(Ljava/util/ArrayList;II)I

    move-result v0

    .line 3626
    .local v0, "location":I
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/Anchor;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static final getOrAdd(Ljava/util/ArrayList;IILkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/Anchor;
    .locals 4
    .param p0, "$this$getOrAdd"    # Ljava/util/ArrayList;
    .param p1, "index"    # I
    .param p2, "effectiveSize"    # I
    .param p3, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;II",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/runtime/Anchor;",
            ">;)",
            "Landroidx/compose/runtime/Anchor;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3616
    .local v0, "$i$f$getOrAdd":I
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$search(Ljava/util/ArrayList;II)I

    move-result v1

    .line 3617
    .local v1, "location":I
    if-gez v1, :cond_0

    .line 3618
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/Anchor;

    .line 3619
    .local v2, "anchor":Landroidx/compose/runtime/Anchor;
    add-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    invoke-virtual {p0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3620
    nop

    .end local v2    # "anchor":Landroidx/compose/runtime/Anchor;
    goto :goto_0

    .line 3621
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/Anchor;

    .line 3617
    :goto_0
    return-object v2
.end method

.method private static final groupInfo([II)I
    .locals 1
    .param p0, "$this$groupInfo"    # [I
    .param p1, "address"    # I

    .line 3448
    mul-int/lit8 v0, p1, 0x5

    add-int/lit8 v0, v0, 0x1

    aget v0, p0, v0

    return v0
.end method

.method private static final groupSize([II)I
    .locals 1
    .param p0, "$this$groupSize"    # [I
    .param p1, "address"    # I

    .line 3553
    mul-int/lit8 v0, p1, 0x5

    add-int/lit8 v0, v0, 0x3

    aget v0, p0, v0

    return v0
.end method

.method private static final groupSizes([II)Ljava/util/List;
    .locals 2
    .param p0, "$this$groupSizes"    # [I
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3569
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Lkotlin/ranges/IntProgression;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p0, v0}, Landroidx/compose/runtime/SlotTableKt;->slice([ILjava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic groupSizes$default([IIILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 3568
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    array-length p1, p0

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->groupSizes([II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final hasAux([II)Z
    .locals 3
    .param p0, "$this$hasAux"    # [I
    .param p1, "address"    # I

    .line 3463
    mul-int/lit8 v0, p1, 0x5

    const/4 v1, 0x1

    add-int/2addr v0, v1

    aget v0, p0, v0

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static final hasMark([II)Z
    .locals 3
    .param p0, "$this$hasMark"    # [I
    .param p1, "address"    # I

    .line 3471
    mul-int/lit8 v0, p1, 0x5

    const/4 v1, 0x1

    add-int/2addr v0, v1

    aget v0, p0, v0

    const/high16 v2, 0x8000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static final hasObjectKey([II)Z
    .locals 3
    .param p0, "$this$hasObjectKey"    # [I
    .param p1, "address"    # I

    .line 3455
    mul-int/lit8 v0, p1, 0x5

    const/4 v1, 0x1

    add-int/2addr v0, v1

    aget v0, p0, v0

    const/high16 v2, 0x20000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static final initGroup([IIIZZZII)V
    .locals 7
    .param p0, "$this$initGroup"    # [I
    .param p1, "address"    # I
    .param p2, "key"    # I
    .param p3, "isNode"    # Z
    .param p4, "hasDataKey"    # Z
    .param p5, "hasData"    # Z
    .param p6, "parentAnchor"    # I
    .param p7, "dataAnchor"    # I

    .line 3592
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    move v1, v0

    .line 3593
    .local v1, "nodeBit":I
    :goto_0
    if-eqz p4, :cond_1

    const/high16 v2, 0x20000000

    goto :goto_1

    :cond_1
    move v2, v0

    .line 3594
    .local v2, "dataKeyBit":I
    :goto_1
    if-eqz p5, :cond_2

    const/high16 v3, 0x10000000

    goto :goto_2

    :cond_2
    move v3, v0

    .line 3595
    .local v3, "dataBit":I
    :goto_2
    mul-int/lit8 v4, p1, 0x5

    .line 3596
    .local v4, "arrayIndex":I
    add-int/lit8 v5, v4, 0x0

    aput p2, p0, v5

    .line 3597
    add-int/lit8 v5, v4, 0x1

    or-int v6, v1, v2

    or-int/2addr v6, v3

    aput v6, p0, v5

    .line 3598
    add-int/lit8 v5, v4, 0x2

    aput p6, p0, v5

    .line 3599
    add-int/lit8 v5, v4, 0x3

    aput v0, p0, v5

    .line 3600
    add-int/lit8 v0, v4, 0x4

    aput p7, p0, v0

    .line 3601
    return-void
.end method

.method private static final isNode([II)Z
    .locals 3
    .param p0, "$this$isNode"    # [I
    .param p1, "address"    # I

    .line 3451
    mul-int/lit8 v0, p1, 0x5

    const/4 v1, 0x1

    add-int/2addr v0, v1

    aget v0, p0, v0

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static final key([II)I
    .locals 1
    .param p0, "$this$key"    # [I
    .param p1, "address"    # I

    .line 3522
    mul-int/lit8 v0, p1, 0x5

    aget v0, p0, v0

    return v0
.end method

.method private static final keys([II)Ljava/util/List;
    .locals 2
    .param p0, "$this$keys"    # [I
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3524
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Lkotlin/ranges/IntProgression;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p0, v0}, Landroidx/compose/runtime/SlotTableKt;->slice([ILjava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic keys$default([IIILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 3523
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    array-length p1, p0

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->keys([II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final locationOf(Ljava/util/ArrayList;II)I
    .locals 3
    .param p0, "$this$locationOf"    # Ljava/util/ArrayList;
    .param p1, "index"    # I
    .param p2, "effectiveSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;II)I"
        }
    .end annotation

    .line 3655
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->search(Ljava/util/ArrayList;II)I

    move-result v0

    .line 3757
    .local v0, "it":I
    const/4 v1, 0x0

    .line 3655
    .local v1, "$i$a$-let-SlotTableKt$locationOf$1":I
    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    move v0, v2

    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-SlotTableKt$locationOf$1":I
    :goto_0
    return v0
.end method

.method private static final nodeCount([II)I
    .locals 2
    .param p0, "$this$nodeCount"    # [I
    .param p1, "address"    # I

    .line 3528
    mul-int/lit8 v0, p1, 0x5

    add-int/lit8 v0, v0, 0x1

    aget v0, p0, v0

    const v1, 0x3ffffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static final nodeCounts([II)Ljava/util/List;
    .locals 14
    .param p0, "$this$nodeCounts"    # [I
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3538
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Lkotlin/ranges/IntProgression;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p0, v0}, Landroidx/compose/runtime/SlotTableKt;->slice([ILjava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 3539
    nop

    .local v0, "$this$fastMap$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 3746
    .local v1, "$i$f$fastMap":I
    nop

    .line 3747
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3748
    .local v2, "target$iv":Ljava/util/ArrayList;
    move-object v3, v0

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 3749
    .local v4, "$i$f$fastForEach":I
    nop

    .line 3750
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_0

    .line 3751
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 3752
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 3753
    .local v9, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object v10, v2

    check-cast v10, Ljava/util/Collection;

    move-object v11, v8

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    .local v11, "it":I
    const/4 v12, 0x0

    .line 3539
    .local v12, "$i$a$-fastMap-SlotTableKt$nodeCounts$1":I
    const v13, 0x3ffffff

    and-int/2addr v11, v13

    .end local v11    # "it":I
    .end local v12    # "$i$a$-fastMap-SlotTableKt$nodeCounts$1":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 3753
    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3754
    nop

    .line 3752
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 3750
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3755
    .end local v5    # "index$iv$iv":I
    :cond_0
    nop

    .line 3756
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 3539
    .end local v0    # "$this$fastMap$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastMap":I
    .end local v2    # "target$iv":Ljava/util/ArrayList;
    return-object v0
.end method

.method static synthetic nodeCounts$default([IIILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 3537
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    array-length p1, p0

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->nodeCounts([II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final nodeIndex([II)I
    .locals 1
    .param p0, "$this$nodeIndex"    # [I
    .param p1, "address"    # I

    .line 3453
    mul-int/lit8 v0, p1, 0x5

    add-int/lit8 v0, v0, 0x4

    aget v0, p0, v0

    return v0
.end method

.method private static final objectKeyIndex([II)I
    .locals 4
    .param p0, "$this$objectKeyIndex"    # [I
    .param p1, "address"    # I

    .line 3457
    mul-int/lit8 v0, p1, 0x5

    .local v0, "slot":I
    const/4 v1, 0x0

    .line 3458
    .local v1, "$i$a$-let-SlotTableKt$objectKeyIndex$1":I
    add-int/lit8 v2, v0, 0x4

    aget v2, p0, v2

    .line 3459
    add-int/lit8 v3, v0, 0x1

    aget v3, p0, v3

    shr-int/lit8 v3, v3, 0x1e

    invoke-static {v3}, Landroidx/compose/runtime/SlotTableKt;->countOneBits(I)I

    move-result v3

    .line 3458
    add-int/2addr v2, v3

    .line 3457
    .end local v0    # "slot":I
    .end local v1    # "$i$a$-let-SlotTableKt$objectKeyIndex$1":I
    nop

    .line 3460
    return v2
.end method

.method private static final parentAnchor([II)I
    .locals 1
    .param p0, "$this$parentAnchor"    # [I
    .param p1, "address"    # I

    .line 3543
    mul-int/lit8 v0, p1, 0x5

    add-int/lit8 v0, v0, 0x2

    aget v0, p0, v0

    return v0
.end method

.method private static final parentAnchors([II)Ljava/util/List;
    .locals 2
    .param p0, "$this$parentAnchors"    # [I
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3550
    const/4 v0, 0x2

    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Lkotlin/ranges/IntProgression;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p0, v0}, Landroidx/compose/runtime/SlotTableKt;->slice([ILjava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic parentAnchors$default([IIILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 3549
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    array-length p1, p0

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->parentAnchors([II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final search(Ljava/util/ArrayList;II)I
    .locals 6
    .param p0, "$this$search"    # Ljava/util/ArrayList;
    .param p1, "location"    # I
    .param p2, "effectiveSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;II)I"
        }
    .end annotation

    .line 3633
    const/4 v0, 0x0

    .line 3634
    .local v0, "low":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 3636
    .local v1, "high":I
    :goto_0
    if-gt v0, v1, :cond_3

    .line 3637
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 3638
    .local v2, "mid":I
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/Anchor;

    invoke-virtual {v3}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result v3

    .line 3757
    .local v3, "it":I
    const/4 v4, 0x0

    .line 3638
    .local v4, "$i$a$-let-SlotTableKt$search$midVal$1":I
    if-gez v3, :cond_0

    add-int v5, p2, v3

    move v3, v5

    .line 3639
    .end local v4    # "$i$a$-let-SlotTableKt$search$midVal$1":I
    .local v3, "midVal":I
    :cond_0
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    .line 3641
    .local v4, "cmp":I
    nop

    .line 3642
    if-gez v4, :cond_1

    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 3643
    :cond_1
    if-lez v4, :cond_2

    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 3644
    :cond_2
    return v2

    .line 3647
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    .end local v4    # "cmp":I
    :cond_3
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private static final slice([ILjava/lang/Iterable;)Ljava/util/List;
    .locals 4
    .param p0, "$this$slice"    # [I
    .param p1, "indices"    # Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 3561
    .local v0, "list":Ljava/util/List;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 3562
    .local v2, "index":I
    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3564
    .end local v2    # "index":I
    :cond_0
    return-object v0
.end method

.method private static final slotAnchor([II)I
    .locals 4
    .param p0, "$this$slotAnchor"    # [I
    .param p1, "address"    # I

    .line 3504
    mul-int/lit8 v0, p1, 0x5

    .local v0, "slot":I
    const/4 v1, 0x0

    .line 3505
    .local v1, "$i$a$-let-SlotTableKt$slotAnchor$1":I
    add-int/lit8 v2, v0, 0x4

    aget v2, p0, v2

    .line 3506
    add-int/lit8 v3, v0, 0x1

    aget v3, p0, v3

    shr-int/lit8 v3, v3, 0x1c

    invoke-static {v3}, Landroidx/compose/runtime/SlotTableKt;->countOneBits(I)I

    move-result v3

    .line 3505
    add-int/2addr v2, v3

    .line 3504
    .end local v0    # "slot":I
    .end local v1    # "$i$a$-let-SlotTableKt$slotAnchor$1":I
    nop

    .line 3507
    return v2
.end method

.method private static final updateContainsMark([IIZ)V
    .locals 3
    .param p0, "$this$updateContainsMark"    # [I
    .param p1, "address"    # I
    .param p2, "value"    # Z

    .line 3486
    mul-int/lit8 v0, p1, 0x5

    add-int/lit8 v0, v0, 0x1

    .line 3487
    .local v0, "arrayIndex":I
    if-eqz p2, :cond_0

    .line 3488
    aget v1, p0, v0

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    aput v1, p0, v0

    goto :goto_0

    .line 3490
    :cond_0
    aget v1, p0, v0

    const v2, -0x4000001

    and-int/2addr v1, v2

    aput v1, p0, v0

    .line 3492
    :goto_0
    return-void
.end method

.method private static final updateDataAnchor([III)V
    .locals 1
    .param p0, "$this$updateDataAnchor"    # [I
    .param p1, "address"    # I
    .param p2, "anchor"    # I

    .line 3576
    mul-int/lit8 v0, p1, 0x5

    add-int/lit8 v0, v0, 0x4

    aput p2, p0, v0

    .line 3577
    return-void
.end method

.method private static final updateGroupKey([III)V
    .locals 2
    .param p0, "$this$updateGroupKey"    # [I
    .param p1, "address"    # I
    .param p2, "key"    # I

    .line 3607
    mul-int/lit8 v0, p1, 0x5

    .line 3608
    .local v0, "arrayIndex":I
    add-int/lit8 v1, v0, 0x0

    aput p2, p0, v1

    .line 3609
    return-void
.end method

.method private static final updateGroupSize([III)V
    .locals 1
    .param p0, "$this$updateGroupSize"    # [I
    .param p1, "address"    # I
    .param p2, "value"    # I

    .line 3555
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 3556
    mul-int/lit8 v0, p1, 0x5

    add-int/lit8 v0, v0, 0x3

    aput p2, p0, v0

    .line 3557
    return-void
.end method

.method private static final updateMark([IIZ)V
    .locals 3
    .param p0, "$this$updateMark"    # [I
    .param p1, "address"    # I
    .param p2, "value"    # Z

    .line 3474
    mul-int/lit8 v0, p1, 0x5

    add-int/lit8 v0, v0, 0x1

    .line 3475
    .local v0, "arrayIndex":I
    if-eqz p2, :cond_0

    .line 3476
    aget v1, p0, v0

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    aput v1, p0, v0

    goto :goto_0

    .line 3478
    :cond_0
    aget v1, p0, v0

    const v2, -0x8000001

    and-int/2addr v1, v2

    aput v1, p0, v0

    .line 3480
    :goto_0
    return-void
.end method

.method private static final updateNodeCount([III)V
    .locals 3
    .param p0, "$this$updateNodeCount"    # [I
    .param p1, "address"    # I
    .param p2, "value"    # I

    .line 3532
    const/4 v0, 0x1

    if-ltz p2, :cond_0

    const v1, 0x3ffffff

    if-ge p2, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 3533
    mul-int/lit8 v1, p1, 0x5

    add-int/2addr v1, v0

    .line 3534
    mul-int/lit8 v2, p1, 0x5

    add-int/2addr v2, v0

    aget v0, p0, v2

    const/high16 v2, -0x4000000

    and-int/2addr v0, v2

    or-int/2addr v0, p2

    aput v0, p0, v1

    .line 3535
    return-void
.end method

.method private static final updateParentAnchor([III)V
    .locals 1
    .param p0, "$this$updateParentAnchor"    # [I
    .param p1, "address"    # I
    .param p2, "value"    # I

    .line 3546
    mul-int/lit8 v0, p1, 0x5

    add-int/lit8 v0, v0, 0x2

    aput p2, p0, v0

    .line 3547
    return-void
.end method
