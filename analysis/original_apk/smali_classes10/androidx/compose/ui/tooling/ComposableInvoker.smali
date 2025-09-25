.class public final Landroidx/compose/ui/tooling/ComposableInvoker;
.super Ljava/lang/Object;
.source "ComposableInvoker.jvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposableInvoker.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposableInvoker.jvm.kt\nandroidx/compose/ui/tooling/ComposableInvoker\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,234:1\n75#1:266\n11425#2:235\n11536#2,4:236\n1282#2,2:243\n11653#2,9:251\n13579#2:260\n13580#2:262\n11662#2:263\n1735#2,6:273\n1726#3,3:240\n1549#3:245\n1620#3,3:246\n1549#3:267\n1620#3,3:268\n37#4,2:249\n37#4,2:264\n37#4,2:271\n1#5:261\n*S KotlinDebug\n*F\n+ 1 ComposableInvoker.jvm.kt\nandroidx/compose/ui/tooling/ComposableInvoker\n*L\n93#1:266\n44#1:235\n44#1:236,4\n67#1:243,2\n89#1:251,9\n89#1:260\n89#1:262\n89#1:263\n140#1:273,6\n54#1:240,3\n75#1:245\n75#1:246,3\n93#1:267\n93#1:268,3\n75#1:249,2\n89#1:264,2\n93#1:271,2\n89#1:261\n*E\n"
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "Use androidx.compose.runtime.reflect.ComposableMethodInvoker instead"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J1\u0010\u0006\u001a\u00020\u00072\u0010\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\t2\u0010\u0010\u000b\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\tH\u0002\u00a2\u0006\u0002\u0010\u000cJ\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0002J=\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0016\u0010\u0018\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\t\"\u0004\u0018\u00010\u0001H\u0007\u00a2\u0006\u0002\u0010\u0019J(\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u0002H\u001b0\t\"\u0006\u0008\u0000\u0010\u001b\u0018\u0001*\u0002H\u001b2\u0006\u0010\u001c\u001a\u00020\u0004H\u0082\u0008\u00a2\u0006\u0002\u0010\u001dJ;\u0010\u001e\u001a\u00020\u001f*\u0008\u0012\u0004\u0012\u00020\u001f0\t2\u0006\u0010\u0015\u001a\u00020\u00142\u001a\u0010\u0018\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\n0\t\"\u0006\u0012\u0002\u0008\u00030\nH\u0002\u00a2\u0006\u0002\u0010 J7\u0010!\u001a\u0004\u0018\u00010\u001f*\u0006\u0012\u0002\u0008\u00030\n2\u0006\u0010\u0015\u001a\u00020\u00142\u0016\u0010\"\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\t\"\u0004\u0018\u00010\u0001H\u0002\u00a2\u0006\u0002\u0010#J\u0012\u0010$\u001a\u0004\u0018\u00010\u0001*\u0006\u0012\u0002\u0008\u00030\nH\u0002J=\u0010%\u001a\u0004\u0018\u00010\u0001*\u00020\u001f2\u0008\u0010&\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0016\u001a\u00020\u00172\u0016\u0010\u0018\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\t\"\u0004\u0018\u00010\u0001H\u0002\u00a2\u0006\u0002\u0010\'R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Landroidx/compose/ui/tooling/ComposableInvoker;",
        "",
        "()V",
        "BITS_PER_INT",
        "",
        "SLOTS_PER_INT",
        "areParameterTypesCompatible",
        "",
        "composableMethodTypes",
        "",
        "Ljava/lang/Class;",
        "previewParameterTypes",
        "([Ljava/lang/Class;[Ljava/lang/Class;)Z",
        "changedParamCount",
        "realValueParams",
        "thisParams",
        "defaultParamCount",
        "invokeComposable",
        "",
        "className",
        "",
        "methodName",
        "composer",
        "Landroidx/compose/runtime/Composer;",
        "args",
        "(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;[Ljava/lang/Object;)V",
        "dup",
        "T",
        "count",
        "(Ljava/lang/Object;I)[Ljava/lang/Object;",
        "findCompatibleComposeMethod",
        "Ljava/lang/reflect/Method;",
        "([Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;",
        "findComposableMethod",
        "previewParamArgs",
        "(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;",
        "getDefaultValue",
        "invokeComposableMethod",
        "instance",
        "(Ljava/lang/reflect/Method;Ljava/lang/Object;Landroidx/compose/runtime/Composer;[Ljava/lang/Object;)Ljava/lang/Object;",
        "ui-tooling_release"
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
.field public static final $stable:I = 0x0

