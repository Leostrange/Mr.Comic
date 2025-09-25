.class public final Landroidx/compose/runtime/changelist/ChangeList;
.super Ljava/lang/Object;
.source "ChangeList.kt"

# interfaces
.implements Landroidx/compose/runtime/changelist/OperationsDebugStringFormattable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChangeList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChangeList.kt\nandroidx/compose/runtime/changelist/ChangeList\n+ 2 Operations.kt\nandroidx/compose/runtime/changelist/Operations\n+ 3 Operation.kt\nandroidx/compose/runtime/changelist/Operation$Remember\n+ 4 Operation.kt\nandroidx/compose/runtime/changelist/Operation$UpdateValue\n+ 5 Operation.kt\nandroidx/compose/runtime/changelist/Operation$UpdateAuxData\n+ 6 Operation.kt\nandroidx/compose/runtime/changelist/Operation$EnsureGroupStarted\n+ 7 Operation.kt\nandroidx/compose/runtime/changelist/Operation$InsertSlots\n+ 8 Operation.kt\nandroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups\n+ 9 Operation.kt\nandroidx/compose/runtime/changelist/Operation$MoveCurrentGroup\n+ 10 Operation.kt\nandroidx/compose/runtime/changelist/Operation$EndCompositionScope\n+ 11 Operation.kt\nandroidx/compose/runtime/changelist/Operation$UpdateNode\n+ 12 Operation.kt\nandroidx/compose/runtime/changelist/Operation$RemoveNode\n+ 13 Operation.kt\nandroidx/compose/runtime/changelist/Operation$MoveNode\n+ 14 Operation.kt\nandroidx/compose/runtime/changelist/Operation$AdvanceSlotsBy\n+ 15 Operation.kt\nandroidx/compose/runtime/changelist/Operation$Ups\n+ 16 Operation.kt\nandroidx/compose/runtime/changelist/Operation$Downs\n+ 17 Operation.kt\nandroidx/compose/runtime/changelist/Operation$SideEffect\n+ 18 Operation.kt\nandroidx/compose/runtime/changelist/Operation$DetermineMovableContentNodeIndex\n+ 19 Operation.kt\nandroidx/compose/runtime/changelist/Operation$CopyNodesToNewAnchorLocation\n+ 20 Operation.kt\nandroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation\n+ 21 Operation.kt\nandroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent\n+ 22 Operation.kt\nandroidx/compose/runtime/changelist/Operation$ApplyChangeList\n*L\n1#1,302:1\n164#2,5:303\n172#2,2:309\n171#2,31:311\n164#2,5:342\n172#2,2:349\n171#2,31:351\n164#2,5:382\n172#2,2:388\n171#2,31:390\n164#2,5:421\n172#2,2:427\n171#2,31:429\n164#2,5:460\n172#2,2:467\n171#2,31:469\n164#2,5:500\n172#2,2:508\n171#2,31:510\n164#2,5:541\n172#2,2:547\n171#2,31:549\n164#2,5:580\n172#2,2:587\n171#2,31:589\n164#2,5:620\n172#2,2:627\n171#2,31:629\n164#2,5:660\n172#2,2:667\n171#2,31:669\n164#2,5:700\n172#2,2:708\n171#2,31:710\n164#2,5:741\n172#2,2:747\n171#2,31:749\n164#2,5:780\n172#2,2:786\n171#2,31:788\n164#2,5:819\n172#2,2:825\n171#2,31:827\n164#2,5:858\n172#2,2:864\n171#2,31:866\n164#2,5:897\n172#2,2:904\n171#2,31:906\n164#2,5:937\n172#2,2:944\n171#2,31:946\n164#2,5:977\n172#2,2:986\n171#2,31:988\n164#2,5:1019\n172#2,2:1027\n171#2,31:1029\n164#2,5:1060\n172#2,2:1067\n171#2,31:1069\n152#3:308\n169#4:347\n170#4:348\n203#5:387\n230#6:426\n394#7:465\n395#7:466\n422#8:505\n423#8:506\n424#8:507\n257#9:546\n294#10:585\n295#10:586\n326#11:625\n327#11:626\n347#12:665\n348#12:666\n370#13:705\n369#13:706\n371#13:707\n116#14:746\n77#15:785\n94#16:824\n135#17:863\n539#18:902\n540#18:903\n568#19:942\n567#19:943\n594#20:982\n595#20:983\n597#20:984\n596#20:985\n655#21:1024\n656#21:1025\n657#21:1026\n681#22:1065\n682#22:1066\n*S KotlinDebug\n*F\n+ 1 ChangeList.kt\nandroidx/compose/runtime/changelist/ChangeList\n*L\n81#1:303,5\n81#1:309,2\n81#1:311,31\n87#1:342,5\n87#1:349,2\n87#1:351,31\n102#1:382,5\n102#1:388,2\n102#1:390,31\n112#1:421,5\n112#1:427,2\n112#1:429,31\n133#1:460,5\n133#1:467,2\n133#1:469,31\n144#1:500,5\n144#1:508,2\n144#1:510,31\n154#1:541,5\n154#1:547,2\n154#1:549,31\n163#1:580,5\n163#1:587,2\n163#1:589,31\n176#1:620,5\n176#1:627,2\n176#1:629,31\n184#1:660,5\n184#1:667,2\n184#1:669,31\n191#1:700,5\n191#1:708,2\n191#1:710,31\n199#1:741,5\n199#1:747,2\n199#1:749,31\n205#1:780,5\n205#1:786,2\n205#1:788,31\n212#1:819,5\n212#1:825,2\n212#1:827,31\n219#1:858,5\n219#1:864,2\n219#1:866,31\n228#1:897,5\n228#1:904,2\n228#1:906,31\n239#1:937,5\n239#1:944,2\n239#1:946,31\n253#1:977,5\n253#1:986,2\n253#1:988,31\n267#1:1019,5\n267#1:1027,2\n267#1:1029,31\n283#1:1060,5\n283#1:1067,2\n283#1:1069,31\n82#1:308\n88#1:347\n89#1:348\n103#1:387\n113#1:426\n134#1:465\n135#1:466\n145#1:505\n146#1:506\n147#1:507\n155#1:546\n164#1:585\n165#1:586\n177#1:625\n179#1:626\n185#1:665\n186#1:666\n192#1:705\n193#1:706\n194#1:707\n200#1:746\n206#1:785\n213#1:824\n220#1:863\n229#1:902\n230#1:903\n240#1:942\n241#1:943\n254#1:982\n255#1:983\n256#1:984\n257#1:985\n268#1:1024\n269#1:1025\n270#1:1026\n284#1:1065\n285#1:1066\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\"\u0010\u000b\u001a\u00020\n2\n\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0013J\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0006J\u001e\u0010\u0017\u001a\u00020\n2\u000e\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u00192\u0006\u0010\u001b\u001a\u00020\u001cJ(\u0010\u001d\u001a\u00020\n2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020#J\u0006\u0010%\u001a\u00020\nJ\u0016\u0010&\u001a\u00020\n2\u0006\u0010\'\u001a\u00020\u001c2\u0006\u0010(\u001a\u00020)J\u001b\u0010*\u001a\u00020\n2\u000e\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0+\u00a2\u0006\u0002\u0010,J\"\u0010-\u001a\u00020\n2\u0012\u0010.\u001a\u000e\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\n0/2\u0006\u00101\u001a\u000200J\u0006\u00102\u001a\u00020\nJ\u0006\u00103\u001a\u00020\nJ\u000e\u00104\u001a\u00020\n2\u0006\u0010(\u001a\u00020)J\u0006\u00105\u001a\u00020\nJ\u001a\u00106\u001a\u00020\n2\u0006\u00107\u001a\u00020\u00002\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cJ\u0016\u00108\u001a\u00020\n2\u0006\u0010(\u001a\u00020)2\u0006\u0010\"\u001a\u000209J\u001e\u00108\u001a\u00020\n2\u0006\u0010(\u001a\u00020)2\u0006\u0010\"\u001a\u0002092\u0006\u0010:\u001a\u00020;J\u000e\u0010<\u001a\u00020\n2\u0006\u0010=\u001a\u00020\u0006J\u001e\u0010>\u001a\u00020\n2\u0006\u0010$\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\u0006J\u001e\u0010@\u001a\u00020\n2\u0006\u00101\u001a\u00020A2\u0006\u0010 \u001a\u00020!2\u0006\u0010B\u001a\u00020#J\u000e\u0010C\u001a\u00020\n2\u0006\u0010D\u001a\u00020EJ\u0006\u0010F\u001a\u00020\nJ\u0016\u0010G\u001a\u00020\n2\u0006\u0010H\u001a\u00020\u00062\u0006\u0010I\u001a\u00020\u0006J\u0006\u0010J\u001a\u00020\nJ\u0014\u0010K\u001a\u00020\n2\u000c\u0010L\u001a\u0008\u0012\u0004\u0012\u00020\n0MJ\u0006\u0010N\u001a\u00020\nJ\u0010\u0010O\u001a\u00020\n2\u0008\u0010P\u001a\u0004\u0018\u00010\u001aJ>\u0010Q\u001a\u00020\n\"\u0004\u0008\u0000\u0010R\"\u0004\u0008\u0001\u0010S2\u0006\u0010D\u001a\u0002HS2\u001d\u0010T\u001a\u0019\u0012\u0004\u0012\u0002HR\u0012\u0004\u0012\u0002HS\u0012\u0004\u0012\u00020\n0U\u00a2\u0006\u0002\u0008V\u00a2\u0006\u0002\u0010WJ\u0018\u0010X\u001a\u00020\n2\u0008\u0010D\u001a\u0004\u0018\u00010\u001a2\u0006\u0010Y\u001a\u00020\u0006J\u000e\u0010Z\u001a\u00020\n2\u0006\u0010?\u001a\u00020\u0006J\u0010\u0010[\u001a\u00020\n2\u0008\u0010\\\u001a\u0004\u0018\u00010\u001aJ\u0010\u0010]\u001a\u00020^2\u0006\u0010_\u001a\u00020^H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006`"
    }
    d2 = {
        "Landroidx/compose/runtime/changelist/ChangeList;",
        "Landroidx/compose/runtime/changelist/OperationsDebugStringFormattable;",
        "()V",
        "operations",
        "Landroidx/compose/runtime/changelist/Operations;",
        "size",
        "",
        "getSize",
        "()I",
        "clear",
        "",
        "executeAndFlushAllPendingChanges",
        "applier",
        "Landroidx/compose/runtime/Applier;",
        "slots",
        "Landroidx/compose/runtime/SlotWriter;",
        "rememberManager",
        "Landroidx/compose/runtime/RememberManager;",
        "isEmpty",
        "",
        "isNotEmpty",
        "pushAdvanceSlotsBy",
        "distance",
        "pushCopyNodesToNewAnchorLocation",
        "nodes",
        "",
        "",
        "effectiveNodeIndex",
        "Landroidx/compose/runtime/internal/IntRef;",
        "pushCopySlotTableToAnchorLocation",
        "resolvedState",
        "Landroidx/compose/runtime/MovableContentState;",
        "parentContext",
        "Landroidx/compose/runtime/CompositionContext;",
        "from",
        "Landroidx/compose/runtime/MovableContentStateReference;",
        "to",
        "pushDeactivateCurrentGroup",
        "pushDetermineMovableContentNodeIndex",
        "effectiveNodeIndexOut",
        "anchor",
        "Landroidx/compose/runtime/Anchor;",
        "pushDowns",
        "",
        "([Ljava/lang/Object;)V",
        "pushEndCompositionScope",
        "action",
        "Lkotlin/Function1;",
        "Landroidx/compose/runtime/Composition;",
        "composition",
        "pushEndCurrentGroup",
        "pushEndMovableContentPlacement",
        "pushEnsureGroupStarted",
        "pushEnsureRootStarted",
        "pushExecuteOperationsIn",
        "changeList",
        "pushInsertSlots",
        "Landroidx/compose/runtime/SlotTable;",
        "fixups",
        "Landroidx/compose/runtime/changelist/FixupList;",
        "pushMoveCurrentGroup",
        "offset",
        "pushMoveNode",
        "count",
        "pushReleaseMovableGroupAtCurrent",
        "Landroidx/compose/runtime/ControlledComposition;",
        "reference",
        "pushRemember",
        "value",
        "Landroidx/compose/runtime/RememberObserver;",
        "pushRemoveCurrentGroup",
        "pushRemoveNode",
        "removeFrom",
        "moveCount",
        "pushResetSlots",
        "pushSideEffect",
        "effect",
        "Lkotlin/Function0;",
        "pushSkipToEndOfCurrentGroup",
        "pushUpdateAuxData",
        "data",
        "pushUpdateNode",
        "T",
        "V",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V",
        "pushUpdateValue",
        "groupSlotIndex",
        "pushUps",
        "pushUseNode",
        "node",
        "toDebugString",
        "",
        "linePrefix",
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
.field private final operations:Landroidx/compose/runtime/changelist/Operations;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/changelist/ChangeList;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroidx/compose/runtime/changelist/Operations;

    invoke-direct {v0}, Landroidx/compose/runtime/changelist/Operations;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .line 62
    return-void
.end method

.method public static synthetic pushExecuteOperationsIn$default(Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/internal/IntRef;ILjava/lang/Object;)V
    .locals 0

    .line 278
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 280
    const/4 p2, 0x0

    .line 278
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/changelist/ChangeList;->pushExecuteOperationsIn(Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/internal/IntRef;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operations;->clear()V

    .line 72
    return-void
.end method

.method public final executeAndFlushAllPendingChanges(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V
    .locals 1
    .param p1, "applier"    # Landroidx/compose/runtime/Applier;
    .param p2, "slots"    # Landroidx/compose/runtime/SlotWriter;
    .param p3, "rememberManager"    # Landroidx/compose/runtime/RememberManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/RememberManager;",
            ")V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/runtime/changelist/Operations;->executeAndFlushAllPendingOperations(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V

    return-void
.end method

.method public final getSize()I
    .locals 1

    .line 66
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operations;->getSize()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operations;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isNotEmpty()Z
    .locals 1

    .line 68
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operations;->isNotEmpty()Z

    move-result v0

    return v0
.end method

.method public final pushAdvanceSlotsBy(I)V
    .locals 21
    .param p1, "distance"    # I

    .line 199
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .local v1, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    sget-object v2, Landroidx/compose/runtime/changelist/Operation$AdvanceSlotsBy;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$AdvanceSlotsBy;

    check-cast v2, Landroidx/compose/runtime/changelist/Operation;

    .local v2, "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    const/4 v3, 0x0

    .line 741
    .local v3, "$i$f$push":I
    nop

    .line 744
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 745
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;

    move-result-object v4

    .local v4, "$this$pushAdvanceSlotsBy_u24lambda_u2411":Landroidx/compose/runtime/changelist/Operations;
    const/4 v5, 0x0

    .line 200
    .local v5, "$i$a$-push-ChangeList$pushAdvanceSlotsBy$1":I
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$AdvanceSlotsBy;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$AdvanceSlotsBy;

    .local v6, "this_$iv":Landroidx/compose/runtime/changelist/Operation$AdvanceSlotsBy;
    const/4 v7, 0x0

    .line 746
    .local v7, "$i$f$getDistance-jn0FJLE":I
    const/4 v8, 0x0

    invoke-static {v8}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v6

    .line 200
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$AdvanceSlotsBy;
    .end local v7    # "$i$f$getDistance-jn0FJLE":I
    move/from16 v7, p1

    invoke-static {v4, v6, v7}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setInt-A6tL2VI(Landroidx/compose/runtime/changelist/Operations;II)V

    .line 201
    nop

    .line 745
    .end local v4    # "$this$pushAdvanceSlotsBy_u24lambda_u2411":Landroidx/compose/runtime/changelist/Operations;
    .end local v5    # "$i$a$-push-ChangeList$pushAdvanceSlotsBy$1":I
    nop

    .line 747
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    .line 748
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v8

    .line 749
    :goto_0
    if-nez v4, :cond_7

    const/4 v4, 0x0

    .line 753
    .local v4, "$i$a$-check-Operations$push$3$iv":I
    const/4 v5, 0x0

    .line 754
    .local v5, "missingIntCount$iv":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v9

    .local v10, "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 755
    .local v11, "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v12

    move v13, v8

    :goto_1
    const-string v14, ", "

    if-ge v13, v12, :cond_3

    move v15, v13

    .local v15, "arg$iv":I
    const/16 v16, 0x0

    .line 756
    .local v16, "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    shl-int v17, v6, v15

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v18

    and-int v17, v17, v18

    if-eqz v17, :cond_2

    .line 757
    if-lez v5, :cond_1

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    :cond_1
    invoke-static {v15}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v14

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    add-int/lit8 v5, v5, 0x1

    .line 761
    :cond_2
    nop

    .line 755
    .end local v15    # "arg$iv":I
    .end local v16    # "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 762
    :cond_3
    nop

    .line 754
    .end local v10    # "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    .end local v11    # "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 764
    .local v9, "missingInts$iv":Ljava/lang/String;
    const/4 v11, 0x0

    .line 765
    .local v11, "missingObjectCount$iv":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v12

    .local v13, "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 766
    .local v15, "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v8

    move/from16 v19, v11

    const/4 v11, 0x0

    .end local v11    # "missingObjectCount$iv":I
    .local v19, "missingObjectCount$iv":I
    :goto_2
    if-ge v11, v8, :cond_6

    move/from16 v16, v11

    .local v16, "arg$iv":I
    const/16 v17, 0x0

    .line 767
    .local v17, "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    shl-int v18, v6, v16

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v20

    and-int v18, v18, v20

    if-eqz v18, :cond_5

    .line 768
    if-lez v5, :cond_4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    :cond_4
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    move/from16 v6, v19

    .end local v19    # "missingObjectCount$iv":I
    .local v6, "missingObjectCount$iv":I
    add-int/lit8 v19, v6, 0x1

    .end local v6    # "missingObjectCount$iv":I
    .restart local v19    # "missingObjectCount$iv":I
    goto :goto_3

    .line 767
    :cond_5
    move/from16 v6, v19

    .line 772
    :goto_3
    nop

    .line 766
    .end local v16    # "arg$iv":I
    .end local v17    # "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    goto :goto_2

    .line 773
    :cond_6
    move/from16 v6, v19

    .line 765
    .end local v13    # "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    .end local v15    # "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    .end local v19    # "missingObjectCount$iv":I
    .restart local v6    # "missingObjectCount$iv":I
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    .local v8, "missingObjects$iv":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while pushing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Not all arguments were provided. Missing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 776
    nop

    .line 775
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 776
    nop

    .line 775
    const-string v11, " int arguments ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 776
    nop

    .line 775
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 776
    nop

    .line 775
    const-string v11, ") and "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 777
    nop

    .line 775
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 777
    nop

    .line 775
    const-string v11, " object arguments ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 777
    nop

    .line 775
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 777
    nop

    .line 775
    const-string v11, ")."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 749
    .end local v4    # "$i$a$-check-Operations$push$3$iv":I
    .end local v5    # "missingIntCount$iv":I
    .end local v6    # "missingObjectCount$iv":I
    .end local v8    # "missingObjects$iv":Ljava/lang/String;
    .end local v9    # "missingInts$iv":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 779
    :cond_7
    nop

    .line 202
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v2    # "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    .end local v3    # "$i$f$push":I
    return-void
.end method

.method public final pushCopyNodesToNewAnchorLocation(Ljava/util/List;Landroidx/compose/runtime/internal/IntRef;)V
    .locals 22
    .param p1, "nodes"    # Ljava/util/List;
    .param p2, "effectiveNodeIndex"    # Landroidx/compose/runtime/internal/IntRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/internal/IntRef;",
            ")V"
        }
    .end annotation

    .line 238
    move-object/from16 v0, p1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_8

    .line 239
    move-object/from16 v1, p0

    iget-object v3, v1, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .local v3, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    sget-object v4, Landroidx/compose/runtime/changelist/Operation$CopyNodesToNewAnchorLocation;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$CopyNodesToNewAnchorLocation;

    check-cast v4, Landroidx/compose/runtime/changelist/Operation;

    .local v4, "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    const/4 v5, 0x0

    .line 937
    .local v5, "$i$f$push":I
    nop

    .line 940
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 941
    invoke-static {v3}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;

    move-result-object v6

    .local v6, "$this$pushCopyNodesToNewAnchorLocation_u24lambda_u2416":Landroidx/compose/runtime/changelist/Operations;
    const/4 v7, 0x0

    .line 240
    .local v7, "$i$a$-push-ChangeList$pushCopyNodesToNewAnchorLocation$1":I
    sget-object v8, Landroidx/compose/runtime/changelist/Operation$CopyNodesToNewAnchorLocation;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$CopyNodesToNewAnchorLocation;

    .local v8, "this_$iv":Landroidx/compose/runtime/changelist/Operation$CopyNodesToNewAnchorLocation;
    const/4 v9, 0x0

    .line 942
    .local v9, "$i$f$getNodes-HpuvwBQ":I
    invoke-static {v2}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v8

    .line 240
    .end local v8    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$CopyNodesToNewAnchorLocation;
    .end local v9    # "$i$f$getNodes-HpuvwBQ":I
    invoke-static {v6, v8, v0}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 241
    sget-object v8, Landroidx/compose/runtime/changelist/Operation$CopyNodesToNewAnchorLocation;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$CopyNodesToNewAnchorLocation;

    .restart local v8    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$CopyNodesToNewAnchorLocation;
    const/4 v9, 0x0

    .line 943
    .local v9, "$i$f$getEffectiveNodeIndex-HpuvwBQ":I
    const/4 v10, 0x0

    invoke-static {v10}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v8

    .line 241
    .end local v8    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$CopyNodesToNewAnchorLocation;
    .end local v9    # "$i$f$getEffectiveNodeIndex-HpuvwBQ":I
    move-object/from16 v9, p2

    invoke-static {v6, v8, v9}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 242
    nop

    .line 941
    .end local v6    # "$this$pushCopyNodesToNewAnchorLocation_u24lambda_u2416":Landroidx/compose/runtime/changelist/Operations;
    .end local v7    # "$i$a$-push-ChangeList$pushCopyNodesToNewAnchorLocation$1":I
    nop

    .line 944
    invoke-static {v3}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v6

    invoke-virtual {v4}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v7

    invoke-static {v3, v7}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 945
    invoke-static {v3}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v6

    invoke-virtual {v4}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v7

    invoke-static {v3, v7}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v7

    if-ne v6, v7, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v10

    .line 946
    :goto_0
    if-nez v6, :cond_7

    const/4 v6, 0x0

    .line 950
    .local v6, "$i$a$-check-Operations$push$3$iv":I
    const/4 v7, 0x0

    .line 951
    .local v7, "missingIntCount$iv":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v8

    .local v11, "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .line 952
    .local v12, "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v4}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v13

    move v14, v10

    :goto_1
    const-string v15, ", "

    if-ge v14, v13, :cond_3

    move/from16 v16, v14

    .local v16, "arg$iv":I
    const/16 v17, 0x0

    .line 953
    .local v17, "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    shl-int v18, v2, v16

    invoke-static {v3}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v19

    and-int v18, v18, v19

    if-eqz v18, :cond_2

    .line 954
    if-lez v7, :cond_1

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    :cond_1
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v15

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    add-int/lit8 v7, v7, 0x1

    .line 958
    :cond_2
    nop

    .line 952
    .end local v16    # "arg$iv":I
    .end local v17    # "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 959
    :cond_3
    nop

    .line 951
    .end local v11    # "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    .end local v12    # "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v11, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 961
    .local v8, "missingInts$iv":Ljava/lang/String;
    const/4 v12, 0x0

    .line 962
    .local v12, "missingObjectCount$iv":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v13

    .local v14, "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 963
    .local v16, "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    invoke-virtual {v4}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v10

    move/from16 v20, v12

    const/4 v12, 0x0

    .end local v12    # "missingObjectCount$iv":I
    .local v20, "missingObjectCount$iv":I
    :goto_2
    if-ge v12, v10, :cond_6

    move/from16 v17, v12

    .local v17, "arg$iv":I
    const/16 v18, 0x0

    .line 964
    .local v18, "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    shl-int v19, v2, v17

    invoke-static {v3}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v21

    and-int v19, v19, v21

    if-eqz v19, :cond_5

    .line 965
    if-lez v7, :cond_4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    :cond_4
    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    move/from16 v2, v20

    .end local v20    # "missingObjectCount$iv":I
    .local v2, "missingObjectCount$iv":I
    add-int/lit8 v20, v2, 0x1

    .end local v2    # "missingObjectCount$iv":I
    .restart local v20    # "missingObjectCount$iv":I
    goto :goto_3

    .line 964
    :cond_5
    move/from16 v2, v20

    .line 969
    :goto_3
    nop

    .line 963
    .end local v17    # "arg$iv":I
    .end local v18    # "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x1

    goto :goto_2

    .line 970
    :cond_6
    move/from16 v2, v20

    .line 962
    .end local v14    # "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    .end local v16    # "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    .end local v20    # "missingObjectCount$iv":I
    .restart local v2    # "missingObjectCount$iv":I
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 972
    .local v10, "missingObjects$iv":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error while pushing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Not all arguments were provided. Missing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 973
    nop

    .line 972
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 973
    nop

    .line 972
    const-string v12, " int arguments ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 973
    nop

    .line 972
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 973
    nop

    .line 972
    const-string v12, ") and "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 974
    nop

    .line 972
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 974
    nop

    .line 972
    const-string v12, " object arguments ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 974
    nop

    .line 972
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 974
    nop

    .line 972
    const-string v12, ")."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 946
    .end local v2    # "missingObjectCount$iv":I
    .end local v6    # "$i$a$-check-Operations$push$3$iv":I
    .end local v7    # "missingIntCount$iv":I
    .end local v8    # "missingInts$iv":Ljava/lang/String;
    .end local v10    # "missingObjects$iv":Ljava/lang/String;
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 976
    :cond_7
    goto :goto_4

    .line 238
    .end local v3    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v4    # "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    .end local v5    # "$i$f$push":I
    :cond_8
    move-object/from16 v1, p0

    move-object/from16 v9, p2

    .line 244
    :goto_4
    return-void
.end method

.method public final pushCopySlotTableToAnchorLocation(Landroidx/compose/runtime/MovableContentState;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 23
    .param p1, "resolvedState"    # Landroidx/compose/runtime/MovableContentState;
    .param p2, "parentContext"    # Landroidx/compose/runtime/CompositionContext;
    .param p3, "from"    # Landroidx/compose/runtime/MovableContentStateReference;
    .param p4, "to"    # Landroidx/compose/runtime/MovableContentStateReference;

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .local v1, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    sget-object v2, Landroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation;

    check-cast v2, Landroidx/compose/runtime/changelist/Operation;

    .local v2, "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    const/4 v3, 0x0

    .line 977
    .local v3, "$i$f$push":I
    nop

    .line 980
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 981
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;

    move-result-object v4

    .local v4, "$this$pushCopySlotTableToAnchorLocation_u24lambda_u2417":Landroidx/compose/runtime/changelist/Operations;
    const/4 v5, 0x0

    .line 254
    .local v5, "$i$a$-push-ChangeList$pushCopySlotTableToAnchorLocation$1":I
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation;

    .local v6, "this_$iv":Landroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation;
    const/4 v7, 0x0

    .line 982
    .local v7, "$i$f$getResolvedState-HpuvwBQ":I
    const/4 v8, 0x0

    invoke-static {v8}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    .line 254
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation;
    .end local v7    # "$i$f$getResolvedState-HpuvwBQ":I
    move-object/from16 v7, p1

    invoke-static {v4, v6, v7}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 255
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation;

    .restart local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation;
    const/4 v9, 0x0

    .line 983
    .local v9, "$i$f$getParentCompositionContext-HpuvwBQ":I
    const/4 v10, 0x1

    invoke-static {v10}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    .line 255
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation;
    .end local v9    # "$i$f$getParentCompositionContext-HpuvwBQ":I
    move-object/from16 v9, p2

    invoke-static {v4, v6, v9}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 256
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation;

    .restart local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation;
    const/4 v11, 0x0

    .line 984
    .local v11, "$i$f$getTo-HpuvwBQ":I
    const/4 v12, 0x3

    invoke-static {v12}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    .line 256
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation;
    .end local v11    # "$i$f$getTo-HpuvwBQ":I
    move-object/from16 v11, p4

    invoke-static {v4, v6, v11}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 257
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation;

    .restart local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation;
    const/4 v12, 0x0

    .line 985
    .local v12, "$i$f$getFrom-HpuvwBQ":I
    const/4 v13, 0x2

    invoke-static {v13}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    .line 257
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation;
    .end local v12    # "$i$f$getFrom-HpuvwBQ":I
    move-object/from16 v12, p3

    invoke-static {v4, v6, v12}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 258
    nop

    .line 981
    .end local v4    # "$this$pushCopySlotTableToAnchorLocation_u24lambda_u2417":Landroidx/compose/runtime/changelist/Operations;
    .end local v5    # "$i$a$-push-ChangeList$pushCopySlotTableToAnchorLocation$1":I
    nop

    .line 986
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 987
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    move v4, v10

    goto :goto_0

    :cond_0
    move v4, v8

    .line 988
    :goto_0
    if-nez v4, :cond_7

    const/4 v4, 0x0

    .line 992
    .local v4, "$i$a$-check-Operations$push$3$iv":I
    const/4 v5, 0x0

    .line 993
    .local v5, "missingIntCount$iv":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v6

    .local v13, "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 994
    .local v14, "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v15

    :goto_1
    const-string v10, ", "

    if-ge v8, v15, :cond_3

    move/from16 v18, v8

    .local v18, "arg$iv":I
    const/16 v19, 0x0

    .line 995
    .local v19, "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    const/16 v17, 0x1

    shl-int v20, v17, v18

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v21

    and-int v20, v20, v21

    if-eqz v20, :cond_2

    .line 996
    if-lez v5, :cond_1

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    :cond_1
    invoke-static/range {v18 .. v18}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v10

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    add-int/lit8 v5, v5, 0x1

    .line 1000
    :cond_2
    nop

    .line 994
    .end local v18    # "arg$iv":I
    .end local v19    # "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x1

    goto :goto_1

    .line 1001
    :cond_3
    nop

    .line 993
    .end local v13    # "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    .end local v14    # "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1003
    .local v6, "missingInts$iv":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1004
    .local v13, "missingObjectCount$iv":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v14

    .local v15, "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    const/16 v18, 0x0

    .line 1005
    .local v18, "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v0

    move/from16 v16, v3

    move v3, v13

    const/4 v13, 0x0

    .end local v13    # "missingObjectCount$iv":I
    .local v3, "missingObjectCount$iv":I
    .local v16, "$i$f$push":I
    :goto_2
    if-ge v13, v0, :cond_6

    move/from16 v19, v13

    .local v19, "arg$iv":I
    const/16 v20, 0x0

    .line 1006
    .local v20, "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    const/16 v17, 0x1

    shl-int v21, v17, v19

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v22

    and-int v21, v21, v22

    if-eqz v21, :cond_5

    .line 1007
    if-lez v5, :cond_4

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    :cond_4
    move/from16 v21, v0

    invoke-static/range {v19 .. v19}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1006
    :cond_5
    move/from16 v21, v0

    .line 1011
    :goto_3
    nop

    .line 1005
    .end local v19    # "arg$iv":I
    .end local v20    # "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v21

    goto :goto_2

    .line 1012
    :cond_6
    nop

    .line 1004
    .end local v15    # "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    .end local v18    # "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1014
    .local v0, "missingObjects$iv":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while pushing "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ". Not all arguments were provided. Missing "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1015
    nop

    .line 1014
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1015
    nop

    .line 1014
    const-string v10, " int arguments ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1015
    nop

    .line 1014
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1015
    nop

    .line 1014
    const-string v10, ") and "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1016
    nop

    .line 1014
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1016
    nop

    .line 1014
    const-string v10, " object arguments ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1016
    nop

    .line 1014
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1016
    nop

    .line 1014
    const-string v10, ")."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 988
    .end local v0    # "missingObjects$iv":Ljava/lang/String;
    .end local v3    # "missingObjectCount$iv":I
    .end local v4    # "$i$a$-check-Operations$push$3$iv":I
    .end local v5    # "missingIntCount$iv":I
    .end local v6    # "missingInts$iv":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1018
    .end local v16    # "$i$f$push":I
    .local v3, "$i$f$push":I
    :cond_7
    nop

    .line 259
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v2    # "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    .end local v3    # "$i$f$push":I
    return-void
.end method

.method public final pushDeactivateCurrentGroup()V
    .locals 2

    .line 98
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v1, Landroidx/compose/runtime/changelist/Operation$DeactivateCurrentGroup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$DeactivateCurrentGroup;

    check-cast v1, Landroidx/compose/runtime/changelist/Operation;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/changelist/Operations;->push(Landroidx/compose/runtime/changelist/Operation;)V

    .line 99
    return-void
.end method

.method public final pushDetermineMovableContentNodeIndex(Landroidx/compose/runtime/internal/IntRef;Landroidx/compose/runtime/Anchor;)V
    .locals 22
    .param p1, "effectiveNodeIndexOut"    # Landroidx/compose/runtime/internal/IntRef;
    .param p2, "anchor"    # Landroidx/compose/runtime/Anchor;

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .local v1, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    sget-object v2, Landroidx/compose/runtime/changelist/Operation$DetermineMovableContentNodeIndex;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$DetermineMovableContentNodeIndex;

    check-cast v2, Landroidx/compose/runtime/changelist/Operation;

    .local v2, "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    const/4 v3, 0x0

    .line 897
    .local v3, "$i$f$push":I
    nop

    .line 900
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 901
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;

    move-result-object v4

    .local v4, "$this$pushDetermineMovableContentNodeIndex_u24lambda_u2415":Landroidx/compose/runtime/changelist/Operations;
    const/4 v5, 0x0

    .line 229
    .local v5, "$i$a$-push-ChangeList$pushDetermineMovableContentNodeIndex$1":I
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$DetermineMovableContentNodeIndex;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$DetermineMovableContentNodeIndex;

    .local v6, "this_$iv":Landroidx/compose/runtime/changelist/Operation$DetermineMovableContentNodeIndex;
    const/4 v7, 0x0

    .line 902
    .local v7, "$i$f$getEffectiveNodeIndexOut-HpuvwBQ":I
    const/4 v8, 0x0

    invoke-static {v8}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    .line 229
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$DetermineMovableContentNodeIndex;
    .end local v7    # "$i$f$getEffectiveNodeIndexOut-HpuvwBQ":I
    move-object/from16 v7, p1

    invoke-static {v4, v6, v7}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 230
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$DetermineMovableContentNodeIndex;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$DetermineMovableContentNodeIndex;

    .restart local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$DetermineMovableContentNodeIndex;
    const/4 v9, 0x0

    .line 903
    .local v9, "$i$f$getAnchor-HpuvwBQ":I
    const/4 v10, 0x1

    invoke-static {v10}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    .line 230
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$DetermineMovableContentNodeIndex;
    .end local v9    # "$i$f$getAnchor-HpuvwBQ":I
    move-object/from16 v9, p2

    invoke-static {v4, v6, v9}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 231
    nop

    .line 901
    .end local v4    # "$this$pushDetermineMovableContentNodeIndex_u24lambda_u2415":Landroidx/compose/runtime/changelist/Operations;
    .end local v5    # "$i$a$-push-ChangeList$pushDetermineMovableContentNodeIndex$1":I
    nop

    .line 904
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 905
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    move v4, v10

    goto :goto_0

    :cond_0
    move v4, v8

    .line 906
    :goto_0
    if-nez v4, :cond_7

    const/4 v4, 0x0

    .line 910
    .local v4, "$i$a$-check-Operations$push$3$iv":I
    const/4 v5, 0x0

    .line 911
    .local v5, "missingIntCount$iv":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v6

    .local v11, "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .line 912
    .local v12, "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v13

    move v14, v8

    :goto_1
    const-string v15, ", "

    if-ge v14, v13, :cond_3

    move/from16 v16, v14

    .local v16, "arg$iv":I
    const/16 v17, 0x0

    .line 913
    .local v17, "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    shl-int v18, v10, v16

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v19

    and-int v18, v18, v19

    if-eqz v18, :cond_2

    .line 914
    if-lez v5, :cond_1

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    :cond_1
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v15

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    add-int/lit8 v5, v5, 0x1

    .line 918
    :cond_2
    nop

    .line 912
    .end local v16    # "arg$iv":I
    .end local v17    # "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 919
    :cond_3
    nop

    .line 911
    .end local v11    # "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    .end local v12    # "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v11, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 921
    .local v6, "missingInts$iv":Ljava/lang/String;
    const/4 v12, 0x0

    .line 922
    .local v12, "missingObjectCount$iv":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v13

    .local v14, "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 923
    .local v16, "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v8

    move/from16 v20, v12

    const/4 v12, 0x0

    .end local v12    # "missingObjectCount$iv":I
    .local v20, "missingObjectCount$iv":I
    :goto_2
    if-ge v12, v8, :cond_6

    move/from16 v17, v12

    .local v17, "arg$iv":I
    const/16 v18, 0x0

    .line 924
    .local v18, "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    shl-int v19, v10, v17

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v21

    and-int v19, v19, v21

    if-eqz v19, :cond_5

    .line 925
    if-lez v5, :cond_4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    :cond_4
    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v10

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    move/from16 v10, v20

    .end local v20    # "missingObjectCount$iv":I
    .local v10, "missingObjectCount$iv":I
    add-int/lit8 v20, v10, 0x1

    .end local v10    # "missingObjectCount$iv":I
    .restart local v20    # "missingObjectCount$iv":I
    goto :goto_3

    .line 924
    :cond_5
    move/from16 v10, v20

    .line 929
    :goto_3
    nop

    .line 923
    .end local v17    # "arg$iv":I
    .end local v18    # "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x1

    goto :goto_2

    .line 930
    :cond_6
    move/from16 v10, v20

    .line 922
    .end local v14    # "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    .end local v16    # "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    .end local v20    # "missingObjectCount$iv":I
    .restart local v10    # "missingObjectCount$iv":I
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 932
    .local v8, "missingObjects$iv":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error while pushing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Not all arguments were provided. Missing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 933
    nop

    .line 932
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 933
    nop

    .line 932
    const-string v12, " int arguments ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 933
    nop

    .line 932
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 933
    nop

    .line 932
    const-string v12, ") and "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 934
    nop

    .line 932
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 934
    nop

    .line 932
    const-string v12, " object arguments ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 934
    nop

    .line 932
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 934
    nop

    .line 932
    const-string v12, ")."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 906
    .end local v4    # "$i$a$-check-Operations$push$3$iv":I
    .end local v5    # "missingIntCount$iv":I
    .end local v6    # "missingInts$iv":Ljava/lang/String;
    .end local v8    # "missingObjects$iv":Ljava/lang/String;
    .end local v10    # "missingObjectCount$iv":I
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 936
    :cond_7
    nop

    .line 232
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v2    # "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    .end local v3    # "$i$f$push":I
    return-void
.end method

.method public final pushDowns([Ljava/lang/Object;)V
    .locals 21
    .param p1, "nodes"    # [Ljava/lang/Object;

    .line 211
    move-object/from16 v0, p1

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    xor-int/2addr v1, v3

    if-eqz v1, :cond_9

    .line 212
    move-object/from16 v1, p0

    iget-object v4, v1, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .local v4, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    sget-object v5, Landroidx/compose/runtime/changelist/Operation$Downs;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$Downs;

    check-cast v5, Landroidx/compose/runtime/changelist/Operation;

    .local v5, "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    const/4 v6, 0x0

    .line 819
    .local v6, "$i$f$push":I
    nop

    .line 822
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 823
    invoke-static {v4}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;

    move-result-object v7

    .local v7, "$this$pushDowns_u24lambda_u2413":Landroidx/compose/runtime/changelist/Operations;
    const/4 v8, 0x0

    .line 213
    .local v8, "$i$a$-push-ChangeList$pushDowns$1":I
    sget-object v9, Landroidx/compose/runtime/changelist/Operation$Downs;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$Downs;

    .local v9, "this_$iv":Landroidx/compose/runtime/changelist/Operation$Downs;
    const/4 v10, 0x0

    .line 824
    .local v10, "$i$f$getNodes-HpuvwBQ":I
    invoke-static {v2}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v9

    .line 213
    .end local v9    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$Downs;
    .end local v10    # "$i$f$getNodes-HpuvwBQ":I
    invoke-static {v7, v9, v0}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 214
    nop

    .line 823
    .end local v7    # "$this$pushDowns_u24lambda_u2413":Landroidx/compose/runtime/changelist/Operations;
    .end local v8    # "$i$a$-push-ChangeList$pushDowns$1":I
    nop

    .line 825
    invoke-static {v4}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v7

    invoke-virtual {v5}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v8

    invoke-static {v4, v8}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 826
    invoke-static {v4}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v7

    invoke-virtual {v5}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v8

    invoke-static {v4, v8}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v8

    if-ne v7, v8, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    move v7, v2

    .line 827
    :goto_1
    if-nez v7, :cond_8

    const/4 v7, 0x0

    .line 831
    .local v7, "$i$a$-check-Operations$push$3$iv":I
    const/4 v8, 0x0

    .line 832
    .local v8, "missingIntCount$iv":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v9

    .local v10, "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 833
    .local v11, "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v5}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v12

    move v13, v2

    :goto_2
    const-string v14, ", "

    if-ge v13, v12, :cond_4

    move v15, v13

    .local v15, "arg$iv":I
    const/16 v16, 0x0

    .line 834
    .local v16, "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    shl-int v17, v3, v15

    invoke-static {v4}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v18

    and-int v17, v17, v18

    if-eqz v17, :cond_3

    .line 835
    if-lez v8, :cond_2

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    :cond_2
    invoke-static {v15}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v14

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    add-int/lit8 v8, v8, 0x1

    .line 839
    :cond_3
    nop

    .line 833
    .end local v15    # "arg$iv":I
    .end local v16    # "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 840
    :cond_4
    nop

    .line 832
    .end local v10    # "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    .end local v11    # "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 842
    .local v9, "missingInts$iv":Ljava/lang/String;
    const/4 v11, 0x0

    .line 843
    .local v11, "missingObjectCount$iv":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v12

    .local v13, "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 844
    .local v15, "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    invoke-virtual {v5}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v2

    move/from16 v19, v11

    const/4 v11, 0x0

    .end local v11    # "missingObjectCount$iv":I
    .local v19, "missingObjectCount$iv":I
    :goto_3
    if-ge v11, v2, :cond_7

    move/from16 v16, v11

    .local v16, "arg$iv":I
    const/16 v17, 0x0

    .line 845
    .local v17, "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    shl-int v18, v3, v16

    invoke-static {v4}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v20

    and-int v18, v18, v20

    if-eqz v18, :cond_6

    .line 846
    if-lez v8, :cond_5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    :cond_5
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v3

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    move/from16 v3, v19

    .end local v19    # "missingObjectCount$iv":I
    .local v3, "missingObjectCount$iv":I
    add-int/lit8 v19, v3, 0x1

    .end local v3    # "missingObjectCount$iv":I
    .restart local v19    # "missingObjectCount$iv":I
    goto :goto_4

    .line 845
    :cond_6
    move/from16 v3, v19

    .line 850
    :goto_4
    nop

    .line 844
    .end local v16    # "arg$iv":I
    .end local v17    # "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x1

    goto :goto_3

    .line 851
    :cond_7
    move/from16 v3, v19

    .line 843
    .end local v13    # "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    .end local v15    # "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    .end local v19    # "missingObjectCount$iv":I
    .restart local v3    # "missingObjectCount$iv":I
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 853
    .local v2, "missingObjects$iv":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while pushing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Not all arguments were provided. Missing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 854
    nop

    .line 853
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 854
    nop

    .line 853
    const-string v11, " int arguments ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 854
    nop

    .line 853
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 854
    nop

    .line 853
    const-string v11, ") and "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 855
    nop

    .line 853
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 855
    nop

    .line 853
    const-string v11, " object arguments ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 855
    nop

    .line 853
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 855
    nop

    .line 853
    const-string v11, ")."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 827
    .end local v2    # "missingObjects$iv":Ljava/lang/String;
    .end local v3    # "missingObjectCount$iv":I
    .end local v7    # "$i$a$-check-Operations$push$3$iv":I
    .end local v8    # "missingIntCount$iv":I
    .end local v9    # "missingInts$iv":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 857
    :cond_8
    goto :goto_5

    .line 211
    .end local v4    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v5    # "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    .end local v6    # "$i$f$push":I
    :cond_9
    move-object/from16 v1, p0

    .line 216
    :goto_5
    return-void
.end method

.method public final pushEndCompositionScope(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composition;)V
    .locals 22
    .param p1, "action"    # Lkotlin/jvm/functions/Function1;
    .param p2, "composition"    # Landroidx/compose/runtime/Composition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/Composition;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composition;",
            ")V"
        }
    .end annotation

    .line 163
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .local v1, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    sget-object v2, Landroidx/compose/runtime/changelist/Operation$EndCompositionScope;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EndCompositionScope;

    check-cast v2, Landroidx/compose/runtime/changelist/Operation;

    .local v2, "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    const/4 v3, 0x0

    .line 580
    .local v3, "$i$f$push":I
    nop

    .line 583
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 584
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;

    move-result-object v4

    .local v4, "$this$pushEndCompositionScope_u24lambda_u247":Landroidx/compose/runtime/changelist/Operations;
    const/4 v5, 0x0

    .line 164
    .local v5, "$i$a$-push-ChangeList$pushEndCompositionScope$1":I
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$EndCompositionScope;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EndCompositionScope;

    .local v6, "this_$iv":Landroidx/compose/runtime/changelist/Operation$EndCompositionScope;
    const/4 v7, 0x0

    .line 585
    .local v7, "$i$f$getAction-HpuvwBQ":I
    const/4 v8, 0x0

    invoke-static {v8}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    .line 164
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$EndCompositionScope;
    .end local v7    # "$i$f$getAction-HpuvwBQ":I
    move-object/from16 v7, p1

    invoke-static {v4, v6, v7}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 165
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$EndCompositionScope;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EndCompositionScope;

    .restart local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$EndCompositionScope;
    const/4 v9, 0x0

    .line 586
    .local v9, "$i$f$getComposition-HpuvwBQ":I
    const/4 v10, 0x1

    invoke-static {v10}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    .line 165
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$EndCompositionScope;
    .end local v9    # "$i$f$getComposition-HpuvwBQ":I
    move-object/from16 v9, p2

    invoke-static {v4, v6, v9}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 166
    nop

    .line 584
    .end local v4    # "$this$pushEndCompositionScope_u24lambda_u247":Landroidx/compose/runtime/changelist/Operations;
    .end local v5    # "$i$a$-push-ChangeList$pushEndCompositionScope$1":I
    nop

    .line 587
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 588
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    move v4, v10

    goto :goto_0

    :cond_0
    move v4, v8

    .line 589
    :goto_0
    if-nez v4, :cond_7

    const/4 v4, 0x0

    .line 593
    .local v4, "$i$a$-check-Operations$push$3$iv":I
    const/4 v5, 0x0

    .line 594
    .local v5, "missingIntCount$iv":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v6

    .local v11, "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .line 595
    .local v12, "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v13

    move v14, v8

    :goto_1
    const-string v15, ", "

    if-ge v14, v13, :cond_3

    move/from16 v16, v14

    .local v16, "arg$iv":I
    const/16 v17, 0x0

    .line 596
    .local v17, "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    shl-int v18, v10, v16

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v19

    and-int v18, v18, v19

    if-eqz v18, :cond_2

    .line 597
    if-lez v5, :cond_1

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    :cond_1
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v15

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    add-int/lit8 v5, v5, 0x1

    .line 601
    :cond_2
    nop

    .line 595
    .end local v16    # "arg$iv":I
    .end local v17    # "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 602
    :cond_3
    nop

    .line 594
    .end local v11    # "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    .end local v12    # "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v11, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    .local v6, "missingInts$iv":Ljava/lang/String;
    const/4 v12, 0x0

    .line 605
    .local v12, "missingObjectCount$iv":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v13

    .local v14, "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 606
    .local v16, "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v8

    move/from16 v20, v12

    const/4 v12, 0x0

    .end local v12    # "missingObjectCount$iv":I
    .local v20, "missingObjectCount$iv":I
    :goto_2
    if-ge v12, v8, :cond_6

    move/from16 v17, v12

    .local v17, "arg$iv":I
    const/16 v18, 0x0

    .line 607
    .local v18, "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    shl-int v19, v10, v17

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v21

    and-int v19, v19, v21

    if-eqz v19, :cond_5

    .line 608
    if-lez v5, :cond_4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    :cond_4
    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v10

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    move/from16 v10, v20

    .end local v20    # "missingObjectCount$iv":I
    .local v10, "missingObjectCount$iv":I
    add-int/lit8 v20, v10, 0x1

    .end local v10    # "missingObjectCount$iv":I
    .restart local v20    # "missingObjectCount$iv":I
    goto :goto_3

    .line 607
    :cond_5
    move/from16 v10, v20

    .line 612
    :goto_3
    nop

    .line 606
    .end local v17    # "arg$iv":I
    .end local v18    # "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x1

    goto :goto_2

    .line 613
    :cond_6
    move/from16 v10, v20

    .line 605
    .end local v14    # "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    .end local v16    # "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    .end local v20    # "missingObjectCount$iv":I
    .restart local v10    # "missingObjectCount$iv":I
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 615
    .local v8, "missingObjects$iv":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error while pushing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Not all arguments were provided. Missing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 616
    nop

    .line 615
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 616
    nop

    .line 615
    const-string v12, " int arguments ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 616
    nop

    .line 615
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 616
    nop

    .line 615
    const-string v12, ") and "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 617
    nop

    .line 615
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 617
    nop

    .line 615
    const-string v12, " object arguments ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 617
    nop

    .line 615
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 617
    nop

    .line 615
    const-string v12, ")."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 589
    .end local v4    # "$i$a$-check-Operations$push$3$iv":I
    .end local v5    # "missingIntCount$iv":I
    .end local v6    # "missingInts$iv":Ljava/lang/String;
    .end local v8    # "missingObjects$iv":Ljava/lang/String;
    .end local v10    # "missingObjectCount$iv":I
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 619
    :cond_7
    nop

    .line 167
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v2    # "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    .end local v3    # "$i$f$push":I
    return-void
.end method

.method public final pushEndCurrentGroup()V
    .locals 2

    .line 118
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v1, Landroidx/compose/runtime/changelist/Operation$EndCurrentGroup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EndCurrentGroup;

    check-cast v1, Landroidx/compose/runtime/changelist/Operation;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/changelist/Operations;->push(Landroidx/compose/runtime/changelist/Operation;)V

    .line 119
    return-void
.end method

.method public final pushEndMovableContentPlacement()V
    .locals 2

    .line 275
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v1, Landroidx/compose/runtime/changelist/Operation$EndMovableContentPlacement;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EndMovableContentPlacement;

    check-cast v1, Landroidx/compose/runtime/changelist/Operation;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/changelist/Operations;->push(Landroidx/compose/runtime/changelist/Operation;)V

    .line 276
    return-void
.end method

.method public final pushEnsureGroupStarted(Landroidx/compose/runtime/Anchor;)V
    .locals 21
    .param p1, "anchor"    # Landroidx/compose/runtime/Anchor;

    .line 112
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .local v1, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    sget-object v2, Landroidx/compose/runtime/changelist/Operation$EnsureGroupStarted;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EnsureGroupStarted;

    check-cast v2, Landroidx/compose/runtime/changelist/Operation;

    .local v2, "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    const/4 v3, 0x0

    .line 421
    .local v3, "$i$f$push":I
    nop

    .line 424
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 425
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;

    move-result-object v4

    .local v4, "$this$pushEnsureGroupStarted_u24lambda_u243":Landroidx/compose/runtime/changelist/Operations;
    const/4 v5, 0x0

    .line 113
    .local v5, "$i$a$-push-ChangeList$pushEnsureGroupStarted$1":I
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$EnsureGroupStarted;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EnsureGroupStarted;

    .local v6, "this_$iv":Landroidx/compose/runtime/changelist/Operation$EnsureGroupStarted;
    const/4 v7, 0x0

    .line 426
    .local v7, "$i$f$getAnchor-HpuvwBQ":I
    const/4 v8, 0x0

    invoke-static {v8}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    .line 113
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$EnsureGroupStarted;
    .end local v7    # "$i$f$getAnchor-HpuvwBQ":I
    move-object/from16 v7, p1

    invoke-static {v4, v6, v7}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 114
    nop

    .line 425
    .end local v4    # "$this$pushEnsureGroupStarted_u24lambda_u243":Landroidx/compose/runtime/changelist/Operations;
    .end local v5    # "$i$a$-push-ChangeList$pushEnsureGroupStarted$1":I
    nop

    .line 427
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    .line 428
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v8

    .line 429
    :goto_0
    if-nez v4, :cond_7

    const/4 v4, 0x0

    .line 433
    .local v4, "$i$a$-check-Operations$push$3$iv":I
    const/4 v5, 0x0

    .line 434
    .local v5, "missingIntCount$iv":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v9

    .local v10, "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 435
    .local v11, "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v12

    move v13, v8

    :goto_1
    const-string v14, ", "

    if-ge v13, v12, :cond_3

    move v15, v13

    .local v15, "arg$iv":I
    const/16 v16, 0x0

    .line 436
    .local v16, "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    shl-int v17, v6, v15

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v18

    and-int v17, v17, v18

    if-eqz v17, :cond_2

    .line 437
    if-lez v5, :cond_1

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    :cond_1
    invoke-static {v15}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v14

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    add-int/lit8 v5, v5, 0x1

    .line 441
    :cond_2
    nop

    .line 435
    .end local v15    # "arg$iv":I
    .end local v16    # "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 442
    :cond_3
    nop

    .line 434
    .end local v10    # "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    .end local v11    # "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    .local v9, "missingInts$iv":Ljava/lang/String;
    const/4 v11, 0x0

    .line 445
    .local v11, "missingObjectCount$iv":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v12

    .local v13, "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 446
    .local v15, "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v8

    move/from16 v19, v11

    const/4 v11, 0x0

    .end local v11    # "missingObjectCount$iv":I
    .local v19, "missingObjectCount$iv":I
    :goto_2
    if-ge v11, v8, :cond_6

    move/from16 v16, v11

    .local v16, "arg$iv":I
    const/16 v17, 0x0

    .line 447
    .local v17, "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    shl-int v18, v6, v16

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v20

    and-int v18, v18, v20

    if-eqz v18, :cond_5

    .line 448
    if-lez v5, :cond_4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_4
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    move/from16 v6, v19

    .end local v19    # "missingObjectCount$iv":I
    .local v6, "missingObjectCount$iv":I
    add-int/lit8 v19, v6, 0x1

    .end local v6    # "missingObjectCount$iv":I
    .restart local v19    # "missingObjectCount$iv":I
    goto :goto_3

    .line 447
    :cond_5
    move/from16 v6, v19

    .line 452
    :goto_3
    nop

    .line 446
    .end local v16    # "arg$iv":I
    .end local v17    # "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    goto :goto_2

    .line 453
    :cond_6
    move/from16 v6, v19

    .line 445
    .end local v13    # "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    .end local v15    # "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    .end local v19    # "missingObjectCount$iv":I
    .restart local v6    # "missingObjectCount$iv":I
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    .local v8, "missingObjects$iv":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while pushing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Not all arguments were provided. Missing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 456
    nop

    .line 455
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 456
    nop

    .line 455
    const-string v11, " int arguments ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 456
    nop

    .line 455
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 456
    nop

    .line 455
    const-string v11, ") and "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 457
    nop

    .line 455
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 457
    nop

    .line 455
    const-string v11, " object arguments ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 457
    nop

    .line 455
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 457
    nop

    .line 455
    const-string v11, ")."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 429
    .end local v4    # "$i$a$-check-Operations$push$3$iv":I
    .end local v5    # "missingIntCount$iv":I
    .end local v6    # "missingObjectCount$iv":I
    .end local v8    # "missingObjects$iv":Ljava/lang/String;
    .end local v9    # "missingInts$iv":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 459
    :cond_7
    nop

    .line 115
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v2    # "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    .end local v3    # "$i$f$push":I
    return-void
.end method

.method public final pushEnsureRootStarted()V
    .locals 2

    .line 108
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v1, Landroidx/compose/runtime/changelist/Operation$EnsureRootGroupStarted;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EnsureRootGroupStarted;

    check-cast v1, Landroidx/compose/runtime/changelist/Operation;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/changelist/Operations;->push(Landroidx/compose/runtime/changelist/Operation;)V

    .line 109
    return-void
.end method

.method public final pushExecuteOperationsIn(Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/internal/IntRef;)V
    .locals 22
    .param p1, "changeList"    # Landroidx/compose/runtime/changelist/ChangeList;
    .param p2, "effectiveNodeIndex"    # Landroidx/compose/runtime/internal/IntRef;

    .line 282
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/changelist/ChangeList;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .local v1, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    sget-object v2, Landroidx/compose/runtime/changelist/Operation$ApplyChangeList;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$ApplyChangeList;

    check-cast v2, Landroidx/compose/runtime/changelist/Operation;

    .local v2, "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    const/4 v3, 0x0

    .line 1060
    .local v3, "$i$f$push":I
    nop

    .line 1063
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 1064
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;

    move-result-object v4

    .local v4, "$this$pushExecuteOperationsIn_u24lambda_u2419":Landroidx/compose/runtime/changelist/Operations;
    const/4 v5, 0x0

    .line 284
    .local v5, "$i$a$-push-ChangeList$pushExecuteOperationsIn$1":I
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$ApplyChangeList;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$ApplyChangeList;

    .local v6, "this_$iv":Landroidx/compose/runtime/changelist/Operation$ApplyChangeList;
    const/4 v7, 0x0

    .line 1065
    .local v7, "$i$f$getChanges-HpuvwBQ":I
    const/4 v8, 0x0

    invoke-static {v8}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    .line 284
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$ApplyChangeList;
    .end local v7    # "$i$f$getChanges-HpuvwBQ":I
    move-object/from16 v7, p1

    invoke-static {v4, v6, v7}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 285
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$ApplyChangeList;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$ApplyChangeList;

    .restart local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$ApplyChangeList;
    const/4 v9, 0x0

    .line 1066
    .local v9, "$i$f$getEffectiveNodeIndex-HpuvwBQ":I
    const/4 v10, 0x1

    invoke-static {v10}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    .line 285
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$ApplyChangeList;
    .end local v9    # "$i$f$getEffectiveNodeIndex-HpuvwBQ":I
    move-object/from16 v9, p2

    invoke-static {v4, v6, v9}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 286
    nop

    .line 1064
    .end local v4    # "$this$pushExecuteOperationsIn_u24lambda_u2419":Landroidx/compose/runtime/changelist/Operations;
    .end local v5    # "$i$a$-push-ChangeList$pushExecuteOperationsIn$1":I
    nop

    .line 1067
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1068
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    move v4, v10

    goto :goto_0

    :cond_0
    move v4, v8

    .line 1069
    :goto_0
    if-nez v4, :cond_7

    const/4 v4, 0x0

    .line 1073
    .local v4, "$i$a$-check-Operations$push$3$iv":I
    const/4 v5, 0x0

    .line 1074
    .local v5, "missingIntCount$iv":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v6

    .local v11, "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .line 1075
    .local v12, "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v13

    move v14, v8

    :goto_1
    const-string v15, ", "

    if-ge v14, v13, :cond_3

    move/from16 v16, v14

    .local v16, "arg$iv":I
    const/16 v17, 0x0

    .line 1076
    .local v17, "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    shl-int v18, v10, v16

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v19

    and-int v18, v18, v19

    if-eqz v18, :cond_2

    .line 1077
    if-lez v5, :cond_1

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    :cond_1
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v15

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    add-int/lit8 v5, v5, 0x1

    .line 1081
    :cond_2
    nop

    .line 1075
    .end local v16    # "arg$iv":I
    .end local v17    # "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1082
    :cond_3
    nop

    .line 1074
    .end local v11    # "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    .end local v12    # "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v11, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1084
    .local v6, "missingInts$iv":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1085
    .local v12, "missingObjectCount$iv":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v13

    .local v14, "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 1086
    .local v16, "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v8

    move/from16 v20, v12

    const/4 v12, 0x0

    .end local v12    # "missingObjectCount$iv":I
    .local v20, "missingObjectCount$iv":I
    :goto_2
    if-ge v12, v8, :cond_6

    move/from16 v17, v12

    .local v17, "arg$iv":I
    const/16 v18, 0x0

    .line 1087
    .local v18, "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    shl-int v19, v10, v17

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v21

    and-int v19, v19, v21

    if-eqz v19, :cond_5

    .line 1088
    if-lez v5, :cond_4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    :cond_4
    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v10

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    move/from16 v10, v20

    .end local v20    # "missingObjectCount$iv":I
    .local v10, "missingObjectCount$iv":I
    add-int/lit8 v20, v10, 0x1

    .end local v10    # "missingObjectCount$iv":I
    .restart local v20    # "missingObjectCount$iv":I
    goto :goto_3

    .line 1087
    :cond_5
    move/from16 v10, v20

    .line 1092
    :goto_3
    nop

    .line 1086
    .end local v17    # "arg$iv":I
    .end local v18    # "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x1

    goto :goto_2

    .line 1093
    :cond_6
    move/from16 v10, v20

    .line 1085
    .end local v14    # "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    .end local v16    # "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    .end local v20    # "missingObjectCount$iv":I
    .restart local v10    # "missingObjectCount$iv":I
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1095
    .local v8, "missingObjects$iv":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error while pushing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Not all arguments were provided. Missing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1096
    nop

    .line 1095
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1096
    nop

    .line 1095
    const-string v12, " int arguments ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1096
    nop

    .line 1095
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1096
    nop

    .line 1095
    const-string v12, ") and "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1097
    nop

    .line 1095
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1097
    nop

    .line 1095
    const-string v12, " object arguments ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1097
    nop

    .line 1095
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1097
    nop

    .line 1095
    const-string v12, ")."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1069
    .end local v4    # "$i$a$-check-Operations$push$3$iv":I
    .end local v5    # "missingIntCount$iv":I
    .end local v6    # "missingInts$iv":Ljava/lang/String;
    .end local v8    # "missingObjects$iv":Ljava/lang/String;
    .end local v10    # "missingObjectCount$iv":I
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1099
    :cond_7
    goto :goto_4

    .line 282
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v2    # "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    .end local v3    # "$i$f$push":I
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v9, p2

    .line 288
    :goto_4
    return-void
.end method

.method public final pushInsertSlots(Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/SlotTable;)V
    .locals 22
    .param p1, "anchor"    # Landroidx/compose/runtime/Anchor;
    .param p2, "from"    # Landroidx/compose/runtime/SlotTable;

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .local v1, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    sget-object v2, Landroidx/compose/runtime/changelist/Operation$InsertSlots;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$InsertSlots;

    check-cast v2, Landroidx/compose/runtime/changelist/Operation;

    .local v2, "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    const/4 v3, 0x0

    .line 460
    .local v3, "$i$f$push":I
    nop

    .line 463
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 464
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;

    move-result-object v4

    .local v4, "$this$pushInsertSlots_u24lambda_u244":Landroidx/compose/runtime/changelist/Operations;
    const/4 v5, 0x0

    .line 134
    .local v5, "$i$a$-push-ChangeList$pushInsertSlots$1":I
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$InsertSlots;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$InsertSlots;

    .local v6, "this_$iv":Landroidx/compose/runtime/changelist/Operation$InsertSlots;
    const/4 v7, 0x0

    .line 465
    .local v7, "$i$f$getAnchor-HpuvwBQ":I
    const/4 v8, 0x0

    invoke-static {v8}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    .line 134
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$InsertSlots;
    .end local v7    # "$i$f$getAnchor-HpuvwBQ":I
    move-object/from16 v7, p1

    invoke-static {v4, v6, v7}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 135
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$InsertSlots;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$InsertSlots;

    .restart local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$InsertSlots;
    const/4 v9, 0x0

    .line 466
    .local v9, "$i$f$getFromSlotTable-HpuvwBQ":I
    const/4 v10, 0x1

    invoke-static {v10}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    .line 135
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$InsertSlots;
    .end local v9    # "$i$f$getFromSlotTable-HpuvwBQ":I
    move-object/from16 v9, p2

    invoke-static {v4, v6, v9}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 136
    nop

    .line 464
    .end local v4    # "$this$pushInsertSlots_u24lambda_u244":Landroidx/compose/runtime/changelist/Operations;
    .end local v5    # "$i$a$-push-ChangeList$pushInsertSlots$1":I
    nop

    .line 467
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 468
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    move v4, v10

    goto :goto_0

    :cond_0
    move v4, v8

    .line 469
    :goto_0
    if-nez v4, :cond_7

    const/4 v4, 0x0

    .line 473
    .local v4, "$i$a$-check-Operations$push$3$iv":I
    const/4 v5, 0x0

    .line 474
    .local v5, "missingIntCount$iv":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v6

    .local v11, "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .line 475
    .local v12, "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v13

    move v14, v8

    :goto_1
    const-string v15, ", "

    if-ge v14, v13, :cond_3

    move/from16 v16, v14

    .local v16, "arg$iv":I
    const/16 v17, 0x0

    .line 476
    .local v17, "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    shl-int v18, v10, v16

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v19

    and-int v18, v18, v19

    if-eqz v18, :cond_2

    .line 477
    if-lez v5, :cond_1

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    :cond_1
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v15

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    add-int/lit8 v5, v5, 0x1

    .line 481
    :cond_2
    nop

    .line 475
    .end local v16    # "arg$iv":I
    .end local v17    # "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 482
    :cond_3
    nop

    .line 474
    .end local v11    # "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    .end local v12    # "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v11, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    .local v6, "missingInts$iv":Ljava/lang/String;
    const/4 v12, 0x0

    .line 485
    .local v12, "missingObjectCount$iv":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v13

    .local v14, "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 486
    .local v16, "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v8

    move/from16 v20, v12

    const/4 v12, 0x0

    .end local v12    # "missingObjectCount$iv":I
    .local v20, "missingObjectCount$iv":I
    :goto_2
    if-ge v12, v8, :cond_6

    move/from16 v17, v12

    .local v17, "arg$iv":I
    const/16 v18, 0x0

    .line 487
    .local v18, "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    shl-int v19, v10, v17

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v21

    and-int v19, v19, v21

    if-eqz v19, :cond_5

    .line 488
    if-lez v5, :cond_4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :cond_4
    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v10

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    move/from16 v10, v20

    .end local v20    # "missingObjectCount$iv":I
    .local v10, "missingObjectCount$iv":I
    add-int/lit8 v20, v10, 0x1

    .end local v10    # "missingObjectCount$iv":I
    .restart local v20    # "missingObjectCount$iv":I
    goto :goto_3

    .line 487
    :cond_5
    move/from16 v10, v20

    .line 492
    :goto_3
    nop

    .line 486
    .end local v17    # "arg$iv":I
    .end local v18    # "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x1

    goto :goto_2

    .line 493
    :cond_6
    move/from16 v10, v20

    .line 485
    .end local v14    # "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    .end local v16    # "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    .end local v20    # "missingObjectCount$iv":I
    .restart local v10    # "missingObjectCount$iv":I
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    .local v8, "missingObjects$iv":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error while pushing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Not all arguments were provided. Missing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 496
    nop

    .line 495
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 496
    nop

    .line 495
    const-string v12, " int arguments ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 496
    nop

    .line 495
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 496
    nop

    .line 495
    const-string v12, ") and "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 497
    nop

    .line 495
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 497
    nop

    .line 495
    const-string v12, " object arguments ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 497
    nop

    .line 495
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 497
    nop

    .line 495
    const-string v12, ")."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 469
    .end local v4    # "$i$a$-check-Operations$push$3$iv":I
    .end local v5    # "missingIntCount$iv":I
    .end local v6    # "missingInts$iv":Ljava/lang/String;
    .end local v8    # "missingObjects$iv":Ljava/lang/String;
    .end local v10    # "missingObjectCount$iv":I
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 499
    :cond_7
    nop

    .line 137
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v2    # "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    .end local v3    # "$i$f$push":I
    return-void
.end method

.method public final pushInsertSlots(Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/changelist/FixupList;)V
    .locals 22
    .param p1, "anchor"    # Landroidx/compose/runtime/Anchor;
    .param p2, "from"    # Landroidx/compose/runtime/SlotTable;
    .param p3, "fixups"    # Landroidx/compose/runtime/changelist/FixupList;

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .local v1, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    sget-object v2, Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;

    check-cast v2, Landroidx/compose/runtime/changelist/Operation;

    .local v2, "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    const/4 v3, 0x0

    .line 500
    .local v3, "$i$f$push":I
    nop

    .line 503
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 504
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;

    move-result-object v4

    .local v4, "$this$pushInsertSlots_u24lambda_u245":Landroidx/compose/runtime/changelist/Operations;
    const/4 v5, 0x0

    .line 145
    .local v5, "$i$a$-push-ChangeList$pushInsertSlots$2":I
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;

    .local v6, "this_$iv":Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;
    const/4 v7, 0x0

    .line 505
    .local v7, "$i$f$getAnchor-HpuvwBQ":I
    const/4 v8, 0x0

    invoke-static {v8}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    .line 145
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;
    .end local v7    # "$i$f$getAnchor-HpuvwBQ":I
    move-object/from16 v7, p1

    invoke-static {v4, v6, v7}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 146
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;

    .restart local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;
    const/4 v9, 0x0

    .line 506
    .local v9, "$i$f$getFromSlotTable-HpuvwBQ":I
    const/4 v10, 0x1

    invoke-static {v10}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    .line 146
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;
    .end local v9    # "$i$f$getFromSlotTable-HpuvwBQ":I
    move-object/from16 v9, p2

    invoke-static {v4, v6, v9}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 147
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;

    .restart local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;
    const/4 v11, 0x0

    .line 507
    .local v11, "$i$f$getFixups-HpuvwBQ":I
    const/4 v12, 0x2

    invoke-static {v12}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    .line 147
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;
    .end local v11    # "$i$f$getFixups-HpuvwBQ":I
    move-object/from16 v11, p3

    invoke-static {v4, v6, v11}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 148
    nop

    .line 504
    .end local v4    # "$this$pushInsertSlots_u24lambda_u245":Landroidx/compose/runtime/changelist/Operations;
    .end local v5    # "$i$a$-push-ChangeList$pushInsertSlots$2":I
    nop

    .line 508
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 509
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    move v4, v10

    goto :goto_0

    :cond_0
    move v4, v8

    .line 510
    :goto_0
    if-nez v4, :cond_7

    const/4 v4, 0x0

    .line 514
    .local v4, "$i$a$-check-Operations$push$3$iv":I
    const/4 v5, 0x0

    .line 515
    .local v5, "missingIntCount$iv":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v6

    .local v12, "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .line 516
    .local v13, "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v14

    move v15, v8

    :goto_1
    const-string v8, ", "

    if-ge v15, v14, :cond_3

    move/from16 v17, v15

    .local v17, "arg$iv":I
    const/16 v18, 0x0

    .line 517
    .local v18, "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    shl-int v19, v10, v17

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v20

    and-int v19, v19, v20

    if-eqz v19, :cond_2

    .line 518
    if-lez v5, :cond_1

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    :cond_1
    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    add-int/lit8 v5, v5, 0x1

    .line 522
    :cond_2
    nop

    .line 516
    .end local v17    # "arg$iv":I
    .end local v18    # "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x0

    goto :goto_1

    .line 523
    :cond_3
    nop

    .line 515
    .end local v12    # "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    .end local v13    # "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v12, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    .local v6, "missingInts$iv":Ljava/lang/String;
    const/4 v13, 0x0

    .line 526
    .local v13, "missingObjectCount$iv":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v14

    .local v15, "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    .line 527
    .local v17, "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v10

    move v0, v13

    const/4 v13, 0x0

    .end local v13    # "missingObjectCount$iv":I
    .local v0, "missingObjectCount$iv":I
    :goto_2
    if-ge v13, v10, :cond_6

    move/from16 v16, v13

    .local v16, "arg$iv":I
    const/16 v19, 0x0

    .line 528
    .local v19, "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    const/16 v18, 0x1

    shl-int v20, v18, v16

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v21

    and-int v20, v20, v21

    if-eqz v20, :cond_5

    .line 529
    if-lez v5, :cond_4

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    :cond_4
    move-object/from16 v20, v1

    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .local v20, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 528
    .end local v20    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    :cond_5
    move-object/from16 v20, v1

    .line 533
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .restart local v20    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    :goto_3
    nop

    .line 527
    .end local v16    # "arg$iv":I
    .end local v19    # "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v20

    goto :goto_2

    .line 534
    .end local v20    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    :cond_6
    move-object/from16 v20, v1

    .line 526
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v15    # "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    .end local v17    # "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    .restart local v20    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    .local v1, "missingObjects$iv":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while pushing "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ". Not all arguments were provided. Missing "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 537
    nop

    .line 536
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 537
    nop

    .line 536
    const-string v10, " int arguments ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 537
    nop

    .line 536
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 537
    nop

    .line 536
    const-string v10, ") and "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 538
    nop

    .line 536
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 538
    nop

    .line 536
    const-string v10, " object arguments ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 538
    nop

    .line 536
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 538
    nop

    .line 536
    const-string v10, ")."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 510
    .end local v0    # "missingObjectCount$iv":I
    .end local v1    # "missingObjects$iv":Ljava/lang/String;
    .end local v4    # "$i$a$-check-Operations$push$3$iv":I
    .end local v5    # "missingIntCount$iv":I
    .end local v6    # "missingInts$iv":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 540
    .end local v20    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .local v1, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    :cond_7
    nop

    .line 149
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v2    # "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    .end local v3    # "$i$f$push":I
    return-void
.end method

.method public final pushMoveCurrentGroup(I)V
    .locals 21
    .param p1, "offset"    # I

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .local v1, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    sget-object v2, Landroidx/compose/runtime/changelist/Operation$MoveCurrentGroup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$MoveCurrentGroup;

    check-cast v2, Landroidx/compose/runtime/changelist/Operation;

    .local v2, "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    const/4 v3, 0x0

    .line 541
    .local v3, "$i$f$push":I
    nop

    .line 544
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 545
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;

    move-result-object v4

    .local v4, "$this$pushMoveCurrentGroup_u24lambda_u246":Landroidx/compose/runtime/changelist/Operations;
    const/4 v5, 0x0

    .line 155
    .local v5, "$i$a$-push-ChangeList$pushMoveCurrentGroup$1":I
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$MoveCurrentGroup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$MoveCurrentGroup;

    .local v6, "this_$iv":Landroidx/compose/runtime/changelist/Operation$MoveCurrentGroup;
    const/4 v7, 0x0

    .line 546
    .local v7, "$i$f$getOffset-jn0FJLE":I
    const/4 v8, 0x0

    invoke-static {v8}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v6

    .line 155
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$MoveCurrentGroup;
    .end local v7    # "$i$f$getOffset-jn0FJLE":I
    move/from16 v7, p1

    invoke-static {v4, v6, v7}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setInt-A6tL2VI(Landroidx/compose/runtime/changelist/Operations;II)V

    .line 156
    nop

    .line 545
    .end local v4    # "$this$pushMoveCurrentGroup_u24lambda_u246":Landroidx/compose/runtime/changelist/Operations;
    .end local v5    # "$i$a$-push-ChangeList$pushMoveCurrentGroup$1":I
    nop

    .line 547
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    .line 548
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v8

    .line 549
    :goto_0
    if-nez v4, :cond_7

    const/4 v4, 0x0

    .line 553
    .local v4, "$i$a$-check-Operations$push$3$iv":I
    const/4 v5, 0x0

    .line 554
    .local v5, "missingIntCount$iv":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v9

    .local v10, "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 555
    .local v11, "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v12

    move v13, v8

    :goto_1
    const-string v14, ", "

    if-ge v13, v12, :cond_3

    move v15, v13

    .local v15, "arg$iv":I
    const/16 v16, 0x0

    .line 556
    .local v16, "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    shl-int v17, v6, v15

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v18

    and-int v17, v17, v18

    if-eqz v17, :cond_2

    .line 557
    if-lez v5, :cond_1

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :cond_1
    invoke-static {v15}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v14

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    add-int/lit8 v5, v5, 0x1

    .line 561
    :cond_2
    nop

    .line 555
    .end local v15    # "arg$iv":I
    .end local v16    # "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 562
    :cond_3
    nop

    .line 554
    .end local v10    # "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    .end local v11    # "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    .local v9, "missingInts$iv":Ljava/lang/String;
    const/4 v11, 0x0

    .line 565
    .local v11, "missingObjectCount$iv":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v12

    .local v13, "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 566
    .local v15, "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v8

    move/from16 v19, v11

    const/4 v11, 0x0

    .end local v11    # "missingObjectCount$iv":I
    .local v19, "missingObjectCount$iv":I
    :goto_2
    if-ge v11, v8, :cond_6

    move/from16 v16, v11

    .local v16, "arg$iv":I
    const/16 v17, 0x0

    .line 567
    .local v17, "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    shl-int v18, v6, v16

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v20

    and-int v18, v18, v20

    if-eqz v18, :cond_5

    .line 568
    if-lez v5, :cond_4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    :cond_4
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    move/from16 v6, v19

    .end local v19    # "missingObjectCount$iv":I
    .local v6, "missingObjectCount$iv":I
    add-int/lit8 v19, v6, 0x1

    .end local v6    # "missingObjectCount$iv":I
    .restart local v19    # "missingObjectCount$iv":I
    goto :goto_3

    .line 567
    :cond_5
    move/from16 v6, v19

    .line 572
    :goto_3
    nop

    .line 566
    .end local v16    # "arg$iv":I
    .end local v17    # "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    goto :goto_2

    .line 573
    :cond_6
    move/from16 v6, v19

    .line 565
    .end local v13    # "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    .end local v15    # "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    .end local v19    # "missingObjectCount$iv":I
    .restart local v6    # "missingObjectCount$iv":I
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    .local v8, "missingObjects$iv":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while pushing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Not all arguments were provided. Missing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 576
    nop

    .line 575
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 576
    nop

    .line 575
    const-string v11, " int arguments ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 576
    nop

    .line 575
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 576
    nop

    .line 575
    const-string v11, ") and "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 577
    nop

    .line 575
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 577
    nop

    .line 575
    const-string v11, " object arguments ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 577
    nop

    .line 575
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 577
    nop

    .line 575
    const-string v11, ")."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 549
    .end local v4    # "$i$a$-check-Operations$push$3$iv":I
    .end local v5    # "missingIntCount$iv":I
    .end local v6    # "missingObjectCount$iv":I
    .end local v8    # "missingObjects$iv":Ljava/lang/String;
    .end local v9    # "missingInts$iv":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 579
    :cond_7
    nop

    .line 157
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v2    # "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    .end local v3    # "$i$f$push":I
    return-void
.end method

.method public final pushMoveNode(III)V
    .locals 22
    .param p1, "to"    # I
    .param p2, "from"    # I
    .param p3, "count"    # I

    .line 191
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .local v1, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    sget-object v2, Landroidx/compose/runtime/changelist/Operation$MoveNode;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$MoveNode;

    check-cast v2, Landroidx/compose/runtime/changelist/Operation;

    .local v2, "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    const/4 v3, 0x0

    .line 700
    .local v3, "$i$f$push":I
    nop

    .line 703
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 704
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;

    move-result-object v4

    .local v4, "$this$pushMoveNode_u24lambda_u2410":Landroidx/compose/runtime/changelist/Operations;
    const/4 v5, 0x0

    .line 192
    .local v5, "$i$a$-push-ChangeList$pushMoveNode$1":I
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$MoveNode;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$MoveNode;

    .local v6, "this_$iv":Landroidx/compose/runtime/changelist/Operation$MoveNode;
    const/4 v7, 0x0

    .line 705
    .local v7, "$i$f$getTo-jn0FJLE":I
    const/4 v8, 0x1

    invoke-static {v8}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v6

    .line 192
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$MoveNode;
    .end local v7    # "$i$f$getTo-jn0FJLE":I
    move/from16 v7, p1

    invoke-static {v4, v6, v7}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setInt-A6tL2VI(Landroidx/compose/runtime/changelist/Operations;II)V

    .line 193
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$MoveNode;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$MoveNode;

    .restart local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$MoveNode;
    const/4 v9, 0x0

    .line 706
    .local v9, "$i$f$getFrom-jn0FJLE":I
    const/4 v10, 0x0

    invoke-static {v10}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v6

    .line 193
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$MoveNode;
    .end local v9    # "$i$f$getFrom-jn0FJLE":I
    move/from16 v9, p2

    invoke-static {v4, v6, v9}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setInt-A6tL2VI(Landroidx/compose/runtime/changelist/Operations;II)V

    .line 194
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$MoveNode;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$MoveNode;

    .restart local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$MoveNode;
    const/4 v11, 0x0

    .line 707
    .local v11, "$i$f$getCount-jn0FJLE":I
    const/4 v12, 0x2

    invoke-static {v12}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v6

    .line 194
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$MoveNode;
    .end local v11    # "$i$f$getCount-jn0FJLE":I
    move/from16 v11, p3

    invoke-static {v4, v6, v11}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setInt-A6tL2VI(Landroidx/compose/runtime/changelist/Operations;II)V

    .line 195
    nop

    .line 704
    .end local v4    # "$this$pushMoveNode_u24lambda_u2410":Landroidx/compose/runtime/changelist/Operations;
    .end local v5    # "$i$a$-push-ChangeList$pushMoveNode$1":I
    nop

    .line 708
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 709
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    move v4, v10

    .line 710
    :goto_0
    if-nez v4, :cond_7

    const/4 v4, 0x0

    .line 714
    .local v4, "$i$a$-check-Operations$push$3$iv":I
    const/4 v5, 0x0

    .line 715
    .local v5, "missingIntCount$iv":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v6

    .local v12, "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .line 716
    .local v13, "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v14

    move v15, v10

    :goto_1
    const-string v10, ", "

    if-ge v15, v14, :cond_3

    move/from16 v17, v15

    .local v17, "arg$iv":I
    const/16 v18, 0x0

    .line 717
    .local v18, "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    shl-int v19, v8, v17

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v20

    and-int v19, v19, v20

    if-eqz v19, :cond_2

    .line 718
    if-lez v5, :cond_1

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    :cond_1
    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v10

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    add-int/lit8 v5, v5, 0x1

    .line 722
    :cond_2
    nop

    .line 716
    .end local v17    # "arg$iv":I
    .end local v18    # "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    add-int/lit8 v15, v15, 0x1

    const/4 v10, 0x0

    goto :goto_1

    .line 723
    :cond_3
    nop

    .line 715
    .end local v12    # "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    .end local v13    # "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v12, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 725
    .local v6, "missingInts$iv":Ljava/lang/String;
    const/4 v13, 0x0

    .line 726
    .local v13, "missingObjectCount$iv":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v14

    .local v15, "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    .line 727
    .local v17, "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v8

    move v0, v13

    const/4 v13, 0x0

    .end local v13    # "missingObjectCount$iv":I
    .local v0, "missingObjectCount$iv":I
    :goto_2
    if-ge v13, v8, :cond_6

    move/from16 v16, v13

    .local v16, "arg$iv":I
    const/16 v19, 0x0

    .line 728
    .local v19, "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    const/16 v18, 0x1

    shl-int v20, v18, v16

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v21

    and-int v20, v20, v21

    if-eqz v20, :cond_5

    .line 729
    if-lez v5, :cond_4

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    :cond_4
    move-object/from16 v20, v1

    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .local v20, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 728
    .end local v20    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    :cond_5
    move-object/from16 v20, v1

    .line 733
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .restart local v20    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    :goto_3
    nop

    .line 727
    .end local v16    # "arg$iv":I
    .end local v19    # "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v20

    goto :goto_2

    .line 734
    .end local v20    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    :cond_6
    move-object/from16 v20, v1

    .line 726
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v15    # "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    .end local v17    # "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    .restart local v20    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 736
    .local v1, "missingObjects$iv":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while pushing "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ". Not all arguments were provided. Missing "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 737
    nop

    .line 736
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 737
    nop

    .line 736
    const-string v10, " int arguments ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 737
    nop

    .line 736
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 737
    nop

    .line 736
    const-string v10, ") and "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 738
    nop

    .line 736
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 738
    nop

    .line 736
    const-string v10, " object arguments ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 738
    nop

    .line 736
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 738
    nop

    .line 736
    const-string v10, ")."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 710
    .end local v0    # "missingObjectCount$iv":I
    .end local v1    # "missingObjects$iv":Ljava/lang/String;
    .end local v4    # "$i$a$-check-Operations$push$3$iv":I
    .end local v5    # "missingIntCount$iv":I
    .end local v6    # "missingInts$iv":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 740
    .end local v20    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .local v1, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    :cond_7
    nop

    .line 196
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v2    # "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    .end local v3    # "$i$f$push":I
    return-void
.end method

.method public final pushReleaseMovableGroupAtCurrent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 22
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;
    .param p2, "parentContext"    # Landroidx/compose/runtime/CompositionContext;
    .param p3, "reference"    # Landroidx/compose/runtime/MovableContentStateReference;

    .line 267
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .local v1, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    sget-object v2, Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;

    check-cast v2, Landroidx/compose/runtime/changelist/Operation;

    .local v2, "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    const/4 v3, 0x0

    .line 1019
    .local v3, "$i$f$push":I
    nop

    .line 1022
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 1023
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;

    move-result-object v4

    .local v4, "$this$pushReleaseMovableGroupAtCurrent_u24lambda_u2418":Landroidx/compose/runtime/changelist/Operations;
    const/4 v5, 0x0

    .line 268
    .local v5, "$i$a$-push-ChangeList$pushReleaseMovableGroupAtCurrent$1":I
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;

    .local v6, "this_$iv":Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;
    const/4 v7, 0x0

    .line 1024
    .local v7, "$i$f$getComposition-HpuvwBQ":I
    const/4 v8, 0x0

    invoke-static {v8}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    .line 268
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;
    .end local v7    # "$i$f$getComposition-HpuvwBQ":I
    move-object/from16 v7, p1

    invoke-static {v4, v6, v7}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 269
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;

    .restart local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;
    const/4 v9, 0x0

    .line 1025
    .local v9, "$i$f$getParentCompositionContext-HpuvwBQ":I
    const/4 v10, 0x1

    invoke-static {v10}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    .line 269
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;
    .end local v9    # "$i$f$getParentCompositionContext-HpuvwBQ":I
    move-object/from16 v9, p2

    invoke-static {v4, v6, v9}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 270
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;

    .restart local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;
    const/4 v11, 0x0

    .line 1026
    .local v11, "$i$f$getReference-HpuvwBQ":I
    const/4 v12, 0x2

    invoke-static {v12}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    .line 270
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;
    .end local v11    # "$i$f$getReference-HpuvwBQ":I
    move-object/from16 v11, p3

    invoke-static {v4, v6, v11}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 271
    nop

    .line 1023
    .end local v4    # "$this$pushReleaseMovableGroupAtCurrent_u24lambda_u2418":Landroidx/compose/runtime/changelist/Operations;
    .end local v5    # "$i$a$-push-ChangeList$pushReleaseMovableGroupAtCurrent$1":I
    nop

    .line 1027
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1028
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    move v4, v10

    goto :goto_0

    :cond_0
    move v4, v8

    .line 1029
    :goto_0
    if-nez v4, :cond_7

    const/4 v4, 0x0

    .line 1033
    .local v4, "$i$a$-check-Operations$push$3$iv":I
    const/4 v5, 0x0

    .line 1034
    .local v5, "missingIntCount$iv":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v6

    .local v12, "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .line 1035
    .local v13, "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v14

    move v15, v8

    :goto_1
    const-string v8, ", "

    if-ge v15, v14, :cond_3

    move/from16 v17, v15

    .local v17, "arg$iv":I
    const/16 v18, 0x0

    .line 1036
    .local v18, "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    shl-int v19, v10, v17

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v20

    and-int v19, v19, v20

    if-eqz v19, :cond_2

    .line 1037
    if-lez v5, :cond_1

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    :cond_1
    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    add-int/lit8 v5, v5, 0x1

    .line 1041
    :cond_2
    nop

    .line 1035
    .end local v17    # "arg$iv":I
    .end local v18    # "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x0

    goto :goto_1

    .line 1042
    :cond_3
    nop

    .line 1034
    .end local v12    # "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    .end local v13    # "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v12, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1044
    .local v6, "missingInts$iv":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1045
    .local v13, "missingObjectCount$iv":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v14

    .local v15, "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    .line 1046
    .local v17, "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v10

    move v0, v13

    const/4 v13, 0x0

    .end local v13    # "missingObjectCount$iv":I
    .local v0, "missingObjectCount$iv":I
    :goto_2
    if-ge v13, v10, :cond_6

    move/from16 v16, v13

    .local v16, "arg$iv":I
    const/16 v19, 0x0

    .line 1047
    .local v19, "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    const/16 v18, 0x1

    shl-int v20, v18, v16

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v21

    and-int v20, v20, v21

    if-eqz v20, :cond_5

    .line 1048
    if-lez v5, :cond_4

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    :cond_4
    move-object/from16 v20, v1

    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .local v20, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1047
    .end local v20    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    :cond_5
    move-object/from16 v20, v1

    .line 1052
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .restart local v20    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    :goto_3
    nop

    .line 1046
    .end local v16    # "arg$iv":I
    .end local v19    # "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v20

    goto :goto_2

    .line 1053
    .end local v20    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    :cond_6
    move-object/from16 v20, v1

    .line 1045
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v15    # "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    .end local v17    # "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    .restart local v20    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1055
    .local v1, "missingObjects$iv":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while pushing "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ". Not all arguments were provided. Missing "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1056
    nop

    .line 1055
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1056
    nop

    .line 1055
    const-string v10, " int arguments ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1056
    nop

    .line 1055
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1056
    nop

    .line 1055
    const-string v10, ") and "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1057
    nop

    .line 1055
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1057
    nop

    .line 1055
    const-string v10, " object arguments ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1057
    nop

    .line 1055
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1057
    nop

    .line 1055
    const-string v10, ")."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1029
    .end local v0    # "missingObjectCount$iv":I
    .end local v1    # "missingObjects$iv":Ljava/lang/String;
    .end local v4    # "$i$a$-check-Operations$push$3$iv":I
    .end local v5    # "missingIntCount$iv":I
    .end local v6    # "missingInts$iv":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1059
    .end local v20    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .local v1, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    :cond_7
    nop

    .line 272
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v2    # "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    .end local v3    # "$i$f$push":I
    return-void
.end method

.method public final pushRemember(Landroidx/compose/runtime/RememberObserver;)V
    .locals 21
    .param p1, "value"    # Landroidx/compose/runtime/RememberObserver;

    .line 81
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .local v1, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    sget-object v2, Landroidx/compose/runtime/changelist/Operation$Remember;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$Remember;

    check-cast v2, Landroidx/compose/runtime/changelist/Operation;

    .local v2, "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    const/4 v3, 0x0

    .line 303
    .local v3, "$i$f$push":I
    nop

    .line 306
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 307
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;

    move-result-object v4

    .local v4, "$this$pushRemember_u24lambda_u240":Landroidx/compose/runtime/changelist/Operations;
    const/4 v5, 0x0

    .line 82
    .local v5, "$i$a$-push-ChangeList$pushRemember$1":I
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$Remember;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$Remember;

    .local v6, "this_$iv":Landroidx/compose/runtime/changelist/Operation$Remember;
    const/4 v7, 0x0

    .line 308
    .local v7, "$i$f$getValue-HpuvwBQ":I
    const/4 v8, 0x0

    invoke-static {v8}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    .line 82
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$Remember;
    .end local v7    # "$i$f$getValue-HpuvwBQ":I
    move-object/from16 v7, p1

    invoke-static {v4, v6, v7}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 83
    nop

    .line 307
    .end local v4    # "$this$pushRemember_u24lambda_u240":Landroidx/compose/runtime/changelist/Operations;
    .end local v5    # "$i$a$-push-ChangeList$pushRemember$1":I
    nop

    .line 309
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    .line 310
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v8

    .line 311
    :goto_0
    if-nez v4, :cond_7

    const/4 v4, 0x0

    .line 315
    .local v4, "$i$a$-check-Operations$push$3$iv":I
    const/4 v5, 0x0

    .line 316
    .local v5, "missingIntCount$iv":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v9

    .local v10, "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 317
    .local v11, "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v12

    move v13, v8

    :goto_1
    const-string v14, ", "

    if-ge v13, v12, :cond_3

    move v15, v13

    .local v15, "arg$iv":I
    const/16 v16, 0x0

    .line 318
    .local v16, "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    shl-int v17, v6, v15

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v18

    and-int v17, v17, v18

    if-eqz v17, :cond_2

    .line 319
    if-lez v5, :cond_1

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_1
    invoke-static {v15}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v14

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    add-int/lit8 v5, v5, 0x1

    .line 323
    :cond_2
    nop

    .line 317
    .end local v15    # "arg$iv":I
    .end local v16    # "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 324
    :cond_3
    nop

    .line 316
    .end local v10    # "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    .end local v11    # "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    .local v9, "missingInts$iv":Ljava/lang/String;
    const/4 v11, 0x0

    .line 327
    .local v11, "missingObjectCount$iv":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v12

    .local v13, "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 328
    .local v15, "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v8

    move/from16 v19, v11

    const/4 v11, 0x0

    .end local v11    # "missingObjectCount$iv":I
    .local v19, "missingObjectCount$iv":I
    :goto_2
    if-ge v11, v8, :cond_6

    move/from16 v16, v11

    .local v16, "arg$iv":I
    const/16 v17, 0x0

    .line 329
    .local v17, "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    shl-int v18, v6, v16

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v20

    and-int v18, v18, v20

    if-eqz v18, :cond_5

    .line 330
    if-lez v5, :cond_4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_4
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    move/from16 v6, v19

    .end local v19    # "missingObjectCount$iv":I
    .local v6, "missingObjectCount$iv":I
    add-int/lit8 v19, v6, 0x1

    .end local v6    # "missingObjectCount$iv":I
    .restart local v19    # "missingObjectCount$iv":I
    goto :goto_3

    .line 329
    :cond_5
    move/from16 v6, v19

    .line 334
    :goto_3
    nop

    .line 328
    .end local v16    # "arg$iv":I
    .end local v17    # "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    goto :goto_2

    .line 335
    :cond_6
    move/from16 v6, v19

    .line 327
    .end local v13    # "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    .end local v15    # "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    .end local v19    # "missingObjectCount$iv":I
    .restart local v6    # "missingObjectCount$iv":I
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    .local v8, "missingObjects$iv":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while pushing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Not all arguments were provided. Missing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 338
    nop

    .line 337
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 338
    nop

    .line 337
    const-string v11, " int arguments ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 338
    nop

    .line 337
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 338
    nop

    .line 337
    const-string v11, ") and "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 339
    nop

    .line 337
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 339
    nop

    .line 337
    const-string v11, " object arguments ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 339
    nop

    .line 337
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 339
    nop

    .line 337
    const-string v11, ")."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 311
    .end local v4    # "$i$a$-check-Operations$push$3$iv":I
    .end local v5    # "missingIntCount$iv":I
    .end local v6    # "missingObjectCount$iv":I
    .end local v8    # "missingObjects$iv":Ljava/lang/String;
    .end local v9    # "missingInts$iv":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 341
    :cond_7
    nop

    .line 84
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v2    # "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    .end local v3    # "$i$f$push":I
    return-void
.end method

.method public final pushRemoveCurrentGroup()V
    .locals 2

    .line 126
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v1, Landroidx/compose/runtime/changelist/Operation$RemoveCurrentGroup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$RemoveCurrentGroup;

    check-cast v1, Landroidx/compose/runtime/changelist/Operation;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/changelist/Operations;->push(Landroidx/compose/runtime/changelist/Operation;)V

    .line 127
    return-void
.end method

.method public final pushRemoveNode(II)V
    .locals 22
    .param p1, "removeFrom"    # I
    .param p2, "moveCount"    # I

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .local v1, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    sget-object v2, Landroidx/compose/runtime/changelist/Operation$RemoveNode;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$RemoveNode;

    check-cast v2, Landroidx/compose/runtime/changelist/Operation;

    .local v2, "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    const/4 v3, 0x0

    .line 660
    .local v3, "$i$f$push":I
    nop

    .line 663
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 664
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;

    move-result-object v4

    .local v4, "$this$pushRemoveNode_u24lambda_u249":Landroidx/compose/runtime/changelist/Operations;
    const/4 v5, 0x0

    .line 185
    .local v5, "$i$a$-push-ChangeList$pushRemoveNode$1":I
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$RemoveNode;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$RemoveNode;

    .local v6, "this_$iv":Landroidx/compose/runtime/changelist/Operation$RemoveNode;
    const/4 v7, 0x0

    .line 665
    .local v7, "$i$f$getRemoveIndex-jn0FJLE":I
    const/4 v8, 0x0

    invoke-static {v8}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v6

    .line 185
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$RemoveNode;
    .end local v7    # "$i$f$getRemoveIndex-jn0FJLE":I
    move/from16 v7, p1

    invoke-static {v4, v6, v7}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setInt-A6tL2VI(Landroidx/compose/runtime/changelist/Operations;II)V

    .line 186
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$RemoveNode;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$RemoveNode;

    .restart local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$RemoveNode;
    const/4 v9, 0x0

    .line 666
    .local v9, "$i$f$getCount-jn0FJLE":I
    const/4 v10, 0x1

    invoke-static {v10}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v6

    .line 186
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$RemoveNode;
    .end local v9    # "$i$f$getCount-jn0FJLE":I
    move/from16 v9, p2

    invoke-static {v4, v6, v9}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setInt-A6tL2VI(Landroidx/compose/runtime/changelist/Operations;II)V

    .line 187
    nop

    .line 664
    .end local v4    # "$this$pushRemoveNode_u24lambda_u249":Landroidx/compose/runtime/changelist/Operations;
    .end local v5    # "$i$a$-push-ChangeList$pushRemoveNode$1":I
    nop

    .line 667
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 668
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    move v4, v10

    goto :goto_0

    :cond_0
    move v4, v8

    .line 669
    :goto_0
    if-nez v4, :cond_7

    const/4 v4, 0x0

    .line 673
    .local v4, "$i$a$-check-Operations$push$3$iv":I
    const/4 v5, 0x0

    .line 674
    .local v5, "missingIntCount$iv":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v6

    .local v11, "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .line 675
    .local v12, "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v13

    move v14, v8

    :goto_1
    const-string v15, ", "

    if-ge v14, v13, :cond_3

    move/from16 v16, v14

    .local v16, "arg$iv":I
    const/16 v17, 0x0

    .line 676
    .local v17, "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    shl-int v18, v10, v16

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v19

    and-int v18, v18, v19

    if-eqz v18, :cond_2

    .line 677
    if-lez v5, :cond_1

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    :cond_1
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v15

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    add-int/lit8 v5, v5, 0x1

    .line 681
    :cond_2
    nop

    .line 675
    .end local v16    # "arg$iv":I
    .end local v17    # "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 682
    :cond_3
    nop

    .line 674
    .end local v11    # "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    .end local v12    # "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v11, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 684
    .local v6, "missingInts$iv":Ljava/lang/String;
    const/4 v12, 0x0

    .line 685
    .local v12, "missingObjectCount$iv":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v13

    .local v14, "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 686
    .local v16, "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v8

    move/from16 v20, v12

    const/4 v12, 0x0

    .end local v12    # "missingObjectCount$iv":I
    .local v20, "missingObjectCount$iv":I
    :goto_2
    if-ge v12, v8, :cond_6

    move/from16 v17, v12

    .local v17, "arg$iv":I
    const/16 v18, 0x0

    .line 687
    .local v18, "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    shl-int v19, v10, v17

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v21

    and-int v19, v19, v21

    if-eqz v19, :cond_5

    .line 688
    if-lez v5, :cond_4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    :cond_4
    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v10

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    move/from16 v10, v20

    .end local v20    # "missingObjectCount$iv":I
    .local v10, "missingObjectCount$iv":I
    add-int/lit8 v20, v10, 0x1

    .end local v10    # "missingObjectCount$iv":I
    .restart local v20    # "missingObjectCount$iv":I
    goto :goto_3

    .line 687
    :cond_5
    move/from16 v10, v20

    .line 692
    :goto_3
    nop

    .line 686
    .end local v17    # "arg$iv":I
    .end local v18    # "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x1

    goto :goto_2

    .line 693
    :cond_6
    move/from16 v10, v20

    .line 685
    .end local v14    # "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    .end local v16    # "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    .end local v20    # "missingObjectCount$iv":I
    .restart local v10    # "missingObjectCount$iv":I
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    .local v8, "missingObjects$iv":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error while pushing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Not all arguments were provided. Missing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 696
    nop

    .line 695
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 696
    nop

    .line 695
    const-string v12, " int arguments ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 696
    nop

    .line 695
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 696
    nop

    .line 695
    const-string v12, ") and "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 697
    nop

    .line 695
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 697
    nop

    .line 695
    const-string v12, " object arguments ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 697
    nop

    .line 695
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 697
    nop

    .line 695
    const-string v12, ")."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 669
    .end local v4    # "$i$a$-check-Operations$push$3$iv":I
    .end local v5    # "missingIntCount$iv":I
    .end local v6    # "missingInts$iv":Ljava/lang/String;
    .end local v8    # "missingObjects$iv":Ljava/lang/String;
    .end local v10    # "missingObjectCount$iv":I
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 699
    :cond_7
    nop

    .line 188
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v2    # "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    .end local v3    # "$i$f$push":I
    return-void
.end method

.method public final pushResetSlots()V
    .locals 2

    .line 94
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v1, Landroidx/compose/runtime/changelist/Operation$ResetSlots;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$ResetSlots;

    check-cast v1, Landroidx/compose/runtime/changelist/Operation;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/changelist/Operations;->push(Landroidx/compose/runtime/changelist/Operation;)V

    .line 95
    return-void
.end method

.method public final pushSideEffect(Lkotlin/jvm/functions/Function0;)V
    .locals 21
    .param p1, "effect"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .local v1, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    sget-object v2, Landroidx/compose/runtime/changelist/Operation$SideEffect;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$SideEffect;

    check-cast v2, Landroidx/compose/runtime/changelist/Operation;

    .local v2, "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    const/4 v3, 0x0

    .line 858
    .local v3, "$i$f$push":I
    nop

    .line 861
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 862
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;

    move-result-object v4

    .local v4, "$this$pushSideEffect_u24lambda_u2414":Landroidx/compose/runtime/changelist/Operations;
    const/4 v5, 0x0

    .line 220
    .local v5, "$i$a$-push-ChangeList$pushSideEffect$1":I
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$SideEffect;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$SideEffect;

    .local v6, "this_$iv":Landroidx/compose/runtime/changelist/Operation$SideEffect;
    const/4 v7, 0x0

    .line 863
    .local v7, "$i$f$getEffect-HpuvwBQ":I
    const/4 v8, 0x0

    invoke-static {v8}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    .line 220
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$SideEffect;
    .end local v7    # "$i$f$getEffect-HpuvwBQ":I
    move-object/from16 v7, p1

    invoke-static {v4, v6, v7}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 221
    nop

    .line 862
    .end local v4    # "$this$pushSideEffect_u24lambda_u2414":Landroidx/compose/runtime/changelist/Operations;
    .end local v5    # "$i$a$-push-ChangeList$pushSideEffect$1":I
    nop

    .line 864
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    .line 865
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v8

    .line 866
    :goto_0
    if-nez v4, :cond_7

    const/4 v4, 0x0

    .line 870
    .local v4, "$i$a$-check-Operations$push$3$iv":I
    const/4 v5, 0x0

    .line 871
    .local v5, "missingIntCount$iv":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v9

    .local v10, "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 872
    .local v11, "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v12

    move v13, v8

    :goto_1
    const-string v14, ", "

    if-ge v13, v12, :cond_3

    move v15, v13

    .local v15, "arg$iv":I
    const/16 v16, 0x0

    .line 873
    .local v16, "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    shl-int v17, v6, v15

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v18

    and-int v17, v17, v18

    if-eqz v17, :cond_2

    .line 874
    if-lez v5, :cond_1

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    :cond_1
    invoke-static {v15}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v14

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    add-int/lit8 v5, v5, 0x1

    .line 878
    :cond_2
    nop

    .line 872
    .end local v15    # "arg$iv":I
    .end local v16    # "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 879
    :cond_3
    nop

    .line 871
    .end local v10    # "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    .end local v11    # "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 881
    .local v9, "missingInts$iv":Ljava/lang/String;
    const/4 v11, 0x0

    .line 882
    .local v11, "missingObjectCount$iv":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v12

    .local v13, "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 883
    .local v15, "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v8

    move/from16 v19, v11

    const/4 v11, 0x0

    .end local v11    # "missingObjectCount$iv":I
    .local v19, "missingObjectCount$iv":I
    :goto_2
    if-ge v11, v8, :cond_6

    move/from16 v16, v11

    .local v16, "arg$iv":I
    const/16 v17, 0x0

    .line 884
    .local v17, "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    shl-int v18, v6, v16

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v20

    and-int v18, v18, v20

    if-eqz v18, :cond_5

    .line 885
    if-lez v5, :cond_4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    :cond_4
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    move/from16 v6, v19

    .end local v19    # "missingObjectCount$iv":I
    .local v6, "missingObjectCount$iv":I
    add-int/lit8 v19, v6, 0x1

    .end local v6    # "missingObjectCount$iv":I
    .restart local v19    # "missingObjectCount$iv":I
    goto :goto_3

    .line 884
    :cond_5
    move/from16 v6, v19

    .line 889
    :goto_3
    nop

    .line 883
    .end local v16    # "arg$iv":I
    .end local v17    # "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    goto :goto_2

    .line 890
    :cond_6
    move/from16 v6, v19

    .line 882
    .end local v13    # "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    .end local v15    # "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    .end local v19    # "missingObjectCount$iv":I
    .restart local v6    # "missingObjectCount$iv":I
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 892
    .local v8, "missingObjects$iv":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while pushing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Not all arguments were provided. Missing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 893
    nop

    .line 892
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 893
    nop

    .line 892
    const-string v11, " int arguments ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 893
    nop

    .line 892
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 893
    nop

    .line 892
    const-string v11, ") and "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 894
    nop

    .line 892
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 894
    nop

    .line 892
    const-string v11, " object arguments ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 894
    nop

    .line 892
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 894
    nop

    .line 892
    const-string v11, ")."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 866
    .end local v4    # "$i$a$-check-Operations$push$3$iv":I
    .end local v5    # "missingIntCount$iv":I
    .end local v6    # "missingObjectCount$iv":I
    .end local v8    # "missingObjects$iv":Ljava/lang/String;
    .end local v9    # "missingInts$iv":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 896
    :cond_7
    nop

    .line 222
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v2    # "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    .end local v3    # "$i$f$push":I
    return-void
.end method

.method public final pushSkipToEndOfCurrentGroup()V
    .locals 2

    .line 122
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v1, Landroidx/compose/runtime/changelist/Operation$SkipToEndOfCurrentGroup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$SkipToEndOfCurrentGroup;

    check-cast v1, Landroidx/compose/runtime/changelist/Operation;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/changelist/Operations;->push(Landroidx/compose/runtime/changelist/Operation;)V

    .line 123
    return-void
.end method

.method public final pushUpdateAuxData(Ljava/lang/Object;)V
    .locals 21
    .param p1, "data"    # Ljava/lang/Object;

    .line 102
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .local v1, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    sget-object v2, Landroidx/compose/runtime/changelist/Operation$UpdateAuxData;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$UpdateAuxData;

    check-cast v2, Landroidx/compose/runtime/changelist/Operation;

    .local v2, "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    const/4 v3, 0x0

    .line 382
    .local v3, "$i$f$push":I
    nop

    .line 385
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 386
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;

    move-result-object v4

    .local v4, "$this$pushUpdateAuxData_u24lambda_u242":Landroidx/compose/runtime/changelist/Operations;
    const/4 v5, 0x0

    .line 103
    .local v5, "$i$a$-push-ChangeList$pushUpdateAuxData$1":I
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$UpdateAuxData;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$UpdateAuxData;

    .local v6, "this_$iv":Landroidx/compose/runtime/changelist/Operation$UpdateAuxData;
    const/4 v7, 0x0

    .line 387
    .local v7, "$i$f$getData-HpuvwBQ":I
    const/4 v8, 0x0

    invoke-static {v8}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    .line 103
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$UpdateAuxData;
    .end local v7    # "$i$f$getData-HpuvwBQ":I
    move-object/from16 v7, p1

    invoke-static {v4, v6, v7}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 104
    nop

    .line 386
    .end local v4    # "$this$pushUpdateAuxData_u24lambda_u242":Landroidx/compose/runtime/changelist/Operations;
    .end local v5    # "$i$a$-push-ChangeList$pushUpdateAuxData$1":I
    nop

    .line 388
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    .line 389
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v8

    .line 390
    :goto_0
    if-nez v4, :cond_7

    const/4 v4, 0x0

    .line 394
    .local v4, "$i$a$-check-Operations$push$3$iv":I
    const/4 v5, 0x0

    .line 395
    .local v5, "missingIntCount$iv":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v9

    .local v10, "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 396
    .local v11, "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v12

    move v13, v8

    :goto_1
    const-string v14, ", "

    if-ge v13, v12, :cond_3

    move v15, v13

    .local v15, "arg$iv":I
    const/16 v16, 0x0

    .line 397
    .local v16, "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    shl-int v17, v6, v15

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v18

    and-int v17, v17, v18

    if-eqz v17, :cond_2

    .line 398
    if-lez v5, :cond_1

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_1
    invoke-static {v15}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v14

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    add-int/lit8 v5, v5, 0x1

    .line 402
    :cond_2
    nop

    .line 396
    .end local v15    # "arg$iv":I
    .end local v16    # "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 403
    :cond_3
    nop

    .line 395
    .end local v10    # "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    .end local v11    # "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    .local v9, "missingInts$iv":Ljava/lang/String;
    const/4 v11, 0x0

    .line 406
    .local v11, "missingObjectCount$iv":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v12

    .local v13, "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 407
    .local v15, "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v8

    move/from16 v19, v11

    const/4 v11, 0x0

    .end local v11    # "missingObjectCount$iv":I
    .local v19, "missingObjectCount$iv":I
    :goto_2
    if-ge v11, v8, :cond_6

    move/from16 v16, v11

    .local v16, "arg$iv":I
    const/16 v17, 0x0

    .line 408
    .local v17, "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    shl-int v18, v6, v16

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v20

    and-int v18, v18, v20

    if-eqz v18, :cond_5

    .line 409
    if-lez v5, :cond_4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    :cond_4
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    move/from16 v6, v19

    .end local v19    # "missingObjectCount$iv":I
    .local v6, "missingObjectCount$iv":I
    add-int/lit8 v19, v6, 0x1

    .end local v6    # "missingObjectCount$iv":I
    .restart local v19    # "missingObjectCount$iv":I
    goto :goto_3

    .line 408
    :cond_5
    move/from16 v6, v19

    .line 413
    :goto_3
    nop

    .line 407
    .end local v16    # "arg$iv":I
    .end local v17    # "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    goto :goto_2

    .line 414
    :cond_6
    move/from16 v6, v19

    .line 406
    .end local v13    # "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    .end local v15    # "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    .end local v19    # "missingObjectCount$iv":I
    .restart local v6    # "missingObjectCount$iv":I
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    .local v8, "missingObjects$iv":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while pushing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Not all arguments were provided. Missing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 417
    nop

    .line 416
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 417
    nop

    .line 416
    const-string v11, " int arguments ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 417
    nop

    .line 416
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 417
    nop

    .line 416
    const-string v11, ") and "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 418
    nop

    .line 416
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 418
    nop

    .line 416
    const-string v11, " object arguments ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 418
    nop

    .line 416
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 418
    nop

    .line 416
    const-string v11, ")."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 390
    .end local v4    # "$i$a$-check-Operations$push$3$iv":I
    .end local v5    # "missingIntCount$iv":I
    .end local v6    # "missingObjectCount$iv":I
    .end local v8    # "missingObjects$iv":Ljava/lang/String;
    .end local v9    # "missingInts$iv":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 420
    :cond_7
    nop

    .line 105
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v2    # "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    .end local v3    # "$i$f$push":I
    return-void
.end method

.method public final pushUpdateNode(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 22
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TV;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-TV;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 176
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .local v2, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    sget-object v3, Landroidx/compose/runtime/changelist/Operation$UpdateNode;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$UpdateNode;

    check-cast v3, Landroidx/compose/runtime/changelist/Operation;

    .local v3, "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    const/4 v4, 0x0

    .line 620
    .local v4, "$i$f$push":I
    nop

    .line 623
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 624
    invoke-static {v2}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;

    move-result-object v5

    .local v5, "$this$pushUpdateNode_u24lambda_u248":Landroidx/compose/runtime/changelist/Operations;
    const/4 v6, 0x0

    .line 177
    .local v6, "$i$a$-push-ChangeList$pushUpdateNode$1":I
    sget-object v7, Landroidx/compose/runtime/changelist/Operation$UpdateNode;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$UpdateNode;

    .local v7, "this_$iv":Landroidx/compose/runtime/changelist/Operation$UpdateNode;
    const/4 v8, 0x0

    .line 625
    .local v8, "$i$f$getValue-HpuvwBQ":I
    const/4 v9, 0x0

    invoke-static {v9}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v7

    .line 177
    .end local v7    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$UpdateNode;
    .end local v8    # "$i$f$getValue-HpuvwBQ":I
    move-object/from16 v8, p1

    invoke-static {v5, v7, v8}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 179
    sget-object v7, Landroidx/compose/runtime/changelist/Operation$UpdateNode;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$UpdateNode;

    .restart local v7    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$UpdateNode;
    const/4 v10, 0x0

    .line 626
    .local v10, "$i$f$getBlock-HpuvwBQ":I
    const/4 v11, 0x1

    invoke-static {v11}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v7

    .line 179
    .end local v7    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$UpdateNode;
    .end local v10    # "$i$f$getBlock-HpuvwBQ":I
    const-string/jumbo v10, "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.Function2<kotlin.Any?, kotlin.Any?, kotlin.Unit>"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x2

    invoke-static {v0, v10}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v7, v10}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 180
    nop

    .line 624
    .end local v5    # "$this$pushUpdateNode_u24lambda_u248":Landroidx/compose/runtime/changelist/Operations;
    .end local v6    # "$i$a$-push-ChangeList$pushUpdateNode$1":I
    nop

    .line 627
    invoke-static {v2}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v5

    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v6

    invoke-static {v2, v6}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 628
    invoke-static {v2}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v5

    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v6

    invoke-static {v2, v6}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v6

    if-ne v5, v6, :cond_0

    move v5, v11

    goto :goto_0

    :cond_0
    move v5, v9

    .line 629
    :goto_0
    if-nez v5, :cond_7

    const/4 v5, 0x0

    .line 633
    .local v5, "$i$a$-check-Operations$push$3$iv":I
    const/4 v6, 0x0

    .line 634
    .local v6, "missingIntCount$iv":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v7

    .local v10, "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .line 635
    .local v12, "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v13

    move v14, v9

    :goto_1
    const-string v15, ", "

    if-ge v14, v13, :cond_3

    move/from16 v16, v14

    .local v16, "arg$iv":I
    const/16 v17, 0x0

    .line 636
    .local v17, "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    shl-int v18, v11, v16

    invoke-static {v2}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v19

    and-int v18, v18, v19

    if-eqz v18, :cond_2

    .line 637
    if-lez v6, :cond_1

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    :cond_1
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v15

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    add-int/lit8 v6, v6, 0x1

    .line 641
    :cond_2
    nop

    .line 635
    .end local v16    # "arg$iv":I
    .end local v17    # "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 642
    :cond_3
    nop

    .line 634
    .end local v10    # "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    .end local v12    # "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 644
    .local v7, "missingInts$iv":Ljava/lang/String;
    const/4 v12, 0x0

    .line 645
    .local v12, "missingObjectCount$iv":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v13

    .local v14, "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 646
    .local v16, "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v9

    move/from16 v20, v12

    const/4 v12, 0x0

    .end local v12    # "missingObjectCount$iv":I
    .local v20, "missingObjectCount$iv":I
    :goto_2
    if-ge v12, v9, :cond_6

    move/from16 v17, v12

    .local v17, "arg$iv":I
    const/16 v18, 0x0

    .line 647
    .local v18, "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    shl-int v19, v11, v17

    invoke-static {v2}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v21

    and-int v19, v19, v21

    if-eqz v19, :cond_5

    .line 648
    if-lez v6, :cond_4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    :cond_4
    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v11

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    move/from16 v11, v20

    .end local v20    # "missingObjectCount$iv":I
    .local v11, "missingObjectCount$iv":I
    add-int/lit8 v20, v11, 0x1

    .end local v11    # "missingObjectCount$iv":I
    .restart local v20    # "missingObjectCount$iv":I
    goto :goto_3

    .line 647
    :cond_5
    move/from16 v11, v20

    .line 652
    :goto_3
    nop

    .line 646
    .end local v17    # "arg$iv":I
    .end local v18    # "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x1

    goto :goto_2

    .line 653
    :cond_6
    move/from16 v11, v20

    .line 645
    .end local v14    # "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    .end local v16    # "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    .end local v20    # "missingObjectCount$iv":I
    .restart local v11    # "missingObjectCount$iv":I
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 655
    .local v9, "missingObjects$iv":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error while pushing "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ". Not all arguments were provided. Missing "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 656
    nop

    .line 655
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 656
    nop

    .line 655
    const-string v12, " int arguments ("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 656
    nop

    .line 655
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 656
    nop

    .line 655
    const-string v12, ") and "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 657
    nop

    .line 655
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 657
    nop

    .line 655
    const-string v12, " object arguments ("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 657
    nop

    .line 655
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 657
    nop

    .line 655
    const-string v12, ")."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 629
    .end local v5    # "$i$a$-check-Operations$push$3$iv":I
    .end local v6    # "missingIntCount$iv":I
    .end local v7    # "missingInts$iv":Ljava/lang/String;
    .end local v9    # "missingObjects$iv":Ljava/lang/String;
    .end local v11    # "missingObjectCount$iv":I
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 659
    :cond_7
    nop

    .line 181
    .end local v2    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v3    # "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    .end local v4    # "$i$f$push":I
    return-void
.end method

.method public final pushUpdateValue(Ljava/lang/Object;I)V
    .locals 22
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "groupSlotIndex"    # I

    .line 87
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .local v1, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    sget-object v2, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$UpdateValue;

    check-cast v2, Landroidx/compose/runtime/changelist/Operation;

    .local v2, "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    const/4 v3, 0x0

    .line 342
    .local v3, "$i$f$push":I
    nop

    .line 345
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 346
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;

    move-result-object v4

    .local v4, "$this$pushUpdateValue_u24lambda_u241":Landroidx/compose/runtime/changelist/Operations;
    const/4 v5, 0x0

    .line 88
    .local v5, "$i$a$-push-ChangeList$pushUpdateValue$1":I
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$UpdateValue;

    .local v6, "this_$iv":Landroidx/compose/runtime/changelist/Operation$UpdateValue;
    const/4 v7, 0x0

    .line 347
    .local v7, "$i$f$getValue-HpuvwBQ":I
    const/4 v8, 0x0

    invoke-static {v8}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    .line 88
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$UpdateValue;
    .end local v7    # "$i$f$getValue-HpuvwBQ":I
    move-object/from16 v7, p1

    invoke-static {v4, v6, v7}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 89
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$UpdateValue;

    .restart local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$UpdateValue;
    const/4 v9, 0x0

    .line 348
    .local v9, "$i$f$getGroupSlotIndex-jn0FJLE":I
    invoke-static {v8}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v6

    .line 89
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$UpdateValue;
    .end local v9    # "$i$f$getGroupSlotIndex-jn0FJLE":I
    move/from16 v9, p2

    invoke-static {v4, v6, v9}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setInt-A6tL2VI(Landroidx/compose/runtime/changelist/Operations;II)V

    .line 90
    nop

    .line 346
    .end local v4    # "$this$pushUpdateValue_u24lambda_u241":Landroidx/compose/runtime/changelist/Operations;
    .end local v5    # "$i$a$-push-ChangeList$pushUpdateValue$1":I
    nop

    .line 349
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    .line 350
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v8

    .line 351
    :goto_0
    if-nez v4, :cond_7

    const/4 v4, 0x0

    .line 355
    .local v4, "$i$a$-check-Operations$push$3$iv":I
    const/4 v5, 0x0

    .line 356
    .local v5, "missingIntCount$iv":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v10

    .local v11, "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .line 357
    .local v12, "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v13

    move v14, v8

    :goto_1
    const-string v15, ", "

    if-ge v14, v13, :cond_3

    move/from16 v16, v14

    .local v16, "arg$iv":I
    const/16 v17, 0x0

    .line 358
    .local v17, "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    shl-int v18, v6, v16

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v19

    and-int v18, v18, v19

    if-eqz v18, :cond_2

    .line 359
    if-lez v5, :cond_1

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :cond_1
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v15

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    add-int/lit8 v5, v5, 0x1

    .line 363
    :cond_2
    nop

    .line 357
    .end local v16    # "arg$iv":I
    .end local v17    # "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 364
    :cond_3
    nop

    .line 356
    .end local v11    # "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    .end local v12    # "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    .local v10, "missingInts$iv":Ljava/lang/String;
    const/4 v12, 0x0

    .line 367
    .local v12, "missingObjectCount$iv":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v13

    .local v14, "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 368
    .local v16, "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v8

    move/from16 v20, v12

    const/4 v12, 0x0

    .end local v12    # "missingObjectCount$iv":I
    .local v20, "missingObjectCount$iv":I
    :goto_2
    if-ge v12, v8, :cond_6

    move/from16 v17, v12

    .local v17, "arg$iv":I
    const/16 v18, 0x0

    .line 369
    .local v18, "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    shl-int v19, v6, v17

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v21

    and-int v19, v19, v21

    if-eqz v19, :cond_5

    .line 370
    if-lez v5, :cond_4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_4
    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    move/from16 v6, v20

    .end local v20    # "missingObjectCount$iv":I
    .local v6, "missingObjectCount$iv":I
    add-int/lit8 v20, v6, 0x1

    .end local v6    # "missingObjectCount$iv":I
    .restart local v20    # "missingObjectCount$iv":I
    goto :goto_3

    .line 369
    :cond_5
    move/from16 v6, v20

    .line 374
    :goto_3
    nop

    .line 368
    .end local v17    # "arg$iv":I
    .end local v18    # "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x1

    goto :goto_2

    .line 375
    :cond_6
    move/from16 v6, v20

    .line 367
    .end local v14    # "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    .end local v16    # "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    .end local v20    # "missingObjectCount$iv":I
    .restart local v6    # "missingObjectCount$iv":I
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    .local v8, "missingObjects$iv":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error while pushing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Not all arguments were provided. Missing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 378
    nop

    .line 377
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 378
    nop

    .line 377
    const-string v12, " int arguments ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 378
    nop

    .line 377
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 378
    nop

    .line 377
    const-string v12, ") and "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 379
    nop

    .line 377
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 379
    nop

    .line 377
    const-string v12, " object arguments ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 379
    nop

    .line 377
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 379
    nop

    .line 377
    const-string v12, ")."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 351
    .end local v4    # "$i$a$-check-Operations$push$3$iv":I
    .end local v5    # "missingIntCount$iv":I
    .end local v6    # "missingObjectCount$iv":I
    .end local v8    # "missingObjects$iv":Ljava/lang/String;
    .end local v10    # "missingInts$iv":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 381
    :cond_7
    nop

    .line 91
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v2    # "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    .end local v3    # "$i$f$push":I
    return-void
.end method

.method public final pushUps(I)V
    .locals 21
    .param p1, "count"    # I

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .local v1, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    sget-object v2, Landroidx/compose/runtime/changelist/Operation$Ups;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$Ups;

    check-cast v2, Landroidx/compose/runtime/changelist/Operation;

    .local v2, "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    const/4 v3, 0x0

    .line 780
    .local v3, "$i$f$push":I
    nop

    .line 783
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 784
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;

    move-result-object v4

    .local v4, "$this$pushUps_u24lambda_u2412":Landroidx/compose/runtime/changelist/Operations;
    const/4 v5, 0x0

    .line 206
    .local v5, "$i$a$-push-ChangeList$pushUps$1":I
    sget-object v6, Landroidx/compose/runtime/changelist/Operation$Ups;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$Ups;

    .local v6, "this_$iv":Landroidx/compose/runtime/changelist/Operation$Ups;
    const/4 v7, 0x0

    .line 785
    .local v7, "$i$f$getCount-jn0FJLE":I
    const/4 v8, 0x0

    invoke-static {v8}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v6

    .line 206
    .end local v6    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$Ups;
    .end local v7    # "$i$f$getCount-jn0FJLE":I
    move/from16 v7, p1

    invoke-static {v4, v6, v7}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setInt-A6tL2VI(Landroidx/compose/runtime/changelist/Operations;II)V

    .line 207
    nop

    .line 784
    .end local v4    # "$this$pushUps_u24lambda_u2412":Landroidx/compose/runtime/changelist/Operations;
    .end local v5    # "$i$a$-push-ChangeList$pushUps$1":I
    nop

    .line 786
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    .line 787
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v8

    .line 788
    :goto_0
    if-nez v4, :cond_7

    const/4 v4, 0x0

    .line 792
    .local v4, "$i$a$-check-Operations$push$3$iv":I
    const/4 v5, 0x0

    .line 793
    .local v5, "missingIntCount$iv":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v9

    .local v10, "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 794
    .local v11, "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v12

    move v13, v8

    :goto_1
    const-string v14, ", "

    if-ge v13, v12, :cond_3

    move v15, v13

    .local v15, "arg$iv":I
    const/16 v16, 0x0

    .line 795
    .local v16, "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    shl-int v17, v6, v15

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v18

    and-int v17, v17, v18

    if-eqz v17, :cond_2

    .line 796
    if-lez v5, :cond_1

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    :cond_1
    invoke-static {v15}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v14

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    add-int/lit8 v5, v5, 0x1

    .line 800
    :cond_2
    nop

    .line 794
    .end local v15    # "arg$iv":I
    .end local v16    # "$i$a$-repeat-Operations$push$3$missingInts$1$1$iv":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 801
    :cond_3
    nop

    .line 793
    .end local v10    # "$this$push_u24lambda_u246_u24lambda_u243$iv":Ljava/lang/StringBuilder;
    .end local v11    # "$i$a$-buildString-Operations$push$3$missingInts$1$iv":I
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 803
    .local v9, "missingInts$iv":Ljava/lang/String;
    const/4 v11, 0x0

    .line 804
    .local v11, "missingObjectCount$iv":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v12

    .local v13, "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 805
    .local v15, "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v8

    move/from16 v19, v11

    const/4 v11, 0x0

    .end local v11    # "missingObjectCount$iv":I
    .local v19, "missingObjectCount$iv":I
    :goto_2
    if-ge v11, v8, :cond_6

    move/from16 v16, v11

    .local v16, "arg$iv":I
    const/16 v17, 0x0

    .line 806
    .local v17, "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    shl-int v18, v6, v16

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v20

    and-int v18, v18, v20

    if-eqz v18, :cond_5

    .line 807
    if-lez v5, :cond_4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    :cond_4
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    move/from16 v6, v19

    .end local v19    # "missingObjectCount$iv":I
    .local v6, "missingObjectCount$iv":I
    add-int/lit8 v19, v6, 0x1

    .end local v6    # "missingObjectCount$iv":I
    .restart local v19    # "missingObjectCount$iv":I
    goto :goto_3

    .line 806
    :cond_5
    move/from16 v6, v19

    .line 811
    :goto_3
    nop

    .line 805
    .end local v16    # "arg$iv":I
    .end local v17    # "$i$a$-repeat-Operations$push$3$missingObjects$1$1$iv":I
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    goto :goto_2

    .line 812
    :cond_6
    move/from16 v6, v19

    .line 804
    .end local v13    # "$this$push_u24lambda_u246_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    .end local v15    # "$i$a$-buildString-Operations$push$3$missingObjects$1$iv":I
    .end local v19    # "missingObjectCount$iv":I
    .restart local v6    # "missingObjectCount$iv":I
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 814
    .local v8, "missingObjects$iv":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while pushing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Not all arguments were provided. Missing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 815
    nop

    .line 814
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 815
    nop

    .line 814
    const-string v11, " int arguments ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 815
    nop

    .line 814
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 815
    nop

    .line 814
    const-string v11, ") and "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 816
    nop

    .line 814
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 816
    nop

    .line 814
    const-string v11, " object arguments ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 816
    nop

    .line 814
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 816
    nop

    .line 814
    const-string v11, ")."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 788
    .end local v4    # "$i$a$-check-Operations$push$3$iv":I
    .end local v5    # "missingIntCount$iv":I
    .end local v6    # "missingObjectCount$iv":I
    .end local v8    # "missingObjects$iv":Ljava/lang/String;
    .end local v9    # "missingInts$iv":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 818
    :cond_7
    nop

    .line 208
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v2    # "operation$iv":Landroidx/compose/runtime/changelist/Operation;
    .end local v3    # "$i$f$push":I
    return-void
.end method

.method public final pushUseNode(Ljava/lang/Object;)V
    .locals 2
    .param p1, "node"    # Ljava/lang/Object;

    .line 170
    instance-of v0, p1, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v1, Landroidx/compose/runtime/changelist/Operation$UseCurrentNode;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$UseCurrentNode;

    check-cast v1, Landroidx/compose/runtime/changelist/Operation;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/changelist/Operations;->push(Landroidx/compose/runtime/changelist/Operation;)V

    .line 173
    :cond_0
    return-void
.end method

.method public toDebugString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "linePrefix"    # Ljava/lang/String;

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .local v1, "$this$toDebugString_u24lambda_u2420":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 292
    .local v2, "$i$a$-buildString-ChangeList$toDebugString$1":I
    const-string v3, "ChangeList instance containing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/ChangeList;->getSize()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    const-string v3, " operations"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 296
    const-string v3, ":\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    iget-object v3, p0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v3, p1}, Landroidx/compose/runtime/changelist/Operations;->toDebugString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_1
    nop

    .line 291
    .end local v1    # "$this$toDebugString_u24lambda_u2420":Ljava/lang/StringBuilder;
    .end local v2    # "$i$a$-buildString-ChangeList$toDebugString$1":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
