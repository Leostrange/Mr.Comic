.class final Landroidx/compose/runtime/SlotTableGroup;
.super Ljava/lang/Object;
.source "SlotTable.kt"

# interfaces
.implements Landroidx/compose/runtime/tooling/CompositionGroup;
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        "Ljava/lang/Iterable<",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotTableGroup\n+ 2 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3745:1\n150#2,8:3746\n1#3:3754\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotTableGroup\n*L\n3277#1:3746,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010(\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00010\u0002B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010&\u001a\u0004\u0018\u00010\u00012\u0006\u0010\'\u001a\u00020\rH\u0016J\u000f\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00010)H\u0096\u0002J\u0008\u0010*\u001a\u00020+H\u0002R\u001a\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0015R\u0016\u0010\u001b\u001a\u0004\u0018\u00010\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u0015R\u0014\u0010\u001d\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u0010R\u0016\u0010\u001f\u001a\u0004\u0018\u00010 8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0010\u00a8\u0006,"
    }
    d2 = {
        "Landroidx/compose/runtime/SlotTableGroup;",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        "",
        "table",
        "Landroidx/compose/runtime/SlotTable;",
        "group",
        "",
        "version",
        "(Landroidx/compose/runtime/SlotTable;II)V",
        "compositionGroups",
        "getCompositionGroups",
        "()Ljava/lang/Iterable;",
        "data",
        "",
        "getData",
        "getGroup",
        "()I",
        "groupSize",
        "getGroupSize",
        "identity",
        "getIdentity",
        "()Ljava/lang/Object;",
        "isEmpty",
        "",
        "()Z",
        "key",
        "getKey",
        "node",
        "getNode",
        "slotsSize",
        "getSlotsSize",
        "sourceInfo",
        "",
        "getSourceInfo",
        "()Ljava/lang/String;",
        "getTable",
        "()Landroidx/compose/runtime/SlotTable;",
        "getVersion",
        "find",
        "identityToFind",
        "iterator",
        "",
        "validateRead",
        "",
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


# instance fields
.field private final group:I

.field private final table:Landroidx/compose/runtime/SlotTable;

.field private final version:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/SlotTable;II)V
    .locals 0
    .param p1, "table"    # Landroidx/compose/runtime/SlotTable;
    .param p2, "group"    # I
    .param p3, "version"    # I

    .line 3248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3249
    iput-object p1, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .line 3250
    iput p2, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    .line 3251
    iput p3, p0, Landroidx/compose/runtime/SlotTableGroup;->version:I

    .line 3248
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/SlotTable;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 3248
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 3251
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getVersion$runtime_release()I

    move-result p3

    .line 3248
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/SlotTableGroup;-><init>(Landroidx/compose/runtime/SlotTable;II)V

    .line 3317
    return-void
.end method

.method private final validateRead()V
    .locals 2

    .line 3303
    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getVersion$runtime_release()I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/SlotTableGroup;->version:I

    if-ne v0, v1, :cond_0

    .line 3306
    return-void

    .line 3304
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public find(Ljava/lang/Object;)Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 7
    .param p1, "identityToFind"    # Ljava/lang/Object;

    .line 3309
    instance-of v0, p1, Landroidx/compose/runtime/Anchor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Anchor;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .local v0, "anchor":Landroidx/compose/runtime/Anchor;
    const/4 v2, 0x0

    .line 3310
    .local v2, "$i$a$-let-SlotTableGroup$find$1":I
    iget-object v3, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotTable;->ownsAnchor(Landroidx/compose/runtime/Anchor;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3311
    iget-object v3, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v3

    .line 3312
    .local v3, "anchorGroup":I
    iget v4, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    if-lt v3, v4, :cond_1

    iget v4, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    sub-int v4, v3, v4

    iget-object v5, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v5}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v5

    iget v6, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-static {v5, v6}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 3313
    new-instance v1, Landroidx/compose/runtime/SlotTableGroup;

    iget-object v4, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    iget v5, p0, Landroidx/compose/runtime/SlotTableGroup;->version:I

    invoke-direct {v1, v4, v3, v5}, Landroidx/compose/runtime/SlotTableGroup;-><init>(Landroidx/compose/runtime/SlotTable;II)V

    goto :goto_1

    .line 3314
    :cond_1
    nop

    .end local v3    # "anchorGroup":I
    goto :goto_1

    .line 3315
    :cond_2
    nop

    .line 3310
    :goto_1
    nop

    .line 3309
    .end local v0    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v2    # "$i$a$-let-SlotTableGroup$find$1":I
    nop

    :cond_3
    check-cast v1, Landroidx/compose/runtime/tooling/CompositionGroup;

    .line 3316
    return-object v1
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

    .line 3280
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public getData()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3272
    new-instance v0, Landroidx/compose/runtime/DataIterator;

    iget-object v1, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    iget v2, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/DataIterator;-><init>(Landroidx/compose/runtime/SlotTable;I)V

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public final getGroup()I
    .locals 1

    .line 3250
    iget v0, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    return v0
.end method

.method public getGroupSize()I
    .locals 2

    .line 3292
    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v0

    return v0
.end method

