.class public final Landroidx/compose/runtime/SlotReader;
.super Ljava/lang/Object;
.source "SlotTable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n*L\n1#1,3745:1\n1#2:3746\n4178#3,5:3747\n4178#3,5:3752\n4178#3,5:3757\n4178#3,5:3762\n4178#3,5:3767\n3616#4,6:3772\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotReader\n*L\n1130#1:3747,5\n1140#1:3752,5\n1148#1:3757,5\n1167#1:3762,5\n1181#1:3767,5\n1223#1:3772,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u001a\n\u0002\u0010\u0015\n\u0002\u0008\u0010\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010@\u001a\u00020;2\u0008\u0008\u0002\u0010A\u001a\u00020\nJ\u0006\u0010B\u001a\u00020CJ\u0006\u0010D\u001a\u00020CJ\u000e\u0010E\u001a\u00020\u00062\u0006\u0010A\u001a\u00020\nJ\u0006\u0010F\u001a\u00020CJ\u0006\u0010G\u001a\u00020CJ\u000c\u0010H\u001a\u0008\u0012\u0004\u0012\u00020J0IJ\u0010\u0010K\u001a\u0004\u0018\u00010\u00012\u0006\u0010A\u001a\u00020\nJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u00012\u0006\u0010A\u001a\u00020\nJ\u000e\u0010\u0016\u001a\u00020\n2\u0006\u0010A\u001a\u00020\nJ\u0010\u0010L\u001a\u0004\u0018\u00010\u00012\u0006\u0010A\u001a\u00020\nJ\u0018\u0010L\u001a\u0004\u0018\u00010\u00012\u0006\u0010M\u001a\u00020\n2\u0006\u0010A\u001a\u00020\nJ\u000e\u0010\u0018\u001a\u00020\n2\u0006\u0010@\u001a\u00020;J\u000e\u0010\u0018\u001a\u00020\n2\u0006\u0010A\u001a\u00020\nJ\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u00012\u0006\u0010A\u001a\u00020\nJ\u000e\u0010\u001e\u001a\u00020\n2\u0006\u0010A\u001a\u00020\nJ\u000e\u0010N\u001a\u00020\u00062\u0006\u0010A\u001a\u00020\nJ\u000e\u0010O\u001a\u00020\u00062\u0006\u0010A\u001a\u00020\nJ\u000e\u0010*\u001a\u00020\u00062\u0006\u0010A\u001a\u00020\nJ\u0008\u0010P\u001a\u0004\u0018\u00010\u0001J\u0010\u0010Q\u001a\u0004\u0018\u00010\u00012\u0006\u0010A\u001a\u00020\nJ\u000e\u0010+\u001a\u00020\n2\u0006\u0010A\u001a\u00020\nJ\u000e\u0010-\u001a\u00020\n2\u0006\u0010A\u001a\u00020\nJ\u000e\u0010R\u001a\u00020\n2\u0006\u0010A\u001a\u00020\nJ\u000e\u0010S\u001a\u00020C2\u0006\u0010A\u001a\u00020\nJ\u000e\u0010T\u001a\u00020C2\u0006\u0010A\u001a\u00020\nJ\u0006\u0010U\u001a\u00020\nJ\u0006\u0010V\u001a\u00020CJ\u0006\u0010W\u001a\u00020CJ\u0006\u0010X\u001a\u00020CJ\u0008\u0010Y\u001a\u00020ZH\u0016J\u0016\u0010[\u001a\u0004\u0018\u00010\u0001*\u00020%2\u0006\u0010A\u001a\u00020\nH\u0002J\u0016\u0010Q\u001a\u0004\u0018\u00010\u0001*\u00020%2\u0006\u0010A\u001a\u00020\nH\u0002J\u0016\u0010\\\u001a\u0004\u0018\u00010\u0001*\u00020%2\u0006\u0010A\u001a\u00020\nH\u0002R\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001e\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u000e\u0010\u0010\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\rR\u0011\u0010\u0018\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\rR\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0015R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0015R\u0011\u0010\u001e\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\rR\u0011\u0010 \u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\rR\u0011\u0010\"\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\rR\u000e\u0010$\u001a\u00020%X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\'\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010\tR\u0011\u0010)\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\tR\u0011\u0010*\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\tR\u0011\u0010+\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010\rR\u001e\u0010-\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\rR\u0011\u0010/\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u00080\u0010\rR\u0011\u00101\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u00082\u0010\rR\u0011\u00103\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u00084\u0010\rR\u0018\u00105\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000106X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u00107R\u000e\u00108\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R.\u00109\u001a\"\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020<\u0018\u00010:j\u0010\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020<\u0018\u0001`=X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010?\u00a8\u0006]"
    }
    d2 = {
        "Landroidx/compose/runtime/SlotReader;",
        "",
        "table",
        "Landroidx/compose/runtime/SlotTable;",
        "(Landroidx/compose/runtime/SlotTable;)V",
        "<set-?>",
        "",
        "closed",
        "getClosed",
        "()Z",
        "",
        "currentEnd",
        "getCurrentEnd",
        "()I",
        "currentGroup",
        "getCurrentGroup",
        "currentSlot",
        "currentSlotEnd",
        "emptyCount",
        "groupAux",
        "getGroupAux",
        "()Ljava/lang/Object;",
        "groupEnd",
        "getGroupEnd",
        "groupKey",
        "getGroupKey",
        "groupNode",
        "getGroupNode",
        "groupObjectKey",
        "getGroupObjectKey",
        "groupSize",
        "getGroupSize",
        "groupSlotCount",
        "getGroupSlotCount",
        "groupSlotIndex",
        "getGroupSlotIndex",
        "groups",
        "",
        "groupsSize",
        "inEmpty",
        "getInEmpty",
        "isGroupEnd",
        "isNode",
        "nodeCount",
        "getNodeCount",
        "parent",
        "getParent",
        "parentNodes",
        "getParentNodes",
        "size",
        "getSize",
        "slot",
        "getSlot",
        "slots",
        "",
        "[Ljava/lang/Object;",
        "slotsSize",
        "sourceInformationMap",
        "Ljava/util/HashMap;",
        "Landroidx/compose/runtime/Anchor;",
        "Landroidx/compose/runtime/GroupSourceInformation;",
        "Lkotlin/collections/HashMap;",
        "getTable$runtime_release",
        "()Landroidx/compose/runtime/SlotTable;",
        "anchor",
        "index",
        "beginEmpty",
        "",
        "close",
        "containsMark",
        "endEmpty",
        "endGroup",
        "extractKeys",
        "",
        "Landroidx/compose/runtime/KeyInfo;",
        "get",
        "groupGet",
        "group",
        "hasMark",
        "hasObjectKey",
        "next",
        "node",
        "parentOf",
        "reposition",
        "restoreParent",
        "skipGroup",
        "skipToGroupEnd",
        "startGroup",
        "startNode",
        "toString",
        "",
        "aux",
        "objectKey",
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


# static fields
.field public static final $stable:I


# instance fields
.field private closed:Z

.field private currentEnd:I

.field private currentGroup:I

.field private currentSlot:I

.field private currentSlotEnd:I

.field private emptyCount:I

.field private final groups:[I

.field private final groupsSize:I

.field private parent:I

.field private final slots:[Ljava/lang/Object;

.field private final slotsSize:I

.field private sourceInformationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/GroupSourceInformation;",
            ">;"
        }
    .end annotation
.end field

.field private final table:Landroidx/compose/runtime/SlotTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/SlotReader;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/SlotTable;)V
    .locals 1
    .param p1, "table"    # Landroidx/compose/runtime/SlotTable;

    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    iput-object p1, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    .line 811
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 816
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    .line 821
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getSlots()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    .line 826
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getSlotsSize()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->slotsSize:I

    .line 849
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    .line 855
    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 801
    return-void
.end method

.method public static synthetic anchor$default(Landroidx/compose/runtime/SlotReader;IILjava/lang/Object;)Landroidx/compose/runtime/Anchor;
    .locals 0

    .line 1223
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object p0

    return-object p0
.end method

.method private final aux([II)Ljava/lang/Object;
    .locals 2
    .param p1, "$this$aux"    # [I
    .param p2, "index"    # I

    .line 1231
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$hasAux([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$auxIndex([II)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    .line 1233
    :cond_0
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final node([II)Ljava/lang/Object;
    .locals 2
    .param p1, "$this$node"    # [I
    .param p2, "index"    # I

    .line 1227
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$nodeIndex([II)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    .line 1229
    :cond_0
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final objectKey([II)Ljava/lang/Object;
    .locals 2
    .param p1, "$this$objectKey"    # [I
    .param p2, "index"    # I

    .line 1235
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$hasObjectKey([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$objectKeyIndex([II)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    .line 1237
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final anchor(I)Landroidx/compose/runtime/Anchor;
    .locals 6
    .param p1, "index"    # I

    .line 1223
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getAnchors$runtime_release()Ljava/util/ArrayList;

    move-result-object v0

    .local v0, "$this$getOrAdd$iv":Ljava/util/ArrayList;
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    .local v1, "effectiveSize$iv":I
    const/4 v2, 0x0

    .line 3772
    .local v2, "$i$f$getOrAdd":I
    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/SlotTableKt;->access$search(Ljava/util/ArrayList;II)I

    move-result v3

    .line 3773
    .local v3, "location$iv":I
    if-gez v3, :cond_0

    .line 3774
    const/4 v4, 0x0

    .line 1224
    .local v4, "$i$a$-getOrAdd-SlotReader$anchor$1":I
    new-instance v5, Landroidx/compose/runtime/Anchor;

    invoke-direct {v5, p1}, Landroidx/compose/runtime/Anchor;-><init>(I)V

    .line 3774
    .end local v4    # "$i$a$-getOrAdd-SlotReader$anchor$1":I
    move-object v4, v5

    .line 3775
    .local v4, "anchor$iv":Landroidx/compose/runtime/Anchor;
    add-int/lit8 v5, v3, 0x1

    neg-int v5, v5

    invoke-virtual {v0, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3776
    nop

    .end local v4    # "anchor$iv":Landroidx/compose/runtime/Anchor;
    goto :goto_0

    .line 3777
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/Anchor;

    .line 3773
    :goto_0
    nop

    .line 1225
    .end local v0    # "$this$getOrAdd$iv":Ljava/util/ArrayList;
    .end local v1    # "effectiveSize$iv":I
    .end local v2    # "$i$f$getOrAdd":I
    .end local v3    # "location$iv":I
    return-object v4
.end method

.method public final beginEmpty()V
    .locals 1

    .line 1077
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    .line 1078
    return-void
.end method

.method public final close()V
    .locals 2

    .line 1093
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/SlotReader;->closed:Z

    .line 1094
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->sourceInformationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v1}, Landroidx/compose/runtime/SlotTable;->close$runtime_release(Landroidx/compose/runtime/SlotReader;Ljava/util/HashMap;)V

    .line 1095
    return-void
.end method

.method public final containsMark(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 1011
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$containsMark([II)Z

    move-result v0

    return v0
.end method

.method public final endEmpty()V
    .locals 2

    .line 1084
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1085
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    .line 1086
    return-void

    .line 3746
    :cond_1
    const/4 v0, 0x0

    .line 1084
    .local v0, "$i$a$-require-SlotReader$endEmpty$1":I
    nop

    .end local v0    # "$i$a$-require-SlotReader$endEmpty$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unbalanced begin/end empty"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final endGroup()V
    .locals 4

    .line 1180
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-nez v0, :cond_3

    .line 1181
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .local v0, "value$iv":Z
    :goto_0
    const/4 v1, 0x0

    .line 3767
    .local v1, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_2

    .line 3771
    nop

    .line 1184
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$runtimeCheck":I
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v0

    .line 1185
    .local v0, "parent":I
    iput v0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 1186
    if-gez v0, :cond_1

    .line 1187
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    goto :goto_1

    .line 1189
    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v1

    add-int/2addr v1, v0

    .line 1186
    :goto_1
    iput v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    goto :goto_2

    .line 3768
    .local v0, "value$iv":Z
    .restart local v1    # "$i$f$runtimeCheck":I
    :cond_2
    const/4 v2, 0x0

    .line 1182
    .local v2, "$i$a$-runtimeCheck-SlotReader$endGroup$1":I
    nop

    .line 3768
    .end local v2    # "$i$a$-runtimeCheck-SlotReader$endGroup$1":I
    const-string/jumbo v2, "endGroup() not called at the end of a group"

    .line 3769
    .local v2, "message$iv":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3

    .line 1191
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$runtimeCheck":I
    .end local v2    # "message$iv":Ljava/lang/Object;
    :cond_3
    :goto_2
    return-void
.end method

.method public final extractKeys()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/KeyInfo;",
            ">;"
        }
    .end annotation

    .line 1198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1199
    .local v0, "result":Ljava/util/List;
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-lez v1, :cond_0

    return-object v0

    .line 1200
    :cond_0
    const/4 v1, 0x0

    .line 1201
    .local v1, "index":I
    iget v2, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    move v8, v1

    .line 1202
    .end local v1    # "index":I
    .local v2, "childIndex":I
    .local v8, "index":I
    :goto_0
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ge v2, v1, :cond_2

    .line 1203
    nop

    .line 1204
    new-instance v1, Landroidx/compose/runtime/KeyInfo;

    .line 1205
    iget-object v3, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v3, v2}, Landroidx/compose/runtime/SlotTableKt;->access$key([II)I

    move-result v4

    .line 1206
    iget-object v3, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-direct {p0, v3, v2}, Landroidx/compose/runtime/SlotReader;->objectKey([II)Ljava/lang/Object;

    move-result-object v5

    .line 1207
    nop

    .line 1208
    iget-object v3, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v3, v2}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v3, v2}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v3

    :goto_1
    move v7, v3

    .line 1209
    add-int/lit8 v9, v8, 0x1

    .line 1204
    .end local v8    # "index":I
    .local v9, "index":I
    move-object v3, v1

    move v6, v2

    invoke-direct/range {v3 .. v8}, Landroidx/compose/runtime/KeyInfo;-><init>(ILjava/lang/Object;III)V

    .line 1203
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1212
    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v1

    add-int/2addr v2, v1

    move v8, v9

    goto :goto_0

    .line 1214
    .end local v9    # "index":I
    .restart local v8    # "index":I
    :cond_2
    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .line 1042
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    add-int/2addr v0, p1

    .local v0, "slotIndex":I
    const/4 v1, 0x0

    .line 1043
    .local v1, "$i$a$-let-SlotReader$get$1":I
    iget v2, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    aget-object v2, v2, v0

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    .line 1042
    .end local v0    # "slotIndex":I
    .end local v1    # "$i$a$-let-SlotReader$get$1":I
    :goto_0
    nop

    .line 1044
    return-object v2
.end method

.method public final getClosed()Z
    .locals 1

    .line 837
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotReader;->closed:Z

    return v0
.end method

.method public final getCurrentEnd()I
    .locals 1

    .line 849
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    return v0
.end method

.method public final getCurrentGroup()I
    .locals 1

    .line 843
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    return v0
.end method

.method public final getGroupAux()Ljava/lang/Object;
    .locals 2

    .line 985
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/SlotReader;->aux([II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getGroupEnd()I
    .locals 1

    .line 939
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    return v0
.end method

.method public final getGroupKey()I
    .locals 2

    .line 950
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ge v0, v1, :cond_0

    .line 951
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$key([II)I

    move-result v0

    goto :goto_0

    .line 952
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getGroupNode()Ljava/lang/Object;
    .locals 2

    .line 995
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/SlotReader;->node([II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getGroupObjectKey()Ljava/lang/Object;
    .locals 2

    .line 975
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/SlotReader;->objectKey([II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getGroupSize()I
    .locals 2

    .line 928
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v0

    return v0
.end method

.method public final getGroupSlotCount()I
    .locals 5

    .line 1032
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 1033
    .local v0, "current":I
    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result v1

    .line 1034
    .local v1, "start":I
    add-int/lit8 v2, v0, 0x1

    .line 1035
    .local v2, "next":I
    iget v3, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v3, v2}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v3

    goto :goto_0

    :cond_0
    iget v3, p0, Landroidx/compose/runtime/SlotReader;->slotsSize:I

    .line 1036
    .local v3, "end":I
    :goto_0
    sub-int v4, v3, v1

    return v4
.end method

.method public final getGroupSlotIndex()I
    .locals 3

    .line 963
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v2, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-static {v1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getInEmpty()Z
    .locals 1

    .line 923
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getNodeCount()I
    .locals 2

    .line 903
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v0

    return v0
.end method

.method public final getParent()I
    .locals 1

    .line 855
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    return v0
.end method

.method public final getParentNodes()I
    .locals 2

    .line 1016
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getSize()I
    .locals 1

    .line 877
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    return v0
.end method

.method public final getSlot()I
    .locals 3

    .line 882
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v2, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-static {v1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getTable$runtime_release()Landroidx/compose/runtime/SlotTable;
    .locals 1

    .line 805
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    return-object v0
.end method

.method public final groupAux(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 990
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotReader;->aux([II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final groupEnd(I)I
    .locals 1
    .param p1, "index"    # I

    .line 944
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public final groupGet(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 1049
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-virtual {p0, v0, p1}, Landroidx/compose/runtime/SlotReader;->groupGet(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final groupGet(II)Ljava/lang/Object;
    .locals 5
    .param p1, "group"    # I
    .param p2, "index"    # I

    .line 1055
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result v0

    .line 1056
    .local v0, "start":I
    add-int/lit8 v1, p1, 0x1

    .line 1057
    .local v1, "next":I
    iget v2, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v2, v1}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v2

    goto :goto_0

    :cond_0
    iget v2, p0, Landroidx/compose/runtime/SlotReader;->slotsSize:I

    .line 1058
    .local v2, "end":I
    :goto_0
    add-int v3, v0, p2

    .line 1059
    .local v3, "address":I
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    aget-object v4, v4, v3

    goto :goto_1

    :cond_1
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    :goto_1
    return-object v4
.end method

.method public final groupKey(I)I
    .locals 1
    .param p1, "index"    # I

    .line 957
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$key([II)I

    move-result v0

    return v0
.end method

.method public final groupKey(Landroidx/compose/runtime/Anchor;)I
    .locals 2
    .param p1, "anchor"    # Landroidx/compose/runtime/Anchor;

    .line 1000
    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v1, p1}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$key([II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final groupObjectKey(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 980
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotReader;->objectKey([II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final groupSize(I)I
    .locals 1
    .param p1, "index"    # I

    .line 934
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v0

    return v0
.end method

.method public final hasMark(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 1005
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$hasMark([II)Z

    move-result v0

    return v0
.end method

.method public final hasObjectKey(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 968
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$hasObjectKey([II)Z

    move-result v0

    return v0
.end method

.method public final isGroupEnd()Z
    .locals 2

    .line 918
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getInEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isNode()Z
    .locals 2

    .line 892
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v0

    return v0
.end method

.method public final isNode(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 897
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1068
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-gtz v0, :cond_1

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 1069
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    aget-object v0, v0, v1

    return-object v0

    .line 1068
    :cond_1
    :goto_0
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final node(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 913
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotReader;->node([II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final nodeCount(I)I
    .locals 1
    .param p1, "index"    # I

    .line 908
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v0

    return v0
.end method

.method public final parent(I)I
    .locals 1
    .param p1, "index"    # I

    .line 887
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v0

    return v0
.end method

.method public final parentOf(I)I
    .locals 3
    .param p1, "index"    # I

    .line 1023
    if-ltz p1, :cond_0

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1024
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v0

    return v0

    .line 3746
    :cond_1
    const/4 v0, 0x0

    .line 1023
    .local v0, "$i$a$-require-SlotReader$parentOf$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid group index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-SlotReader$parentOf$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final reposition(I)V
    .locals 4
    .param p1, "index"    # I

    .line 1148
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .local v0, "value$iv":Z
    :goto_0
    const/4 v2, 0x0

    .line 3757
    .local v2, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_3

    .line 3761
    nop

    .line 1149
    .end local v0    # "value$iv":Z
    .end local v2    # "$i$f$runtimeCheck":I
    iput p1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 1150
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    .line 1151
    .local v0, "parent":I
    :goto_1
    iput v0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 1152
    if-gez v0, :cond_2

    .line 1153
    iget v2, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    goto :goto_2

    .line 1155
    :cond_2
    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    .line 1156
    :goto_2
    iput v1, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    .line 1157
    iput v1, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    .line 1158
    return-void

    .line 3758
    .local v0, "value$iv":Z
    .restart local v2    # "$i$f$runtimeCheck":I
    :cond_3
    const/4 v1, 0x0

    .line 1148
    .local v1, "$i$a$-runtimeCheck-SlotReader$reposition$1":I
    nop

    .line 3758
    .end local v1    # "$i$a$-runtimeCheck-SlotReader$reposition$1":I
    const-string v1, "Cannot reposition while in an empty region"

    .line 3759
    .local v1, "message$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public final restoreParent(I)V
    .locals 7
    .param p1, "index"    # I

    .line 1164
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v0

    add-int/2addr v0, p1

    .line 1165
    .local v0, "newCurrentEnd":I
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 1167
    .local v1, "current":I
    const/4 v2, 0x0

    if-lt v1, p1, :cond_0

    if-gt v1, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .local v3, "value$iv":Z
    :goto_0
    const/4 v4, 0x0

    .line 3762
    .local v4, "$i$f$runtimeCheck":I
    if-eqz v3, :cond_1

    .line 3766
    nop

    .line 1170
    .end local v3    # "value$iv":Z
    .end local v4    # "$i$f$runtimeCheck":I
    iput p1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 1171
    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    .line 1172
    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    .line 1173
    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    .line 1174
    return-void

    .line 3763
    .restart local v3    # "value$iv":Z
    .restart local v4    # "$i$f$runtimeCheck":I
    :cond_1
    const/4 v2, 0x0

    .line 1168
    .local v2, "$i$a$-runtimeCheck-SlotReader$restoreParent$1":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a parent of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3763
    .end local v2    # "$i$a$-runtimeCheck-SlotReader$restoreParent$1":I
    nop

    .line 3764
    .local v2, "message$iv":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v5
.end method

.method public final skipGroup()I
    .locals 4

    .line 1130
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .local v0, "value$iv":Z
    :goto_0
    const/4 v2, 0x0

    .line 3747
    .local v2, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_2

    .line 3751
    nop

    .line 1131
    .end local v0    # "value$iv":Z
    .end local v2    # "$i$f$runtimeCheck":I
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v2, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-static {v0, v2}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v1

    :goto_1
    move v0, v1

    .line 1132
    .local v0, "count":I
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v3, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-static {v2, v3}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 1133
    return v0

    .line 3748
    .local v0, "value$iv":Z
    .restart local v2    # "$i$f$runtimeCheck":I
    :cond_2
    const/4 v1, 0x0

    .line 1130
    .local v1, "$i$a$-runtimeCheck-SlotReader$skipGroup$1":I
    nop

    .line 3748
    .end local v1    # "$i$a$-runtimeCheck-SlotReader$skipGroup$1":I
    const-string v1, "Cannot skip while in an empty region"

    .line 3749
    .local v1, "message$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public final skipToGroupEnd()V
    .locals 4

    .line 1140
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .local v0, "value$iv":Z
    :goto_0
    const/4 v1, 0x0

    .line 3752
    .local v1, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_1

    .line 3756
    nop

    .line 1141
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$runtimeCheck":I
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 1142
    return-void

    .line 3753
    .restart local v0    # "value$iv":Z
    .restart local v1    # "$i$f$runtimeCheck":I
    :cond_1
    const/4 v2, 0x0

    .line 1140
    .local v2, "$i$a$-runtimeCheck-SlotReader$skipToGroupEnd$1":I
    nop

    .line 3753
    .end local v2    # "$i$a$-runtimeCheck-SlotReader$skipToGroupEnd$1":I
    const-string v2, "Cannot skip the enclosing group while in an empty region"

    .line 3754
    .local v2, "message$iv":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public final startGroup()V
    .locals 5

    .line 1101
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-gtz v0, :cond_4

    .line 1102
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 1103
    .local v0, "parent":I
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 1104
    .local v1, "currentGroup":I
    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v2, v1}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v0, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 1105
    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->sourceInformationMap:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/GroupSourceInformation;

    if-eqz v2, :cond_1

    iget-object v4, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v2, v4, v1}, Landroidx/compose/runtime/GroupSourceInformation;->reportGroup(Landroidx/compose/runtime/SlotTable;I)V

    .line 1106
    :cond_1
    iput v1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 1107
    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v2, v1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    .line 1108
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 1109
    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v2, v1}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result v2

    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    .line 1110
    iget v2, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_2

    .line 1111
    iget v2, p0, Landroidx/compose/runtime/SlotReader;->slotsSize:I

    goto :goto_1

    .line 1112
    :cond_2
    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v2

    .line 1110
    :goto_1
    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    goto :goto_2

    .line 3746
    :cond_3
    const/4 v2, 0x0

    .line 1104
    .local v2, "$i$a$-require-SlotReader$startGroup$1":I
    nop

    .end local v2    # "$i$a$-require-SlotReader$startGroup$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid slot table detected"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1114
    .end local v0    # "parent":I
    .end local v1    # "currentGroup":I
    :cond_4
    :goto_2
    return-void
.end method

.method public final startNode()V
    .locals 2

    .line 1120
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-gtz v0, :cond_1

    .line 1121
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1122
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->startGroup()V

    goto :goto_0

    .line 3746
    :cond_0
    const/4 v0, 0x0

    .line 1121
    .local v0, "$i$a$-require-SlotReader$startNode$1":I
    nop

    .end local v0    # "$i$a$-require-SlotReader$startNode$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected a node group"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1124
    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SlotReader(current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1218
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 1217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1218
    nop

    .line 1217
    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1218
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    .line 1217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1218
    return-object v0
.end method