.field private static final BITS_PER_INT:I = 0x1f

.field public static final INSTANCE:Landroidx/compose/ui/tooling/ComposableInvoker;

.field private static final SLOTS_PER_INT:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/tooling/ComposableInvoker;

    invoke-direct {v0}, Landroidx/compose/ui/tooling/ComposableInvoker;-><init>()V

    sput-object v0, Landroidx/compose/ui/tooling/ComposableInvoker;->INSTANCE:Landroidx/compose/ui/tooling/ComposableInvoker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final areParameterTypesCompatible([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 16
    .param p1, "composableMethodTypes"    # [Ljava/lang/Class;
    .param p2, "previewParameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 43
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    array-length v2, v1

    array-length v3, v0

    if-ne v2, v3, :cond_6

    .line 44
    move-object/from16 v2, p1

    .local v2, "$this$mapIndexed$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 235
    .local v3, "$i$f$mapIndexed":I
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v2

    .local v6, "$this$mapIndexedTo$iv$iv":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 236
    .local v7, "$i$f$mapIndexedTo":I
    const/4 v8, 0x0

    .line 237
    .local v8, "index$iv$iv":I
    array-length v9, v6

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_2

    aget-object v12, v6, v10

    .line 238
    .local v12, "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v13, v8, 0x1

    .end local v8    # "index$iv$iv":I
    .local v13, "index$iv$iv":I
    move-object v14, v12

    .local v8, "index":I
    .local v14, "clazz":Ljava/lang/Class;
    const/4 v15, 0x0

    .line 45
    .local v15, "$i$a$-mapIndexed-ComposableInvoker$areParameterTypesCompatible$1":I
    aget-object v4, v0, v8

    .line 52
    .local v4, "composableParameterType":Ljava/lang/Class;
    invoke-static {v14}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v4}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    invoke-virtual {v14, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v11, 0x1

    .line 52
    :goto_2
    nop

    .end local v4    # "composableParameterType":Ljava/lang/Class;
    .end local v8    # "index":I
    .end local v14    # "clazz":Ljava/lang/Class;
    .end local v15    # "$i$a$-mapIndexed-ComposableInvoker$areParameterTypesCompatible$1":I
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 238
    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p2

    move v8, v13

    goto :goto_0

    .line 239
    .end local v13    # "index$iv$iv":I
    .local v8, "index$iv$iv":I
    :cond_2
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapIndexedTo$iv$iv":[Ljava/lang/Object;
    .end local v7    # "$i$f$mapIndexedTo":I
    .end local v8    # "index$iv$iv":I
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    .line 235
    nop

    .end local v2    # "$this$mapIndexed$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$mapIndexed":I
    check-cast v0, Ljava/lang/Iterable;

    .line 54
    nop

    .local v0, "$this$all$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 240
    .local v2, "$i$f$all":I
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_3

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    .line 241
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .local v5, "it":Z
    const/4 v6, 0x0

    .line 54
    .local v6, "$i$a$-all-ComposableInvoker$areParameterTypesCompatible$2":I
    nop

    .line 241
    .end local v5    # "it":Z
    .end local v6    # "$i$a$-all-ComposableInvoker$areParameterTypesCompatible$2":I
    if-nez v5, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    .line 242
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_5
    const/4 v0, 0x1

    .end local v0    # "$this$all$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$all":I
    :goto_3
    if-eqz v0, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    .line 54
    :goto_4
    return v4
.end method

.method private final changedParamCount(II)I
    .locals 5
    .param p1, "realValueParams"    # I
    .param p2, "thisParams"    # I

    .line 188
    if-nez p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 189
    :cond_0
    add-int v0, p1, p2

    .line 190
    .local v0, "totalParams":I
    nop

    .line 191
    int-to-double v1, v0

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    .line 192
    double-to-int v1, v1

    .line 190
    return v1
.end method

.method private final defaultParamCount(I)I
    .locals 4
    .param p1, "realValueParams"    # I

    .line 196
    nop

    .line 197
    int-to-double v0, p1

    const-wide/high16 v2, 0x403f000000000000L    # 31.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 198
    double-to-int v0, v0

    .line 196
    return v0
.end method

.method private final synthetic dup(Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 11
    .param p1, "$this$dup"    # Ljava/lang/Object;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 75
    .local v0, "$i$f$dup":I
    const/4 v1, 0x0

    invoke-static {v1, p2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 245
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 246
    .local v6, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v7

    check-cast v8, Lkotlin/collections/IntIterator;

    invoke-virtual {v8}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v8

    .line 247
    .local v8, "item$iv$iv":I
    move v9, v8

    .local v9, "it":I
    const/4 v10, 0x0

    .line 75
    .local v10, "$i$a$-map-ComposableInvoker$dup$1":I
    nop

    .line 247
    .end local v9    # "it":I
    .end local v10    # "$i$a$-map-ComposableInvoker$dup$1":I
    invoke-interface {v4, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    .end local v8    # "item$iv$iv":I
    :cond_0
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo":I
    check-cast v4, Ljava/util/List;

    .line 245
    nop

    .end local v2    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map":I
    check-cast v4, Ljava/util/Collection;

    .line 75
    move-object v2, v4

    .local v2, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    .line 249
    .local v3, "$i$f$toTypedArray":I
    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    .line 250
    .local v4, "thisCollection$iv":Ljava/util/Collection;
    const-string v5, "T?"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v4, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 75
    .end local v2    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v3    # "$i$f$toTypedArray":I
    .end local v4    # "thisCollection$iv":Ljava/util/Collection;
    return-object v1
.end method

.method private final varargs findCompatibleComposeMethod([Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 12
    .param p1, "$this$findCompatibleComposeMethod"    # [Ljava/lang/reflect/Method;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 67
    move-object v0, p1

    .local v0, "$this$firstOrNull$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 243
    .local v1, "$i$f$firstOrNull":I
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v2, :cond_3

    aget-object v6, v0, v4

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    .local v7, "it":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    .line 68
    .local v8, "$i$a$-firstOrNull-ComposableInvoker$findCompatibleComposeMethod$1":I
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {p2, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x2d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v9, v10, v3, v11, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 71
    :cond_0
    sget-object v5, Landroidx/compose/ui/tooling/ComposableInvoker;->INSTANCE:Landroidx/compose/ui/tooling/ComposableInvoker;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v10, p3

    invoke-static {p3, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Class;

    invoke-direct {v5, v9, v10}, Landroidx/compose/ui/tooling/ComposableInvoker;->areParameterTypesCompatible([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v3

    .line 68
    :goto_1
    nop

    .line 243
    .end local v7    # "it":Ljava/lang/reflect/Method;
    .end local v8    # "$i$a$-firstOrNull-ComposableInvoker$findCompatibleComposeMethod$1":I
    if-eqz v5, :cond_2

    move-object v5, v6

    goto :goto_2

    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 244
    :cond_3
    nop

    .line 67
    .end local v0    # "$this$firstOrNull$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_2
    if-eqz v5, :cond_4

    .line 72
    return-object v5

    :cond_4
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final varargs findComposableMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 18
    .param p1, "$this$findComposableMethod"    # Ljava/lang/Class;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "previewParamArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 89
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    .local v0, "$this$mapNotNull$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 251
    .local v3, "$i$f$mapNotNull":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v0

    .local v5, "$this$mapNotNullTo$iv$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 259
    .local v6, "$i$f$mapNotNullTo":I
    move-object v7, v5

    .local v7, "$this$forEach$iv$iv$iv":[Ljava/lang/Object;
    const/4 v8, 0x0

    .line 260
    .local v8, "$i$f$forEach":I
    array-length v9, v7

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    const/4 v12, 0x0

    if-ge v11, v9, :cond_2

    aget-object v13, v7, v11

    .local v13, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "element$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 259
    .local v15, "$i$a$-forEach-ArraysKt___ArraysKt$mapNotNullTo$1$iv$iv":I
    move-object/from16 v16, v14

    .local v16, "it":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 89
    .local v17, "$i$a$-mapNotNull-ComposableInvoker$findComposableMethod$argsArray$1":I
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 259
    .end local v16    # "it":Ljava/lang/Object;
    .end local v17    # "$i$a$-mapNotNull-ComposableInvoker$findComposableMethod$argsArray$1":I
    :cond_0
    if-eqz v12, :cond_1

    .line 261
    .local v12, "it$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 259
    .local v16, "$i$a$-let-ArraysKt___ArraysKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v4, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 260
    .end local v12    # "it$iv$iv":Ljava/lang/Object;
    .end local v14    # "element$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-forEach-ArraysKt___ArraysKt$mapNotNullTo$1$iv$iv":I
    .end local v16    # "$i$a$-let-ArraysKt___ArraysKt$mapNotNullTo$1$1$iv$iv":I
    :cond_1
    nop

    .end local v13    # "element$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 262
    :cond_2
    nop

    .line 263
    .end local v7    # "$this$forEach$iv$iv$iv":[Ljava/lang/Object;
    .end local v8    # "$i$f$forEach":I
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapNotNullTo$iv$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$mapNotNullTo":I
    check-cast v4, Ljava/util/List;

    .line 251
    nop

    .end local v0    # "$this$mapNotNull$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$mapNotNull":I
    check-cast v4, Ljava/util/Collection;

    .line 89
    move-object v0, v4

    .local v0, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    .line 264
    .local v3, "$i$f$toTypedArray":I
    nop

    .line 265
    .local v4, "thisCollection$iv":Ljava/util/Collection;
    new-array v5, v10, [Ljava/lang/Class;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 89
    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v3    # "$i$f$toTypedArray":I
    .end local v4    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v0, [Ljava/lang/Class;

    .line 88
    move-object v3, v0

    .line 90
    .local v3, "argsArray":[Ljava/lang/Class;
    nop

    .line 92
    :try_start_0
    array-length v0, v3

    invoke-direct {v1, v0, v10}, Landroidx/compose/ui/tooling/ComposableInvoker;->changedParamCount(II)I

    move-result v0

    .line 93
    .local v0, "changedParamsCount":I
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .local v4, "$this$dup$iv":Ljava/lang/Object;
    move-object/from16 v5, p0

    .local v5, "this_$iv":Landroidx/compose/ui/tooling/ComposableInvoker;
    const/4 v6, 0x0

    .line 266
    .local v6, "$i$f$dup":I
    invoke-static {v10, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$map$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 267
    .local v8, "$i$f$map":I
    new-instance v9, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v7, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v9, Ljava/util/Collection;

    .local v9, "destination$iv$iv$iv":Ljava/util/Collection;
    move-object v11, v7

    .local v11, "$this$mapTo$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 268
    .local v13, "$i$f$mapTo":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    move-object v15, v14

    check-cast v15, Lkotlin/collections/IntIterator;

    invoke-virtual {v15}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v15

    .line 269
    .local v15, "item$iv$iv$iv":I
    move/from16 v16, v15

    .local v16, "it$iv":I
    const/16 v17, 0x0

    .line 266
    .local v17, "$i$a$-map-ComposableInvoker$dup$1$iv":I
    nop

    .line 269
    .end local v16    # "it$iv":I
    .end local v17    # "$i$a$-map-ComposableInvoker$dup$1$iv":I
    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 270
    .end local v15    # "item$iv$iv$iv":I
    :cond_3
    nop

    .end local v9    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v11    # "$this$mapTo$iv$iv$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$mapTo":I
    check-cast v9, Ljava/util/List;

    .line 267
    nop

    .end local v7    # "$this$map$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$map":I
    check-cast v9, Ljava/util/Collection;

    .line 266
    move-object v7, v9

    .local v7, "$this$toTypedArray$iv$iv":Ljava/util/Collection;
    const/4 v8, 0x0

    .line 271
    .local v8, "$i$f$toTypedArray":I
    nop

    .line 272
    .local v9, "thisCollection$iv$iv":Ljava/util/Collection;
    new-array v11, v10, [Ljava/lang/Class;

    invoke-interface {v9, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    .line 266
    .end local v7    # "$this$toTypedArray$iv$iv":Ljava/util/Collection;
    .end local v8    # "$i$f$toTypedArray":I
    .end local v9    # "thisCollection$iv$iv":Ljava/util/Collection;
    nop

    .line 93
    .end local v4    # "$this$dup$iv":Ljava/lang/Object;
    .end local v5    # "this_$iv":Landroidx/compose/ui/tooling/ComposableInvoker;
    .end local v6    # "$i$f$dup":I
    check-cast v11, [Ljava/lang/Class;

    move-object v4, v11

    .line 94
    .local v4, "changedParams":[Ljava/lang/Class;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 95
    nop

    .line 96
    new-instance v6, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    const-class v7, Landroidx/compose/runtime/Composer;

    invoke-virtual {v6, v7}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 98
    nop

    .line 96
    invoke-virtual {v6, v4}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v7}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Class;

    .line 94
    invoke-direct {v1, v5, v2, v6}, Landroidx/compose/ui/tooling/ComposableInvoker;->findCompatibleComposeMethod([Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "changedParamsCount":I
    .end local v4    # "changedParams":[Ljava/lang/Class;
    goto :goto_6

    .line 100
    :catch_0
    move-exception v0

    move-object v4, v0

    .line 101
    .local v4, "e":Ljava/lang/ReflectiveOperationException;
    nop

    .line 102
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v5, v0

    move v6, v10

    :goto_2
    if-ge v6, v5, :cond_7

    aget-object v7, v0, v6

    move-object v8, v7

    .local v8, "it":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    .line 103
    .local v9, "$i$a$-find-ComposableInvoker$findComposableMethod$1":I
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 106
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2d

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v11, v13, v10, v14, v12}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v11, :cond_4

    goto :goto_3

    :cond_4
    move v11, v10

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v11, 0x1

    .line 103
    :goto_4
    nop

    .line 102
    .end local v8    # "it":Ljava/lang/reflect/Method;
    .end local v9    # "$i$a$-find-ComposableInvoker$findComposableMethod$1":I
    if-eqz v11, :cond_6

    move-object v12, v7

    goto :goto_5

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 108
    :catch_1
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    nop

    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_7
    :goto_5
    move-object v5, v12

    .line 90
    .end local v4    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_6
    return-object v5
.end method

.method private final getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "$this$getDefaultValue"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 118
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 120
    :cond_0
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto/16 :goto_1

    .line 118
    :sswitch_1
    const-string v1, "float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 124
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_1

    .line 118
    :sswitch_2
    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 125
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 118
    :sswitch_3
    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 122
    :cond_3
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    .line 118
    :sswitch_4
    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 126
    :cond_4
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_1

    .line 118
    :sswitch_5
    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 121
    :cond_5
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_1

    .line 118
    :sswitch_6
    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 119
    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 118
    :sswitch_7
    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    .line 123
    :cond_7
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 127
    :cond_8
    :goto_0
    const/4 v0, 0x0

    .line 128
    :goto_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_7
        0x197ef -> :sswitch_6
        0x2e6108 -> :sswitch_5
        0x2e9356 -> :sswitch_4
        0x32c67c -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch
.end method

.method private final varargs invokeComposableMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;Landroidx/compose/runtime/Composer;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .param p1, "$this$invokeComposableMethod"    # Ljava/lang/reflect/Method;
    .param p2, "instance"    # Ljava/lang/Object;
    .param p3, "composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 140
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .local v2, "$this$indexOfLast$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 273
    .local v3, "$i$f$indexOfLast":I
    array-length v4, v2

    const/4 v5, -0x1

    add-int/2addr v4, v5

    if-ltz v4, :cond_2

    :cond_0
    move v6, v4

    .local v6, "index$iv":I
    add-int/2addr v4, v5

    .line 274
    aget-object v7, v2, v6

    .local v7, "it":Ljava/lang/Class;
    const/4 v8, 0x0

    .line 140
    .local v8, "$i$a$-indexOfLast-ComposableInvoker$invokeComposableMethod$composerIndex$1":I
    const-class v9, Landroidx/compose/runtime/Composer;

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 274
    .end local v7    # "it":Ljava/lang/Class;
    .end local v8    # "$i$a$-indexOfLast-ComposableInvoker$invokeComposableMethod$composerIndex$1":I
    if-eqz v7, :cond_1

    .line 275
    move v5, v6

    goto :goto_0

    .line 273
    :cond_1
    if-gez v4, :cond_0

    .line 278
    .end local v6    # "index$iv":I
    :cond_2
    nop

    .line 140
    .end local v2    # "$this$indexOfLast$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$indexOfLast":I
    :goto_0
    move v2, v5

    .line 141
    .local v2, "composerIndex":I
    move v3, v2

    .line 142
    .local v3, "realParams":I
    if-eqz v1, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 143
    .local v6, "thisParams":I
    :goto_1
    invoke-direct {v0, v3, v6}, Landroidx/compose/ui/tooling/ComposableInvoker;->changedParamCount(II)I

    move-result v7

    .line 144
    .local v7, "changedParams":I
    nop

    .line 145
    nop

    .line 144
    add-int/lit8 v8, v3, 0x1

    .line 146
    nop

    .line 144
    add-int/2addr v8, v7

    .line 147
    .local v8, "totalParamsWithoutDefaults":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    .line 148
    .local v9, "totalParams":I
    if-eq v9, v8, :cond_4

    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    .line 149
    .local v10, "isDefault":Z
    :goto_2
    if-eqz v10, :cond_5

    .line 150
    invoke-direct {v0, v3}, Landroidx/compose/ui/tooling/ComposableInvoker;->defaultParamCount(I)I

    move-result v11

    goto :goto_3

    .line 152
    :cond_5
    const/4 v11, 0x0

    .line 149
    :goto_3
    nop

    .line 155
    .local v11, "defaultParams":I
    nop

    .line 156
    nop

    .line 155
    add-int/lit8 v12, v3, 0x1

    .line 157
    nop

    .line 155
    add-int/2addr v12, v7

    .line 158
    nop

    .line 155
    add-int/2addr v12, v11

    .line 159
    if-ne v12, v9, :cond_6

    const/4 v12, 0x1

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    .line 154
    :goto_4
    if-eqz v12, :cond_10

    .line 162
    add-int/lit8 v12, v2, 0x1

    .line 163
    .local v12, "changedStartIndex":I
    add-int v13, v12, v7

    .line 165
    .local v13, "defaultStartIndex":I
    new-array v14, v9, [Ljava/lang/Object;

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v9, :cond_f

    .line 166
    nop

    .line 168
    if-ltz v15, :cond_7

    if-ge v15, v3, :cond_7

    const/16 v16, 0x1

    goto :goto_6

    :cond_7
    const/16 v16, 0x0

    :goto_6
    if-eqz v16, :cond_9

    if-ltz v15, :cond_8

    invoke-static/range {p4 .. p4}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v4

    if-gt v15, v4, :cond_8

    aget-object v4, p4, v15

    goto :goto_7

    :cond_8
    move v4, v15

    .local v4, "it":I
    const/16 v17, 0x0

    .line 169
    .local v17, "$i$a$-getOrElse-ComposableInvoker$invokeComposableMethod$arguments$1$1":I
    sget-object v5, Landroidx/compose/ui/tooling/ComposableInvoker;->INSTANCE:Landroidx/compose/ui/tooling/ComposableInvoker;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v18

    aget-object v0, v18, v15

    invoke-direct {v5, v0}, Landroidx/compose/ui/tooling/ComposableInvoker;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 168
    .end local v4    # "it":I
    .end local v17    # "$i$a$-getOrElse-ComposableInvoker$invokeComposableMethod$arguments$1$1":I
    nop

    :goto_7
    const/4 v0, 0x0

    goto :goto_a

    .line 172
    :cond_9
    if-ne v15, v2, :cond_a

    move-object/from16 v4, p3

    const/4 v0, 0x0

    goto :goto_a

    .line 175
    :cond_a
    if-gt v12, v15, :cond_b

    if-ge v15, v13, :cond_b

    const/4 v0, 0x1

    goto :goto_8

    :cond_b
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_a

    .line 177
    :cond_c
    const/4 v0, 0x0

    if-gt v13, v15, :cond_d

    if-ge v15, v9, :cond_d

    const/4 v4, 0x1

    goto :goto_9

    :cond_d
    move v4, v0

    :goto_9
    if-eqz v4, :cond_e

    const v4, 0x1fffff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 178
    :goto_a
    aput-object v4, v14, v15

    add-int/lit8 v15, v15, 0x1

    .line 165
    move-object/from16 v0, p0

    goto :goto_5

    .line 177
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 178
    const-string v4, "Unexpected index"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_f
    move-object v0, v14

    .line 181
    .local v0, "arguments":[Ljava/lang/Object;
    array-length v4, v0

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-virtual {v5, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 154
    .end local v0    # "arguments":[Ljava/lang/Object;
    .end local v12    # "changedStartIndex":I
    .end local v13    # "defaultStartIndex":I
    :cond_10
    move-object/from16 v5, p1

    const/4 v0, 0x0

    .line 160
    .local v0, "$i$a$-check-ComposableInvoker$invokeComposableMethod$1":I
    nop

    .line 154
    .end local v0    # "$i$a$-check-ComposableInvoker$invokeComposableMethod$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "params don\'t add up to total params"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final varargs invokeComposable(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 213
    nop

    .line 214
    const/16 v0, 0x2e

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 215
    .local v2, "composableClass":Ljava/lang/Class;
    array-length v3, p4

    invoke-static {p4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, p2, v3}, Landroidx/compose/ui/tooling/ComposableInvoker;->findComposableMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 217
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 219
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    array-length v4, p4

    invoke-static {p4, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v1, p3, v4}, Landroidx/compose/ui/tooling/ComposableInvoker;->invokeComposableMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;Landroidx/compose/runtime/Composer;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 225
    :cond_0
    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 226
    .local v4, "instance":Ljava/lang/Object;
    array-length v5, p4

    invoke-static {p4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v3, v4, p3, v5}, Landroidx/compose/ui/tooling/ComposableInvoker;->invokeComposableMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;Landroidx/compose/runtime/Composer;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .end local v2    # "composableClass":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "instance":Ljava/lang/Object;
    :goto_0
    return-void

    .line 216
    .restart local v2    # "composableClass":Ljava/lang/Class;
    :cond_1
    new-instance v3, Ljava/lang/NoSuchMethodException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Composable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .end local p1    # "className":Ljava/lang/String;
    .end local p2    # "methodName":Ljava/lang/String;
    .end local p3    # "composer":Landroidx/compose/runtime/Composer;
    .end local p4    # "args":[Ljava/lang/Object;
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v2    # "composableClass":Ljava/lang/Class;
    .restart local p1    # "className":Ljava/lang/String;
    .restart local p2    # "methodName":Ljava/lang/String;
    .restart local p3    # "composer":Landroidx/compose/runtime/Composer;
    .restart local p4    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 229
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Landroidx/compose/ui/tooling/PreviewLogger;->Companion:Landroidx/compose/ui/tooling/PreviewLogger$Companion;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to invoke Composable Method \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    invoke-static {v3, v0, v1, v4, v1}, Landroidx/compose/ui/tooling/PreviewLogger$Companion;->logWarning$ui_tooling_release$default(Landroidx/compose/ui/tooling/PreviewLogger$Companion;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 230
    throw v2
.end method
