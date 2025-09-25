.class public final Landroidx/compose/runtime/collection/IdentityArrayIntMap;
.super Ljava/lang/Object;
.source "IdentityArrayIntMap.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\tJ#\u0010\u0014\u001a\u00020\u00152\u0018\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00150\u0017H\u0086\u0008J\u0012\u0010\u0018\u001a\u00020\t2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u0002J\"\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\t2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u001b\u001a\u00020\tH\u0002J#\u0010\u001c\u001a\u00020\u001d2\u0018\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001d0\u0017H\u0086\u0008J\u0011\u0010\u001f\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0001H\u0086\u0002J\u000e\u0010 \u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u0001J#\u0010!\u001a\u00020\u001d2\u0018\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00150\u0017H\u0086\u0008R0\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00042\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0004@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/compose/runtime/collection/IdentityArrayIntMap;",
        "",
        "()V",
        "<set-?>",
        "",
        "keys",
        "getKeys",
        "()[Ljava/lang/Object;",
        "[Ljava/lang/Object;",
        "",
        "size",
        "getSize",
        "()I",
        "",
        "values",
        "getValues",
        "()[I",
        "add",
        "key",
        "value",
        "any",
        "",
        "predicate",
        "Lkotlin/Function2;",
        "find",
        "findExactIndex",
        "midIndex",
        "valueHash",
        "forEach",
        "",
        "block",
        "get",
        "remove",
        "removeValueIf",
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
.field private keys:[Ljava/lang/Object;

.field private size:I

.field private values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    .line 26
    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    .line 21
    return-void
.end method

.method public static final synthetic access$setSize$p(Landroidx/compose/runtime/collection/IdentityArrayIntMap;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/collection/IdentityArrayIntMap;
    .param p1, "<set-?>"    # I

    .line 21
    iput p1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    return-void
.end method

.method private final find(Ljava/lang/Object;)I
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "low":I
    iget v1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    add-int/lit8 v1, v1, -0x1

    .line 188
    .local v1, "high":I
    invoke-static {p1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 190
    .local v2, "valueIdentity":I
    iget-object v3, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    .line 191
    .local v3, "keys":[Ljava/lang/Object;
    :goto_0
    if-gt v0, v1, :cond_3

    .line 192
    add-int v4, v0, v1

    ushr-int/lit8 v4, v4, 0x1

    .line 193
    .local v4, "mid":I
    aget-object v5, v3, v4

    .line 194
    .local v5, "midVal":Ljava/lang/Object;
    invoke-static {v5}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    .line 195
    .local v6, "midIdentity":I
    nop

    .line 196
    if-ge v6, v2, :cond_0

    add-int/lit8 v0, v4, 0x1

    goto :goto_0

    .line 197
    :cond_0
    if-le v6, v2, :cond_1

    add-int/lit8 v1, v4, -0x1

    goto :goto_0

    .line 198
    :cond_1
    if-ne v5, p1, :cond_2

    return v4

    .line 199
    :cond_2
    invoke-direct {p0, v4, p1, v2}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->findExactIndex(ILjava/lang/Object;I)I

    move-result v7

    return v7

    .line 202
    .end local v4    # "mid":I
    .end local v5    # "midVal":Ljava/lang/Object;
    .end local v6    # "midIdentity":I
    :cond_3
    add-int/lit8 v4, v0, 0x1

    neg-int v4, v4

    return v4
.end method

.method private final findExactIndex(ILjava/lang/Object;I)I
    .locals 5
    .param p1, "midIndex"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "valueHash"    # I

    .line 213
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    .line 214
    .local v0, "keys":[Ljava/lang/Object;
    iget v1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    .line 217
    .local v1, "size":I
    add-int/lit8 v2, p1, -0x1

    .local v2, "i":I
    :goto_0
    const/4 v3, -0x1

    if-ge v3, v2, :cond_2

    .line 218
    aget-object v3, v0, v2

    .line 219
    .local v3, "v":Ljava/lang/Object;
    if-ne v3, p2, :cond_0

    .line 220
    return v2

    .line 222
    :cond_0
    invoke-static {v3}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, p3, :cond_1

    .line 223
    goto :goto_1

    .line 217
    .end local v3    # "v":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 227
    .end local v2    # "i":I
    :cond_2
    :goto_1
    add-int/lit8 v2, p1, 0x1

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 228
    aget-object v3, v0, v2

    .line 229
    .restart local v3    # "v":Ljava/lang/Object;
    if-ne v3, p2, :cond_3

    .line 230
    return v2

    .line 232
    :cond_3
    invoke-static {v3}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, p3, :cond_4

    .line 234
    add-int/lit8 v4, v2, 0x1

    neg-int v4, v4

    return v4

    .line 227
    .end local v3    # "v":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 239
    .end local v2    # "i":I
    :cond_5
    add-int/lit8 v2, v1, 0x1

    neg-int v2, v2

    return v2
.end method


# virtual methods
.method public final add(Ljava/lang/Object;I)I
    .locals 17
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # I

    .line 37
    move-object/from16 v0, p0

    iget-object v8, v0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    .line 39
    .local v8, "values":[I
    const/4 v1, 0x0

    .line 40
    .local v1, "index":I
    iget v2, v0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    if-lez v2, :cond_1

    .line 41
    invoke-direct/range {p0 .. p1}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->find(Ljava/lang/Object;)I

    move-result v1

    .line 42
    if-ltz v1, :cond_0

    .line 43
    aget v2, v8, v1

    .line 44
    .local v2, "previousValue":I
    aput p2, v8, v1

    .line 45
    return v2

    .line 42
    .end local v2    # "previousValue":I
    :cond_0
    move v9, v1

    goto :goto_0

    .line 48
    :cond_1
    const/4 v1, -0x1

    move v9, v1

    .line 51
    .end local v1    # "index":I
    .local v9, "index":I
    :goto_0
    add-int/lit8 v1, v9, 0x1

    neg-int v7, v1

    .line 53
    .local v7, "insertIndex":I
    iget-object v6, v0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    .line 54
    .local v6, "keys":[Ljava/lang/Object;
    iget v5, v0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    .line 55
    .local v5, "size":I
    array-length v1, v6

    if-ne v5, v1, :cond_2

    .line 56
    array-length v1, v6

    mul-int/lit8 v1, v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    .line 57
    .local v4, "newKeys":[Ljava/lang/Object;
    array-length v1, v6

    mul-int/lit8 v1, v1, 0x2

    new-array v3, v1, [I

    .line 58
    .local v3, "newValues":[I
    nop

    .line 59
    nop

    .line 60
    add-int/lit8 v1, v7, 0x1

    .line 61
    nop

    .line 62
    nop

    .line 58
    invoke-static {v6, v4, v1, v7, v5}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 64
    nop

    .line 65
    nop

    .line 66
    add-int/lit8 v1, v7, 0x1

    .line 67
    nop

    .line 68
    nop

    .line 64
    invoke-static {v8, v3, v1, v7, v5}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 70
    nop

    .line 71
    nop

    .line 70
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 72
    nop

    .line 70
    const/4 v15, 0x6

    const/16 v16, 0x0

    move-object v10, v6

    move-object v11, v4

    move v14, v7

    invoke-static/range {v10 .. v16}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 74
    nop

    .line 75
    nop

    .line 74
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 76
    nop

    .line 74
    const/4 v12, 0x6

    const/4 v13, 0x0

    move-object v1, v8

    move-object v2, v3

    move-object v14, v3

    .end local v3    # "newValues":[I
    .local v14, "newValues":[I
    move v3, v10

    move-object v10, v4

    .end local v4    # "newKeys":[Ljava/lang/Object;
    .local v10, "newKeys":[Ljava/lang/Object;
    move v4, v11

    move v11, v5

    .end local v5    # "size":I
    .local v11, "size":I
    move v5, v7

    move-object v15, v6

    .end local v6    # "keys":[Ljava/lang/Object;
    .local v15, "keys":[Ljava/lang/Object;
    move v6, v12

    move v12, v7

    .end local v7    # "insertIndex":I
    .local v12, "insertIndex":I
    move-object v7, v13

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([I[IIIIILjava/lang/Object;)[I

    .line 78
    iput-object v10, v0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    .line 79
    iput-object v14, v0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    .end local v10    # "newKeys":[Ljava/lang/Object;
    .end local v14    # "newValues":[I
    goto :goto_1

    .line 81
    .end local v11    # "size":I
    .end local v12    # "insertIndex":I
    .end local v15    # "keys":[Ljava/lang/Object;
    .restart local v5    # "size":I
    .restart local v6    # "keys":[Ljava/lang/Object;
    .restart local v7    # "insertIndex":I
    :cond_2
    move v11, v5

    move-object v15, v6

    move v12, v7

    .line 82
    .end local v5    # "size":I
    .end local v6    # "keys":[Ljava/lang/Object;
    .end local v7    # "insertIndex":I
    .restart local v11    # "size":I
    .restart local v12    # "insertIndex":I
    .restart local v15    # "keys":[Ljava/lang/Object;
    nop

    .line 83
    add-int/lit8 v7, v12, 0x1

    .line 84
    nop

    .line 85
    nop

    .line 81
    invoke-static {v15, v15, v7, v12, v11}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 87
    nop

    .line 88
    nop

    .line 89
    add-int/lit8 v7, v12, 0x1

    .line 90
    nop

    .line 91
    nop

    .line 87
    invoke-static {v8, v8, v7, v12, v11}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 94
    :goto_1
    iget-object v1, v0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    aput-object p1, v1, v12

    .line 95
    iget-object v1, v0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    aput p2, v1, v12

    .line 96
    iget v1, v0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    .line 98
    const/4 v1, -0x1

    return v1
.end method

.method public final any(Lkotlin/jvm/functions/Function2;)Z
    .locals 7
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 161
    .local v0, "$i$f$any":I
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getKeys()[Ljava/lang/Object;

    move-result-object v1

    .line 162
    .local v1, "keys":[Ljava/lang/Object;
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getValues()[I

    move-result-object v2

    .line 163
    .local v2, "values":[I
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getSize()I

    move-result v3

    .line 165
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 166
    aget-object v5, v1, v4

    const-string/jumbo v6, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aget v6, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    return v5

    .line 165
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 168
    .end local v4    # "i":I
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public final forEach(Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .param p1, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 172
    .local v0, "$i$f$forEach":I
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getKeys()[Ljava/lang/Object;

    move-result-object v1

    .line 173
    .local v1, "keys":[Ljava/lang/Object;
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getValues()[I

    move-result-object v2

    .line 174
    .local v2, "values":[I
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getSize()I

    move-result v3

    .line 176
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 177
    aget-object v5, v1, v4

    const-string/jumbo v6, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aget v6, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 179
    .end local v4    # "i":I
    :cond_0
    return-void
.end method

.method public final get(Ljava/lang/Object;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 30
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->find(Ljava/lang/Object;)I

    move-result v0

    .line 31
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    aget v1, v1, v0

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Key not found"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getKeys()[Ljava/lang/Object;
    .locals 1

    .line 24
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 22
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    return v0
.end method

.method public final getValues()[I
    .locals 1

    .line 26
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;

    .line 105
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->find(Ljava/lang/Object;)I

    move-result v0

    .line 107
    .local v0, "index":I
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    .line 108
    .local v1, "keys":[Ljava/lang/Object;
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    .line 109
    .local v2, "values":[I
    iget v3, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    .line 110
    .local v3, "size":I
    if-ltz v0, :cond_1

    .line 111
    add-int/lit8 v4, v3, -0x1

    if-ge v0, v4, :cond_0

    .line 112
    nop

    .line 113
    nop

    .line 114
    nop

    .line 115
    add-int/lit8 v4, v0, 0x1

    .line 116
    nop

    .line 112
    invoke-static {v1, v1, v0, v4, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 118
    nop

    .line 119
    nop

    .line 120
    nop

    .line 121
    add-int/lit8 v4, v0, 0x1

    .line 122
    nop

    .line 118
    invoke-static {v2, v2, v0, v4, v3}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 125
    :cond_0
    add-int/lit8 v4, v3, -0x1

    .line 126
    .local v4, "newSize":I
    const/4 v5, 0x0

    aput-object v5, v1, v4

    .line 127
    iput v4, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    .line 128
    const/4 v5, 0x1

    return v5

    .line 130
    .end local v4    # "newSize":I
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public final removeValueIf(Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 137
    .local v0, "$i$f$removeValueIf":I
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getKeys()[Ljava/lang/Object;

    move-result-object v1

    .line 138
    .local v1, "keys":[Ljava/lang/Object;
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getValues()[I

    move-result-object v2

    .line 139
    .local v2, "values":[I
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getSize()I

    move-result v3

    .line 141
    .local v3, "size":I
    const/4 v4, 0x0

    .line 142
    .local v4, "destinationIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 144
    aget-object v6, v1, v5

    const-string/jumbo v7, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .local v6, "key":Ljava/lang/Object;
    aget v7, v2, v5

    .line 146
    .local v7, "value":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p1, v6, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_1

    .line 147
    if-eq v4, v5, :cond_0

    .line 148
    aput-object v6, v1, v4

    .line 149
    aput v7, v2, v4

    .line 151
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 142
    .end local v6    # "key":Ljava/lang/Object;
    .end local v7    # "value":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 154
    .end local v5    # "i":I
    :cond_2
    move v5, v4

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v3, :cond_3

    .line 155
    const/4 v6, 0x0

    aput-object v6, v1, v5

    .line 154
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 157
    .end local v5    # "i":I
    :cond_3
    invoke-static {p0, v4}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->access$setSize$p(Landroidx/compose/runtime/collection/IdentityArrayIntMap;I)V

    .line 158
    return-void
.end method
