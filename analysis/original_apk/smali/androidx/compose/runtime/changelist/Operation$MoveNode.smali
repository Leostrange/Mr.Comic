.class public final Landroidx/compose/runtime/changelist/Operation$MoveNode;
.super Landroidx/compose/runtime/changelist/Operation;
.source "Operation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/changelist/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MoveNode"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$MoveNode\n*L\n1#1,879:1\n369#1:880\n370#1:881\n371#1:882\n369#1:883\n370#1:884\n371#1:885\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$MoveNode\n*L\n374#1:880\n375#1:881\n376#1:882\n386#1:883\n387#1:884\n388#1:885\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0004H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ(\u0010\u0010\u001a\u00020\u0011*\u00020\u00122\n\u0010\u0013\u001a\u0006\u0012\u0002\u0008\u00030\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u0018\u0010\u0003\u001a\u00020\u00048\u00c6\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0018\u0010\u0007\u001a\u00020\u00048\u00c6\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0006R\u0018\u0010\t\u001a\u00020\u00048\u00c6\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0006\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/compose/runtime/changelist/Operation$MoveNode;",
        "Landroidx/compose/runtime/changelist/Operation;",
        "()V",
        "Count",
        "Landroidx/compose/runtime/changelist/Operation$IntParameter;",
        "getCount-jn0FJLE",
        "()I",
        "From",
        "getFrom-jn0FJLE",
        "To",
        "getTo-jn0FJLE",
        "intParamName",
        "",
        "parameter",
        "intParamName-w8GmfQM",
        "(I)Ljava/lang/String;",
        "execute",
        "",
        "Landroidx/compose/runtime/changelist/OperationArgContainer;",
        "applier",
        "Landroidx/compose/runtime/Applier;",
        "slots",
        "Landroidx/compose/runtime/SlotWriter;",
        "rememberManager",
        "Landroidx/compose/runtime/RememberManager;",
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

.field public static final INSTANCE:Landroidx/compose/runtime/changelist/Operation$MoveNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/changelist/Operation$MoveNode;

    invoke-direct {v0}, Landroidx/compose/runtime/changelist/Operation$MoveNode;-><init>()V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$MoveNode;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$MoveNode;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 368
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/compose/runtime/changelist/Operation;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public execute(Landroidx/compose/runtime/changelist/OperationArgContainer;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V
    .locals 5
    .param p1, "$this$execute"    # Landroidx/compose/runtime/changelist/OperationArgContainer;
    .param p2, "applier"    # Landroidx/compose/runtime/Applier;
    .param p3, "slots"    # Landroidx/compose/runtime/SlotWriter;
    .param p4, "rememberManager"    # Landroidx/compose/runtime/RememberManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/changelist/OperationArgContainer;",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/RememberManager;",
            ")V"
        }
    .end annotation

    .line 385
    nop

    .line 386
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/runtime/changelist/Operation$MoveNode;
    const/4 v1, 0x0

    .line 883
    .local v1, "$i$f$getFrom-jn0FJLE":I
    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v0

    .line 386
    .end local v0    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$MoveNode;
    .end local v1    # "$i$f$getFrom-jn0FJLE":I
    invoke-interface {p1, v0}, Landroidx/compose/runtime/changelist/OperationArgContainer;->getInt-w8GmfQM(I)I

    move-result v0

    .line 387
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/changelist/Operation$MoveNode;
    const/4 v2, 0x0

    .line 884
    .local v2, "$i$f$getTo-jn0FJLE":I
    const/4 v3, 0x1

    invoke-static {v3}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v1

    .line 387
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$MoveNode;
    .end local v2    # "$i$f$getTo-jn0FJLE":I
    invoke-interface {p1, v1}, Landroidx/compose/runtime/changelist/OperationArgContainer;->getInt-w8GmfQM(I)I

    move-result v1

    .line 388
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/runtime/changelist/Operation$MoveNode;
    const/4 v3, 0x0

    .line 885
    .local v3, "$i$f$getCount-jn0FJLE":I
    const/4 v4, 0x2

    invoke-static {v4}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v2

    .line 388
    .end local v2    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$MoveNode;
    .end local v3    # "$i$f$getCount-jn0FJLE":I
    invoke-interface {p1, v2}, Landroidx/compose/runtime/changelist/OperationArgContainer;->getInt-w8GmfQM(I)I

    move-result v2

    .line 385
    invoke-interface {p2, v0, v1, v2}, Landroidx/compose/runtime/Applier;->move(III)V

    .line 390
    return-void
.end method

.method public final getCount-jn0FJLE()I
    .locals 2

    const/4 v0, 0x0

    .line 371
    .local v0, "$i$f$getCount-jn0FJLE":I
    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v1

    return v1
.end method

.method public final getFrom-jn0FJLE()I
    .locals 2

    const/4 v0, 0x0

    .line 369
    .local v0, "$i$f$getFrom-jn0FJLE":I
    const/4 v1, 0x0

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v1

    return v1
.end method

.method public final getTo-jn0FJLE()I
    .locals 2

    const/4 v0, 0x0

    .line 370
    .local v0, "$i$f$getTo-jn0FJLE":I
    const/4 v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v1

    return v1
.end method

.method public intParamName-w8GmfQM(I)Ljava/lang/String;
    .locals 3
    .param p1, "parameter"    # I

    .line 373
    nop

    .line 374
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/runtime/changelist/Operation$MoveNode;
    const/4 v1, 0x0

    .line 880
    .local v1, "$i$f$getFrom-jn0FJLE":I
    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v0

    .line 374
    .end local v0    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$MoveNode;
    .end local v1    # "$i$f$getFrom-jn0FJLE":I
    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "from"

    goto :goto_0

    .line 375
    :cond_0
    move-object v0, p0

    .restart local v0    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$MoveNode;
    const/4 v1, 0x0

    .line 881
    .local v1, "$i$f$getTo-jn0FJLE":I
    const/4 v2, 0x1

    invoke-static {v2}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v0

    .line 375
    .end local v0    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$MoveNode;
    .end local v1    # "$i$f$getTo-jn0FJLE":I
    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "to"

    goto :goto_0

    .line 376
    :cond_1
    move-object v0, p0

    .restart local v0    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$MoveNode;
    const/4 v1, 0x0

    .line 882
    .local v1, "$i$f$getCount-jn0FJLE":I
    const/4 v2, 0x2

    invoke-static {v2}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v0

    .line 376
    .end local v0    # "this_$iv":Landroidx/compose/runtime/changelist/Operation$MoveNode;
    .end local v1    # "$i$f$getCount-jn0FJLE":I
    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "count"

    goto :goto_0

    .line 377
    :cond_2
    invoke-super {p0, p1}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    :goto_0
    return-object v0
.end method
