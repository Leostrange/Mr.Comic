.class public final Landroidx/compose/runtime/changelist/Operations;
.super Ljava/lang/Object;
.source "Operations.kt"

# interfaces
.implements Landroidx/compose/runtime/changelist/OperationsDebugStringFormattable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/changelist/Operations$Companion;,
        Landroidx/compose/runtime/changelist/Operations$OpIterator;,
        Landroidx/compose/runtime/changelist/Operations$WriteScope;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operations.kt\nandroidx/compose/runtime/changelist/Operations\n*L\n1#1,473:1\n292#1,7:474\n281#1:481\n292#1,7:482\n282#1,2:489\n292#1,7:491\n*S KotlinDebug\n*F\n+ 1 Operations.kt\nandroidx/compose/runtime/changelist/Operations\n*L\n281#1:474,7\n305#1:481\n305#1:482,7\n305#1:489,2\n404#1:491,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u001c\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 J2\u00020\u0001:\u0003JKLB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0015\u001a\u00020\u0016J\u0010\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0006H\u0002J\u0018\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0006H\u0002J&\u0010\u001c\u001a\u00020\u00162\u001b\u0010\u001d\u001a\u0017\u0012\u0008\u0012\u00060\u001fR\u00020\u0000\u0012\u0004\u0012\u00020\u00160\u001e\u00a2\u0006\u0002\u0008 H\u0086\u0008J\u0010\u0010!\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u0006H\u0002J\u0010\u0010\"\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u0006H\u0002J\"\u0010#\u001a\u00020\u00162\n\u0010$\u001a\u0006\u0012\u0002\u0008\u00030%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)J&\u0010*\u001a\u00020\u00162\u001b\u0010+\u001a\u0017\u0012\u0008\u0012\u00060\u001fR\u00020\u0000\u0012\u0004\u0012\u00020\u00160\u001e\u00a2\u0006\u0002\u0008 H\u0086\u0008J\u0006\u0010,\u001a\u00020-J\u0006\u0010.\u001a\u00020-J\u0008\u0010/\u001a\u00020\rH\u0002J\u0006\u00100\u001a\u00020\u0016J\u000e\u00101\u001a\u00020\u00162\u0006\u00102\u001a\u00020\u0000J\u000e\u00103\u001a\u00020\u00162\u0006\u00104\u001a\u00020\rJ7\u00103\u001a\u00020\u00162\u0006\u00104\u001a\u00020\r2\u0017\u00105\u001a\u0013\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u00020\u00160\u001e\u00a2\u0006\u0002\u0008 H\u0086\u0008\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0002 \u0001J\u0010\u00107\u001a\u00020\u00162\u0006\u00104\u001a\u00020\rH\u0007J\u0010\u00108\u001a\u0002092\u0006\u0010:\u001a\u000209H\u0016J\u0008\u0010;\u001a\u000209H\u0017J\u001a\u0010<\u001a\u00020\u00062\u0006\u0010=\u001a\u00020>H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008?\u0010@J\u001e\u0010A\u001a\u00020\u00062\n\u0010=\u001a\u0006\u0012\u0002\u0008\u00030BH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008C\u0010@J\u0018\u0010D\u001a\u000209*\u00060\u001fR\u00020\u00002\u0006\u0010:\u001a\u000209H\u0002J\u0016\u0010E\u001a\u000209*\u0004\u0018\u00010\t2\u0006\u0010:\u001a\u000209H\u0002J\u000c\u0010F\u001a\u000209*\u000209H\u0002J \u0010G\u001a\u000209\"\u0004\u0008\u0000\u0010H*\u0008\u0012\u0004\u0012\u0002HH0I2\u0006\u0010:\u001a\u000209H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0012\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006M"
    }
    d2 = {
        "Landroidx/compose/runtime/changelist/Operations;",
        "Landroidx/compose/runtime/changelist/OperationsDebugStringFormattable;",
        "()V",
        "intArgs",
        "",
        "intArgsSize",
        "",
        "objectArgs",
        "",
        "",
        "[Ljava/lang/Object;",
        "objectArgsSize",
        "opCodes",
        "Landroidx/compose/runtime/changelist/Operation;",
        "[Landroidx/compose/runtime/changelist/Operation;",
        "opCodesSize",
        "pushedIntMask",
        "pushedObjectMask",
        "size",
        "getSize",
        "()I",
        "clear",
        "",
        "createExpectedArgMask",
        "paramCount",
        "determineNewSize",
        "currentSize",
        "requiredSize",
        "drain",
        "sink",
        "Lkotlin/Function1;",
        "Landroidx/compose/runtime/changelist/Operations$OpIterator;",
        "Lkotlin/ExtensionFunctionType;",
        "ensureIntArgsSizeAtLeast",
        "ensureObjectArgsSizeAtLeast",
        "executeAndFlushAllPendingOperations",
        "applier",
        "Landroidx/compose/runtime/Applier;",
        "slots",
        "Landroidx/compose/runtime/SlotWriter;",
        "rememberManager",
        "Landroidx/compose/runtime/RememberManager;",
        "forEach",
        "action",
        "isEmpty",
        "",
        "isNotEmpty",
        "peekOperation",
        "pop",
        "popInto",
        "other",
        "push",
        "operation",
        "args",
        "Landroidx/compose/runtime/changelist/Operations$WriteScope;",
        "pushOp",
        "toDebugString",
        "",
        "linePrefix",
        "toString",
        "topIntIndexOf",
        "parameter",
        "Landroidx/compose/runtime/changelist/Operation$IntParameter;",
        "topIntIndexOf-w8GmfQM",
        "(I)I",
        "topObjectIndexOf",
        "Landroidx/compose/runtime/changelist/Operation$ObjectParameter;",
        "topObjectIndexOf-31yXWZQ",
        "currentOpToDebugString",
        "formatOpArgumentToString",
        "indent",
        "toCollectionString",
        "T",
        "",
        "Companion",
        "OpIterator",
        "WriteScope",
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

.field public static final Companion:Landroidx/compose/runtime/changelist/Operations$Companion;

.field public static final InitialCapacity:I = 0x10

.field private static final MaxResizeAmount:I = 0x400


# instance fields
.field private intArgs:[I

.field private intArgsSize:I

.field private objectArgs:[Ljava/lang/Object;

.field private objectArgsSize:I

.field private opCodes:[Landroidx/compose/runtime/changelist/Operation;

.field private opCodesSize:I

.field private pushedIntMask:I

.field private pushedObjectMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/changelist/Operations$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/changelist/Operations$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/runtime/changelist/Operations;->Companion:Landroidx/compose/runtime/changelist/Operations$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/changelist/Operations;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0x10

    new-array v1, v0, [Landroidx/compose/runtime/changelist/Operation;

    iput-object v1, p0, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    .line 45
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    .line 48
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public static final synthetic access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/changelist/Operations;
    .param p1, "paramCount"    # I

    .line 40
    invoke-direct {p0, p1}, Landroidx/compose/runtime/changelist/Operations;->createExpectedArgMask(I)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$formatOpArgumentToString(Landroidx/compose/runtime/changelist/Operations;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/changelist/Operations;
    .param p1, "$receiver"    # Ljava/lang/Object;
    .param p2, "linePrefix"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/changelist/Operations;->formatOpArgumentToString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getIntArgs$p(Landroidx/compose/runtime/changelist/Operations;)[I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/changelist/Operations;

    .line 40
    iget-object v0, p0, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    return-object v0
.end method

.method public static final synthetic access$getObjectArgs$p(Landroidx/compose/runtime/changelist/Operations;)[Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/changelist/Operations;

    .line 40
    iget-object v0, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getOpCodes$p(Landroidx/compose/runtime/changelist/Operations;)[Landroidx/compose/runtime/changelist/Operation;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/changelist/Operations;

    .line 40
    iget-object v0, p0, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    return-object v0
.end method

.method public static final synthetic access$getOpCodesSize$p(Landroidx/compose/runtime/changelist/Operations;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/changelist/Operations;

    .line 40
    iget v0, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    return v0
.end method

.method public static final synthetic access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/changelist/Operations;

    .line 40
    iget v0, p0, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    return v0
.end method

.method public static final synthetic access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/changelist/Operations;

    .line 40
    iget v0, p0, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    return v0
.end method

.method public static final synthetic access$peekOperation(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operation;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/changelist/Operations;

    .line 40
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/Operations;->peekOperation()Landroidx/compose/runtime/changelist/Operation;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/changelist/Operations;
    .param p1, "<set-?>"    # I

    .line 40
    iput p1, p0, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    return-void
.end method

.method public static final synthetic access$setPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/changelist/Operations;
    .param p1, "<set-?>"    # I

    .line 40
    iput p1, p0, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    return-void
.end method

.method public static final synthetic access$topIntIndexOf-w8GmfQM(Landroidx/compose/runtime/changelist/Operations;I)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/changelist/Operations;
    .param p1, "parameter"    # I

    .line 40
    invoke-direct {p0, p1}, Landroidx/compose/runtime/changelist/Operations;->topIntIndexOf-w8GmfQM(I)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$topObjectIndexOf-31yXWZQ(Landroidx/compose/runtime/changelist/Operations;I)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/changelist/Operations;
    .param p1, "parameter"    # I

    .line 40
    invoke-direct {p0, p1}, Landroidx/compose/runtime/changelist/Operations;->topObjectIndexOf-31yXWZQ(I)I

    move-result v0

    return v0
.end method

.method private final createExpectedArgMask(I)I
    .locals 2
    .param p1, "paramCount"    # I

    .line 210
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    rsub-int/lit8 v0, p1, 0x20

    const/4 v1, -0x1

    ushr-int v0, v1, v0

    :goto_0
    return v0
.end method

.method private final currentOpToDebugString(Landroidx/compose/runtime/changelist/Operations$OpIterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p1, "$this$currentOpToDebugString"    # Landroidx/compose/runtime/changelist/Operations$OpIterator;
    .param p2, "linePrefix"    # Ljava/lang/String;

    .line 416
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/changelist/Operations$OpIterator;->getOperation()Landroidx/compose/runtime/changelist/Operation;

    move-result-object v3

    .line 417
    .local v3, "operation":Landroidx/compose/runtime/changelist/Operation;
    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v4

    if-nez v4, :cond_0

    .line 418
    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/Operation;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v3

    goto/16 :goto_4

    .line 419
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v4

    .local v5, "$this$currentOpToDebugString_u24lambda_u2417":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 420
    .local v6, "$i$a$-buildString-Operations$currentOpToDebugString$1":I
    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/Operation;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const/16 v7, 0x28

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 422
    const/4 v7, 0x0

    .local v7, "isFirstParam":Z
    const/4 v7, 0x1

    .line 423
    invoke-direct {v0, v2}, Landroidx/compose/runtime/changelist/Operations;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 424
    .local v8, "argLinePrefix":Ljava/lang/String;
    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v9

    const/4 v11, 0x0

    :goto_0
    const-string v12, " = "

    const-string v13, ", "

    const-string/jumbo v14, "append(\'\\n\')"

    if-ge v11, v9, :cond_2

    move/from16 v16, v11

    .local v16, "offset":I
    const/16 v17, 0x0

    .line 425
    .local v17, "$i$a$-repeat-Operations$currentOpToDebugString$1$1":I
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v10

    .line 426
    .local v10, "param":I
    invoke-virtual {v3, v10}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v15

    .line 427
    .local v15, "name":Ljava/lang/String;
    if-nez v7, :cond_1

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 428
    :goto_1
    const/16 v13, 0xa

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/changelist/Operations$OpIterator;->getInt-w8GmfQM(I)I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 433
    nop

    .line 424
    .end local v10    # "param":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "offset":I
    .end local v17    # "$i$a$-repeat-Operations$currentOpToDebugString$1$1":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 434
    :cond_2
    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_4

    move v11, v10

    .local v11, "offset":I
    const/4 v15, 0x0

    .line 435
    .local v15, "$i$a$-repeat-Operations$currentOpToDebugString$1$2":I
    move/from16 v16, v6

    .end local v6    # "$i$a$-buildString-Operations$currentOpToDebugString$1":I
    .local v16, "$i$a$-buildString-Operations$currentOpToDebugString$1":I
    invoke-static {v11}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    .line 436
    .local v6, "param":I
    move/from16 v17, v9

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v9

    .line 437
    .local v9, "name":Ljava/lang/String;
    if-nez v7, :cond_3

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 438
    :goto_3
    move-object/from16 v18, v3

    move/from16 v19, v7

    const/16 v3, 0xa

    .end local v3    # "operation":Landroidx/compose/runtime/changelist/Operation;
    .end local v7    # "isFirstParam":Z
    .local v18, "operation":Landroidx/compose/runtime/changelist/Operation;
    .local v19, "isFirstParam":Z
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/changelist/Operations$OpIterator;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v3, v8}, Landroidx/compose/runtime/changelist/Operations;->formatOpArgumentToString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    nop

    .line 434
    .end local v6    # "param":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "offset":I
    .end local v15    # "$i$a$-repeat-Operations$currentOpToDebugString$1$2":I
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v16

    move/from16 v9, v17

    move-object/from16 v3, v18

    move/from16 v7, v19

    goto :goto_2

    .line 444
    .end local v16    # "$i$a$-buildString-Operations$currentOpToDebugString$1":I
    .end local v18    # "operation":Landroidx/compose/runtime/changelist/Operation;
    .end local v19    # "isFirstParam":Z
    .restart local v3    # "operation":Landroidx/compose/runtime/changelist/Operation;
    .local v6, "$i$a$-buildString-Operations$currentOpToDebugString$1":I
    .restart local v7    # "isFirstParam":Z
    :cond_4
    move-object/from16 v18, v3

    move/from16 v16, v6

    .end local v3    # "operation":Landroidx/compose/runtime/changelist/Operation;
    .end local v6    # "$i$a$-buildString-Operations$currentOpToDebugString$1":I
    .restart local v16    # "$i$a$-buildString-Operations$currentOpToDebugString$1":I
    .restart local v18    # "operation":Landroidx/compose/runtime/changelist/Operation;
    const/16 v3, 0xa

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    nop

    .line 419
    .end local v5    # "$this$currentOpToDebugString_u24lambda_u2417":Ljava/lang/StringBuilder;
    .end local v7    # "isFirstParam":Z
    .end local v8    # "argLinePrefix":Ljava/lang/String;
    .end local v16    # "$i$a$-buildString-Operations$currentOpToDebugString$1":I
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v3, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    :goto_4
    return-object v4
.end method

.method private final determineNewSize(II)I
    .locals 2
    .param p1, "currentSize"    # I
    .param p2, "requiredSize"    # I

    .line 118
    const/16 v0, 0x400

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    .line 119
    .local v0, "resizeAmount":I
    add-int v1, p1, v0

    invoke-static {v1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    return v1
.end method

.method private final ensureIntArgsSizeAtLeast(I)V
    .locals 3
    .param p1, "requiredSize"    # I

    .line 123
    iget-object v0, p0, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    array-length v0, v0

    .line 124
    .local v0, "currentSize":I
    if-le p1, v0, :cond_0

    .line 125
    iget-object v1, p0, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/changelist/Operations;->determineNewSize(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    const-string/jumbo v2, "copyOf(this, newSize)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    .line 127
    :cond_0
    return-void
.end method

.method private final ensureObjectArgsSizeAtLeast(I)V
    .locals 3
    .param p1, "requiredSize"    # I

    .line 130
    iget-object v0, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    array-length v0, v0

    .line 131
    .local v0, "currentSize":I
    if-le p1, v0, :cond_0

    .line 132
    iget-object v1, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/changelist/Operations;->determineNewSize(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "copyOf(this, newSize)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    .line 134
    :cond_0
    return-void
.end method

.method private final formatOpArgumentToString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "$this$formatOpArgumentToString"    # Ljava/lang/Object;
    .param p2, "linePrefix"    # Ljava/lang/String;

    .line 452
    nop

    .line 453
    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    goto/16 :goto_0

    .line 454
    :cond_0
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->asIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/compose/runtime/changelist/Operations;->toCollectionString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 455
    :cond_1
    instance-of v0, p1, [I

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, [I

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->asIterable([I)Ljava/lang/Iterable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/compose/runtime/changelist/Operations;->toCollectionString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 456
    :cond_2
    instance-of v0, p1, [J

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, [J

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->asIterable([J)Ljava/lang/Iterable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/compose/runtime/changelist/Operations;->toCollectionString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 457
    :cond_3
    instance-of v0, p1, [F

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, [F

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->asIterable([F)Ljava/lang/Iterable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/compose/runtime/changelist/Operations;->toCollectionString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 458
    :cond_4
    instance-of v0, p1, [D

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, [D

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->asIterable([D)Ljava/lang/Iterable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/compose/runtime/changelist/Operations;->toCollectionString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 459
    :cond_5
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-direct {p0, v0, p2}, Landroidx/compose/runtime/changelist/Operations;->toCollectionString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 460
    :cond_6
    instance-of v0, p1, Landroidx/compose/runtime/changelist/OperationsDebugStringFormattable;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/changelist/OperationsDebugStringFormattable;

    invoke-interface {v0, p2}, Landroidx/compose/runtime/changelist/OperationsDebugStringFormattable;->toDebugString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 461
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    :goto_0
    return-object v0
.end method

.method private final indent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "$this$indent"    # Ljava/lang/String;

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final peekOperation()Landroidx/compose/runtime/changelist/Operation;
    .locals 2

    .line 318
    iget-object v0, p0, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget v1, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final toCollectionString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "$this$toCollectionString"    # Ljava/lang/Iterable;
    .param p2, "linePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 465
    const-string v0, ", "

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const-string/jumbo v0, "["

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const-string/jumbo v0, "]"

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v0, Landroidx/compose/runtime/changelist/Operations$toCollectionString$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/runtime/changelist/Operations$toCollectionString$1;-><init>(Landroidx/compose/runtime/changelist/Operations;Ljava/lang/String;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 467
    return-object v0
.end method

.method private final topIntIndexOf-w8GmfQM(I)I
    .locals 2
    .param p1, "parameter"    # I

    .line 321
    iget v0, p0, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    invoke-direct {p0}, Landroidx/compose/runtime/changelist/Operations;->peekOperation()Landroidx/compose/runtime/changelist/Operation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method

.method private final topObjectIndexOf-31yXWZQ(I)I
    .locals 2
    .param p1, "parameter"    # I

    .line 324
    iget v0, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    invoke-direct {p0}, Landroidx/compose/runtime/changelist/Operations;->peekOperation()Landroidx/compose/runtime/changelist/Operation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    .line 79
    iput v0, p0, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    .line 81
    iget-object v1, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    invoke-static {v1, v2, v0, v3}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 82
    iput v0, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    .line 83
    return-void
.end method

.method public final drain(Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .param p1, "sink"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/changelist/Operations$OpIterator;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 281
    .local v0, "$i$f$drain":I
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    const/4 v2, 0x0

    .line 474
    .local v2, "$i$f$forEach":I
    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/Operations;->isNotEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 475
    new-instance v3, Landroidx/compose/runtime/changelist/Operations$OpIterator;

    invoke-direct {v3, v1}, Landroidx/compose/runtime/changelist/Operations$OpIterator;-><init>(Landroidx/compose/runtime/changelist/Operations;)V

    .line 477
    .local v3, "iterator$iv":Landroidx/compose/runtime/changelist/Operations$OpIterator;
    :cond_0
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/Operations$OpIterator;->next()Z

    move-result v4

    if-nez v4, :cond_0

    .line 480
    .end local v3    # "iterator$iv":Landroidx/compose/runtime/changelist/Operations$OpIterator;
    :cond_1
    nop

    .line 282
    .end local v1    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v2    # "$i$f$forEach":I
    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/Operations;->clear()V

    .line 283
    return-void
.end method

.method public final executeAndFlushAllPendingOperations(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V
    .locals 10
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

    .line 305
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    const/4 v1, 0x0

    .line 481
    .local v1, "$i$f$drain":I
    move-object v2, v0

    .local v2, "this_$iv$iv":Landroidx/compose/runtime/changelist/Operations;
    const/4 v3, 0x0

    .line 482
    .local v3, "$i$f$forEach":I
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operations;->isNotEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 483
    new-instance v4, Landroidx/compose/runtime/changelist/Operations$OpIterator;

    invoke-direct {v4, v2}, Landroidx/compose/runtime/changelist/Operations$OpIterator;-><init>(Landroidx/compose/runtime/changelist/Operations;)V

    .line 485
    .local v4, "iterator$iv$iv":Landroidx/compose/runtime/changelist/Operations$OpIterator;
    :cond_0
    move-object v5, v4

    .local v5, "$this$executeAndFlushAllPendingOperations_u24lambda_u2412":Landroidx/compose/runtime/changelist/Operations$OpIterator;
    const/4 v6, 0x0

    .line 306
    .local v6, "$i$a$-drain-Operations$executeAndFlushAllPendingOperations$1":I
    invoke-virtual {v5}, Landroidx/compose/runtime/changelist/Operations$OpIterator;->getOperation()Landroidx/compose/runtime/changelist/Operation;

    move-result-object v7

    .local v7, "$this$executeAndFlushAllPendingOperations_u24lambda_u2412_u24lambda_u2411":Landroidx/compose/runtime/changelist/Operation;
    const/4 v8, 0x0

    .line 307
    .local v8, "$i$a$-with-Operations$executeAndFlushAllPendingOperations$1$1":I
    move-object v9, v5

    check-cast v9, Landroidx/compose/runtime/changelist/OperationArgContainer;

    .line 308
    nop

    .line 309
    nop

    .line 310
    nop

    .line 307
    invoke-virtual {v7, v9, p1, p2, p3}, Landroidx/compose/runtime/changelist/Operation;->execute(Landroidx/compose/runtime/changelist/OperationArgContainer;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V

    .line 312
    nop

    .line 306
    .end local v7    # "$this$executeAndFlushAllPendingOperations_u24lambda_u2412_u24lambda_u2411":Landroidx/compose/runtime/changelist/Operation;
    .end local v8    # "$i$a$-with-Operations$executeAndFlushAllPendingOperations$1$1":I
    nop

    .line 313
    nop

    .line 485
    .end local v5    # "$this$executeAndFlushAllPendingOperations_u24lambda_u2412":Landroidx/compose/runtime/changelist/Operations$OpIterator;
    .end local v6    # "$i$a$-drain-Operations$executeAndFlushAllPendingOperations$1":I
    nop

    .line 486
    invoke-virtual {v4}, Landroidx/compose/runtime/changelist/Operations$OpIterator;->next()Z

    move-result v5

    if-nez v5, :cond_0

    .line 488
    .end local v4    # "iterator$iv$iv":Landroidx/compose/runtime/changelist/Operations$OpIterator;
    :cond_1
    nop

    .line 489
    .end local v2    # "this_$iv$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v3    # "$i$f$forEach":I
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operations;->clear()V

    .line 490
    nop

    .line 314
    .end local v0    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v1    # "$i$f$drain":I
    return-void
.end method

.method public final forEach(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1, "action"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/changelist/Operations$OpIterator;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 292
    .local v0, "$i$f$forEach":I
    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/Operations;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    new-instance v1, Landroidx/compose/runtime/changelist/Operations$OpIterator;

    invoke-direct {v1, p0}, Landroidx/compose/runtime/changelist/Operations$OpIterator;-><init>(Landroidx/compose/runtime/changelist/Operations;)V

    .line 295
    .local v1, "iterator":Landroidx/compose/runtime/changelist/Operations$OpIterator;
    :cond_0
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/Operations$OpIterator;->next()Z

    move-result v2

    if-nez v2, :cond_0

    .line 298
    .end local v1    # "iterator":Landroidx/compose/runtime/changelist/Operations$OpIterator;
    :cond_1
    return-void
.end method

.method public final getSize()I
    .locals 1

    .line 64
    iget v0, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 66
    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/Operations;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNotEmpty()Z
    .locals 1

    .line 67
    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/Operations;->getSize()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final pop()V
    .locals 9

    .line 218
    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/Operations;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 221
    iget-object v0, p0, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget v1, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    iget v1, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 222
    .local v0, "op":Landroidx/compose/runtime/changelist/Operation;
    iget-object v1, p0, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget v2, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 224
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v1

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_0

    move v5, v4

    .local v5, "it":I
    const/4 v6, 0x0

    .line 225
    .local v6, "$i$a$-repeat-Operations$pop$1":I
    iget-object v7, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    iget v8, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    iget v8, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    aput-object v3, v7, v8

    .line 226
    nop

    .line 224
    .end local v5    # "it":I
    .end local v6    # "$i$a$-repeat-Operations$pop$1":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    move v4, v3

    .local v4, "it":I
    const/4 v5, 0x0

    .line 229
    .local v5, "$i$a$-repeat-Operations$pop$2":I
    iget-object v6, p0, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    iget v7, p0, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    iget v7, p0, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    aput v2, v6, v7

    .line 230
    nop

    .line 228
    .end local v4    # "it":I
    .end local v5    # "$i$a$-repeat-Operations$pop$2":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 231
    :cond_1
    return-void

    .line 219
    .end local v0    # "op":Landroidx/compose/runtime/changelist/Operation;
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Cannot pop(), because the stack is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final popInto(Landroidx/compose/runtime/changelist/Operations;)V
    .locals 12
    .param p1, "other"    # Landroidx/compose/runtime/changelist/Operations;

    .line 239
    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/Operations;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 242
    iget-object v0, p0, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget v1, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    iget v1, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 243
    .local v0, "op":Landroidx/compose/runtime/changelist/Operation;
    iget-object v1, p0, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget v2, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 245
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 247
    const/4 v1, 0x0

    .local v1, "thisObjIdx":I
    iget v1, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    .line 248
    const/4 v2, 0x0

    .local v2, "otherObjIdx":I
    iget v2, p1, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    .line 249
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    move v7, v6

    .local v7, "it":I
    const/4 v8, 0x0

    .line 250
    .local v8, "$i$a$-repeat-Operations$popInto$1":I
    add-int/lit8 v2, v2, -0x1

    .line 251
    add-int/lit8 v1, v1, -0x1

    .line 252
    iget-object v9, p1, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    iget-object v10, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    aget-object v10, v10, v1

    aput-object v10, v9, v2

    .line 253
    iget-object v9, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    aput-object v3, v9, v1

    .line 254
    nop

    .line 249
    .end local v7    # "it":I
    .end local v8    # "$i$a$-repeat-Operations$popInto$1":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 256
    :cond_0
    const/4 v3, 0x0

    .local v3, "thisIntIdx":I
    iget v3, p0, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    .line 257
    const/4 v4, 0x0

    .local v4, "otherIntIdx":I
    iget v4, p1, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    .line 258
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v6

    move v7, v5

    :goto_1
    if-ge v7, v6, :cond_1

    move v8, v7

    .local v8, "it":I
    const/4 v9, 0x0

    .line 259
    .local v9, "$i$a$-repeat-Operations$popInto$2":I
    add-int/lit8 v4, v4, -0x1

    .line 260
    add-int/lit8 v3, v3, -0x1

    .line 261
    iget-object v10, p1, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    iget-object v11, p0, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    aget v11, v11, v3

    aput v11, v10, v4

    .line 262
    iget-object v10, p0, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    aput v5, v10, v3

    .line 263
    nop

    .line 258
    .end local v8    # "it":I
    .end local v9    # "$i$a$-repeat-Operations$popInto$2":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 265
    :cond_1
    iget v5, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    .line 266
    iget v5, p0, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, p0, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    .line 267
    return-void

    .line 240
    .end local v0    # "op":Landroidx/compose/runtime/changelist/Operation;
    .end local v1    # "thisObjIdx":I
    .end local v2    # "otherObjIdx":I
    .end local v3    # "thisIntIdx":I
    .end local v4    # "otherIntIdx":I
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Cannot pop(), because the stack is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final push(Landroidx/compose/runtime/changelist/Operation;)V
    .locals 3
    .param p1, "operation"    # Landroidx/compose/runtime/changelist/Operation;

    .line 144
    invoke-virtual {p1}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 150
    return-void

    .line 144
    :cond_1
    const/4 v0, 0x0

    .line 145
    .local v0, "$i$a$-require-Operations$push$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot push "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " without arguments because it expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    invoke-virtual {p1}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v2

    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    nop

    .line 145
    const-string v2, " ints and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    invoke-virtual {p1}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v2

    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    nop

    .line 145
    const-string v2, " objects."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .end local v0    # "$i$a$-require-Operations$push$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final push(Landroidx/compose/runtime/changelist/Operation;Lkotlin/jvm/functions/Function1;)V
    .locals 20
    .param p1, "operation"    # Landroidx/compose/runtime/changelist/Operation;
    .param p2, "args"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/changelist/Operation;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/changelist/Operations$WriteScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 164
    .local v2, "$i$f$push":I
    nop

    .line 167
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 168
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->box-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations$WriteScope;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v5

    invoke-static {v0, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v3, v5, :cond_0

    .line 173
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v5

    invoke-static {v0, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v3, v5, :cond_0

    move v3, v7

    goto :goto_0

    :cond_0
    move v3, v6

    .line 171
    :goto_0
    if-nez v3, :cond_7

    const/4 v3, 0x0

    .line 175
    .local v3, "$i$a$-check-Operations$push$3":I
    const/4 v5, 0x0

    .line 176
    .local v5, "missingIntCount":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v8

    .local v9, "$this$push_u24lambda_u246_u24lambda_u243":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 177
    .local v10, "$i$a$-buildString-Operations$push$3$missingInts$1":I
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v11

    move v12, v6

    :goto_1
    const-string v13, ", "

    if-ge v12, v11, :cond_3

    move v14, v12

    .local v14, "arg":I
    const/4 v15, 0x0

    .line 178
    .local v15, "$i$a$-repeat-Operations$push$3$missingInts$1$1":I
    shl-int v16, v7, v14

    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v17

    and-int v16, v16, v17

    if-eqz v16, :cond_2

    .line 179
    if-lez v5, :cond_1

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_1
    invoke-static {v14}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v13

    invoke-virtual {v1, v13}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    add-int/lit8 v5, v5, 0x1

    .line 183
    :cond_2
    nop

    .line 177
    .end local v14    # "arg":I
    .end local v15    # "$i$a$-repeat-Operations$push$3$missingInts$1$1":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 184
    :cond_3
    nop

    .line 176
    .end local v9    # "$this$push_u24lambda_u246_u24lambda_u243":Ljava/lang/StringBuilder;
    .end local v10    # "$i$a$-buildString-Operations$push$3$missingInts$1":I
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .local v8, "missingInts":Ljava/lang/String;
    const/4 v10, 0x0

    .line 187
    .local v10, "missingObjectCount":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v11

    .local v12, "$this$push_u24lambda_u246_u24lambda_u245":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 188
    .local v14, "$i$a$-buildString-Operations$push$3$missingObjects$1":I
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v15

    :goto_2
    if-ge v6, v15, :cond_6

    move/from16 v16, v6

    .local v16, "arg":I
    const/16 v17, 0x0

    .line 189
    .local v17, "$i$a$-repeat-Operations$push$3$missingObjects$1$1":I
    shl-int v18, v7, v16

    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v19

    and-int v18, v18, v19

    if-eqz v18, :cond_5

    .line 190
    if-lez v5, :cond_4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_4
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    add-int/lit8 v10, v10, 0x1

    .line 194
    :cond_5
    nop

    .line 188
    .end local v16    # "arg":I
    .end local v17    # "$i$a$-repeat-Operations$push$3$missingObjects$1$1":I
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    goto :goto_2

    .line 195
    :cond_6
    nop

    .line 187
    .end local v12    # "$this$push_u24lambda_u246_u24lambda_u245":Ljava/lang/StringBuilder;
    .end local v14    # "$i$a$-buildString-Operations$push$3$missingObjects$1":I
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .local v6, "missingObjects":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error while pushing "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ". Not all arguments were provided. Missing "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 198
    nop

    .line 197
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 198
    nop

    .line 197
    const-string v9, " int arguments ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 198
    nop

    .line 197
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 198
    nop

    .line 197
    const-string v9, ") and "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 199
    nop

    .line 197
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 199
    nop

    .line 197
    const-string v9, " object arguments ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 199
    nop

    .line 197
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 199
    nop

    .line 197
    const-string v9, ")."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 171
    .end local v3    # "$i$a$-check-Operations$push$3":I
    .end local v5    # "missingIntCount":I
    .end local v6    # "missingObjects":Ljava/lang/String;
    .end local v8    # "missingInts":Ljava/lang/String;
    .end local v10    # "missingObjectCount":I
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 201
    :cond_7
    return-void
.end method

.method public final pushOp(Landroidx/compose/runtime/changelist/Operation;)V
    .locals 3
    .param p1, "operation"    # Landroidx/compose/runtime/changelist/Operation;

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    .line 101
    iput v0, p0, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    .line 104
    iget v0, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    iget-object v1, p0, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 105
    iget v0, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    .line 106
    .local v0, "resizeAmount":I
    iget-object v1, p0, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget v2, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "copyOf(this, newSize)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Landroidx/compose/runtime/changelist/Operation;

    iput-object v1, p0, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    .line 108
    .end local v0    # "resizeAmount":I
    :cond_0
    iget v0, p0, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    invoke-virtual {p1}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroidx/compose/runtime/changelist/Operations;->ensureIntArgsSizeAtLeast(I)V

    .line 109
    iget v0, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    invoke-virtual {p1}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroidx/compose/runtime/changelist/Operations;->ensureObjectArgsSizeAtLeast(I)V

    .line 112
    iget-object v0, p0, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget v1, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    aput-object p1, v0, v1

    .line 113
    iget v0, p0, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    invoke-virtual {p1}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    .line 114
    iget v0, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    invoke-virtual {p1}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    .line 115
    return-void
.end method

.method public toDebugString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "linePrefix"    # Ljava/lang/String;

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .local v1, "$this$toDebugString_u24lambda_u2414":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 403
    .local v2, "$i$a$-buildString-Operations$toDebugString$1":I
    const/4 v3, 0x0

    .local v3, "opNumber":I
    const/4 v3, 0x1

    .line 404
    move-object v4, p0

    .local v4, "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    const/4 v5, 0x0

    .line 491
    .local v5, "$i$f$forEach":I
    invoke-virtual {v4}, Landroidx/compose/runtime/changelist/Operations;->isNotEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 492
    new-instance v6, Landroidx/compose/runtime/changelist/Operations$OpIterator;

    invoke-direct {v6, v4}, Landroidx/compose/runtime/changelist/Operations$OpIterator;-><init>(Landroidx/compose/runtime/changelist/Operations;)V

    .line 494
    .local v6, "iterator$iv":Landroidx/compose/runtime/changelist/Operations$OpIterator;
    :goto_0
    move-object v7, v6

    .local v7, "$this$toDebugString_u24lambda_u2414_u24lambda_u2413":Landroidx/compose/runtime/changelist/Operations$OpIterator;
    const/4 v8, 0x0

    .line 405
    .local v8, "$i$a$-forEach-Operations$toDebugString$1$1":I
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "opNumber":I
    .local v9, "opNumber":I
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    const-string v3, ". "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-direct {p0, v7, p1}, Landroidx/compose/runtime/changelist/Operations;->currentOpToDebugString(Landroidx/compose/runtime/changelist/Operations$OpIterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v10, "append(value)"

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0xa

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v10, "append(\'\\n\')"

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    nop

    .line 494
    .end local v7    # "$this$toDebugString_u24lambda_u2414_u24lambda_u2413":Landroidx/compose/runtime/changelist/Operations$OpIterator;
    .end local v8    # "$i$a$-forEach-Operations$toDebugString$1$1":I
    nop

    .line 495
    invoke-virtual {v6}, Landroidx/compose/runtime/changelist/Operations$OpIterator;->next()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v9

    goto :goto_1

    :cond_0
    move v3, v9

    goto :goto_0

    .line 497
    .end local v6    # "iterator$iv":Landroidx/compose/runtime/changelist/Operations$OpIterator;
    .end local v9    # "opNumber":I
    .restart local v3    # "opNumber":I
    :cond_1
    :goto_1
    nop

    .line 410
    .end local v4    # "this_$iv":Landroidx/compose/runtime/changelist/Operations;
    .end local v5    # "$i$f$forEach":I
    nop

    .line 402
    .end local v1    # "$this$toDebugString_u24lambda_u2414":Ljava/lang/StringBuilder;
    .end local v2    # "$i$a$-buildString-Operations$toDebugString$1":I
    .end local v3    # "opNumber":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "toString() will return the default implementation from Any. Did you mean to use toDebugString()?"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "toDebugString()"
            imports = {}
        .end subannotation
    .end annotation

    .line 398
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
