.class public final Landroidx/compose/runtime/SlotTable;
.super Ljava/lang/Object;
.source "SlotTable.kt"

# interfaces
.implements Landroidx/compose/runtime/tooling/CompositionData;
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/tooling/CompositionData;",
        "Ljava/lang/Iterable<",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n+ 5 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 6 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,3745:1\n150#1,8:3794\n166#1,4:3802\n171#1,3:3812\n4178#2,5:3746\n4178#2,5:3751\n4178#2,5:3756\n4178#2,5:3768\n4178#2,5:3773\n4178#2,5:3778\n4178#2,5:3783\n4178#2,5:3788\n1#3:3761\n3616#4,6:3762\n82#5:3793\n33#6,6:3806\n33#6,6:3815\n33#6,6:3821\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n*L\n338#1:3794,8\n367#1:3802,4\n367#1:3812,3\n194#1:3746,5\n195#1:3751,5\n211#1:3756,5\n222#1:3768,5\n233#1:3773,5\n253#1:3778,5\n254#1:3783,5\n266#1:3788,5\n213#1:3762,6\n269#1:3793\n369#1:3806,6\n500#1:3815,6\n509#1:3821,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010(\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002B\u0005\u00a2\u0006\u0002\u0010\u0004J\u000e\u00103\u001a\u00020\u00072\u0006\u00104\u001a\u00020\u0015J\u000e\u00105\u001a\u00020\u00152\u0006\u00103\u001a\u00020\u0007J\u0006\u00106\u001a\u000207J=\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;2&\u0010%\u001a\"\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\'\u0018\u00010&j\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\'\u0018\u0001`(H\u0000\u00a2\u0006\u0002\u0008<J\u007f\u00108\u001a\u0002092\u0006\u00101\u001a\u00020=2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00152\u000e\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001d2\u0006\u0010#\u001a\u00020\u00152\u0016\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u00082&\u0010%\u001a\"\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\'\u0018\u00010&j\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\'\u0018\u0001`(H\u0000\u00a2\u0006\u0004\u0008<\u0010>J\u0006\u0010?\u001a\u00020\u001aJ\u000e\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\u00150AH\u0002J\u0012\u0010B\u001a\u0004\u0018\u00010\u00032\u0006\u0010C\u001a\u00020\u001eH\u0016J\u0012\u0010D\u001a\u0004\u0018\u00010E2\u0006\u0010F\u001a\u00020\u0015H\u0002J\u0016\u0010G\u001a\u00020\u001a2\u0006\u0010H\u001a\u00020\u00152\u0006\u00103\u001a\u00020\u0007J\u000e\u0010I\u001a\u0008\u0012\u0004\u0012\u00020\u00150AH\u0002J\u001d\u0010J\u001a\n\u0012\u0004\u0012\u00020E\u0018\u00010A2\u0006\u0010K\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008LJ\u000f\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\u00030NH\u0096\u0002J\u000e\u0010O\u001a\u0008\u0012\u0004\u0012\u00020\u00150AH\u0002J\u000e\u0010P\u001a\u0008\u0012\u0004\u0012\u00020\u00150AH\u0002J\u0006\u0010Q\u001a\u00020;J\u0006\u0010R\u001a\u00020=J\u000e\u0010S\u001a\u00020\u001a2\u0006\u00103\u001a\u00020\u0007J\u000e\u0010T\u001a\u0008\u0012\u0004\u0012\u00020\u00150AH\u0002J7\u0010U\u001a\u0002HV\"\u0004\u0008\u0000\u0010V2!\u0010W\u001a\u001d\u0012\u0013\u0012\u00110;\u00a2\u0006\u000c\u0008Y\u0012\u0008\u0008Z\u0012\u0004\u0008\u0008(:\u0012\u0004\u0012\u0002HV0XH\u0086\u0008\u00a2\u0006\u0002\u0010[Jw\u0010\\\u001a\u0002092\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00152\u000e\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001d2\u0006\u0010#\u001a\u00020\u00152\u0016\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u00082&\u0010%\u001a\"\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\'\u0018\u00010&j\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\'\u0018\u0001`(H\u0000\u00a2\u0006\u0004\u0008]\u0010^J\u001f\u0010_\u001a\u0004\u0018\u00010\u001e2\u0006\u0010F\u001a\u00020\u00152\u0006\u0010`\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008aJ\u001d\u0010b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0A2\u0006\u0010F\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008cJ\u0010\u0010d\u001a\u0004\u0018\u00010\'2\u0006\u0010F\u001a\u00020\u0015J\u0010\u0010e\u001a\u0004\u0018\u00010\u00072\u0006\u00104\u001a\u00020\u0015J\u0006\u0010f\u001a\u000209J7\u0010g\u001a\u0002HV\"\u0004\u0008\u0000\u0010V2!\u0010W\u001a\u001d\u0012\u0013\u0012\u00110=\u00a2\u0006\u000c\u0008Y\u0012\u0008\u0008Z\u0012\u0004\u0008\u0008(1\u0012\u0004\u0012\u0002HV0XH\u0086\u0008\u00a2\u0006\u0002\u0010[J \u0010h\u001a\u00020\u0015*\u00060ij\u0002`j2\u0006\u00104\u001a\u00020\u00152\u0006\u0010k\u001a\u00020\u0015H\u0002R*\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u0008X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u0015@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u001a8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R0\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001d2\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001d@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010\"\u001a\u0004\u0008 \u0010!R\u001e\u0010#\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u0015@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u0018R:\u0010%\u001a\"\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\'\u0018\u00010&j\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\'\u0018\u0001`(X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u001a\u0010-\u001a\u00020\u0015X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u0018\"\u0004\u0008/\u00100R\u001e\u00101\u001a\u00020\u001a2\u0006\u0010\u0010\u001a\u00020\u001a@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010\u001b\u00a8\u0006l"
    }
    d2 = {
        "Landroidx/compose/runtime/SlotTable;",
        "Landroidx/compose/runtime/tooling/CompositionData;",
        "",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        "()V",
        "anchors",
        "Ljava/util/ArrayList;",
        "Landroidx/compose/runtime/Anchor;",
        "Lkotlin/collections/ArrayList;",
        "getAnchors$runtime_release",
        "()Ljava/util/ArrayList;",
        "setAnchors$runtime_release",
        "(Ljava/util/ArrayList;)V",
        "compositionGroups",
        "getCompositionGroups",
        "()Ljava/lang/Iterable;",
        "<set-?>",
        "",
        "groups",
        "getGroups",
        "()[I",
        "",
        "groupsSize",
        "getGroupsSize",
        "()I",
        "isEmpty",
        "",
        "()Z",
        "readers",
        "",
        "",
        "slots",
        "getSlots",
        "()[Ljava/lang/Object;",
        "[Ljava/lang/Object;",
        "slotsSize",
        "getSlotsSize",
        "sourceInformationMap",
        "Ljava/util/HashMap;",
        "Landroidx/compose/runtime/GroupSourceInformation;",
        "Lkotlin/collections/HashMap;",
        "getSourceInformationMap$runtime_release",
        "()Ljava/util/HashMap;",
        "setSourceInformationMap$runtime_release",
        "(Ljava/util/HashMap;)V",
        "version",
        "getVersion$runtime_release",
        "setVersion$runtime_release",
        "(I)V",
        "writer",
        "getWriter$runtime_release",
        "anchor",
        "index",
        "anchorIndex",
        "asString",
        "",
        "close",
        "",
        "reader",
        "Landroidx/compose/runtime/SlotReader;",
        "close$runtime_release",
        "Landroidx/compose/runtime/SlotWriter;",
        "(Landroidx/compose/runtime/SlotWriter;[II[Ljava/lang/Object;ILjava/util/ArrayList;Ljava/util/HashMap;)V",
        "containsMark",
        "dataIndexes",
        "",
        "find",
        "identityToFind",
        "findEffectiveRecomposeScope",
        "Landroidx/compose/runtime/RecomposeScopeImpl;",
        "group",
        "groupContainsAnchor",
        "groupIndex",
        "groupSizes",
        "invalidateGroupsWithKey",
        "target",
        "invalidateGroupsWithKey$runtime_release",
        "iterator",
        "",
        "keys",
        "nodes",
        "openReader",
        "openWriter",
        "ownsAnchor",
        "parentIndexes",
        "read",
        "T",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "setTo",
        "setTo$runtime_release",
        "([II[Ljava/lang/Object;ILjava/util/ArrayList;Ljava/util/HashMap;)V",
        "slot",
        "slotIndex",
        "slot$runtime_release",
        "slotsOf",
        "slotsOf$runtime_release",
        "sourceInformationOf",
        "tryAnchor",
        "verifyWellFormed",
        "write",
        "emitGroup",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "level",
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
.field private anchors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation
.end field

.field private groups:[I

.field private groupsSize:I

.field private readers:I

.field private slots:[Ljava/lang/Object;

.field private slotsSize:I

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

.field private version:I

.field private writer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/SlotTable;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 102
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    .line 81
    return-void
.end method

.method private final dataIndexes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 653
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    mul-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchors([II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final emitGroup(Ljava/lang/StringBuilder;II)I
    .locals 19
    .param p1, "$this$emitGroup"    # Ljava/lang/StringBuilder;
    .param p2, "index"    # I
    .param p3, "level"    # I

    .line 563
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    move v6, v5

    .line 3761
    .local v6, "it":I
    const/4 v7, 0x0

    .line 563
    .local v7, "$i$a$-repeat-SlotTable$emitGroup$1":I
    const/16 v8, 0x20

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v6    # "it":I
    .end local v7    # "$i$a$-repeat-SlotTable$emitGroup$1":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 564
    :cond_0
    const-string v5, "Group("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 566
    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SlotTable;->tryAnchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    .local v5, "anchor":Landroidx/compose/runtime/Anchor;
    const/4 v7, 0x0

    .line 568
    .local v7, "$i$a$-let-SlotTable$emitGroup$2":I
    iget-object v8, v0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    if-eqz v8, :cond_3

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/runtime/GroupSourceInformation;

    if-eqz v8, :cond_3

    .local v8, "groupInformation":Landroidx/compose/runtime/GroupSourceInformation;
    const/4 v9, 0x0

    .line 569
    .local v9, "$i$a$-let-SlotTable$emitGroup$2$1":I
    invoke-virtual {v8}, Landroidx/compose/runtime/GroupSourceInformation;->getSourceInformation()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .local v10, "it":Ljava/lang/String;
    const/4 v11, 0x0

    .line 570
    .local v11, "$i$a$-let-SlotTable$emitGroup$2$1$1":I
    const-string v12, "C("

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v10, v12, v4, v13, v14}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "CC("

    invoke-static {v10, v12, v4, v13, v14}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 571
    :cond_1
    move-object v13, v10

    check-cast v13, Ljava/lang/CharSequence;

    const-string v14, "("

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v12

    add-int/2addr v12, v6

    .line 572
    .local v12, "start":I
    move-object v13, v10

    check-cast v13, Ljava/lang/CharSequence;

    const/16 v14, 0x29

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v13

    .line 573
    .local v13, "endParen":I
    const-string v14, " "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    const-string v14, "()"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .end local v12    # "start":I
    .end local v13    # "endParen":I
    :cond_2
    nop

    .line 569
    .end local v10    # "it":Ljava/lang/String;
    .end local v11    # "$i$a$-let-SlotTable$emitGroup$2$1$1":I
    nop

    .line 568
    .end local v8    # "groupInformation":Landroidx/compose/runtime/GroupSourceInformation;
    .end local v9    # "$i$a$-let-SlotTable$emitGroup$2$1":I
    :cond_3
    nop

    .line 567
    .end local v5    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v7    # "$i$a$-let-SlotTable$emitGroup$2":I
    :cond_4
    nop

    .line 580
    const-string v5, " key="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    iget-object v5, v0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v5, v2}, Landroidx/compose/runtime/SlotTableKt;->access$key([II)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 585
    iget-object v5, v0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v5, v2}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v5

    .line 586
    .local v5, "groupSize":I
    const-string v7, ", nodes="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget-object v7, v0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v7, v2}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    const-string v7, ", size="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 590
    iget-object v7, v0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v7, v2}, Landroidx/compose/runtime/SlotTableKt;->access$hasMark([II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 591
    const-string v7, ", mark"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    :cond_5
    iget-object v7, v0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v7, v2}, Landroidx/compose/runtime/SlotTableKt;->access$containsMark([II)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 594
    const-string v7, ", contains mark"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    :cond_6
    invoke-static {v0, v2}, Landroidx/compose/runtime/SlotTable;->emitGroup$dataIndex(Landroidx/compose/runtime/SlotTable;I)I

    move-result v7

    .line 597
    .local v7, "dataStart":I
    add-int/lit8 v8, v2, 0x1

    invoke-static {v0, v8}, Landroidx/compose/runtime/SlotTable;->emitGroup$dataIndex(Landroidx/compose/runtime/SlotTable;I)I

    move-result v8

    .line 598
    .local v8, "dataEnd":I
    if-ltz v7, :cond_7

    if-gt v7, v8, :cond_7

    move v4, v6

    :cond_7
    if-eqz v4, :cond_d

    iget v4, v0, Landroidx/compose/runtime/SlotTable;->slotsSize:I

    if-gt v8, v4, :cond_d

    .line 599
    iget-object v4, v0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v4, v2}, Landroidx/compose/runtime/SlotTableKt;->access$hasObjectKey([II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 600
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " objectKey="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    iget-object v9, v0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v9, v2}, Landroidx/compose/runtime/SlotTableKt;->access$objectKeyIndex([II)I

    move-result v9

    aget-object v6, v6, v9

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :cond_8
    iget-object v4, v0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v4, v2}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 603
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " node="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    iget-object v9, v0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v9, v2}, Landroidx/compose/runtime/SlotTableKt;->access$nodeIndex([II)I

    move-result v9

    aget-object v6, v6, v9

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    :cond_9
    iget-object v4, v0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v4, v2}, Landroidx/compose/runtime/SlotTableKt;->access$hasAux([II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 606
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " aux="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    iget-object v9, v0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v9, v2}, Landroidx/compose/runtime/SlotTableKt;->access$auxIndex([II)I

    move-result v9

    aget-object v6, v6, v9

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    :cond_a
    iget-object v4, v0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v4, v2}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result v4

    .line 609
    .local v4, "slotStart":I
    if-ge v4, v8, :cond_e

    .line 610
    const-string v6, ", slots=["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 612
    const-string v6, ": "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    move v6, v4

    .local v6, "dataIndex":I
    :goto_1
    if-ge v6, v8, :cond_c

    .line 614
    if-eq v6, v4, :cond_b

    const-string v9, ", "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    :cond_b
    iget-object v9, v0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    aget-object v9, v9, v6

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 617
    .end local v6    # "dataIndex":I
    :cond_c
    const-string/jumbo v6, "]"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 620
    .end local v4    # "slotStart":I
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", *invalid data offsets "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x2d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x2a

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    :cond_e
    :goto_2
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 623
    add-int/lit8 v4, v2, 0x1

    .line 624
    .local v4, "current":I
    add-int v6, v2, v5

    .line 625
    .local v6, "end":I
    :goto_3
    if-ge v4, v6, :cond_f

    .line 626
    add-int/lit8 v9, v3, 0x1

    invoke-direct {v0, v1, v4, v9}, Landroidx/compose/runtime/SlotTable;->emitGroup(Ljava/lang/StringBuilder;II)I

    move-result v9

    add-int/2addr v4, v9

    goto :goto_3

    .line 628
    :cond_f
    return v5
.end method

.method private static final emitGroup$dataIndex(Landroidx/compose/runtime/SlotTable;I)I
    .locals 1
    .param p0, "this$0"    # Landroidx/compose/runtime/SlotTable;
    .param p1, "index"    # I

    .line 583
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/SlotTable;->slotsSize:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v0

    :goto_0
    return v0
.end method

.method private final findEffectiveRecomposeScope(I)Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 5
    .param p1, "group"    # I

    .line 399
    move v0, p1

    .line 400
    .local v0, "current":I
    :goto_0
    if-lez v0, :cond_3

    .line 401
    new-instance v1, Landroidx/compose/runtime/DataIterator;

    invoke-direct {v1, p0, v0}, Landroidx/compose/runtime/DataIterator;-><init>(Landroidx/compose/runtime/SlotTable;I)V

    invoke-virtual {v1}, Landroidx/compose/runtime/DataIterator;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 402
    .local v2, "data":Ljava/lang/Object;
    instance-of v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v3, :cond_0

    .line 403
    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/RecomposeScopeImpl;->getUsed()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eq v0, p1, :cond_1

    .line 404
    move-object v1, v2

    check-cast v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    return-object v1

    .line 405
    :cond_1
    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/RecomposeScopeImpl;->setForcedRecompose(Z)V

    .end local v2    # "data":Ljava/lang/Object;
    goto :goto_1

    .line 408
    :cond_2
    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v0

    goto :goto_0

    .line 410
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private final groupSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 659
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    mul-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSizes([II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final invalidateGroupsWithKey$lambda$16$scanGroup(Landroidx/compose/runtime/SlotReader;ILjava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/runtime/SlotTable;Ljava/util/List;)V
    .locals 4
    .param p0, "$reader"    # Landroidx/compose/runtime/SlotReader;
    .param p1, "$target"    # I
    .param p2, "anchors"    # Ljava/util/List;
    .param p3, "allScopesFound"    # Lkotlin/jvm/internal/Ref$BooleanRef;
    .param p4, "this$0"    # Landroidx/compose/runtime/SlotTable;
    .param p5, "scopes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotReader;",
            "I",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Anchor;",
            ">;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Landroidx/compose/runtime/SlotTable;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;)V"
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v0

    .line 341
    .local v0, "key":I
    const/4 v1, -0x3

    if-eq v0, p1, :cond_2

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 356
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->startGroup()V

    .line 357
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->isGroupEnd()Z

    move-result v1

    if-nez v1, :cond_1

    .line 358
    invoke-static/range {p0 .. p5}, Landroidx/compose/runtime/SlotTable;->invalidateGroupsWithKey$lambda$16$scanGroup(Landroidx/compose/runtime/SlotReader;ILjava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/runtime/SlotTable;Ljava/util/List;)V

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->endGroup()V

    .line 361
    return-void

    .line 342
    :cond_2
    :goto_1
    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    .line 343
    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3}, Landroidx/compose/runtime/SlotReader;->anchor$default(Landroidx/compose/runtime/SlotReader;IILjava/lang/Object;)Landroidx/compose/runtime/Anchor;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_3
    iget-boolean v1, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v1, :cond_5

    .line 345
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v1

    invoke-direct {p4, v1}, Landroidx/compose/runtime/SlotTable;->findEffectiveRecomposeScope(I)Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    .line 346
    .local v1, "nearestScope":Landroidx/compose/runtime/RecomposeScopeImpl;
    if-eqz v1, :cond_4

    .line 347
    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 349
    :cond_4
    iput-boolean v2, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 350
    invoke-interface {p5}, Ljava/util/List;->clear()V

    .line 353
    .end local v1    # "nearestScope":Landroidx/compose/runtime/RecomposeScopeImpl;
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    .line 354
    return-void
.end method

.method private final keys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 635
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    mul-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$keys([II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final nodes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 641
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    mul-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCounts([II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final parentIndexes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 647
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    mul-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchors([II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final verifyWellFormed$validateGroup(Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/runtime/SlotTable;II)I
    .locals 19
    .param p0, "current"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p1, "this$0"    # Landroidx/compose/runtime/SlotTable;
    .param p2, "parent"    # I
    .param p3, "parentEnd"    # I

    .line 422
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 423
    .local v3, "group":I
    iget-object v4, v1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v4, v3}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v4

    .line 424
    .local v4, "parentIndex":I
    const/4 v6, 0x1

    if-ne v4, v2, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1b

    .line 428
    iget-object v7, v1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v7, v3}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v7

    add-int/2addr v7, v3

    .line 429
    .local v7, "end":I
    iget v8, v1, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-gt v7, v8, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_1a

    .line 432
    move/from16 v8, p3

    if-gt v7, v8, :cond_2

    move v9, v6

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_19

    .line 436
    iget-object v9, v1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v9, v3}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v9

    .line 437
    .local v9, "dataStart":I
    iget v10, v1, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    sub-int/2addr v10, v6

    if-lt v3, v10, :cond_3

    iget v10, v1, Landroidx/compose/runtime/SlotTable;->slotsSize:I

    goto :goto_3

    :cond_3
    iget-object v10, v1, Landroidx/compose/runtime/SlotTable;->groups:[I

    add-int/lit8 v11, v3, 0x1

    invoke-static {v10, v11}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v10

    .line 438
    .local v10, "dataEnd":I
    :goto_3
    iget-object v11, v1, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    array-length v11, v11

    if-gt v10, v11, :cond_4

    move v11, v6

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    :goto_4
    if-eqz v11, :cond_18

    .line 441
    if-gt v9, v10, :cond_5

    move v11, v6

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    :goto_5
    if-eqz v11, :cond_17

    .line 444
    iget-object v11, v1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v11, v3}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result v11

    .line 445
    .local v11, "slotStart":I
    if-gt v11, v10, :cond_6

    move v12, v6

    goto :goto_6

    :cond_6
    const/4 v12, 0x0

    :goto_6
    if-eqz v12, :cond_16

    .line 448
    iget-object v12, v1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v12, v3}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v12

    .line 449
    iget-object v13, v1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v13, v3}, Landroidx/compose/runtime/SlotTableKt;->access$hasObjectKey([II)Z

    move-result v13

    .line 448
    add-int/2addr v12, v13

    .line 450
    iget-object v13, v1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v13, v3}, Landroidx/compose/runtime/SlotTableKt;->access$hasAux([II)Z

    move-result v13

    .line 448
    add-int/2addr v12, v13

    .line 451
    .local v12, "minSlotsNeeded":I
    sub-int v13, v10, v9

    if-lt v13, v12, :cond_7

    move v13, v6

    goto :goto_7

    :cond_7
    const/4 v13, 0x0

    :goto_7
    if-eqz v13, :cond_15

    .line 454
    iget-object v13, v1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v13, v3}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v13

    .line 455
    .local v13, "isNode":Z
    if-eqz v13, :cond_9

    iget-object v14, v1, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    iget-object v15, v1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v15, v3}, Landroidx/compose/runtime/SlotTableKt;->access$nodeIndex([II)I

    move-result v15

    aget-object v14, v14, v15

    if-eqz v14, :cond_8

    goto :goto_8

    :cond_8
    const/4 v14, 0x0

    goto :goto_9

    :cond_9
    :goto_8
    move v14, v6

    :goto_9
    if-eqz v14, :cond_14

    .line 458
    const/4 v14, 0x0

    .line 459
    .local v14, "nodeCount":I
    :goto_a
    iget v15, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ge v15, v7, :cond_a

    .line 460
    invoke-static {v0, v1, v3, v7}, Landroidx/compose/runtime/SlotTable;->verifyWellFormed$validateGroup(Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/runtime/SlotTable;II)I

    move-result v15

    add-int/2addr v14, v15

    goto :goto_a

    .line 462
    :cond_a
    iget-object v15, v1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v15, v3}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v15

    .line 463
    .local v15, "expectedNodeCount":I
    iget-object v5, v1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v5, v3}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v5

    .line 464
    .local v5, "expectedSlotCount":I
    if-ne v15, v14, :cond_b

    move/from16 v17, v6

    goto :goto_b

    :cond_b
    const/16 v17, 0x0

    :goto_b
    const-string v6, ", received "

    move/from16 v18, v7

    .end local v7    # "end":I
    .local v18, "end":I
    const-string v7, ", expected "

    if-eqz v17, :cond_13

    .line 468
    iget v8, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr v8, v3

    .line 469
    .local v8, "actualSlotCount":I
    if-ne v5, v8, :cond_c

    const/16 v17, 0x1

    goto :goto_c

    :cond_c
    const/16 v17, 0x0

    :goto_c
    if-eqz v17, :cond_12

    .line 473
    iget-object v6, v1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v6, v3}, Landroidx/compose/runtime/SlotTableKt;->access$containsAnyMark([II)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 474
    if-lez v3, :cond_e

    iget-object v6, v1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v6, v2}, Landroidx/compose/runtime/SlotTableKt;->access$containsMark([II)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_d

    :cond_d
    const/16 v16, 0x0

    goto :goto_e

    :cond_e
    :goto_d
    const/16 v16, 0x1

    :goto_e
    if-eqz v16, :cond_f

    goto :goto_f

    :cond_f
    const/4 v6, 0x0

    .line 475
    .local v6, "$i$a$-check-SlotTable$verifyWellFormed$validateGroup$11":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected group "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " to record it contains a mark because "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " does"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    .end local v6    # "$i$a$-check-SlotTable$verifyWellFormed$validateGroup$11":I
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 479
    :cond_10
    :goto_f
    if-eqz v13, :cond_11

    const/4 v6, 0x1

    goto :goto_10

    :cond_11
    move v6, v14

    :goto_10
    return v6

    .line 469
    :cond_12
    const/4 v0, 0x0

    .line 470
    .local v0, "$i$a$-check-SlotTable$verifyWellFormed$validateGroup$10":I
    move/from16 v16, v0

    .end local v0    # "$i$a$-check-SlotTable$verifyWellFormed$validateGroup$10":I
    .local v16, "$i$a$-check-SlotTable$verifyWellFormed$validateGroup$10":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect slot count detected at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 471
    nop

    .line 470
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    .end local v16    # "$i$a$-check-SlotTable$verifyWellFormed$validateGroup$10":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 464
    .end local v8    # "actualSlotCount":I
    :cond_13
    const/4 v0, 0x0

    .line 465
    .local v0, "$i$a$-check-SlotTable$verifyWellFormed$validateGroup$9":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incorrect node count detected at "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 466
    nop

    .line 465
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 466
    nop

    .line 465
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 466
    nop

    .line 465
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    .end local v0    # "$i$a$-check-SlotTable$verifyWellFormed$validateGroup$9":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    .end local v5    # "expectedSlotCount":I
    .end local v14    # "nodeCount":I
    .end local v15    # "expectedNodeCount":I
    .end local v18    # "end":I
    .restart local v7    # "end":I
    :cond_14
    const/4 v0, 0x0

    .line 456
    .local v0, "$i$a$-check-SlotTable$verifyWellFormed$validateGroup$8":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No node recorded for a node group at "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    .end local v0    # "$i$a$-check-SlotTable$verifyWellFormed$validateGroup$8":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 451
    .end local v13    # "isNode":Z
    :cond_15
    const/4 v0, 0x0

    .line 452
    .local v0, "$i$a$-check-SlotTable$verifyWellFormed$validateGroup$7":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not enough slots added for group "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    .end local v0    # "$i$a$-check-SlotTable$verifyWellFormed$validateGroup$7":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 445
    .end local v12    # "minSlotsNeeded":I
    :cond_16
    const/4 v0, 0x0

    .line 446
    .local v0, "$i$a$-check-SlotTable$verifyWellFormed$validateGroup$6":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Slots start out of range at "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .end local v0    # "$i$a$-check-SlotTable$verifyWellFormed$validateGroup$6":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 441
    .end local v11    # "slotStart":I
    :cond_17
    const/4 v0, 0x0

    .line 442
    .local v0, "$i$a$-check-SlotTable$verifyWellFormed$validateGroup$5":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid data anchor at "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    .end local v0    # "$i$a$-check-SlotTable$verifyWellFormed$validateGroup$5":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 438
    :cond_18
    const/4 v0, 0x0

    .line 439
    .local v0, "$i$a$-check-SlotTable$verifyWellFormed$validateGroup$4":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Slots for "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " extend past the end of the slot table"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    .end local v0    # "$i$a$-check-SlotTable$verifyWellFormed$validateGroup$4":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 432
    .end local v9    # "dataStart":I
    .end local v10    # "dataEnd":I
    :cond_19
    const/4 v0, 0x0

    .line 433
    .local v0, "$i$a$-check-SlotTable$verifyWellFormed$validateGroup$3":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A group extends past its parent group at "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    .end local v0    # "$i$a$-check-SlotTable$verifyWellFormed$validateGroup$3":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 429
    :cond_1a
    const/4 v0, 0x0

    .line 430
    .local v0, "$i$a$-check-SlotTable$verifyWellFormed$validateGroup$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A group extends past the end of the table at "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    .end local v0    # "$i$a$-check-SlotTable$verifyWellFormed$validateGroup$2":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 424
    .end local v7    # "end":I
    :cond_1b
    const/4 v0, 0x0

    .line 425
    .local v0, "$i$a$-check-SlotTable$verifyWellFormed$validateGroup$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid parent index detected at "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", expected parent index to be "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " found "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 426
    nop

    .line 425
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    .end local v0    # "$i$a$-check-SlotTable$verifyWellFormed$validateGroup$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final verifyWellFormed$verifySourceGroup(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/GroupSourceInformation;)V
    .locals 8
    .param p0, "this$0"    # Landroidx/compose/runtime/SlotTable;
    .param p1, "group"    # Landroidx/compose/runtime/GroupSourceInformation;

    .line 509
    invoke-virtual {p1}, Landroidx/compose/runtime/GroupSourceInformation;->getGroups()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/util/List;

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 3821
    .local v1, "$i$f$fastForEach":I
    nop

    .line 3822
    const/4 v2, 0x0

    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_4

    .line 3823
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 3824
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v5, v4

    .local v5, "item":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 510
    .local v6, "$i$a$-fastForEach-SlotTable$verifyWellFormed$verifySourceGroup$1":I
    nop

    .line 511
    instance-of v7, v5, Landroidx/compose/runtime/Anchor;

    if-eqz v7, :cond_2

    .line 512
    move-object v7, v5

    check-cast v7, Landroidx/compose/runtime/Anchor;

    invoke-virtual {v7}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 515
    move-object v7, v5

    check-cast v7, Landroidx/compose/runtime/Anchor;

    invoke-virtual {p0, v7}, Landroidx/compose/runtime/SlotTable;->ownsAnchor(Landroidx/compose/runtime/Anchor;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 516
    .local v3, "$i$a$-require-SlotTable$verifyWellFormed$verifySourceGroup$1$2":I
    nop

    .line 515
    .end local v3    # "$i$a$-require-SlotTable$verifyWellFormed$verifySourceGroup$1$2":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Source map anchor is not owned by the slot table"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 512
    :cond_1
    const/4 v3, 0x0

    .line 513
    .local v3, "$i$a$-require-SlotTable$verifyWellFormed$verifySourceGroup$1$1":I
    nop

    .line 512
    .end local v3    # "$i$a$-require-SlotTable$verifyWellFormed$verifySourceGroup$1$1":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Source map contains invalid anchor"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 519
    :cond_2
    instance-of v7, v5, Landroidx/compose/runtime/GroupSourceInformation;

    if-eqz v7, :cond_3

    move-object v7, v5

    check-cast v7, Landroidx/compose/runtime/GroupSourceInformation;

    invoke-static {p0, v7}, Landroidx/compose/runtime/SlotTable;->verifyWellFormed$verifySourceGroup(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/GroupSourceInformation;)V

    .line 521
    :cond_3
    :goto_1
    nop

    .line 3824
    .end local v5    # "item":Ljava/lang/Object;
    .end local v6    # "$i$a$-fastForEach-SlotTable$verifyWellFormed$verifySourceGroup$1":I
    nop

    .line 3822
    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3826
    .end local v2    # "index$iv":I
    :cond_4
    nop

    .line 522
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    :cond_5
    return-void
.end method


# virtual methods
.method public final anchor(I)Landroidx/compose/runtime/Anchor;
    .locals 6
    .param p1, "index"    # I

    .line 211
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .local v0, "value$iv":Z
    const/4 v2, 0x0

    .line 3756
    .local v2, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_3

    .line 3760
    nop

    .line 212
    .end local v0    # "value$iv":Z
    .end local v2    # "$i$f$runtimeCheck":I
    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget v2, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-ge p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 213
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    .local v0, "$this$getOrAdd$iv":Ljava/util/ArrayList;
    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .local v1, "effectiveSize$iv":I
    const/4 v2, 0x0

    .line 3762
    .local v2, "$i$f$getOrAdd":I
    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/SlotTableKt;->access$search(Ljava/util/ArrayList;II)I

    move-result v3

    .line 3763
    .local v3, "location$iv":I
    if-gez v3, :cond_1

    .line 3764
    const/4 v4, 0x0

    .line 214
    .local v4, "$i$a$-getOrAdd-SlotTable$anchor$3":I
    new-instance v5, Landroidx/compose/runtime/Anchor;

    invoke-direct {v5, p1}, Landroidx/compose/runtime/Anchor;-><init>(I)V

    .line 3764
    .end local v4    # "$i$a$-getOrAdd-SlotTable$anchor$3":I
    move-object v4, v5

    .line 3765
    .local v4, "anchor$iv":Landroidx/compose/runtime/Anchor;
    add-int/lit8 v5, v3, 0x1

    neg-int v5, v5

    invoke-virtual {v0, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3766
    nop

    .end local v4    # "anchor$iv":Landroidx/compose/runtime/Anchor;
    goto :goto_1

    .line 3767
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/Anchor;

    .line 3763
    :goto_1
    nop

    .line 213
    .end local v0    # "$this$getOrAdd$iv":Ljava/util/ArrayList;
    .end local v1    # "effectiveSize$iv":I
    .end local v2    # "$i$f$getOrAdd":I
    .end local v3    # "location$iv":I
    return-object v4

    .line 3761
    :cond_2
    const/4 v0, 0x0

    .line 212
    .local v0, "$i$a$-require-SlotTable$anchor$2":I
    nop

    .end local v0    # "$i$a$-require-SlotTable$anchor$2":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter index is out of range"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3757
    .local v0, "value$iv":Z
    .local v2, "$i$f$runtimeCheck":I
    :cond_3
    const/4 v1, 0x0

    .line 211
    .local v1, "$i$a$-runtimeCheck-SlotTable$anchor$1":I
    nop

    .line 3757
    .end local v1    # "$i$a$-runtimeCheck-SlotTable$anchor$1":I
    const-string/jumbo v1, "use active SlotWriter to create an anchor location instead"

    .line 3758
    .local v1, "message$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public final anchorIndex(Landroidx/compose/runtime/Anchor;)I
    .locals 4
    .param p1, "anchor"    # Landroidx/compose/runtime/Anchor;

    .line 233
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    xor-int/lit8 v0, v0, 0x1

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 3773
    .local v1, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_1

    .line 3777
    nop

    .line 234
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$runtimeCheck":I
    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result v0

    return v0

    .line 3761
    :cond_0
    const/4 v0, 0x0

    .line 234
    .local v0, "$i$a$-require-SlotTable$anchorIndex$2":I
    nop

    .end local v0    # "$i$a$-require-SlotTable$anchorIndex$2":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Anchor refers to a group that was removed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3774
    .local v0, "value$iv":Z
    .restart local v1    # "$i$f$runtimeCheck":I
    :cond_1
    const/4 v2, 0x0

    .line 233
    .local v2, "$i$a$-runtimeCheck-SlotTable$anchorIndex$1":I
    nop

    .line 3774
    .end local v2    # "$i$a$-runtimeCheck-SlotTable$anchorIndex$1":I
    const-string/jumbo v2, "Use active SlotWriter to determine anchor location instead"

    .line 3775
    .local v2, "message$iv":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public final asString()Ljava/lang/String;
    .locals 6

    .line 544
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 545
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .local v1, "$this$asString_u24lambda_u2443":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 546
    .local v2, "$i$a$-buildString-SlotTable$asString$1":I
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 548
    iget v3, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 549
    .local v3, "groupsSize":I
    if-lez v3, :cond_1

    .line 550
    const/4 v4, 0x0

    .line 551
    .local v4, "current":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 552
    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5}, Landroidx/compose/runtime/SlotTable;->emitGroup(Ljava/lang/StringBuilder;II)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    .line 555
    .end local v4    # "current":I
    :cond_1
    const-string v4, "<EMPTY>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :cond_2
    nop

    .line 545
    .end local v1    # "$this$asString_u24lambda_u2443":Ljava/lang/StringBuilder;
    .end local v2    # "$i$a$-buildString-SlotTable$asString$1":I
    .end local v3    # "groupsSize":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    :goto_1
    return-object v0
.end method

.method public final close$runtime_release(Landroidx/compose/runtime/SlotReader;Ljava/util/HashMap;)V
    .locals 4
    .param p1, "reader"    # Landroidx/compose/runtime/SlotReader;
    .param p2, "sourceInformationMap"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotReader;",
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/GroupSourceInformation;",
            ">;)V"
        }
    .end annotation

    .line 266
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->getTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/SlotTable;->readers:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .local v0, "value$iv":Z
    :goto_0
    const/4 v1, 0x0

    .line 3788
    .local v1, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_3

    .line 3792
    nop

    .line 267
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$runtimeCheck":I
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->readers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/SlotTable;->readers:I

    .line 268
    if-eqz p2, :cond_2

    .line 269
    const/4 v0, 0x0

    .line 3793
    .local v0, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v1, 0x0

    .line 270
    .local v1, "$i$a$-synchronized-SlotTable$close$2":I
    :try_start_0
    iget-object v2, p0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    .line 271
    .local v2, "thisMap":Ljava/util/HashMap;
    if-eqz v2, :cond_1

    .line 272
    move-object v3, p2

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 274
    :cond_1
    iput-object p2, p0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    .line 276
    :goto_1
    nop

    .end local v1    # "$i$a$-synchronized-SlotTable$close$2":I
    .end local v2    # "thisMap":Ljava/util/HashMap;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3793
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 278
    .end local v0    # "$i$f$synchronized":I
    :cond_2
    :goto_2
    return-void

    .line 3789
    .local v0, "value$iv":Z
    .local v1, "$i$f$runtimeCheck":I
    :cond_3
    const/4 v2, 0x0

    .line 266
    .local v2, "$i$a$-runtimeCheck-SlotTable$close$1":I
    const-string/jumbo v2, "Unexpected reader close()"

    .line 3789
    .end local v2    # "$i$a$-runtimeCheck-SlotTable$close$1":I
    nop

    .line 3790
    .local v2, "message$iv":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public final close$runtime_release(Landroidx/compose/runtime/SlotWriter;[II[Ljava/lang/Object;ILjava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 7
    .param p1, "writer"    # Landroidx/compose/runtime/SlotWriter;
    .param p2, "groups"    # [I
    .param p3, "groupsSize"    # I
    .param p4, "slots"    # [Ljava/lang/Object;
    .param p5, "slotsSize"    # I
    .param p6, "anchors"    # Ljava/util/ArrayList;
    .param p7, "sourceInformationMap"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotWriter;",
            "[II[",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;",
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/GroupSourceInformation;",
            ">;)V"
        }
    .end annotation

    .line 294
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotWriter;->getTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 295
    iput-boolean v1, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    .line 296
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/runtime/SlotTable;->setTo$runtime_release([II[Ljava/lang/Object;ILjava/util/ArrayList;Ljava/util/HashMap;)V

    .line 297
    return-void

    .line 3761
    :cond_1
    const/4 v0, 0x0

    .line 294
    .local v0, "$i$a$-require-SlotTable$close$3":I
    nop

    .end local v0    # "$i$a$-require-SlotTable$close$3":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unexpected writer close()"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final containsMark()Z
    .locals 2

    .line 386
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$containsMark([II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public find(Ljava/lang/Object;)Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 7
    .param p1, "identityToFind"    # Ljava/lang/Object;

    .line 681
    new-instance v6, Landroidx/compose/runtime/SlotTableGroup;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/runtime/SlotTableGroup;-><init>(Landroidx/compose/runtime/SlotTable;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v6, p1}, Landroidx/compose/runtime/SlotTableGroup;->find(Ljava/lang/Object;)Landroidx/compose/runtime/tooling/CompositionGroup;

    move-result-object v0

    return-object v0
.end method

.method public final getAnchors$runtime_release()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCompositionGroups()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            ">;"
        }
    .end annotation

    .line 675
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public final getGroups()[I
    .locals 1

    .line 87
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    return-object v0
.end method

.method public final getGroupsSize()I
    .locals 1

    .line 93
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    return v0
.end method

.method public final getSlots()[Ljava/lang/Object;
    .locals 1

    .line 102
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    return-object v0
.end method

.method public final getSlotsSize()I
    .locals 1

    .line 108
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->slotsSize:I

    return v0
.end method

.method public final getSourceInformationMap$runtime_release()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/GroupSourceInformation;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getVersion$runtime_release()I
    .locals 1

    .line 127
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->version:I

    return v0
.end method

.method public final getWriter$runtime_release()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    return v0
.end method

.method public final groupContainsAnchor(ILandroidx/compose/runtime/Anchor;)Z
    .locals 4
    .param p1, "groupIndex"    # I
    .param p2, "anchor"    # Landroidx/compose/runtime/Anchor;

    .line 253
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .local v0, "value$iv":Z
    const/4 v2, 0x0

    .line 3778
    .local v2, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_4

    .line 3782
    nop

    .line 254
    .end local v0    # "value$iv":Z
    .end local v2    # "$i$f$runtimeCheck":I
    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget v2, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-ge p1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .local v2, "value$iv":Z
    :goto_0
    const/4 v3, 0x0

    .line 3783
    .local v3, "$i$f$runtimeCheck":I
    if-eqz v2, :cond_3

    .line 3787
    nop

    .line 255
    .end local v2    # "value$iv":Z
    .end local v3    # "$i$f$runtimeCheck":I
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotTable;->ownsAnchor(Landroidx/compose/runtime/Anchor;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    iget-object v2, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v2, p1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p2}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result v3

    if-gt p1, v3, :cond_1

    if-ge v3, v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    .line 255
    :goto_2
    return v1

    .line 3784
    .restart local v2    # "value$iv":Z
    .restart local v3    # "$i$f$runtimeCheck":I
    :cond_3
    const/4 v0, 0x0

    .line 254
    .local v0, "$i$a$-runtimeCheck-SlotTable$groupContainsAnchor$2":I
    nop

    .line 3784
    .end local v0    # "$i$a$-runtimeCheck-SlotTable$groupContainsAnchor$2":I
    const-string v0, "Invalid group index"

    .line 3785
    .local v0, "message$iv":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    .line 3779
    .end local v3    # "$i$f$runtimeCheck":I
    .local v0, "value$iv":Z
    .local v2, "$i$f$runtimeCheck":I
    :cond_4
    const/4 v1, 0x0

    .line 253
    .local v1, "$i$a$-runtimeCheck-SlotTable$groupContainsAnchor$1":I
    nop

    .line 3779
    .end local v1    # "$i$a$-runtimeCheck-SlotTable$groupContainsAnchor$1":I
    const-string/jumbo v1, "Writer is active"

    .line 3780
    .local v1, "message$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public final invalidateGroupsWithKey$runtime_release(I)Ljava/util/List;
    .locals 18
    .param p1, "target"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;"
        }
    .end annotation

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    check-cast v7, Ljava/util/List;

    .line 334
    .local v7, "anchors":Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    .line 335
    .local v8, "scopes":Ljava/util/List;
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object v9, v0

    .local v9, "allScopesFound":Lkotlin/jvm/internal/Ref$BooleanRef;
    const/4 v0, 0x1

    iput-boolean v0, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 338
    move-object/from16 v10, p0

    .local v10, "this_$iv":Landroidx/compose/runtime/SlotTable;
    const/4 v11, 0x0

    .line 3794
    .local v11, "$i$f$read":I
    invoke-virtual {v10}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v0

    .line 3795
    move-object v12, v0

    .local v12, "reader$iv":Landroidx/compose/runtime/SlotReader;
    const/4 v13, 0x0

    .line 3796
    .local v13, "$i$a$-let-SlotTable$read$1$iv":I
    nop

    .line 3797
    move-object v1, v12

    .local v1, "reader":Landroidx/compose/runtime/SlotReader;
    const/4 v0, 0x0

    .line 362
    .local v0, "$i$a$-read-SlotTable$invalidateGroupsWithKey$1":I
    move/from16 v2, p1

    move-object v3, v7

    move-object v4, v9

    move-object/from16 v5, p0

    move-object v6, v8

    :try_start_0
    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/SlotTable;->invalidateGroupsWithKey$lambda$16$scanGroup(Landroidx/compose/runtime/SlotReader;ILjava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/runtime/SlotTable;Ljava/util/List;)V

    .line 363
    nop

    .end local v0    # "$i$a$-read-SlotTable$invalidateGroupsWithKey$1":I
    .end local v1    # "reader":Landroidx/compose/runtime/SlotReader;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3797
    nop

    .line 3799
    invoke-virtual {v12}, Landroidx/compose/runtime/SlotReader;->close()V

    .line 3800
    nop

    .line 3796
    nop

    .line 3795
    .end local v12    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v13    # "$i$a$-let-SlotTable$read$1$iv":I
    nop

    .line 3801
    nop

    .line 367
    .end local v10    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v11    # "$i$f$read":I
    move-object/from16 v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/SlotTable;
    const/4 v2, 0x0

    .line 3802
    .local v2, "$i$f$write":I
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v0

    .line 3803
    move-object v3, v0

    .local v3, "writer$iv":Landroidx/compose/runtime/SlotWriter;
    const/4 v4, 0x0

    .line 3804
    .local v4, "$i$a$-let-SlotTable$write$1$iv":I
    nop

    .line 3805
    move-object v0, v3

    .local v0, "writer":Landroidx/compose/runtime/SlotWriter;
    const/4 v5, 0x0

    .line 368
    .local v5, "$i$a$-write-SlotTable$invalidateGroupsWithKey$2":I
    :try_start_1
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    .line 369
    move-object v6, v7

    .local v6, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 3806
    .local v10, "$i$f$fastForEach":I
    nop

    .line 3807
    const/4 v11, 0x0

    .local v11, "index$iv":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    :goto_0
    if-ge v11, v12, :cond_1

    .line 3808
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 3809
    .local v13, "item$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Landroidx/compose/runtime/Anchor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .local v14, "anchor":Landroidx/compose/runtime/Anchor;
    const/4 v15, 0x0

    .line 370
    .local v15, "$i$a$-fastForEach-SlotTable$invalidateGroupsWithKey$2$1":I
    move-object/from16 v16, v1

    .end local v1    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .local v16, "this_$iv":Landroidx/compose/runtime/SlotTable;
    :try_start_2
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotWriter;)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v17, v2

    .end local v2    # "$i$f$write":I
    .local v17, "$i$f$write":I
    :try_start_3
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 371
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/SlotWriter;->seek(Landroidx/compose/runtime/Anchor;)V

    .line 372
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->bashCurrentGroup()V

    .line 374
    :cond_0
    nop

    .line 3809
    .end local v14    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v15    # "$i$a$-fastForEach-SlotTable$invalidateGroupsWithKey$2$1":I
    nop

    .line 3807
    .end local v13    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    goto :goto_0

    .line 3812
    .end local v0    # "writer":Landroidx/compose/runtime/SlotWriter;
    .end local v5    # "$i$a$-write-SlotTable$invalidateGroupsWithKey$2":I
    .end local v6    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastForEach":I
    .end local v11    # "index$iv":I
    .end local v17    # "$i$f$write":I
    .restart local v2    # "$i$f$write":I
    :catchall_0
    move-exception v0

    move/from16 v17, v2

    .end local v2    # "$i$f$write":I
    .restart local v17    # "$i$f$write":I
    goto :goto_2

    .line 3807
    .end local v16    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v17    # "$i$f$write":I
    .restart local v0    # "writer":Landroidx/compose/runtime/SlotWriter;
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .restart local v2    # "$i$f$write":I
    .restart local v5    # "$i$a$-write-SlotTable$invalidateGroupsWithKey$2":I
    .restart local v6    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v10    # "$i$f$fastForEach":I
    .restart local v11    # "index$iv":I
    :cond_1
    move-object/from16 v16, v1

    move/from16 v17, v2

    .line 3811
    .end local v1    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v2    # "$i$f$write":I
    .end local v11    # "index$iv":I
    .restart local v16    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .restart local v17    # "$i$f$write":I
    nop

    .line 375
    .end local v6    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastForEach":I
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    .line 376
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->endGroup()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3805
    .end local v0    # "writer":Landroidx/compose/runtime/SlotWriter;
    .end local v5    # "$i$a$-write-SlotTable$invalidateGroupsWithKey$2":I
    nop

    .line 3812
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotWriter;->close()V

    .line 3813
    nop

    .line 3804
    nop

    .line 3803
    .end local v3    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .end local v4    # "$i$a$-let-SlotTable$write$1$iv":I
    nop

    .line 3814
    nop

    .line 379
    .end local v16    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v17    # "$i$f$write":I
    iget-boolean v0, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_2

    move-object v0, v8

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 3812
    .restart local v3    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .restart local v4    # "$i$a$-let-SlotTable$write$1$iv":I
    .restart local v16    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .restart local v17    # "$i$f$write":I
    :catchall_1
    move-exception v0

    goto :goto_2

    .end local v16    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v17    # "$i$f$write":I
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .restart local v2    # "$i$f$write":I
    :catchall_2
    move-exception v0

    move-object/from16 v16, v1

    move/from16 v17, v2

    .end local v1    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v2    # "$i$f$write":I
    .restart local v16    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .restart local v17    # "$i$f$write":I
    :goto_2
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotWriter;->close()V

    throw v0

    .line 3799
    .end local v3    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .end local v4    # "$i$a$-let-SlotTable$write$1$iv":I
    .end local v16    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v17    # "$i$f$write":I
    .local v10, "this_$iv":Landroidx/compose/runtime/SlotTable;
    .local v11, "$i$f$read":I
    .restart local v12    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .local v13, "$i$a$-let-SlotTable$read$1$iv":I
    :catchall_3
    move-exception v0

    invoke-virtual {v12}, Landroidx/compose/runtime/SlotReader;->close()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 142
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            ">;"
        }
    .end annotation

    .line 678
    new-instance v0, Landroidx/compose/runtime/GroupIterator;

    const/4 v1, 0x0

    iget v2, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    invoke-direct {v0, p0, v1, v2}, Landroidx/compose/runtime/GroupIterator;-><init>(Landroidx/compose/runtime/SlotTable;II)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public final openReader()Landroidx/compose/runtime/SlotReader;
    .locals 2

    .line 182
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    if-nez v0, :cond_0

    .line 183
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->readers:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/SlotTable;->readers:I

    .line 184
    new-instance v0, Landroidx/compose/runtime/SlotReader;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/SlotReader;-><init>(Landroidx/compose/runtime/SlotTable;)V

    return-object v0

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read while a writer is pending"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final openWriter()Landroidx/compose/runtime/SlotWriter;
    .locals 4

    .line 194
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .local v0, "value$iv":Z
    const/4 v2, 0x0

    .line 3746
    .local v2, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_2

    .line 3750
    nop

    .line 195
    .end local v0    # "value$iv":Z
    .end local v2    # "$i$f$runtimeCheck":I
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->readers:I

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "value$iv":Z
    :goto_0
    const/4 v2, 0x0

    .line 3751
    .restart local v2    # "$i$f$runtimeCheck":I
    if-eqz v0, :cond_1

    .line 3755
    nop

    .line 196
    .end local v0    # "value$iv":Z
    .end local v2    # "$i$f$runtimeCheck":I
    iput-boolean v1, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    .line 197
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->version:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/SlotTable;->version:I

    .line 198
    new-instance v0, Landroidx/compose/runtime/SlotWriter;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/SlotWriter;-><init>(Landroidx/compose/runtime/SlotTable;)V

    return-object v0

    .line 3752
    .restart local v0    # "value$iv":Z
    .restart local v2    # "$i$f$runtimeCheck":I
    :cond_1
    const/4 v1, 0x0

    .line 195
    .local v1, "$i$a$-runtimeCheck-SlotTable$openWriter$2":I
    nop

    .line 3752
    .end local v1    # "$i$a$-runtimeCheck-SlotTable$openWriter$2":I
    const-string v1, "Cannot start a writer when a reader is pending"

    .line 3753
    .local v1, "message$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3

    .line 3747
    .end local v1    # "message$iv":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    .line 194
    .local v1, "$i$a$-runtimeCheck-SlotTable$openWriter$1":I
    nop

    .line 3747
    .end local v1    # "$i$a$-runtimeCheck-SlotTable$openWriter$1":I
    const-string v1, "Cannot start a writer when another writer is pending"

    .line 3748
    .local v1, "message$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public final ownsAnchor(Landroidx/compose/runtime/Anchor;)Z
    .locals 5
    .param p1, "anchor"    # Landroidx/compose/runtime/Anchor;

    .line 244
    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result v2

    iget v3, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/SlotTableKt;->access$search(Ljava/util/ArrayList;II)I

    move-result v0

    .local v0, "it":I
    const/4 v2, 0x0

    .line 245
    .local v2, "$i$a$-let-SlotTable$ownsAnchor$1":I
    const/4 v3, 0x1

    if-ltz v0, :cond_0

    iget-object v4, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 244
    .end local v0    # "it":I
    .end local v2    # "$i$a$-let-SlotTable$ownsAnchor$1":I
    :goto_0
    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    return v1
.end method

.method public final read(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 5
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/SlotReader;",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 150
    .local v0, "$i$f$read":I
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v1

    .line 151
    nop

    .local v1, "reader":Landroidx/compose/runtime/SlotReader;
    const/4 v2, 0x0

    .line 152
    .local v2, "$i$a$-let-SlotTable$read$1":I
    nop

    .line 153
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 155
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->close()V

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 156
    nop

    .line 152
    nop

    .line 151
    .end local v1    # "reader":Landroidx/compose/runtime/SlotReader;
    .end local v2    # "$i$a$-let-SlotTable$read$1":I
    nop

    .line 157
    return-object v4

    .line 155
    .restart local v1    # "reader":Landroidx/compose/runtime/SlotReader;
    .restart local v2    # "$i$a$-let-SlotTable$read$1":I
    :catchall_0
    move-exception v4

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->close()V

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v4
.end method

.method public final setAnchors$runtime_release(Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;)V"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    return-void
.end method

.method public final setSourceInformationMap$runtime_release(Ljava/util/HashMap;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/GroupSourceInformation;",
            ">;)V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    return-void
.end method

.method public final setTo$runtime_release([II[Ljava/lang/Object;ILjava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "groups"    # [I
    .param p2, "groupsSize"    # I
    .param p3, "slots"    # [Ljava/lang/Object;
    .param p4, "slotsSize"    # I
    .param p5, "anchors"    # Ljava/util/ArrayList;
    .param p6, "sourceInformationMap"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II[",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;",
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/GroupSourceInformation;",
            ">;)V"
        }
    .end annotation

    .line 312
    iput-object p1, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 313
    iput p2, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 314
    iput-object p3, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    .line 315
    iput p4, p0, Landroidx/compose/runtime/SlotTable;->slotsSize:I

    .line 316
    iput-object p5, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    .line 317
    iput-object p6, p0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    .line 318
    return-void
.end method

.method public final setVersion$runtime_release(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 127
    iput p1, p0, Landroidx/compose/runtime/SlotTable;->version:I

    return-void
.end method

.method public final slot$runtime_release(II)Ljava/lang/Object;
    .locals 5
    .param p1, "group"    # I
    .param p2, "slotIndex"    # I

    .line 669
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result v0

    .line 670
    .local v0, "start":I
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    array-length v1, v1

    .line 671
    .local v1, "end":I
    :goto_0
    sub-int v2, v1, v0

    .line 672
    .local v2, "len":I
    const/4 v3, 0x0

    if-ltz p2, :cond_1

    if-ge p2, v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    add-int v4, v0, p2

    aget-object v3, v3, v4

    return-object v3

    :cond_2
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public final slotsOf$runtime_release(I)Ljava/util/List;
    .locals 3
    .param p1, "group"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 663
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v0

    .line 664
    .local v0, "start":I
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    array-length v1, v1

    .line 665
    .local v1, "end":I
    :goto_0
    iget-object v2, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public final sourceInformationOf(I)Landroidx/compose/runtime/GroupSourceInformation;
    .locals 5
    .param p1, "group"    # I

    .line 389
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .local v0, "map":Ljava/util/HashMap;
    const/4 v2, 0x0

    .line 390
    .local v2, "$i$a$-let-SlotTable$sourceInformationOf$1":I
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotTable;->tryAnchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v1, v3

    .line 3761
    .local v1, "anchor":Landroidx/compose/runtime/Anchor;
    const/4 v3, 0x0

    .line 390
    .local v3, "$i$a$-let-SlotTable$sourceInformationOf$1$1":I
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/GroupSourceInformation;

    move-object v1, v4

    .line 389
    .end local v0    # "map":Ljava/util/HashMap;
    .end local v1    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v2    # "$i$a$-let-SlotTable$sourceInformationOf$1":I
    .end local v3    # "$i$a$-let-SlotTable$sourceInformationOf$1$1":I
    :cond_0
    nop

    .line 391
    return-object v1
.end method

.method public final tryAnchor(I)Landroidx/compose/runtime/Anchor;
    .locals 4
    .param p1, "index"    # I

    .line 222
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .local v0, "value$iv":Z
    const/4 v2, 0x0

    .line 3768
    .local v2, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_2

    .line 3772
    nop

    .line 223
    .end local v0    # "value$iv":Z
    .end local v2    # "$i$f$runtimeCheck":I
    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget v2, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-ge p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/SlotTableKt;->access$find(Ljava/util/ArrayList;II)Landroidx/compose/runtime/Anchor;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 3769
    .restart local v0    # "value$iv":Z
    .restart local v2    # "$i$f$runtimeCheck":I
    :cond_2
    const/4 v1, 0x0

    .line 222
    .local v1, "$i$a$-runtimeCheck-SlotTable$tryAnchor$1":I
    nop

    .line 3769
    .end local v1    # "$i$a$-runtimeCheck-SlotTable$tryAnchor$1":I
    const-string/jumbo v1, "use active SlotWriter to crate an anchor for location instead"

    .line 3770
    .local v1, "message$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public final verifyWellFormed()V
    .locals 13

    .line 420
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 482
    .local v0, "current":Lkotlin/jvm/internal/Ref$IntRef;
    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_3

    .line 483
    :goto_0
    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v4, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-ge v1, v4, :cond_0

    .line 484
    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v4, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    iget v5, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v4, v5}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v4

    add-int/2addr v1, v4

    const/4 v4, -0x1

    invoke-static {v0, p0, v4, v1}, Landroidx/compose/runtime/SlotTable;->verifyWellFormed$validateGroup(Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/runtime/SlotTable;II)I

    goto :goto_0

    .line 486
    :cond_0
    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v4, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-ne v1, v4, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 487
    .local v1, "$i$a$-check-SlotTable$verifyWellFormed$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incomplete group at root "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected to be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 486
    .end local v1    # "$i$a$-check-SlotTable$verifyWellFormed$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 492
    :cond_3
    :goto_2
    iget v1, p0, Landroidx/compose/runtime/SlotTable;->slotsSize:I

    .local v1, "index":I
    iget-object v4, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    array-length v4, v4

    :goto_3
    if-ge v1, v4, :cond_6

    .line 493
    iget-object v5, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    aget-object v5, v5, v1

    if-nez v5, :cond_4

    move v5, v3

    goto :goto_4

    :cond_4
    move v5, v2

    :goto_4
    if-eqz v5, :cond_5

    .line 492
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 493
    :cond_5
    const/4 v2, 0x0

    .line 494
    .local v2, "$i$a$-check-SlotTable$verifyWellFormed$2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Non null value in the slot gap at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 493
    .end local v2    # "$i$a$-check-SlotTable$verifyWellFormed$2":I
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 499
    .end local v1    # "index":I
    :cond_6
    const/4 v1, 0x0

    .local v1, "lastLocation":I
    const/4 v1, -0x1

    .line 500
    iget-object v4, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    check-cast v4, Ljava/util/List;

    .local v4, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 3815
    .local v5, "$i$f$fastForEach":I
    nop

    .line 3816
    const/4 v6, 0x0

    .local v6, "index$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_5
    if-ge v6, v7, :cond_b

    .line 3817
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 3818
    .local v8, "item$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/compose/runtime/Anchor;

    .local v9, "anchor":Landroidx/compose/runtime/Anchor;
    const/4 v10, 0x0

    .line 501
    .local v10, "$i$a$-fastForEach-SlotTable$verifyWellFormed$3":I
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotTable;)I

    move-result v11

    .line 502
    .local v11, "location":I
    if-ltz v11, :cond_7

    iget v12, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-gt v11, v12, :cond_7

    move v12, v3

    goto :goto_6

    :cond_7
    move v12, v2

    :goto_6
    if-eqz v12, :cond_a

    .line 503
    if-ge v1, v11, :cond_8

    move v12, v3

    goto :goto_7

    :cond_8
    move v12, v2

    :goto_7
    if-eqz v12, :cond_9

    .line 504
    move v1, v11

    .line 505
    nop

    .line 3818
    .end local v9    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v10    # "$i$a$-fastForEach-SlotTable$verifyWellFormed$3":I
    .end local v11    # "location":I
    nop

    .line 3816
    .end local v8    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 3761
    .restart local v8    # "item$iv":Ljava/lang/Object;
    .restart local v9    # "anchor":Landroidx/compose/runtime/Anchor;
    .restart local v10    # "$i$a$-fastForEach-SlotTable$verifyWellFormed$3":I
    .restart local v11    # "location":I
    :cond_9
    const/4 v2, 0x0

    .line 503
    .local v2, "$i$a$-require-SlotTable$verifyWellFormed$3$2":I
    nop

    .end local v2    # "$i$a$-require-SlotTable$verifyWellFormed$3$2":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Anchor is out of order"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3761
    :cond_a
    const/4 v2, 0x0

    .line 502
    .local v2, "$i$a$-require-SlotTable$verifyWellFormed$3$1":I
    nop

    .end local v2    # "$i$a$-require-SlotTable$verifyWellFormed$3$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid anchor, location out of bound"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3820
    .end local v6    # "index$iv":I
    .end local v8    # "item$iv":Ljava/lang/Object;
    .end local v9    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v10    # "$i$a$-fastForEach-SlotTable$verifyWellFormed$3":I
    .end local v11    # "location":I
    :cond_b
    nop

    .line 524
    .end local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    iget-object v2, p0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    if-eqz v2, :cond_f

    .local v2, "sourceInformationMap":Ljava/util/HashMap;
    const/4 v3, 0x0

    .line 525
    .local v3, "$i$a$-let-SlotTable$verifyWellFormed$4":I
    move-object v4, v2

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/runtime/Anchor;

    .local v6, "anchor":Landroidx/compose/runtime/Anchor;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/GroupSourceInformation;

    .line 526
    .local v5, "sourceGroup":Landroidx/compose/runtime/GroupSourceInformation;
    invoke-virtual {v6}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 529
    invoke-virtual {p0, v6}, Landroidx/compose/runtime/SlotTable;->ownsAnchor(Landroidx/compose/runtime/Anchor;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 532
    invoke-static {p0, v5}, Landroidx/compose/runtime/SlotTable;->verifyWellFormed$verifySourceGroup(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/GroupSourceInformation;)V

    .end local v5    # "sourceGroup":Landroidx/compose/runtime/GroupSourceInformation;
    .end local v6    # "anchor":Landroidx/compose/runtime/Anchor;
    goto :goto_8

    .line 529
    .restart local v5    # "sourceGroup":Landroidx/compose/runtime/GroupSourceInformation;
    .restart local v6    # "anchor":Landroidx/compose/runtime/Anchor;
    :cond_c
    const/4 v4, 0x0

    .line 530
    .local v4, "$i$a$-require-SlotTable$verifyWellFormed$4$2":I
    nop

    .line 529
    .end local v4    # "$i$a$-require-SlotTable$verifyWellFormed$4$2":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Source map anchor is not owned by the slot table"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 526
    :cond_d
    const/4 v4, 0x0

    .line 527
    .local v4, "$i$a$-require-SlotTable$verifyWellFormed$4$1":I
    nop

    .line 526
    .end local v4    # "$i$a$-require-SlotTable$verifyWellFormed$4$1":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Source map contains invalid anchor"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 534
    .end local v5    # "sourceGroup":Landroidx/compose/runtime/GroupSourceInformation;
    .end local v6    # "anchor":Landroidx/compose/runtime/Anchor;
    :cond_e
    nop

    .line 524
    .end local v2    # "sourceInformationMap":Ljava/util/HashMap;
    .end local v3    # "$i$a$-let-SlotTable$verifyWellFormed$4":I
    nop

    .line 535
    :cond_f
    return-void
.end method

.method public final write(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 5
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/SlotWriter;",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 166
    .local v0, "$i$f$write":I
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v1

    .line 167
    nop

    .local v1, "writer":Landroidx/compose/runtime/SlotWriter;
    const/4 v2, 0x0

    .line 168
    .local v2, "$i$a$-let-SlotTable$write$1":I
    nop

    .line 169
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 171
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->close()V

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 172
    nop

    .line 168
    nop

    .line 167
    .end local v1    # "writer":Landroidx/compose/runtime/SlotWriter;
    .end local v2    # "$i$a$-let-SlotTable$write$1":I
    nop

    .line 173
    return-object v4

    .line 171
    .restart local v1    # "writer":Landroidx/compose/runtime/SlotWriter;
    .restart local v2    # "$i$a$-let-SlotTable$write$1":I
    :catchall_0
    move-exception v4

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->close()V

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v4
.end method
