.class final Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
.super Ljava/lang/Object;
.source "Composition.kt"

# interfaces
.implements Landroidx/compose/runtime/RememberManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/CompositionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RememberEventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composition.kt\nandroidx/compose/runtime/CompositionImpl$RememberEventDispatcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Trace.kt\nandroidx/compose/runtime/TraceKt\n+ 4 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,1381:1\n1#2:1382\n46#3,5:1383\n46#3,3:1388\n50#3:1397\n46#3,3:1398\n50#3:1407\n46#3,5:1408\n33#4,6:1391\n33#4,6:1401\n*S KotlinDebug\n*F\n+ 1 Composition.kt\nandroidx/compose/runtime/CompositionImpl$RememberEventDispatcher\n*L\n1270#1:1383,5\n1292#1:1388,3\n1292#1:1397\n1303#1:1398,3\n1303#1:1407\n1314#1:1408,5\n1293#1:1391,6\n1304#1:1401,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000bH\u0016J\u0006\u0010\u0012\u001a\u00020\u000fJ\u0006\u0010\u0013\u001a\u00020\u000fJ\u0006\u0010\u0014\u001a\u00020\u000fJ\u0010\u0010\u0006\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0004H\u0016J\u0016\u0010\u0015\u001a\u00020\u000f2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;",
        "Landroidx/compose/runtime/RememberManager;",
        "abandoning",
        "",
        "Landroidx/compose/runtime/RememberObserver;",
        "(Ljava/util/Set;)V",
        "forgetting",
        "",
        "",
        "releasing",
        "Landroidx/collection/MutableScatterSet;",
        "Landroidx/compose/runtime/ComposeNodeLifecycleCallback;",
        "remembering",
        "sideEffects",
        "Lkotlin/Function0;",
        "",
        "deactivating",
        "instance",
        "dispatchAbandons",
        "dispatchRememberObservers",
        "dispatchSideEffects",
        "sideEffect",
        "effect",
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
.field private final abandoning:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/RememberObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final forgetting:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private releasing:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/runtime/ComposeNodeLifecycleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final remembering:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/RememberObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final sideEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .param p1, "abandoning"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/RememberObserver;",
            ">;)V"
        }
    .end annotation

    .line 1235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1236
    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->abandoning:Ljava/util/Set;

    .line 1238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->remembering:Ljava/util/List;

    .line 1239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->forgetting:Ljava/util/List;

    .line 1240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->sideEffects:Ljava/util/List;

    .line 1235
    return-void
.end method


# virtual methods
.method public deactivating(Landroidx/compose/runtime/ComposeNodeLifecycleCallback;)V
    .locals 1
    .param p1, "instance"    # Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 1256
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->forgetting:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1257
    return-void
.end method

.method public final dispatchAbandons()V
    .locals 6

    .line 1313
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->abandoning:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1314
    const-string v0, "Compose:abandons"

    .local v0, "sectionName$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1408
    .local v1, "$i$f$trace":I
    sget-object v2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1409
    .local v2, "token$iv":Ljava/lang/Object;
    nop

    .line 1410
    const/4 v3, 0x0

    .line 1315
    .local v3, "$i$a$-trace-CompositionImpl$RememberEventDispatcher$dispatchAbandons$1":I
    :try_start_0
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->abandoning:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1318
    .local v4, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1319
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/RememberObserver;

    .line 1320
    .local v5, "instance":Landroidx/compose/runtime/RememberObserver;
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1321
    invoke-interface {v5}, Landroidx/compose/runtime/RememberObserver;->onAbandoned()V

    .end local v5    # "instance":Landroidx/compose/runtime/RememberObserver;
    goto :goto_0

    .line 1323
    :cond_0
    nop

    .end local v3    # "$i$a$-trace-CompositionImpl$RememberEventDispatcher$dispatchAbandons$1":I
    .end local v4    # "iterator":Ljava/util/Iterator;
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1410
    nop

    .line 1412
    sget-object v3, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    .line 1410
    goto :goto_1

    .line 1412
    :catchall_0
    move-exception v3

    sget-object v4, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw v3

    .line 1325
    .end local v0    # "sectionName$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trace":I
    .end local v2    # "token$iv":Ljava/lang/Object;
    :cond_1
    :goto_1
    return-void
.end method

