.class public final Landroidx/compose/runtime/changelist/Operations$WriteScope;
.super Ljava/lang/Object;
.source "Operations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/changelist/Operations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WriteScope"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0087@\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J \u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0010\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J,\u0010\u001a\u001a\u00020\u0014\"\u0004\u0008\u0000\u0010\u001b2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u0002H\u001b0\u001c2\u0006\u0010\u0017\u001a\u0002H\u001b\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020 H\u00d6\u0001\u00a2\u0006\u0004\u0008!\u0010\"R\u0011\u0010\u0006\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006#"
    }
    d2 = {
        "Landroidx/compose/runtime/changelist/Operations$WriteScope;",
        "",
        "stack",
        "Landroidx/compose/runtime/changelist/Operations;",
        "constructor-impl",
        "(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;",
        "operation",
        "Landroidx/compose/runtime/changelist/Operation;",
        "getOperation-impl",
        "(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operation;",
        "equals",
        "",
        "other",
        "equals-impl",
        "(Landroidx/compose/runtime/changelist/Operations;Ljava/lang/Object;)Z",
        "hashCode",
        "",
        "hashCode-impl",
        "(Landroidx/compose/runtime/changelist/Operations;)I",
        "setInt",
        "",
        "parameter",
        "Landroidx/compose/runtime/changelist/Operation$IntParameter;",
        "value",
        "setInt-A6tL2VI",
        "(Landroidx/compose/runtime/changelist/Operations;II)V",
        "setObject",
        "T",
        "Landroidx/compose/runtime/changelist/Operation$ObjectParameter;",
        "setObject-DKhxnng",
        "(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V",
        "toString",
        "",
        "toString-impl",
        "(Landroidx/compose/runtime/changelist/Operations;)Ljava/lang/String;",
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

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# instance fields
.field private final stack:Landroidx/compose/runtime/changelist/Operations;


# direct methods
.method private synthetic constructor <init>(Landroidx/compose/runtime/changelist/Operations;)V
    .locals 0
    .param p1, "stack"    # Landroidx/compose/runtime/changelist/Operations;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/changelist/Operations$WriteScope;->stack:Landroidx/compose/runtime/changelist/Operations;

    return-void
.end method

.method public static final synthetic box-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations$WriteScope;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/changelist/Operations$WriteScope;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/changelist/Operations$WriteScope;-><init>(Landroidx/compose/runtime/changelist/Operations;)V

    return-object v0
.end method

.method public static constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;
    .locals 0

    return-object p0
.end method

.method public static equals-impl(Landroidx/compose/runtime/changelist/Operations;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/runtime/changelist/Operations$WriteScope;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/changelist/Operations$WriteScope;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->unbox-impl()Landroidx/compose/runtime/changelist/Operations;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static final equals-impl0(Landroidx/compose/runtime/changelist/Operations;Landroidx/compose/runtime/changelist/Operations;)Z
    .locals 1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final getOperation-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operation;
    .locals 1
    .param p0, "arg0"    # Landroidx/compose/runtime/changelist/Operations;

    .line 329
    invoke-static {p0}, Landroidx/compose/runtime/changelist/Operations;->access$peekOperation(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operation;

    move-result-object v0

    return-object v0
.end method

.method public static hashCode-impl(Landroidx/compose/runtime/changelist/Operations;)I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/Operations;->hashCode()I

    move-result v0

    return v0
.end method

.method public static final setInt-A6tL2VI(Landroidx/compose/runtime/changelist/Operations;II)V
    .locals 6
    .param p0, "arg0"    # Landroidx/compose/runtime/changelist/Operations;
    .param p1, "parameter"    # I
    .param p2, "value"    # I

    .line 331
    move-object v0, p0

    .local v0, "$this$setInt_A6tL2VI_u24lambda_u241":Landroidx/compose/runtime/changelist/Operations;
    const/4 v1, 0x0

    .line 332
    .local v1, "$i$a$-with-Operations$WriteScope$setInt$1":I
    const/4 v2, 0x1

    shl-int v3, v2, p1

    .line 333
    .local v3, "mask":I
    invoke-static {v0}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    and-int/2addr v4, v3

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 336
    invoke-static {v0}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v2

    or-int/2addr v2, v3

    invoke-static {v0, v2}, Landroidx/compose/runtime/changelist/Operations;->access$setPushedIntMask$p(Landroidx/compose/runtime/changelist/Operations;I)V

    .line 337
    invoke-static {v0}, Landroidx/compose/runtime/changelist/Operations;->access$getIntArgs$p(Landroidx/compose/runtime/changelist/Operations;)[I

    move-result-object v2

    invoke-static {v0, p1}, Landroidx/compose/runtime/changelist/Operations;->access$topIntIndexOf-w8GmfQM(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v4

    aput p2, v2, v4

    .line 338
    nop

    .line 331
    .end local v0    # "$this$setInt_A6tL2VI_u24lambda_u241":Landroidx/compose/runtime/changelist/Operations;
    .end local v1    # "$i$a$-with-Operations$WriteScope$setInt$1":I
    .end local v3    # "mask":I
    nop

    .line 338
    return-void

    .line 333
    .restart local v0    # "$this$setInt_A6tL2VI_u24lambda_u241":Landroidx/compose/runtime/changelist/Operations;
    .restart local v1    # "$i$a$-with-Operations$WriteScope$setInt$1":I
    .restart local v3    # "mask":I
    :cond_1
    const/4 v2, 0x0

    .line 334
    .local v2, "$i$a$-check-Operations$WriteScope$setInt$1$1":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Already pushed argument "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->getOperation-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operation;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 333
    .end local v2    # "$i$a$-check-Operations$WriteScope$setInt$1$1":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static final setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V
    .locals 6
    .param p0, "arg0"    # Landroidx/compose/runtime/changelist/Operations;
    .param p1, "parameter"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/changelist/Operations;",
            "ITT;)V"
        }
    .end annotation

    .line 340
    move-object v0, p0

    .local v0, "$this$setObject_DKhxnng_u24lambda_u243":Landroidx/compose/runtime/changelist/Operations;
    const/4 v1, 0x0

    .line 341
    .local v1, "$i$a$-with-Operations$WriteScope$setObject$1":I
    const/4 v2, 0x1

    shl-int v3, v2, p1

    .line 342
    .local v3, "mask":I
    invoke-static {v0}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v4

    and-int/2addr v4, v3

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 345
    invoke-static {v0}, Landroidx/compose/runtime/changelist/Operations;->access$getPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v2

    or-int/2addr v2, v3

    invoke-static {v0, v2}, Landroidx/compose/runtime/changelist/Operations;->access$setPushedObjectMask$p(Landroidx/compose/runtime/changelist/Operations;I)V

    .line 346
    invoke-static {v0}, Landroidx/compose/runtime/changelist/Operations;->access$getObjectArgs$p(Landroidx/compose/runtime/changelist/Operations;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p1}, Landroidx/compose/runtime/changelist/Operations;->access$topObjectIndexOf-31yXWZQ(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v4

    aput-object p2, v2, v4

    .line 347
    nop

    .line 340
    .end local v0    # "$this$setObject_DKhxnng_u24lambda_u243":Landroidx/compose/runtime/changelist/Operations;
    .end local v1    # "$i$a$-with-Operations$WriteScope$setObject$1":I
    .end local v3    # "mask":I
    nop

    .line 347
    return-void

    .line 342
    .restart local v0    # "$this$setObject_DKhxnng_u24lambda_u243":Landroidx/compose/runtime/changelist/Operations;
    .restart local v1    # "$i$a$-with-Operations$WriteScope$setObject$1":I
    .restart local v3    # "mask":I
    :cond_1
    const/4 v2, 0x0

    .line 343
    .local v2, "$i$a$-check-Operations$WriteScope$setObject$1$1":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Already pushed argument "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->getOperation-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operation;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    .end local v2    # "$i$a$-check-Operations$WriteScope$setObject$1$1":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static toString-impl(Landroidx/compose/runtime/changelist/Operations;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WriteScope(stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/changelist/Operations$WriteScope;->stack:Landroidx/compose/runtime/changelist/Operations;

    invoke-static {v0, p1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->equals-impl(Landroidx/compose/runtime/changelist/Operations;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/changelist/Operations$WriteScope;->stack:Landroidx/compose/runtime/changelist/Operations;

    invoke-static {v0}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->hashCode-impl(Landroidx/compose/runtime/changelist/Operations;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/changelist/Operations$WriteScope;->stack:Landroidx/compose/runtime/changelist/Operations;

    invoke-static {v0}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->toString-impl(Landroidx/compose/runtime/changelist/Operations;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()Landroidx/compose/runtime/changelist/Operations;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/changelist/Operations$WriteScope;->stack:Landroidx/compose/runtime/changelist/Operations;

    return-object v0
.end method
