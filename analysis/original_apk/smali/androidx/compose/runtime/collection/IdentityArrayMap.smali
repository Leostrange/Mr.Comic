.class public final Landroidx/compose/runtime/collection/IdentityArrayMap;
.super Ljava/lang/Object;
.source "IdentityArrayMap.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIdentityArrayMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IdentityArrayMap.kt\nandroidx/compose/runtime/collection/IdentityArrayMap\n*L\n1#1,298:1\n125#1,22:299\n*S KotlinDebug\n*F\n+ 1 IdentityArrayMap.kt\nandroidx/compose/runtime/collection/IdentityArrayMap\n*L\n149#1:299,22\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\n\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0004\u0008\u0001\u0010\u00032\u00020\u0002B\u000f\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0013J\u0006\u0010\u0014\u001a\u00020\u0015J\u0016\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00028\u0000H\u0086\u0002\u00a2\u0006\u0002\u0010\u0019J\u0012\u0010\u001a\u001a\u00020\u00052\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0002H\u0002J\"\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00052\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001d\u001a\u00020\u0005H\u0002JA\u0010\u001e\u001a\u00020\u001526\u0010\u001f\u001a2\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008!\u0012\u0008\u0008\"\u0012\u0004\u0008\u0008(\u0018\u0012\u0013\u0012\u00118\u0001\u00a2\u0006\u000c\u0008!\u0012\u0008\u0008\"\u0012\u0004\u0008\u0008(#\u0012\u0004\u0012\u00020\u00150 H\u0086\u0008J\u0018\u0010$\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0018\u001a\u00028\u0000H\u0086\u0002\u00a2\u0006\u0002\u0010%J\u0006\u0010&\u001a\u00020\u0017J\u0006\u0010\'\u001a\u00020\u0017J\u0015\u0010(\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0018\u001a\u00028\u0000\u00a2\u0006\u0002\u0010%JA\u0010)\u001a\u00020\u001526\u0010\u001f\u001a2\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008!\u0012\u0008\u0008\"\u0012\u0004\u0008\u0008(\u0018\u0012\u0013\u0012\u00118\u0001\u00a2\u0006\u000c\u0008!\u0012\u0008\u0008\"\u0012\u0004\u0008\u0008(#\u0012\u0004\u0012\u00020\u00170 H\u0086\u0008J,\u0010*\u001a\u00020\u00152!\u0010\u001f\u001a\u001d\u0012\u0013\u0012\u00118\u0001\u00a2\u0006\u000c\u0008!\u0012\u0008\u0008\"\u0012\u0004\u0008\u0008(#\u0012\u0004\u0012\u00020\u00170+H\u0086\u0008J\u001e\u0010,\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00028\u00002\u0006\u0010#\u001a\u00028\u0001H\u0086\u0002\u00a2\u0006\u0002\u0010-R0\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00082\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0008@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bR\u001e\u0010\r\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR0\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00082\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0008@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\u0011\u0010\u000b\u00a8\u0006."
    }
    d2 = {
        "Landroidx/compose/runtime/collection/IdentityArrayMap;",
        "Key",
        "",
        "Value",
        "capacity",
        "",
        "(I)V",
        "<set-?>",
        "",
        "keys",
        "getKeys",
        "()[Ljava/lang/Object;",
        "[Ljava/lang/Object;",
        "size",
        "getSize",
        "()I",
        "values",
        "getValues",
        "asMap",
        "",
        "clear",
        "",
        "contains",
        "",
        "key",
        "(Ljava/lang/Object;)Z",
        "find",
        "findExactIndex",
        "midIndex",
        "keyHash",
        "forEach",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "value",
        "get",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "isEmpty",
        "isNotEmpty",
        "remove",
        "removeIf",
        "removeValueIf",
        "Lkotlin/Function1;",
        "set",
        "(Ljava/lang/Object;Ljava/lang/Object;)V",
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

.field private values:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/collection/IdentityArrayMap;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/compose/runtime/collection/IdentityArrayMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->keys:[Ljava/lang/Object;

    .line 24
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->values:[Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 21
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x10

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityArrayMap;-><init>(I)V

    .line 297
    return-void
.end method

.method public static final synthetic access$setSize$p(Landroidx/compose/runtime/collection/IdentityArrayMap;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/collection/IdentityArrayMap;
    .param p1, "<set-?>"    # I

    .line 21
    iput p1, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->size:I

    return-void
.end method

.method private final find(Ljava/lang/Object;)I
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;

    .line 164
    invoke-static {p1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 165
    .local v0, "keyIdentity":I
    const/4 v1, 0x0

    .line 166
    .local v1, "low":I
    iget v2, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->size:I

    add-int/lit8 v2, v2, -0x1

    .line 168
    .local v2, "high":I
    iget-object v3, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->keys:[Ljava/lang/Object;

    .line 169
    .local v3, "keys":[Ljava/lang/Object;
    :goto_0
    if-gt v1, v2, :cond_3

    .line 170
    add-int v4, v1, v2

    ushr-int/lit8 v4, v4, 0x1

    .line 171
    .local v4, "mid":I
    aget-object v5, v3, v4

    .line 172
    .local v5, "midKey":Ljava/lang/Object;
    invoke-static {v5}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    .line 173
    .local v6, "midKeyHash":I
    nop

    .line 174
    if-ge v6, v0, :cond_0

    add-int/lit8 v1, v4, 0x1

    goto :goto_0

    .line 175
    :cond_0
    if-le v6, v0, :cond_1

    add-int/lit8 v2, v4, -0x1

    goto :goto_0

    .line 176
    :cond_1
    if-ne p1, v5, :cond_2

    return v4

    .line 177
    :cond_2
    invoke-direct {p0, v4, p1, v0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->findExactIndex(ILjava/lang/Object;I)I

    move-result v7

    return v7

    .line 180
    .end local v4    # "mid":I
    .end local v5    # "midKey":Ljava/lang/Object;
    .end local v6    # "midKeyHash":I
    :cond_3
    add-int/lit8 v4, v1, 0x1

    neg-int v4, v4

    return v4
.end method

.method private final findExactIndex(ILjava/lang/Object;I)I
    .locals 5
    .param p1, "midIndex"    # I
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "keyHash"    # I

    .line 191
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->keys:[Ljava/lang/Object;

    .line 192
    .local v0, "keys":[Ljava/lang/Object;
    iget v1, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->size:I

    .line 195
    .local v1, "size":I
    add-int/lit8 v2, p1, -0x1

    .local v2, "i":I
    :goto_0
    const/4 v3, -0x1

    if-ge v3, v2, :cond_2

    .line 196
    aget-object v3, v0, v2

    .line 197
    .local v3, "k":Ljava/lang/Object;
    if-ne v3, p2, :cond_0

    .line 198
    return v2

    .line 200
    :cond_0
    invoke-static {v3}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, p3, :cond_1

    .line 201
    goto :goto_1

    .line 195
    .end local v3    # "k":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 205
    .end local v2    # "i":I
    :cond_2
    :goto_1
    add-int/lit8 v2, p1, 0x1

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 206
    aget-object v3, v0, v2

    .line 207
    .restart local v3    # "k":Ljava/lang/Object;
    if-ne v3, p2, :cond_3

    .line 208
    return v2

    .line 210
    :cond_3
    invoke-static {v3}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, p3, :cond_4

    .line 212
    add-int/lit8 v4, v2, 0x1

    neg-int v4, v4

    return v4

    .line 205
    .end local v3    # "k":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 217
    .end local v2    # "i":I
    :cond_5
    add-int/lit8 v2, v1, 0x1

    neg-int v2, v2

    return v2
.end method


# virtual methods
.method public final asMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TKey;TValue;>;"
        }
    .end annotation

    .line 221
    new-instance v0, Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/collection/IdentityArrayMap$asMap$1;-><init>(Landroidx/compose/runtime/collection/IdentityArrayMap;)V

    check-cast v0, Ljava/util/Map;

    .line 296
    return-object v0
.end method

.method public final clear()V
    .locals 13

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->size:I

    .line 120
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->keys:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    .line 121
    iget-object v7, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->values:[Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    .line 122
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)Z"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->find(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final forEach(Lkotlin/jvm/functions/Function2;)V
    .locals 5
    .param p1, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TKey;-TValue;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 153
    .local v0, "$i$f$forEach":I
    const/4 v1, 0x0

    .local v1, "index":I
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getSize()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 155
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getKeys()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v1

    const-string/jumbo v4, "null cannot be cast to non-null type Key of androidx.compose.runtime.collection.IdentityArrayMap"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getValues()[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-interface {p1, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)TValue;"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->find(Ljava/lang/Object;)I

    move-result v0

    .line 37
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final getKeys()[Ljava/lang/Object;
    .locals 1

    .line 22
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->keys:[Ljava/lang/Object;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 26
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->size:I

    return v0
.end method

.method public final getValues()[Ljava/lang/Object;
    .locals 1

    .line 24
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->values:[Ljava/lang/Object;

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 29
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->size:I

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

    .line 30
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)TValue;"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->find(Ljava/lang/Object;)I

    move-result v0

    .line 91
    .local v0, "index":I
    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 92
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 93
    .local v2, "value":Ljava/lang/Object;
    iget v3, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->size:I

    .line 94
    .local v3, "size":I
    iget-object v4, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->keys:[Ljava/lang/Object;

    .line 95
    .local v4, "keys":[Ljava/lang/Object;
    iget-object v5, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->values:[Ljava/lang/Object;

    .line 96
    .local v5, "values":[Ljava/lang/Object;
    nop

    .line 97
    nop

    .line 98
    nop

    .line 99
    add-int/lit8 v6, v0, 0x1

    .line 100
    nop

    .line 96
    invoke-static {v4, v4, v0, v6, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 102
    nop

    .line 103
    nop

    .line 104
    nop

    .line 105
    add-int/lit8 v6, v0, 0x1

    .line 106
    nop

    .line 102
    invoke-static {v5, v5, v0, v6, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 108
    add-int/lit8 v6, v3, -0x1

    .line 109
    .local v6, "newSize":I
    aput-object v1, v4, v6

    .line 110
    aput-object v1, v5, v6

    .line 111
    iput v6, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->size:I

    .line 113
    return-object v2

    .line 115
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "size":I
    .end local v4    # "keys":[Ljava/lang/Object;
    .end local v5    # "values":[Ljava/lang/Object;
    .end local v6    # "newSize":I
    :cond_0
    return-object v1
.end method

.method public final removeIf(Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .param p1, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TKey;-TValue;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 125
    .local v0, "$i$f$removeIf":I
    const/4 v1, 0x0

    .line 126
    .local v1, "current":I
    const/4 v2, 0x0

    .local v2, "index":I
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getSize()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    .line 128
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getKeys()[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v2

    const-string/jumbo v5, "null cannot be cast to non-null type Key of androidx.compose.runtime.collection.IdentityArrayMap"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .local v4, "key":Ljava/lang/Object;
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getValues()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v2

    .line 131
    .local v5, "value":Ljava/lang/Object;
    invoke-interface {p1, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    .line 132
    if-eq v1, v2, :cond_0

    .line 133
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getKeys()[Ljava/lang/Object;

    move-result-object v6

    aput-object v4, v6, v1

    .line 134
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getValues()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getValues()[Ljava/lang/Object;

    move-result-object v7

    aget-object v7, v7, v2

    aput-object v7, v6, v1

    .line 136
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 126
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v2    # "index":I
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getSize()I

    move-result v2

    if-le v2, v1, :cond_4

    .line 140
    move v2, v1

    .restart local v2    # "index":I
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getSize()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_3

    .line 141
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getKeys()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v5, v4, v2

    .line 142
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getValues()[Ljava/lang/Object;

    move-result-object v4

    aput-object v5, v4, v2

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 144
    .end local v2    # "index":I
    :cond_3
    invoke-static {p0, v1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->access$setSize$p(Landroidx/compose/runtime/collection/IdentityArrayMap;I)V

    .line 146
    :cond_4
    return-void
.end method

.method public final removeValueIf(Lkotlin/jvm/functions/Function1;)V
    .locals 11
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TValue;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 149
    .local v0, "$i$f$removeValueIf":I
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    const/4 v2, 0x0

    .line 299
    .local v2, "$i$f$removeIf":I
    const/4 v3, 0x0

    .line 300
    .local v3, "current$iv":I
    const/4 v4, 0x0

    .local v4, "index$iv":I
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getSize()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_2

    .line 302
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getKeys()[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v4

    const-string/jumbo v7, "null cannot be cast to non-null type Key of androidx.compose.runtime.collection.IdentityArrayMap"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    .local v6, "key$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getValues()[Ljava/lang/Object;

    move-result-object v7

    aget-object v7, v7, v4

    .line 305
    .local v7, "value$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "value":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 149
    .local v9, "$i$a$-removeIf-IdentityArrayMap$removeValueIf$1":I
    invoke-interface {p1, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 305
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "$i$a$-removeIf-IdentityArrayMap$removeValueIf$1":I
    if-nez v8, :cond_1

    .line 306
    if-eq v3, v4, :cond_0

    .line 307
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getKeys()[Ljava/lang/Object;

    move-result-object v8

    aput-object v6, v8, v3

    .line 308
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getValues()[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getValues()[Ljava/lang/Object;

    move-result-object v9

    aget-object v9, v9, v4

    aput-object v9, v8, v3

    .line 310
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 300
    .end local v6    # "key$iv":Ljava/lang/Object;
    .end local v7    # "value$iv":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 313
    .end local v4    # "index$iv":I
    :cond_2
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getSize()I

    move-result v4

    if-le v4, v3, :cond_4

    .line 314
    move v4, v3

    .restart local v4    # "index$iv":I
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getSize()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_3

    .line 315
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getKeys()[Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v7, v6, v4

    .line 316
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getValues()[Ljava/lang/Object;

    move-result-object v6

    aput-object v7, v6, v4

    .line 314
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 318
    .end local v4    # "index$iv":I
    :cond_3
    invoke-static {v1, v3}, Landroidx/compose/runtime/collection/IdentityArrayMap;->access$setSize$p(Landroidx/compose/runtime/collection/IdentityArrayMap;I)V

    .line 320
    :cond_4
    nop

    .line 150
    .end local v1    # "this_$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .end local v2    # "$i$f$removeIf":I
    .end local v3    # "current$iv":I
    return-void
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 17
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;TValue;)V"
        }
    .end annotation

    .line 41
    move-object/from16 v0, p0

    iget-object v8, v0, Landroidx/compose/runtime/collection/IdentityArrayMap;->keys:[Ljava/lang/Object;

    .line 42
    .local v8, "keys":[Ljava/lang/Object;
    iget-object v9, v0, Landroidx/compose/runtime/collection/IdentityArrayMap;->values:[Ljava/lang/Object;

    .line 43
    .local v9, "values":[Ljava/lang/Object;
    iget v10, v0, Landroidx/compose/runtime/collection/IdentityArrayMap;->size:I

    .line 45
    .local v10, "size":I
    invoke-direct/range {p0 .. p1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->find(Ljava/lang/Object;)I

    move-result v11

    .line 46
    .local v11, "index":I
    if-ltz v11, :cond_0

    .line 47
    aput-object p2, v9, v11

    goto/16 :goto_4

    .line 49
    :cond_0
    add-int/lit8 v1, v11, 0x1

    neg-int v12, v1

    .line 50
    .local v12, "insertIndex":I
    array-length v1, v8

    if-ne v10, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v14, v1

    .line 51
    .local v14, "resize":Z
    if-eqz v14, :cond_2

    .line 52
    mul-int/lit8 v1, v10, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    goto :goto_1

    .line 53
    :cond_2
    move-object v1, v8

    .line 51
    :goto_1
    move-object v15, v1

    .line 54
    .local v15, "destKeys":[Ljava/lang/Object;
    nop

    .line 55
    nop

    .line 56
    add-int/lit8 v1, v12, 0x1

    .line 57
    nop

    .line 58
    nop

    .line 54
    invoke-static {v8, v15, v1, v12, v10}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 60
    if-eqz v14, :cond_3

    .line 61
    nop

    .line 62
    nop

    .line 61
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 63
    nop

    .line 61
    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, v15

    move v5, v12

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 66
    :cond_3
    aput-object p1, v15, v12

    .line 67
    iput-object v15, v0, Landroidx/compose/runtime/collection/IdentityArrayMap;->keys:[Ljava/lang/Object;

    .line 68
    if-eqz v14, :cond_4

    .line 69
    mul-int/lit8 v1, v10, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    goto :goto_2

    .line 70
    :cond_4
    move-object v1, v9

    .line 68
    :goto_2
    move-object v7, v1

    .line 71
    .local v7, "destValues":[Ljava/lang/Object;
    nop

    .line 72
    nop

    .line 73
    add-int/lit8 v1, v12, 0x1

    .line 74
    nop

    .line 75
    nop

    .line 71
    invoke-static {v9, v7, v1, v12, v10}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 77
    if-eqz v14, :cond_5

    .line 78
    nop

    .line 79
    nop

    .line 78
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 80
    nop

    .line 78
    const/4 v6, 0x6

    const/16 v16, 0x0

    move-object v1, v9

    move-object v2, v7

    move v5, v12

    move-object v13, v7

    .end local v7    # "destValues":[Ljava/lang/Object;
    .local v13, "destValues":[Ljava/lang/Object;
    move-object/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    goto :goto_3

    .line 77
    .end local v13    # "destValues":[Ljava/lang/Object;
    .restart local v7    # "destValues":[Ljava/lang/Object;
    :cond_5
    move-object v13, v7

    .line 83
    .end local v7    # "destValues":[Ljava/lang/Object;
    .restart local v13    # "destValues":[Ljava/lang/Object;
    :goto_3
    aput-object p2, v13, v12

    .line 84
    iput-object v13, v0, Landroidx/compose/runtime/collection/IdentityArrayMap;->values:[Ljava/lang/Object;

    .line 85
    iget v1, v0, Landroidx/compose/runtime/collection/IdentityArrayMap;->size:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/runtime/collection/IdentityArrayMap;->size:I

    .line 87
    .end local v12    # "insertIndex":I
    .end local v13    # "destValues":[Ljava/lang/Object;
    .end local v14    # "resize":Z
    .end local v15    # "destKeys":[Ljava/lang/Object;
    :goto_4
    return-void
.end method
