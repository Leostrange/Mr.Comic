.class public final Landroidx/compose/runtime/collection/ScopeMap;
.super Ljava/lang/Object;
.source "ScopeMap.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScopeMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopeMap.kt\nandroidx/compose/runtime/collection/ScopeMap\n+ 2 ScatterMap.kt\nandroidx/collection/MutableScatterMap\n+ 3 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 5 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 6 ScatterSet.kt\nandroidx/collection/MutableScatterSet\n*L\n1#1,148:1\n124#1:246\n125#1,5:262\n130#1,5:296\n138#1:311\n874#2,18:149\n1047#2:194\n1049#2:208\n1050#2,3:236\n1053#2:245\n1047#2:247\n1049#2:261\n1050#2,3:301\n1053#2:310\n267#3,4:167\n237#3,7:171\n248#3,3:179\n251#3,2:183\n272#3,2:185\n254#3,6:187\n274#3:193\n237#3,7:211\n248#3,3:219\n251#3,2:223\n254#3,6:229\n237#3,16:269\n254#3,6:289\n1810#4:178\n1672#4:182\n1810#4:201\n1672#4:205\n1810#4:218\n1672#4:222\n1810#4:254\n1672#4:258\n363#5,6:195\n373#5,3:202\n376#5,2:206\n379#5,6:239\n363#5,6:248\n373#5,3:255\n376#5,2:259\n379#5,6:304\n842#6,2:209\n845#6,4:225\n849#6:235\n842#6,2:267\n845#6,4:285\n849#6:295\n*S KotlinDebug\n*F\n+ 1 ScopeMap.kt\nandroidx/compose/runtime/collection/ScopeMap\n*L\n145#1:246\n145#1:262,5\n145#1:296,5\n145#1:311\n37#1:149,18\n124#1:194\n124#1:208\n124#1:236,3\n124#1:245\n145#1:247\n145#1:261\n145#1:301,3\n145#1:310\n74#1:167,4\n74#1:171,7\n74#1:179,3\n74#1:183,2\n74#1:185,2\n74#1:187,6\n74#1:193\n129#1:211,7\n129#1:219,3\n129#1:223,2\n129#1:229,6\n145#1:269,16\n145#1:289,6\n74#1:178\n74#1:182\n124#1:201\n124#1:205\n129#1:218\n129#1:222\n145#1:254\n145#1:258\n124#1:195,6\n124#1:202,3\n124#1:206,2\n124#1:239,6\n145#1:248,6\n145#1:255,3\n145#1:259,2\n145#1:304,6\n129#1:209,2\n129#1:225,4\n129#1:235\n145#1:267,2\n145#1:285,4\n145#1:295\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u001b\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0010J\u0006\u0010\u0011\u001a\u00020\rJ\u0011\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0002H\u0086\u0002J4\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022!\u0010\u0016\u001a\u001d\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\r0\u0017H\u0086\u0008J\u001b\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u001dJ.\u0010\u001e\u001a\u00020\r2#\u0008\u0004\u0010\u001f\u001a\u001d\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u00130\u0017H\u0086\u0008R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006 "
    }
    d2 = {
        "Landroidx/compose/runtime/collection/ScopeMap;",
        "T",
        "",
        "()V",
        "map",
        "Landroidx/collection/MutableScatterMap;",
        "getMap",
        "()Landroidx/collection/MutableScatterMap;",
        "size",
        "",
        "getSize",
        "()I",
        "add",
        "",
        "key",
        "scope",
        "(Ljava/lang/Object;Ljava/lang/Object;)V",
        "clear",
        "contains",
        "",
        "element",
        "forEachScopeOf",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "remove",
        "(Ljava/lang/Object;Ljava/lang/Object;)Z",
        "removeScope",
        "(Ljava/lang/Object;)V",
        "removeScopeIf",
        "predicate",
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
.field private final map:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/collection/ScopeMap;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Landroidx/collection/ScatterMapKt;->mutableScatterMapOf()Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    .line 25
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "scope"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    .local v0, "this_$iv":Landroidx/collection/MutableScatterMap;
    const/4 v1, 0x0

    .line 149
    .local v1, "$i$f$compute":I
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->findInsertIndex(Ljava/lang/Object;)I

    move-result v2

    .line 150
    .local v2, "index$iv":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    .line 153
    .local v5, "inserting$iv":Z
    :goto_0
    nop

    .line 154
    nop

    .line 155
    const/4 v6, 0x0

    if-eqz v5, :cond_1

    move-object v7, v6

    goto :goto_1

    :cond_1
    iget-object v7, v0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aget-object v7, v7, v2

    .line 153
    :goto_1
    nop

    .local v7, "value":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 38
    .local v8, "$i$a$-compute-ScopeMap$add$1":I
    nop

    .line 39
    if-nez v7, :cond_2

    move-object v3, p2

    goto :goto_3

    .line 40
    :cond_2
    instance-of v9, v7, Landroidx/collection/MutableScatterSet;

    if-eqz v9, :cond_3

    .line 42
    const-string/jumbo v3, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<T of androidx.compose.runtime.collection.ScopeMap.add$lambda$0>"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v7

    check-cast v3, Landroidx/collection/MutableScatterSet;

    invoke-virtual {v3, p2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_2

    .line 47
    :cond_3
    if-eq v7, p2, :cond_4

    .line 48
    new-instance v9, Landroidx/collection/MutableScatterSet;

    invoke-direct {v9, v4, v3, v6}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v9

    .line 50
    .local v3, "set":Landroidx/collection/MutableScatterSet;
    const-string/jumbo v4, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.ScopeMap.add$lambda$0"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {v3, p2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 52
    nop

    .end local v3    # "set":Landroidx/collection/MutableScatterSet;
    goto :goto_3

    .line 54
    :cond_4
    nop

    .line 38
    :goto_2
    move-object v3, v7

    :goto_3
    nop

    .line 153
    .end local v7    # "value":Ljava/lang/Object;
    .end local v8    # "$i$a$-compute-ScopeMap$add$1":I
    nop

    .line 159
    .local v3, "computedValue$iv":Ljava/lang/Object;
    if-eqz v5, :cond_5

    .line 160
    not-int v4, v2

    .line 161
    .local v4, "insertionIndex$iv":I
    iget-object v6, v0, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    aput-object p1, v6, v4

    .line 162
    iget-object v6, v0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aput-object v3, v6, v4

    .end local v4    # "insertionIndex$iv":I
    goto :goto_4

    .line 164
    :cond_5
    iget-object v4, v0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aput-object v3, v4, v2

    .line 166
    :goto_4
    nop

    .line 59
    .end local v0    # "this_$iv":Landroidx/collection/MutableScatterMap;
    .end local v1    # "$i$f$compute":I
    .end local v2    # "index$iv":I
    .end local v3    # "computedValue$iv":Ljava/lang/Object;
    .end local v5    # "inserting$iv":Z
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 87
    iget-object v0, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 88
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final forEachScopeOf(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 21
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    const/4 v1, 0x0

    .line 70
    .local v1, "$i$f$forEachScopeOf":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 71
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_8

    .line 72
    instance-of v4, v2, Landroidx/collection/MutableScatterSet;

    if-eqz v4, :cond_7

    .line 74
    move-object v4, v2

    check-cast v4, Landroidx/collection/MutableScatterSet;

    check-cast v4, Landroidx/collection/ScatterSet;

    .local v4, "this_$iv":Landroidx/collection/ScatterSet;
    const/4 v5, 0x0

    .line 167
    .local v5, "$i$f$forEach":I
    nop

    .line 168
    iget-object v6, v4, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 170
    .local v6, "k$iv":[Ljava/lang/Object;
    move-object v7, v4

    .local v7, "this_$iv$iv":Landroidx/collection/ScatterSet;
    const/4 v8, 0x0

    .line 171
    .local v8, "$i$f$forEachIndex":I
    nop

    .line 172
    iget-object v9, v7, Landroidx/collection/ScatterSet;->metadata:[J

    .line 173
    .local v9, "m$iv$iv":[J
    array-length v10, v9

    add-int/lit8 v10, v10, -0x2

    .line 175
    .local v10, "lastIndex$iv$iv":I
    const/4 v11, 0x0

    .local v11, "i$iv$iv":I
    if-gt v11, v10, :cond_4

    .line 176
    :goto_0
    aget-wide v12, v9, v11

    .line 177
    .local v12, "slot$iv$iv":J
    move-wide v14, v12

    .local v14, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v16, 0x0

    .line 178
    .local v16, "$i$f$maskEmptyOrDeleted":I
    move-object/from16 v17, v4

    .end local v4    # "this_$iv":Landroidx/collection/ScatterSet;
    .local v17, "this_$iv":Landroidx/collection/ScatterSet;
    not-long v3, v14

    const/16 v18, 0x7

    shl-long v3, v3, v18

    and-long/2addr v3, v14

    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v3, v3, v18

    .line 177
    .end local v14    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v16    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v3, v3, v18

    if-eqz v3, :cond_3

    .line 179
    sub-int v3, v11, v10

    not-int v3, v3

    ushr-int/lit8 v3, v3, 0x1f

    const/16 v4, 0x8

    rsub-int/lit8 v3, v3, 0x8

    .line 180
    .local v3, "bitCount$iv$iv":I
    const/4 v14, 0x0

    .local v14, "j$iv$iv":I
    :goto_1
    if-ge v14, v3, :cond_2

    .line 181
    const-wide/16 v15, 0xff

    and-long/2addr v15, v12

    .local v15, "value$iv$iv$iv":J
    const/16 v18, 0x0

    .line 182
    .local v18, "$i$f$isFull":I
    const-wide/16 v19, 0x80

    cmp-long v19, v15, v19

    if-gez v19, :cond_0

    const/16 v19, 0x1

    goto :goto_2

    :cond_0
    const/16 v19, 0x0

    .line 181
    .end local v15    # "value$iv$iv$iv":J
    .end local v18    # "$i$f$isFull":I
    :goto_2
    if-eqz v19, :cond_1

    .line 183
    shl-int/lit8 v15, v11, 0x3

    add-int/2addr v15, v14

    .line 184
    .local v15, "index$iv$iv":I
    move/from16 v16, v15

    .local v16, "index$iv":I
    const/16 v18, 0x0

    .line 185
    .local v18, "$i$a$-forEachIndex-ScatterSet$forEach$2$iv":I
    aget-object v4, v6, v16

    invoke-interface {v0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    nop

    .line 184
    .end local v16    # "index$iv":I
    .end local v18    # "$i$a$-forEachIndex-ScatterSet$forEach$2$iv":I
    nop

    .line 187
    .end local v15    # "index$iv$iv":I
    :cond_1
    const/16 v4, 0x8

    shr-long/2addr v12, v4

    .line 180
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 189
    .end local v14    # "j$iv$iv":I
    :cond_2
    if-ne v3, v4, :cond_6

    .line 175
    .end local v3    # "bitCount$iv$iv":I
    .end local v12    # "slot$iv$iv":J
    :cond_3
    if-eq v11, v10, :cond_5

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, v17

    goto :goto_0

    .end local v17    # "this_$iv":Landroidx/collection/ScatterSet;
    .restart local v4    # "this_$iv":Landroidx/collection/ScatterSet;
    :cond_4
    move-object/from16 v17, v4

    .line 192
    .end local v4    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v11    # "i$iv$iv":I
    .restart local v17    # "this_$iv":Landroidx/collection/ScatterSet;
    :cond_5
    nop

    .line 193
    .end local v7    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v8    # "$i$f$forEachIndex":I
    .end local v9    # "m$iv$iv":[J
    .end local v10    # "lastIndex$iv$iv":I
    :cond_6
    nop

    .end local v5    # "$i$f$forEach":I
    .end local v6    # "k$iv":[Ljava/lang/Object;
    .end local v17    # "this_$iv":Landroidx/collection/ScatterSet;
    goto :goto_3

    .line 78
    :cond_7
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .end local v2    # "value":Ljava/lang/Object;
    :cond_8
    :goto_3
    return-void
.end method

.method public final getMap()Landroidx/collection/MutableScatterMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 31
    iget-object v0, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterMap;->getSize()I

    move-result v0

    return v0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "scope"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)Z"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 100
    .local v0, "value":Ljava/lang/Object;
    :cond_0
    nop

    .line 101
    instance-of v2, v0, Landroidx/collection/MutableScatterSet;

    if-eqz v2, :cond_2

    .line 103
    move-object v1, v0

    check-cast v1, Landroidx/collection/MutableScatterSet;

    .line 105
    .local v1, "set":Landroidx/collection/MutableScatterSet;
    invoke-virtual {v1, p2}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 106
    .local v2, "removed":Z
    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    iget-object v3, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v3, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_1
    return v2

    .line 111
    .end local v1    # "set":Landroidx/collection/MutableScatterSet;
    .end local v2    # "removed":Z
    :cond_2
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    iget-object v1, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const/4 v1, 0x1

    goto :goto_0

    .line 115
    :cond_3
    nop

    .line 100
    :goto_0
    return v1
.end method

.method public final removeScope(Ljava/lang/Object;)V
    .locals 47
    .param p1, "scope"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 145
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    const/4 v2, 0x0

    .line 246
    .local v2, "$i$f$removeScopeIf":I
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object v3

    .local v3, "this_$iv$iv":Landroidx/collection/MutableScatterMap;
    const/4 v4, 0x0

    .line 247
    .local v4, "$i$f$removeIf":I
    move-object v5, v3

    check-cast v5, Landroidx/collection/ScatterMap;

    .local v5, "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    const/4 v6, 0x0

    .line 248
    .local v6, "$i$f$forEachIndexed":I
    iget-object v7, v5, Landroidx/collection/ScatterMap;->metadata:[J

    .line 249
    .local v7, "m$iv$iv$iv":[J
    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    .line 251
    .local v8, "lastIndex$iv$iv$iv":I
    const/4 v9, 0x0

    .local v9, "i$iv$iv$iv":I
    if-gt v9, v8, :cond_10

    .line 252
    :goto_0
    aget-wide v10, v7, v9

    .line 253
    .local v10, "slot$iv$iv$iv":J
    move-wide v12, v10

    .local v12, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    const/4 v14, 0x0

    .line 254
    .local v14, "$i$f$maskEmptyOrDeleted":I
    move-object v15, v1

    move/from16 v16, v2

    .end local v1    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v2    # "$i$f$removeScopeIf":I
    .local v15, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .local v16, "$i$f$removeScopeIf":I
    not-long v1, v12

    const/16 v17, 0x7

    shl-long v1, v1, v17

    and-long/2addr v1, v12

    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v1, v1, v18

    .line 253
    .end local v12    # "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .end local v14    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v1, v1, v18

    if-eqz v1, :cond_f

    .line 255
    sub-int v1, v9, v8

    not-int v1, v1

    ushr-int/lit8 v1, v1, 0x1f

    const/16 v2, 0x8

    rsub-int/lit8 v1, v1, 0x8

    .line 256
    .local v1, "bitCount$iv$iv$iv":I
    const/4 v12, 0x0

    .local v12, "j$iv$iv$iv":I
    :goto_1
    if-ge v12, v1, :cond_e

    .line 257
    const-wide/16 v13, 0xff

    and-long v20, v10, v13

    .local v20, "value$iv$iv$iv$iv":J
    const/16 v22, 0x0

    .line 258
    .local v22, "$i$f$isFull":I
    const-wide/16 v23, 0x80

    cmp-long v25, v20, v23

    const/16 v26, 0x0

    const/16 v27, 0x1

    if-gez v25, :cond_0

    move/from16 v20, v27

    goto :goto_2

    :cond_0
    move/from16 v20, v26

    .line 257
    .end local v20    # "value$iv$iv$iv$iv":J
    .end local v22    # "$i$f$isFull":I
    :goto_2
    if-eqz v20, :cond_d

    .line 259
    shl-int/lit8 v20, v9, 0x3

    add-int v20, v20, v12

    .line 260
    .local v20, "index$iv$iv$iv":I
    move/from16 v21, v20

    .local v21, "index$iv$iv":I
    const/16 v22, 0x0

    .line 261
    .local v22, "$i$a$-forEachIndexed-MutableScatterMap$removeIf$1$iv$iv":I
    iget-object v13, v3, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    move/from16 v14, v21

    .end local v21    # "index$iv$iv":I
    .local v14, "index$iv$iv":I
    aget-object v13, v13, v14

    iget-object v13, v3, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aget-object v13, v13, v14

    .local v13, "value$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 262
    .local v21, "$i$a$-removeIf-ScopeMap$removeScopeIf$1$iv":I
    nop

    .line 263
    instance-of v2, v13, Landroidx/collection/MutableScatterSet;

    if-eqz v2, :cond_a

    .line 265
    const-string/jumbo v2, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<T of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$1>"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v13

    check-cast v2, Landroidx/collection/MutableScatterSet;

    .line 266
    .local v2, "set$iv":Landroidx/collection/MutableScatterSet;
    move-object/from16 v30, v2

    .local v30, "this_$iv$iv":Landroidx/collection/MutableScatterSet;
    const/16 v31, 0x0

    .line 267
    .local v31, "$i$f$removeIf":I
    move/from16 v32, v4

    move-object/from16 v4, v30

    move-object/from16 v30, v5

    .end local v5    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .local v4, "this_$iv$iv":Landroidx/collection/MutableScatterSet;
    .local v30, "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .local v32, "$i$f$removeIf":I
    iget-object v5, v4, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 268
    .local v5, "elements$iv$iv":[Ljava/lang/Object;
    move/from16 v33, v6

    .end local v6    # "$i$f$forEachIndexed":I
    .local v33, "$i$f$forEachIndexed":I
    move-object v6, v4

    check-cast v6, Landroidx/collection/ScatterSet;

    .local v6, "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    const/16 v34, 0x0

    .line 269
    .local v34, "$i$f$forEachIndex":I
    nop

    .line 270
    move-object/from16 v35, v7

    .end local v7    # "m$iv$iv$iv":[J
    .local v35, "m$iv$iv$iv":[J
    iget-object v7, v6, Landroidx/collection/ScatterSet;->metadata:[J

    .line 271
    .restart local v7    # "m$iv$iv$iv":[J
    move-object/from16 v36, v6

    .end local v6    # "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    .local v36, "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    array-length v6, v7

    add-int/lit8 v6, v6, -0x2

    .line 273
    .local v6, "lastIndex$iv$iv$iv":I
    move-object/from16 v37, v15

    .end local v15    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .local v37, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    const/4 v15, 0x0

    .local v15, "i$iv$iv$iv":I
    if-gt v15, v6, :cond_7

    .line 274
    :goto_3
    aget-wide v38, v7, v15

    .line 275
    .local v38, "slot$iv$iv$iv":J
    move-wide/from16 v40, v38

    .local v40, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    const/16 v42, 0x0

    .line 254
    .local v42, "$i$f$maskEmptyOrDeleted":I
    move-object/from16 v44, v7

    move/from16 v43, v8

    move-wide/from16 v45, v10

    move-wide/from16 v7, v40

    move/from16 v40, v9

    .end local v8    # "lastIndex$iv$iv$iv":I
    .end local v9    # "i$iv$iv$iv":I
    .end local v10    # "slot$iv$iv$iv":J
    .local v7, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .local v40, "i$iv$iv$iv":I
    .local v43, "lastIndex$iv$iv$iv":I
    .local v44, "m$iv$iv$iv":[J
    .local v45, "slot$iv$iv$iv":J
    not-long v9, v7

    shl-long v9, v9, v17

    and-long/2addr v9, v7

    and-long v7, v9, v18

    .line 275
    .end local v7    # "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .end local v42    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v7, v7, v18

    if-eqz v7, :cond_6

    .line 280
    sub-int v7, v15, v6

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    .line 281
    .local v7, "bitCount$iv$iv$iv":I
    const/4 v8, 0x0

    .local v8, "j$iv$iv$iv":I
    :goto_4
    if-ge v8, v7, :cond_5

    .line 282
    const-wide/16 v9, 0xff

    and-long v28, v38, v9

    .local v28, "value$iv$iv$iv$iv":J
    const/4 v11, 0x0

    .line 258
    .local v11, "$i$f$isFull":I
    cmp-long v41, v28, v23

    if-gez v41, :cond_1

    move/from16 v11, v27

    goto :goto_5

    :cond_1
    move/from16 v11, v26

    .line 282
    .end local v11    # "$i$f$isFull":I
    .end local v28    # "value$iv$iv$iv$iv":J
    :goto_5
    if-eqz v11, :cond_4

    .line 283
    shl-int/lit8 v11, v15, 0x3

    add-int/2addr v11, v8

    .line 284
    .local v11, "index$iv$iv$iv":I
    move/from16 v28, v11

    .local v28, "index$iv$iv":I
    const/16 v29, 0x0

    .line 285
    .local v29, "$i$a$-forEachIndex-MutableScatterSet$removeIf$1$iv$iv":I
    move/from16 v9, v28

    .end local v28    # "index$iv$iv":I
    .local v9, "index$iv$iv":I
    aget-object v10, v5, v9

    .local v10, "it":Ljava/lang/Object;
    const/16 v28, 0x0

    .line 145
    .local v28, "$i$a$-removeScopeIf-ScopeMap$removeScope$1":I
    if-ne v10, v0, :cond_2

    move/from16 v10, v27

    goto :goto_6

    :cond_2
    move/from16 v10, v26

    .line 285
    .end local v10    # "it":Ljava/lang/Object;
    .end local v28    # "$i$a$-removeScopeIf-ScopeMap$removeScope$1":I
    :goto_6
    if-eqz v10, :cond_3

    .line 286
    invoke-virtual {v4, v9}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    .line 288
    :cond_3
    nop

    .line 284
    .end local v9    # "index$iv$iv":I
    .end local v29    # "$i$a$-forEachIndex-MutableScatterSet$removeIf$1$iv$iv":I
    nop

    .line 289
    .end local v11    # "index$iv$iv$iv":I
    :cond_4
    const/16 v9, 0x8

    shr-long v38, v38, v9

    .line 281
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    const/16 v9, 0x8

    .line 291
    .end local v8    # "j$iv$iv$iv":I
    if-ne v7, v9, :cond_9

    .line 273
    .end local v7    # "bitCount$iv$iv$iv":I
    .end local v38    # "slot$iv$iv$iv":J
    :cond_6
    if-eq v15, v6, :cond_8

    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v40

    move/from16 v8, v43

    move-object/from16 v7, v44

    move-wide/from16 v10, v45

    goto :goto_3

    .end local v40    # "i$iv$iv$iv":I
    .end local v43    # "lastIndex$iv$iv$iv":I
    .end local v44    # "m$iv$iv$iv":[J
    .end local v45    # "slot$iv$iv$iv":J
    .local v7, "m$iv$iv$iv":[J
    .local v8, "lastIndex$iv$iv$iv":I
    .local v9, "i$iv$iv$iv":I
    .local v10, "slot$iv$iv$iv":J
    :cond_7
    move-object/from16 v44, v7

    move/from16 v43, v8

    move/from16 v40, v9

    move-wide/from16 v45, v10

    .line 294
    .end local v7    # "m$iv$iv$iv":[J
    .end local v8    # "lastIndex$iv$iv$iv":I
    .end local v9    # "i$iv$iv$iv":I
    .end local v10    # "slot$iv$iv$iv":J
    .end local v15    # "i$iv$iv$iv":I
    .restart local v40    # "i$iv$iv$iv":I
    .restart local v43    # "lastIndex$iv$iv$iv":I
    .restart local v44    # "m$iv$iv$iv":[J
    .restart local v45    # "slot$iv$iv$iv":J
    :cond_8
    nop

    .line 295
    .end local v6    # "lastIndex$iv$iv$iv":I
    .end local v34    # "$i$f$forEachIndex":I
    .end local v36    # "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    .end local v44    # "m$iv$iv$iv":[J
    :cond_9
    nop

    .line 296
    .end local v4    # "this_$iv$iv":Landroidx/collection/MutableScatterSet;
    .end local v5    # "elements$iv$iv":[Ljava/lang/Object;
    .end local v31    # "$i$f$removeIf":I
    invoke-virtual {v2}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v26

    .end local v2    # "set$iv":Landroidx/collection/MutableScatterSet;
    goto :goto_7

    .line 300
    .end local v30    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v32    # "$i$f$removeIf":I
    .end local v33    # "$i$f$forEachIndexed":I
    .end local v35    # "m$iv$iv$iv":[J
    .end local v37    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v40    # "i$iv$iv$iv":I
    .end local v43    # "lastIndex$iv$iv$iv":I
    .end local v45    # "slot$iv$iv$iv":J
    .local v4, "$i$f$removeIf":I
    .local v5, "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .local v6, "$i$f$forEachIndexed":I
    .restart local v7    # "m$iv$iv$iv":[J
    .restart local v8    # "lastIndex$iv$iv$iv":I
    .restart local v9    # "i$iv$iv$iv":I
    .restart local v10    # "slot$iv$iv$iv":J
    .local v15, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    :cond_a
    move/from16 v32, v4

    move-object/from16 v30, v5

    move/from16 v33, v6

    move-object/from16 v35, v7

    move/from16 v43, v8

    move/from16 v40, v9

    move-wide/from16 v45, v10

    move-object/from16 v37, v15

    .end local v4    # "$i$f$removeIf":I
    .end local v5    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v6    # "$i$f$forEachIndexed":I
    .end local v7    # "m$iv$iv$iv":[J
    .end local v8    # "lastIndex$iv$iv$iv":I
    .end local v9    # "i$iv$iv$iv":I
    .end local v10    # "slot$iv$iv$iv":J
    .end local v15    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v30    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v32    # "$i$f$removeIf":I
    .restart local v33    # "$i$f$forEachIndexed":I
    .restart local v35    # "m$iv$iv$iv":[J
    .restart local v37    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v40    # "i$iv$iv$iv":I
    .restart local v43    # "lastIndex$iv$iv$iv":I
    .restart local v45    # "slot$iv$iv$iv":J
    const-string/jumbo v2, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$1"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v13

    .local v2, "it":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 145
    .local v4, "$i$a$-removeScopeIf-ScopeMap$removeScope$1":I
    if-ne v2, v0, :cond_b

    move/from16 v26, v27

    .line 300
    .end local v2    # "it":Ljava/lang/Object;
    .end local v4    # "$i$a$-removeScopeIf-ScopeMap$removeScope$1":I
    :cond_b
    :goto_7
    nop

    .line 262
    nop

    .line 261
    .end local v13    # "value$iv":Ljava/lang/Object;
    .end local v21    # "$i$a$-removeIf-ScopeMap$removeScopeIf$1$iv":I
    if-eqz v26, :cond_c

    .line 301
    invoke-virtual {v3, v14}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    .line 303
    :cond_c
    nop

    .line 260
    .end local v14    # "index$iv$iv":I
    .end local v22    # "$i$a$-forEachIndexed-MutableScatterMap$removeIf$1$iv$iv":I
    goto :goto_8

    .line 257
    .end local v20    # "index$iv$iv$iv":I
    .end local v30    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v32    # "$i$f$removeIf":I
    .end local v33    # "$i$f$forEachIndexed":I
    .end local v35    # "m$iv$iv$iv":[J
    .end local v37    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v40    # "i$iv$iv$iv":I
    .end local v43    # "lastIndex$iv$iv$iv":I
    .end local v45    # "slot$iv$iv$iv":J
    .local v4, "$i$f$removeIf":I
    .restart local v5    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v6    # "$i$f$forEachIndexed":I
    .restart local v7    # "m$iv$iv$iv":[J
    .restart local v8    # "lastIndex$iv$iv$iv":I
    .restart local v9    # "i$iv$iv$iv":I
    .restart local v10    # "slot$iv$iv$iv":J
    .restart local v15    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    :cond_d
    move/from16 v32, v4

    move-object/from16 v30, v5

    move/from16 v33, v6

    move-object/from16 v35, v7

    move/from16 v43, v8

    move/from16 v40, v9

    move-wide/from16 v45, v10

    move-object/from16 v37, v15

    .line 304
    .end local v4    # "$i$f$removeIf":I
    .end local v5    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v6    # "$i$f$forEachIndexed":I
    .end local v7    # "m$iv$iv$iv":[J
    .end local v8    # "lastIndex$iv$iv$iv":I
    .end local v9    # "i$iv$iv$iv":I
    .end local v10    # "slot$iv$iv$iv":J
    .end local v15    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v30    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v32    # "$i$f$removeIf":I
    .restart local v33    # "$i$f$forEachIndexed":I
    .restart local v35    # "m$iv$iv$iv":[J
    .restart local v37    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v40    # "i$iv$iv$iv":I
    .restart local v43    # "lastIndex$iv$iv$iv":I
    .restart local v45    # "slot$iv$iv$iv":J
    :goto_8
    const/16 v2, 0x8

    shr-long v10, v45, v2

    .line 256
    .end local v45    # "slot$iv$iv$iv":J
    .restart local v10    # "slot$iv$iv$iv":J
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v30

    move/from16 v4, v32

    move/from16 v6, v33

    move-object/from16 v7, v35

    move-object/from16 v15, v37

    move/from16 v9, v40

    move/from16 v8, v43

    goto/16 :goto_1

    .end local v30    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v32    # "$i$f$removeIf":I
    .end local v33    # "$i$f$forEachIndexed":I
    .end local v35    # "m$iv$iv$iv":[J
    .end local v37    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v40    # "i$iv$iv$iv":I
    .end local v43    # "lastIndex$iv$iv$iv":I
    .restart local v4    # "$i$f$removeIf":I
    .restart local v5    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v6    # "$i$f$forEachIndexed":I
    .restart local v7    # "m$iv$iv$iv":[J
    .restart local v8    # "lastIndex$iv$iv$iv":I
    .restart local v9    # "i$iv$iv$iv":I
    .restart local v15    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    :cond_e
    move/from16 v32, v4

    move-object/from16 v30, v5

    move/from16 v33, v6

    move-object/from16 v35, v7

    move/from16 v43, v8

    move/from16 v40, v9

    move-wide/from16 v45, v10

    move-object/from16 v37, v15

    .line 306
    .end local v4    # "$i$f$removeIf":I
    .end local v5    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v6    # "$i$f$forEachIndexed":I
    .end local v7    # "m$iv$iv$iv":[J
    .end local v8    # "lastIndex$iv$iv$iv":I
    .end local v9    # "i$iv$iv$iv":I
    .end local v10    # "slot$iv$iv$iv":J
    .end local v12    # "j$iv$iv$iv":I
    .end local v15    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v30    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v32    # "$i$f$removeIf":I
    .restart local v33    # "$i$f$forEachIndexed":I
    .restart local v35    # "m$iv$iv$iv":[J
    .restart local v37    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v40    # "i$iv$iv$iv":I
    .restart local v43    # "lastIndex$iv$iv$iv":I
    .restart local v45    # "slot$iv$iv$iv":J
    if-ne v1, v2, :cond_12

    goto :goto_9

    .line 253
    .end local v1    # "bitCount$iv$iv$iv":I
    .end local v30    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v32    # "$i$f$removeIf":I
    .end local v33    # "$i$f$forEachIndexed":I
    .end local v35    # "m$iv$iv$iv":[J
    .end local v37    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v40    # "i$iv$iv$iv":I
    .end local v43    # "lastIndex$iv$iv$iv":I
    .end local v45    # "slot$iv$iv$iv":J
    .restart local v4    # "$i$f$removeIf":I
    .restart local v5    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v6    # "$i$f$forEachIndexed":I
    .restart local v7    # "m$iv$iv$iv":[J
    .restart local v8    # "lastIndex$iv$iv$iv":I
    .restart local v9    # "i$iv$iv$iv":I
    .restart local v10    # "slot$iv$iv$iv":J
    .restart local v15    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    :cond_f
    move/from16 v32, v4

    move-object/from16 v30, v5

    move/from16 v33, v6

    move-object/from16 v35, v7

    move/from16 v43, v8

    move/from16 v40, v9

    move-object/from16 v37, v15

    .line 251
    .end local v4    # "$i$f$removeIf":I
    .end local v5    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v6    # "$i$f$forEachIndexed":I
    .end local v7    # "m$iv$iv$iv":[J
    .end local v8    # "lastIndex$iv$iv$iv":I
    .end local v9    # "i$iv$iv$iv":I
    .end local v10    # "slot$iv$iv$iv":J
    .end local v15    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v30    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v32    # "$i$f$removeIf":I
    .restart local v33    # "$i$f$forEachIndexed":I
    .restart local v35    # "m$iv$iv$iv":[J
    .restart local v37    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v40    # "i$iv$iv$iv":I
    .restart local v43    # "lastIndex$iv$iv$iv":I
    :goto_9
    move/from16 v9, v40

    move/from16 v8, v43

    .end local v40    # "i$iv$iv$iv":I
    .end local v43    # "lastIndex$iv$iv$iv":I
    .restart local v8    # "lastIndex$iv$iv$iv":I
    .restart local v9    # "i$iv$iv$iv":I
    if-eq v9, v8, :cond_11

    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v16

    move-object/from16 v5, v30

    move/from16 v4, v32

    move/from16 v6, v33

    move-object/from16 v7, v35

    move-object/from16 v1, v37

    goto/16 :goto_0

    .end local v16    # "$i$f$removeScopeIf":I
    .end local v30    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v32    # "$i$f$removeIf":I
    .end local v33    # "$i$f$forEachIndexed":I
    .end local v35    # "m$iv$iv$iv":[J
    .end local v37    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .local v1, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .local v2, "$i$f$removeScopeIf":I
    .restart local v4    # "$i$f$removeIf":I
    .restart local v5    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v6    # "$i$f$forEachIndexed":I
    .restart local v7    # "m$iv$iv$iv":[J
    :cond_10
    move-object/from16 v37, v1

    move/from16 v16, v2

    move/from16 v32, v4

    move-object/from16 v30, v5

    move/from16 v33, v6

    move-object/from16 v35, v7

    .line 309
    .end local v1    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v2    # "$i$f$removeScopeIf":I
    .end local v4    # "$i$f$removeIf":I
    .end local v5    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v6    # "$i$f$forEachIndexed":I
    .end local v7    # "m$iv$iv$iv":[J
    .end local v9    # "i$iv$iv$iv":I
    .restart local v16    # "$i$f$removeScopeIf":I
    .restart local v30    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v32    # "$i$f$removeIf":I
    .restart local v33    # "$i$f$forEachIndexed":I
    .restart local v35    # "m$iv$iv$iv":[J
    .restart local v37    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    :cond_11
    nop

    .line 310
    .end local v8    # "lastIndex$iv$iv$iv":I
    .end local v30    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v33    # "$i$f$forEachIndexed":I
    .end local v35    # "m$iv$iv$iv":[J
    :cond_12
    nop

    .line 311
    .end local v3    # "this_$iv$iv":Landroidx/collection/MutableScatterMap;
    .end local v32    # "$i$f$removeIf":I
    nop

    .line 146
    .end local v16    # "$i$f$removeScopeIf":I
    .end local v37    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    return-void
.end method

.method public final removeScopeIf(Lkotlin/jvm/functions/Function1;)V
    .locals 45
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 124
    .local v1, "$i$f$removeScopeIf":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object v2

    .local v2, "this_$iv":Landroidx/collection/MutableScatterMap;
    const/4 v3, 0x0

    .line 194
    .local v3, "$i$f$removeIf":I
    move-object v4, v2

    check-cast v4, Landroidx/collection/ScatterMap;

    .local v4, "this_$iv$iv":Landroidx/collection/ScatterMap;
    const/4 v5, 0x0

    .line 195
    .local v5, "$i$f$forEachIndexed":I
    iget-object v6, v4, Landroidx/collection/ScatterMap;->metadata:[J

    .line 196
    .local v6, "m$iv$iv":[J
    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    .line 198
    .local v7, "lastIndex$iv$iv":I
    const/4 v8, 0x0

    .local v8, "i$iv$iv":I
    if-gt v8, v7, :cond_e

    .line 199
    :goto_0
    aget-wide v9, v6, v8

    .line 200
    .local v9, "slot$iv$iv":J
    move-wide v11, v9

    .local v11, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/4 v13, 0x0

    .line 201
    .local v13, "$i$f$maskEmptyOrDeleted":I
    not-long v14, v11

    const/16 v16, 0x7

    shl-long v14, v14, v16

    and-long/2addr v14, v11

    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v11, v14, v17

    .line 200
    .end local v11    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v13    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v11, v11, v17

    if-eqz v11, :cond_d

    .line 202
    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    .line 203
    .local v11, "bitCount$iv$iv":I
    const/4 v13, 0x0

    .local v13, "j$iv$iv":I
    :goto_1
    if-ge v13, v11, :cond_c

    .line 204
    const-wide/16 v14, 0xff

    and-long v19, v9, v14

    .local v19, "value$iv$iv$iv":J
    const/16 v21, 0x0

    .line 205
    .local v21, "$i$f$isFull":I
    const-wide/16 v22, 0x80

    cmp-long v24, v19, v22

    const/16 v25, 0x0

    const/16 v26, 0x1

    if-gez v24, :cond_0

    move/from16 v19, v26

    goto :goto_2

    :cond_0
    move/from16 v19, v25

    .line 204
    .end local v19    # "value$iv$iv$iv":J
    .end local v21    # "$i$f$isFull":I
    :goto_2
    if-eqz v19, :cond_b

    .line 206
    shl-int/lit8 v19, v8, 0x3

    add-int v19, v19, v13

    .line 207
    .local v19, "index$iv$iv":I
    move/from16 v20, v19

    .local v20, "index$iv":I
    const/16 v21, 0x0

    .line 208
    .local v21, "$i$a$-forEachIndexed-MutableScatterMap$removeIf$1$iv":I
    iget-object v14, v2, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    move/from16 v15, v20

    .end local v20    # "index$iv":I
    .local v15, "index$iv":I
    aget-object v14, v14, v15

    iget-object v14, v2, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aget-object v14, v14, v15

    .local v14, "value":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 125
    .local v20, "$i$a$-removeIf-ScopeMap$removeScopeIf$1":I
    nop

    .line 126
    instance-of v12, v14, Landroidx/collection/MutableScatterSet;

    if-eqz v12, :cond_9

    .line 128
    const-string/jumbo v12, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<T of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$1>"

    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v14

    check-cast v12, Landroidx/collection/MutableScatterSet;

    .line 129
    .local v12, "set":Landroidx/collection/MutableScatterSet;
    move-object/from16 v29, v12

    .local v29, "this_$iv":Landroidx/collection/MutableScatterSet;
    const/16 v30, 0x0

    .line 209
    .local v30, "$i$f$removeIf":I
    move/from16 v31, v1

    move-object/from16 v1, v29

    move/from16 v29, v3

    .end local v3    # "$i$f$removeIf":I
    .local v1, "this_$iv":Landroidx/collection/MutableScatterSet;
    .local v29, "$i$f$removeIf":I
    .local v31, "$i$f$removeScopeIf":I
    iget-object v3, v1, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 210
    .local v3, "elements$iv":[Ljava/lang/Object;
    move-object/from16 v32, v4

    .end local v4    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .local v32, "this_$iv$iv":Landroidx/collection/ScatterMap;
    move-object v4, v1

    check-cast v4, Landroidx/collection/ScatterSet;

    .local v4, "this_$iv$iv":Landroidx/collection/ScatterSet;
    const/16 v33, 0x0

    .line 211
    .local v33, "$i$f$forEachIndex":I
    nop

    .line 212
    move/from16 v34, v5

    .end local v5    # "$i$f$forEachIndexed":I
    .local v34, "$i$f$forEachIndexed":I
    iget-object v5, v4, Landroidx/collection/ScatterSet;->metadata:[J

    .line 213
    .local v5, "m$iv$iv":[J
    move-object/from16 v35, v4

    .end local v4    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .local v35, "this_$iv$iv":Landroidx/collection/ScatterSet;
    array-length v4, v5

    add-int/lit8 v4, v4, -0x2

    .line 215
    .local v4, "lastIndex$iv$iv":I
    move-object/from16 v36, v6

    .end local v6    # "m$iv$iv":[J
    .local v36, "m$iv$iv":[J
    const/4 v6, 0x0

    .local v6, "i$iv$iv":I
    if-gt v6, v4, :cond_6

    .line 216
    :goto_3
    aget-wide v37, v5, v6

    .line 217
    .local v37, "slot$iv$iv":J
    move-wide/from16 v39, v37

    .local v39, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v41, 0x0

    .line 218
    .local v41, "$i$f$maskEmptyOrDeleted":I
    move/from16 v42, v7

    move/from16 v43, v8

    move-wide/from16 v7, v39

    move-wide/from16 v39, v9

    .end local v8    # "i$iv$iv":I
    .end local v9    # "slot$iv$iv":J
    .local v7, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v39, "slot$iv$iv":J
    .local v42, "lastIndex$iv$iv":I
    .local v43, "i$iv$iv":I
    not-long v9, v7

    shl-long v9, v9, v16

    and-long/2addr v9, v7

    and-long v7, v9, v17

    .line 217
    .end local v7    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v41    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v7, v7, v17

    if-eqz v7, :cond_5

    .line 219
    sub-int v7, v6, v4

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    .line 220
    .local v7, "bitCount$iv$iv":I
    const/4 v8, 0x0

    .local v8, "j$iv$iv":I
    :goto_4
    if-ge v8, v7, :cond_4

    .line 221
    const-wide/16 v9, 0xff

    and-long v27, v37, v9

    .local v27, "value$iv$iv$iv":J
    const/16 v41, 0x0

    .line 222
    .local v41, "$i$f$isFull":I
    cmp-long v44, v27, v22

    if-gez v44, :cond_1

    move/from16 v27, v26

    goto :goto_5

    :cond_1
    move/from16 v27, v25

    .line 221
    .end local v27    # "value$iv$iv$iv":J
    .end local v41    # "$i$f$isFull":I
    :goto_5
    if-eqz v27, :cond_3

    .line 223
    shl-int/lit8 v27, v6, 0x3

    add-int v27, v27, v8

    .line 224
    .local v27, "index$iv$iv":I
    move/from16 v28, v27

    .local v28, "index$iv":I
    const/16 v41, 0x0

    .line 225
    .local v41, "$i$a$-forEachIndex-MutableScatterSet$removeIf$1$iv":I
    move/from16 v9, v28

    .end local v28    # "index$iv":I
    .local v9, "index$iv":I
    aget-object v10, v3, v9

    invoke-interface {v0, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 226
    invoke-virtual {v1, v9}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    .line 228
    :cond_2
    nop

    .line 224
    .end local v9    # "index$iv":I
    .end local v41    # "$i$a$-forEachIndex-MutableScatterSet$removeIf$1$iv":I
    nop

    .line 229
    .end local v27    # "index$iv$iv":I
    :cond_3
    const/16 v9, 0x8

    shr-long v37, v37, v9

    .line 220
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_4
    const/16 v9, 0x8

    .line 231
    .end local v8    # "j$iv$iv":I
    if-ne v7, v9, :cond_8

    .line 215
    .end local v7    # "bitCount$iv$iv":I
    .end local v37    # "slot$iv$iv":J
    :cond_5
    if-eq v6, v4, :cond_7

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v9, v39

    move/from16 v7, v42

    move/from16 v8, v43

    goto :goto_3

    .end local v39    # "slot$iv$iv":J
    .end local v42    # "lastIndex$iv$iv":I
    .end local v43    # "i$iv$iv":I
    .local v7, "lastIndex$iv$iv":I
    .local v8, "i$iv$iv":I
    .local v9, "slot$iv$iv":J
    :cond_6
    move/from16 v42, v7

    move/from16 v43, v8

    move-wide/from16 v39, v9

    .line 234
    .end local v6    # "i$iv$iv":I
    .end local v7    # "lastIndex$iv$iv":I
    .end local v8    # "i$iv$iv":I
    .end local v9    # "slot$iv$iv":J
    .restart local v39    # "slot$iv$iv":J
    .restart local v42    # "lastIndex$iv$iv":I
    .restart local v43    # "i$iv$iv":I
    :cond_7
    nop

    .line 235
    .end local v4    # "lastIndex$iv$iv":I
    .end local v5    # "m$iv$iv":[J
    .end local v33    # "$i$f$forEachIndex":I
    .end local v35    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    :cond_8
    nop

    .line 130
    .end local v1    # "this_$iv":Landroidx/collection/MutableScatterSet;
    .end local v3    # "elements$iv":[Ljava/lang/Object;
    .end local v30    # "$i$f$removeIf":I
    invoke-virtual {v12}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v1

    .end local v12    # "set":Landroidx/collection/MutableScatterSet;
    goto :goto_6

    .line 134
    .end local v29    # "$i$f$removeIf":I
    .end local v31    # "$i$f$removeScopeIf":I
    .end local v32    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v34    # "$i$f$forEachIndexed":I
    .end local v36    # "m$iv$iv":[J
    .end local v39    # "slot$iv$iv":J
    .end local v42    # "lastIndex$iv$iv":I
    .end local v43    # "i$iv$iv":I
    .local v1, "$i$f$removeScopeIf":I
    .local v3, "$i$f$removeIf":I
    .local v4, "this_$iv$iv":Landroidx/collection/ScatterMap;
    .local v5, "$i$f$forEachIndexed":I
    .local v6, "m$iv$iv":[J
    .restart local v7    # "lastIndex$iv$iv":I
    .restart local v8    # "i$iv$iv":I
    .restart local v9    # "slot$iv$iv":J
    :cond_9
    move/from16 v31, v1

    move/from16 v29, v3

    move-object/from16 v32, v4

    move/from16 v34, v5

    move-object/from16 v36, v6

    move/from16 v42, v7

    move/from16 v43, v8

    move-wide/from16 v39, v9

    .end local v1    # "$i$f$removeScopeIf":I
    .end local v3    # "$i$f$removeIf":I
    .end local v4    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v5    # "$i$f$forEachIndexed":I
    .end local v6    # "m$iv$iv":[J
    .end local v7    # "lastIndex$iv$iv":I
    .end local v8    # "i$iv$iv":I
    .end local v9    # "slot$iv$iv":J
    .restart local v29    # "$i$f$removeIf":I
    .restart local v31    # "$i$f$removeScopeIf":I
    .restart local v32    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v34    # "$i$f$forEachIndexed":I
    .restart local v36    # "m$iv$iv":[J
    .restart local v39    # "slot$iv$iv":J
    .restart local v42    # "lastIndex$iv$iv":I
    .restart local v43    # "i$iv$iv":I
    const-string/jumbo v1, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$1"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 125
    :goto_6
    nop

    .line 208
    .end local v14    # "value":Ljava/lang/Object;
    .end local v20    # "$i$a$-removeIf-ScopeMap$removeScopeIf$1":I
    if-eqz v1, :cond_a

    .line 236
    invoke-virtual {v2, v15}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    .line 238
    :cond_a
    nop

    .line 207
    .end local v15    # "index$iv":I
    .end local v21    # "$i$a$-forEachIndexed-MutableScatterMap$removeIf$1$iv":I
    goto :goto_7

    .line 204
    .end local v19    # "index$iv$iv":I
    .end local v29    # "$i$f$removeIf":I
    .end local v31    # "$i$f$removeScopeIf":I
    .end local v32    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v34    # "$i$f$forEachIndexed":I
    .end local v36    # "m$iv$iv":[J
    .end local v39    # "slot$iv$iv":J
    .end local v42    # "lastIndex$iv$iv":I
    .end local v43    # "i$iv$iv":I
    .restart local v1    # "$i$f$removeScopeIf":I
    .restart local v3    # "$i$f$removeIf":I
    .restart local v4    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v5    # "$i$f$forEachIndexed":I
    .restart local v6    # "m$iv$iv":[J
    .restart local v7    # "lastIndex$iv$iv":I
    .restart local v8    # "i$iv$iv":I
    .restart local v9    # "slot$iv$iv":J
    :cond_b
    move/from16 v31, v1

    move/from16 v29, v3

    move-object/from16 v32, v4

    move/from16 v34, v5

    move-object/from16 v36, v6

    move/from16 v42, v7

    move/from16 v43, v8

    move-wide/from16 v39, v9

    .line 239
    .end local v1    # "$i$f$removeScopeIf":I
    .end local v3    # "$i$f$removeIf":I
    .end local v4    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v5    # "$i$f$forEachIndexed":I
    .end local v6    # "m$iv$iv":[J
    .end local v7    # "lastIndex$iv$iv":I
    .end local v8    # "i$iv$iv":I
    .end local v9    # "slot$iv$iv":J
    .restart local v29    # "$i$f$removeIf":I
    .restart local v31    # "$i$f$removeScopeIf":I
    .restart local v32    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v34    # "$i$f$forEachIndexed":I
    .restart local v36    # "m$iv$iv":[J
    .restart local v39    # "slot$iv$iv":J
    .restart local v42    # "lastIndex$iv$iv":I
    .restart local v43    # "i$iv$iv":I
    :goto_7
    const/16 v1, 0x8

    shr-long v9, v39, v1

    .line 203
    .end local v39    # "slot$iv$iv":J
    .restart local v9    # "slot$iv$iv":J
    add-int/lit8 v13, v13, 0x1

    move v12, v1

    move/from16 v3, v29

    move/from16 v1, v31

    move-object/from16 v4, v32

    move/from16 v5, v34

    move-object/from16 v6, v36

    move/from16 v7, v42

    move/from16 v8, v43

    goto/16 :goto_1

    .end local v29    # "$i$f$removeIf":I
    .end local v31    # "$i$f$removeScopeIf":I
    .end local v32    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v34    # "$i$f$forEachIndexed":I
    .end local v36    # "m$iv$iv":[J
    .end local v42    # "lastIndex$iv$iv":I
    .end local v43    # "i$iv$iv":I
    .restart local v1    # "$i$f$removeScopeIf":I
    .restart local v3    # "$i$f$removeIf":I
    .restart local v4    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v5    # "$i$f$forEachIndexed":I
    .restart local v6    # "m$iv$iv":[J
    .restart local v7    # "lastIndex$iv$iv":I
    .restart local v8    # "i$iv$iv":I
    :cond_c
    move/from16 v31, v1

    move/from16 v29, v3

    move-object/from16 v32, v4

    move/from16 v34, v5

    move-object/from16 v36, v6

    move/from16 v42, v7

    move/from16 v43, v8

    move-wide/from16 v39, v9

    move v1, v12

    .line 241
    .end local v1    # "$i$f$removeScopeIf":I
    .end local v3    # "$i$f$removeIf":I
    .end local v4    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v5    # "$i$f$forEachIndexed":I
    .end local v6    # "m$iv$iv":[J
    .end local v7    # "lastIndex$iv$iv":I
    .end local v8    # "i$iv$iv":I
    .end local v9    # "slot$iv$iv":J
    .end local v13    # "j$iv$iv":I
    .restart local v29    # "$i$f$removeIf":I
    .restart local v31    # "$i$f$removeScopeIf":I
    .restart local v32    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v34    # "$i$f$forEachIndexed":I
    .restart local v36    # "m$iv$iv":[J
    .restart local v39    # "slot$iv$iv":J
    .restart local v42    # "lastIndex$iv$iv":I
    .restart local v43    # "i$iv$iv":I
    if-ne v11, v1, :cond_10

    goto :goto_8

    .line 200
    .end local v11    # "bitCount$iv$iv":I
    .end local v29    # "$i$f$removeIf":I
    .end local v31    # "$i$f$removeScopeIf":I
    .end local v32    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v34    # "$i$f$forEachIndexed":I
    .end local v36    # "m$iv$iv":[J
    .end local v39    # "slot$iv$iv":J
    .end local v42    # "lastIndex$iv$iv":I
    .end local v43    # "i$iv$iv":I
    .restart local v1    # "$i$f$removeScopeIf":I
    .restart local v3    # "$i$f$removeIf":I
    .restart local v4    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v5    # "$i$f$forEachIndexed":I
    .restart local v6    # "m$iv$iv":[J
    .restart local v7    # "lastIndex$iv$iv":I
    .restart local v8    # "i$iv$iv":I
    .restart local v9    # "slot$iv$iv":J
    :cond_d
    move/from16 v31, v1

    move/from16 v29, v3

    move-object/from16 v32, v4

    move/from16 v34, v5

    move-object/from16 v36, v6

    move/from16 v42, v7

    move/from16 v43, v8

    .line 198
    .end local v1    # "$i$f$removeScopeIf":I
    .end local v3    # "$i$f$removeIf":I
    .end local v4    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v5    # "$i$f$forEachIndexed":I
    .end local v6    # "m$iv$iv":[J
    .end local v7    # "lastIndex$iv$iv":I
    .end local v8    # "i$iv$iv":I
    .end local v9    # "slot$iv$iv":J
    .restart local v29    # "$i$f$removeIf":I
    .restart local v31    # "$i$f$removeScopeIf":I
    .restart local v32    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v34    # "$i$f$forEachIndexed":I
    .restart local v36    # "m$iv$iv":[J
    .restart local v42    # "lastIndex$iv$iv":I
    .restart local v43    # "i$iv$iv":I
    :goto_8
    move/from16 v7, v42

    move/from16 v8, v43

    .end local v42    # "lastIndex$iv$iv":I
    .end local v43    # "i$iv$iv":I
    .restart local v7    # "lastIndex$iv$iv":I
    .restart local v8    # "i$iv$iv":I
    if-eq v8, v7, :cond_f

    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v29

    move/from16 v1, v31

    move-object/from16 v4, v32

    move/from16 v5, v34

    move-object/from16 v6, v36

    goto/16 :goto_0

    .end local v29    # "$i$f$removeIf":I
    .end local v31    # "$i$f$removeScopeIf":I
    .end local v32    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v34    # "$i$f$forEachIndexed":I
    .end local v36    # "m$iv$iv":[J
    .restart local v1    # "$i$f$removeScopeIf":I
    .restart local v3    # "$i$f$removeIf":I
    .restart local v4    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v5    # "$i$f$forEachIndexed":I
    .restart local v6    # "m$iv$iv":[J
    :cond_e
    move/from16 v31, v1

    move/from16 v29, v3

    move-object/from16 v32, v4

    move/from16 v34, v5

    move-object/from16 v36, v6

    .line 244
    .end local v1    # "$i$f$removeScopeIf":I
    .end local v3    # "$i$f$removeIf":I
    .end local v4    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v5    # "$i$f$forEachIndexed":I
    .end local v6    # "m$iv$iv":[J
    .end local v8    # "i$iv$iv":I
    .restart local v29    # "$i$f$removeIf":I
    .restart local v31    # "$i$f$removeScopeIf":I
    .restart local v32    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v34    # "$i$f$forEachIndexed":I
    .restart local v36    # "m$iv$iv":[J
    :cond_f
    nop

    .line 245
    .end local v7    # "lastIndex$iv$iv":I
    .end local v32    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v34    # "$i$f$forEachIndexed":I
    .end local v36    # "m$iv$iv":[J
    :cond_10
    nop

    .line 138
    .end local v2    # "this_$iv":Landroidx/collection/MutableScatterMap;
    .end local v29    # "$i$f$removeIf":I
    return-void
.end method