.method public final dispatchRememberObservers()V
    .locals 12

    .line 1269
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->forgetting:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 1270
    const-string v0, "Compose:onForgotten"

    .local v0, "sectionName$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1383
    .local v1, "$i$f$trace":I
    sget-object v2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1384
    .local v2, "token$iv":Ljava/lang/Object;
    nop

    .line 1385
    const/4 v3, 0x0

    .line 1271
    .local v3, "$i$a$-trace-CompositionImpl$RememberEventDispatcher$dispatchRememberObservers$1":I
    :try_start_0
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->releasing:Landroidx/collection/MutableScatterSet;

    .line 1272
    .local v4, "releasing":Landroidx/collection/MutableScatterSet;
    iget-object v5, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->forgetting:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_0
    const/4 v6, -0x1

    if-ge v6, v5, :cond_3

    .line 1273
    iget-object v6, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->forgetting:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1274
    .local v6, "instance":Ljava/lang/Object;
    iget-object v7, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->abandoning:Ljava/util/Set;

    check-cast v7, Ljava/util/Collection;

    invoke-static {v7}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1275
    instance-of v7, v6, Landroidx/compose/runtime/RememberObserver;

    if-eqz v7, :cond_0

    .line 1276
    move-object v7, v6

    check-cast v7, Landroidx/compose/runtime/RememberObserver;

    invoke-interface {v7}, Landroidx/compose/runtime/RememberObserver;->onForgotten()V

    .line 1278
    :cond_0
    instance-of v7, v6, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    if-eqz v7, :cond_2

    .line 1280
    if-eqz v4, :cond_1

    invoke-virtual {v4, v6}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1281
    move-object v7, v6

    check-cast v7, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    invoke-interface {v7}, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;->onRelease()V

    goto :goto_1

    .line 1283
    :cond_1
    move-object v7, v6

    check-cast v7, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    invoke-interface {v7}, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;->onDeactivate()V

    .line 1272
    .end local v6    # "instance":Ljava/lang/Object;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1287
    .end local v5    # "i":I
    :cond_3
    nop

    .end local v3    # "$i$a$-trace-CompositionImpl$RememberEventDispatcher$dispatchRememberObservers$1":I
    .end local v4    # "releasing":Landroidx/collection/MutableScatterSet;
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1385
    nop

    .line 1387
    sget-object v3, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    .line 1385
    goto :goto_2

    .line 1387
    :catchall_0
    move-exception v3

    sget-object v4, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw v3

    .line 1291
    .end local v0    # "sectionName$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trace":I
    .end local v2    # "token$iv":Ljava/lang/Object;
    :cond_4
    :goto_2
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->remembering:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 1292
    const-string v0, "Compose:onRemembered"

    .restart local v0    # "sectionName$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1388
    .restart local v1    # "$i$f$trace":I
    sget-object v2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1389
    .restart local v2    # "token$iv":Ljava/lang/Object;
    nop

    .line 1390
    const/4 v3, 0x0

    .line 1293
    .local v3, "$i$a$-trace-CompositionImpl$RememberEventDispatcher$dispatchRememberObservers$2":I
    :try_start_1
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->remembering:Ljava/util/List;

    .local v4, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1391
    .local v5, "$i$f$fastForEach":I
    nop

    .line 1392
    const/4 v6, 0x0

    .local v6, "index$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_3
    if-ge v6, v7, :cond_5

    .line 1393
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1394
    .local v8, "item$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/compose/runtime/RememberObserver;

    .local v9, "instance":Landroidx/compose/runtime/RememberObserver;
    const/4 v10, 0x0

    .line 1294
    .local v10, "$i$a$-fastForEach-CompositionImpl$RememberEventDispatcher$dispatchRememberObservers$2$1":I
    iget-object v11, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->abandoning:Ljava/util/Set;

    invoke-interface {v11, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1295
    invoke-interface {v9}, Landroidx/compose/runtime/RememberObserver;->onRemembered()V

    .line 1296
    nop

    .line 1394
    .end local v9    # "instance":Landroidx/compose/runtime/RememberObserver;
    .end local v10    # "$i$a$-fastForEach-CompositionImpl$RememberEventDispatcher$dispatchRememberObservers$2$1":I
    nop

    .line 1392
    .end local v8    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1396
    .end local v6    # "index$iv":I
    :cond_5
    nop

    .line 1297
    .end local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    nop

    .end local v3    # "$i$a$-trace-CompositionImpl$RememberEventDispatcher$dispatchRememberObservers$2":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1390
    nop

    .line 1397
    sget-object v3, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    .line 1390
    goto :goto_4

    .line 1397
    :catchall_1
    move-exception v3

    sget-object v4, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw v3

    .line 1299
    .end local v0    # "sectionName$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trace":I
    .end local v2    # "token$iv":Ljava/lang/Object;
    :cond_6
    :goto_4
    return-void
.end method

.method public final dispatchSideEffects()V
    .locals 11

    .line 1302
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->sideEffects:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1303
    const-string v0, "Compose:sideeffects"

    .local v0, "sectionName$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1398
    .local v1, "$i$f$trace":I
    sget-object v2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1399
    .local v2, "token$iv":Ljava/lang/Object;
    nop

    .line 1400
    const/4 v3, 0x0

    .line 1304
    .local v3, "$i$a$-trace-CompositionImpl$RememberEventDispatcher$dispatchSideEffects$1":I
    :try_start_0
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->sideEffects:Ljava/util/List;

    .local v4, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1401
    .local v5, "$i$f$fastForEach":I
    nop

    .line 1402
    const/4 v6, 0x0

    .local v6, "index$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_0

    .line 1403
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1404
    .local v8, "item$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .local v9, "sideEffect":Lkotlin/jvm/functions/Function0;
    const/4 v10, 0x0

    .line 1305
    .local v10, "$i$a$-fastForEach-CompositionImpl$RememberEventDispatcher$dispatchSideEffects$1$1":I
    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1306
    nop

    .line 1404
    .end local v9    # "sideEffect":Lkotlin/jvm/functions/Function0;
    .end local v10    # "$i$a$-fastForEach-CompositionImpl$RememberEventDispatcher$dispatchSideEffects$1$1":I
    nop

    .line 1402
    .end local v8    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1406
    .end local v6    # "index$iv":I
    :cond_0
    nop

    .line 1307
    .end local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->sideEffects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1308
    nop

    .end local v3    # "$i$a$-trace-CompositionImpl$RememberEventDispatcher$dispatchSideEffects$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1400
    nop

    .line 1407
    sget-object v3, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    .line 1400
    goto :goto_1

    .line 1407
    :catchall_0
    move-exception v3

    sget-object v4, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw v3

    .line 1310
    .end local v0    # "sectionName$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trace":I
    .end local v2    # "token$iv":Ljava/lang/Object;
    :cond_1
    :goto_1
    return-void
.end method

.method public forgetting(Landroidx/compose/runtime/RememberObserver;)V
    .locals 1
    .param p1, "instance"    # Landroidx/compose/runtime/RememberObserver;

    .line 1248
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->forgetting:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1249
    return-void
.end method

.method public releasing(Landroidx/compose/runtime/ComposeNodeLifecycleCallback;)V
    .locals 3
    .param p1, "instance"    # Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 1260
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->releasing:Landroidx/collection/MutableScatterSet;

    if-nez v0, :cond_0

    .line 1261
    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object v0

    move-object v1, v0

    .line 1382
    .local v1, "it":Landroidx/collection/MutableScatterSet;
    const/4 v2, 0x0

    .line 1261
    .local v2, "$i$a$-also-CompositionImpl$RememberEventDispatcher$releasing$releasing$1":I
    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->releasing:Landroidx/collection/MutableScatterSet;

    .line 1260
    .end local v1    # "it":Landroidx/collection/MutableScatterSet;
    .end local v2    # "$i$a$-also-CompositionImpl$RememberEventDispatcher$releasing$releasing$1":I
    :cond_0
    nop

    .line 1263
    .local v0, "releasing":Landroidx/collection/MutableScatterSet;
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->plusAssign(Ljava/lang/Object;)V

    .line 1264
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->forgetting:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1265
    return-void
.end method

.method public remembering(Landroidx/compose/runtime/RememberObserver;)V
    .locals 1
    .param p1, "instance"    # Landroidx/compose/runtime/RememberObserver;

    .line 1244
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->remembering:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1245
    return-void
.end method

.method public sideEffect(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "effect"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1252
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->sideEffects:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1253
    return-void
.end method