.method public getIdentity()Ljava/lang/Object;
    .locals 7

    .line 3276
    invoke-direct {p0}, Landroidx/compose/runtime/SlotTableGroup;->validateRead()V

    .line 3277
    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .local v0, "this_$iv":Landroidx/compose/runtime/SlotTable;
    const/4 v1, 0x0

    .line 3746
    .local v1, "$i$f$read":I
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v2

    .line 3747
    nop

    .local v2, "reader$iv":Landroidx/compose/runtime/SlotReader;
    const/4 v3, 0x0

    .line 3748
    .local v3, "$i$a$-let-SlotTable$read$1$iv":I
    nop

    .line 3749
    move-object v4, v2

    .local v4, "it":Landroidx/compose/runtime/SlotReader;
    const/4 v5, 0x0

    .line 3277
    .local v5, "$i$a$-read-SlotTableGroup$identity$1":I
    :try_start_0
    iget v6, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3749
    .end local v4    # "it":Landroidx/compose/runtime/SlotReader;
    .end local v5    # "$i$a$-read-SlotTableGroup$identity$1":I
    nop

    .line 3751
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->close()V

    .line 3752
    nop

    .line 3748
    nop

    .line 3747
    .end local v2    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v3    # "$i$a$-let-SlotTable$read$1$iv":I
    nop

    .line 3753
    nop

    .line 3277
    .end local v0    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v1    # "$i$f$read":I
    return-object v6

    .line 3751
    .restart local v0    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .restart local v1    # "$i$f$read":I
    .restart local v2    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .restart local v3    # "$i$a$-let-SlotTable$read$1$iv":I
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->close()V

    throw v4
.end method

.method public getKey()Ljava/lang/Object;
    .locals 3

    .line 3256
    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$hasObjectKey([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3257
    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getSlots()[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v1

    iget v2, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-static {v1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$objectKeyIndex([II)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 3258
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$key([II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getNode()Ljava/lang/Object;
    .locals 3

    .line 3268
    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3269
    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getSlots()[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v1

    iget v2, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-static {v1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$nodeIndex([II)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    .line 3270
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSlotsSize()I
    .locals 4

    .line 3296
    iget v0, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotTableGroup;->getGroupSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3297
    .local v0, "nextGroup":I
    iget-object v1, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v1

    goto :goto_0

    .line 3298
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->getSlotsSize()I

    move-result v1

    .line 3297
    :goto_0
    nop

    .line 3299
    .local v1, "nextSlot":I
    iget-object v2, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v2

    iget v3, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-static {v2, v3}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v2

    sub-int v2, v1, v2

    return v2
.end method

.method public getSourceInfo()Ljava/lang/String;
    .locals 4

    .line 3261
    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$hasAux([II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3262
    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getSlots()[Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v2

    iget v3, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-static {v2, v3}, Landroidx/compose/runtime/SlotTableKt;->access$auxIndex([II)I

    move-result v2

    aget-object v0, v0, v2

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 3263
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    iget v2, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SlotTable;->tryAnchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "it":Landroidx/compose/runtime/Anchor;
    const/4 v2, 0x0

    .line 3264
    .local v2, "$i$a$-let-SlotTableGroup$sourceInfo$1":I
    iget-object v3, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotTable;->getSourceInformationMap$runtime_release()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/GroupSourceInformation;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/compose/runtime/GroupSourceInformation;->getSourceInformation()Ljava/lang/String;

    move-result-object v1

    .line 3263
    .end local v0    # "it":Landroidx/compose/runtime/Anchor;
    .end local v2    # "$i$a$-let-SlotTableGroup$sourceInfo$1":I
    :cond_1
    nop

    .line 3265
    :cond_2
    :goto_0
    return-object v1
.end method

.method public final getTable()Landroidx/compose/runtime/SlotTable;
    .locals 1

    .line 3249
    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    .line 3251
    iget v0, p0, Landroidx/compose/runtime/SlotTableGroup;->version:I

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 3253
    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            ">;"
        }
    .end annotation

    .line 3283
    invoke-direct {p0}, Landroidx/compose/runtime/SlotTableGroup;->validateRead()V

    .line 3284
    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    iget v1, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SlotTable;->sourceInformationOf(I)Landroidx/compose/runtime/GroupSourceInformation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3754
    .local v0, "it":Landroidx/compose/runtime/GroupSourceInformation;
    const/4 v1, 0x0

    .line 3284
    .local v1, "$i$a$-let-SlotTableGroup$iterator$1":I
    new-instance v2, Landroidx/compose/runtime/SourceInformationGroupIterator;

    iget-object v3, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-direct {v2, v3, v0}, Landroidx/compose/runtime/SourceInformationGroupIterator;-><init>(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/GroupSourceInformation;)V

    .end local v0    # "it":Landroidx/compose/runtime/GroupSourceInformation;
    .end local v1    # "$i$a$-let-SlotTableGroup$iterator$1":I
    check-cast v2, Ljava/util/Iterator;

    goto :goto_0

    .line 3285
    :cond_0
    new-instance v0, Landroidx/compose/runtime/GroupIterator;

    .line 3286
    iget-object v1, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .line 3287
    iget v2, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    add-int/lit8 v2, v2, 0x1

    .line 3288
    iget v3, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    iget-object v4, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v4

    iget v5, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    invoke-static {v4, v5}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v4

    add-int/2addr v3, v4

    .line 3285
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/runtime/GroupIterator;-><init>(Landroidx/compose/runtime/SlotTable;II)V

    move-object v2, v0

    check-cast v2, Ljava/util/Iterator;

    .line 3284
    :goto_0
    return-object v2
.end method
