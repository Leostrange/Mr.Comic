.class public final Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
.super Ljava/lang/Object;
.source "SnapshotStateObserver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapshotStateObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateObserver.kt\nandroidx/compose/runtime/snapshots/SnapshotStateObserver\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,652:1\n184#1,2:657\n186#1,2:670\n190#1,2:698\n192#1,2:715\n190#1,2:717\n192#1,2:734\n184#1,2:736\n186#1,2:749\n1208#2:653\n1187#2,2:654\n1#3:656\n460#4,11:659\n460#4,11:672\n838#4,15:683\n838#4,15:700\n838#4,15:719\n460#4,11:738\n366#4,12:751\n728#4,2:763\n*S KotlinDebug\n*F\n+ 1 SnapshotStateObserver.kt\nandroidx/compose/runtime/snapshots/SnapshotStateObserver\n*L\n68#1:657,2\n68#1:670,2\n290#1:698,2\n290#1:715,2\n301#1:717,2\n301#1:734,2\n334#1:736,2\n334#1:749,2\n176#1:653\n176#1:654,2\n68#1:659,11\n185#1:672,11\n191#1:683,15\n290#1:700,15\n301#1:719,15\n334#1:738,11\n347#1:751,12\n350#1:763,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u0001\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001:\u00017B.\u0012\'\u0010\u0002\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0010\tJ\u0016\u0010\u001d\u001a\u00020\u00052\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u000cH\u0002J\u0006\u0010\u001f\u001a\u00020\u0005J\u000e\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0001J)\u0010!\u001a\u00020\u00052!\u0010\"\u001a\u001d\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\u00150\u0003J\u0008\u0010#\u001a\u00020\u0015H\u0002J&\u0010$\u001a\u00020\u0011\"\u0008\u0008\u0000\u0010%*\u00020\u00012\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u0002H%\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u001d\u0010\'\u001a\u00020\u00052\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00050\u0003H\u0082\u0008J\u001e\u0010)\u001a\u00020\u00052\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u000c2\u0006\u0010+\u001a\u00020\rH\u0007J?\u0010,\u001a\u00020\u0005\"\u0008\u0008\u0000\u0010%*\u00020\u00012\u0006\u0010 \u001a\u0002H%2\u0012\u0010-\u001a\u000e\u0012\u0004\u0012\u0002H%\u0012\u0004\u0012\u00020\u00050\u00032\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0010.J\u0010\u0010/\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000cH\u0002J\u001d\u00100\u001a\u00020\u00052\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00150\u0003H\u0082\u0008J\u0008\u00101\u001a\u000202H\u0002J\u0008\u00103\u001a\u00020\u0005H\u0002J\u0006\u00104\u001a\u00020\u0005J\u0006\u00105\u001a\u00020\u0005J\u0016\u00106\u001a\u00020\u00052\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0007R&\u0010\n\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u000c\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00050\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R/\u0010\u0002\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u0018\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0019j\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001`\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00068"
    }
    d2 = {
        "Landroidx/compose/runtime/snapshots/SnapshotStateObserver;",
        "",
        "onChangedExecutor",
        "Lkotlin/Function1;",
        "Lkotlin/Function0;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "callback",
        "(Lkotlin/jvm/functions/Function1;)V",
        "applyObserver",
        "Lkotlin/Function2;",
        "",
        "Landroidx/compose/runtime/snapshots/Snapshot;",
        "applyUnsubscribe",
        "Landroidx/compose/runtime/snapshots/ObserverHandle;",
        "currentMap",
        "Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;",
        "currentMapThreadId",
        "",
        "isPaused",
        "",
        "observedScopeMaps",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "pendingChanges",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Landroidx/compose/runtime/AtomicReference;",
        "readObserver",
        "sendingNotifications",
        "addChanges",
        "set",
        "clear",
        "scope",
        "clearIf",
        "predicate",
        "drainChanges",
        "ensureMap",
        "T",
        "onChanged",
        "forEachScopeMap",
        "block",
        "notifyChanges",
        "changes",
        "snapshot",
        "observeReads",
        "onValueChangedForScope",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V",
        "removeChanges",
        "removeScopeMapIf",
        "report",
        "",
        "sendNotifications",
        "start",
        "stop",
        "withNoObservations",
        "ObservedScopeMap",
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
.field private final applyObserver:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private applyUnsubscribe:Landroidx/compose/runtime/snapshots/ObserverHandle;

.field private currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

.field private currentMapThreadId:J

.field private isPaused:Z

.field private final observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;",
            ">;"
        }
    .end annotation
.end field

.field private final onChangedExecutor:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final readObserver:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private sendingNotifications:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->$stable:I

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .param p1, "onChangedExecutor"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->onChangedExecutor:Lkotlin/jvm/functions/Function1;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;

    .line 46
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$applyObserver$1;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$applyObserver$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyObserver:Lkotlin/jvm/functions/Function2;

    .line 163
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$readObserver$1;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$readObserver$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->readObserver:Lkotlin/jvm/functions/Function1;

    .line 176
    const/4 v0, 0x0

    .line 653
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 654
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv":I
    const/4 v2, 0x0

    .line 655
    .local v2, "$i$f$MutableVector":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v4, v1, [Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 653
    .end local v1    # "capacity$iv$iv":I
    .end local v2    # "$i$f$MutableVector":I
    nop

    .line 176
    .end local v0    # "$i$f$mutableVectorOf":I
    iput-object v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 214
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMapThreadId:J

    .line 42
    return-void
.end method

.method public static final synthetic access$addChanges(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;Ljava/util/Set;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .param p1, "set"    # Ljava/util/Set;

    .line 41
    invoke-direct {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->addChanges(Ljava/util/Set;)V

    return-void
.end method

.method public static final synthetic access$drainChanges(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 41
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->drainChanges()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getCurrentMap$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 41
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    return-object v0
.end method

.method public static final synthetic access$getObservedScopeMaps$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Landroidx/compose/runtime/collection/MutableVector;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 41
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    return-object v0
.end method

.method public static final synthetic access$getSendingNotifications$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 41
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z

    return v0
.end method

.method public static final synthetic access$isPaused$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 41
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    return v0
.end method

.method public static final synthetic access$sendNotifications(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 41
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendNotifications()V

    return-void
.end method

.method public static final synthetic access$setSendingNotifications$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;Z)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .param p1, "<set-?>"    # Z

    .line 41
    iput-boolean p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z

    return-void
.end method

.method private final addChanges(Ljava/util/Set;)V
    .locals 3
    .param p1, "set"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 114
    nop

    :cond_0
    nop

    .line 115
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 116
    .local v0, "old":Ljava/lang/Object;
    nop

    .line 117
    if-nez v0, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    goto :goto_0

    .line 118
    :cond_1
    instance-of v1, v0, Ljava/util/Set;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    goto :goto_0

    .line 119
    :cond_2
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 116
    :goto_0
    nop

    .line 122
    .local v1, "new":Ljava/util/Collection;
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/MutatorMutex$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    .end local v0    # "old":Ljava/lang/Object;
    .end local v1    # "new":Ljava/util/Collection;
    return-void

    .line 120
    .restart local v0    # "old":Ljava/lang/Object;
    :cond_3
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->report()Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method

.method private final drainChanges()Z
    .locals 15

    .line 62
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    monitor-enter v0

    .line 656
    const/4 v1, 0x0

    .line 62
    .local v1, "$i$a$-synchronized-SnapshotStateObserver$drainChanges$1":I
    :try_start_0
    iget-boolean v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v1    # "$i$a$-synchronized-SnapshotStateObserver$drainChanges$1":I
    monitor-exit v0

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    return v0

    .line 65
    :cond_0
    const/4 v1, 0x0

    .line 66
    .local v1, "hasValues":Z
    :goto_0
    nop

    .line 67
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->removeChanges()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 68
    .local v2, "notifications":Ljava/util/Set;
    :cond_1
    move-object v3, p0

    .local v3, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    const/4 v4, 0x0

    .line 657
    .local v4, "$i$f$forEachScopeMap":I
    iget-object v5, v3, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    monitor-enter v5

    const/4 v6, 0x0

    .line 658
    .local v6, "$i$a$-synchronized-SnapshotStateObserver$forEachScopeMap$1$iv":I
    :try_start_1
    iget-object v7, v3, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v7, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v8, 0x0

    .line 659
    .local v8, "$i$f$forEach":I
    nop

    .line 660
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v9

    .line 661
    .local v9, "size$iv$iv":I
    if-lez v9, :cond_5

    .line 662
    const/4 v10, 0x0

    .line 663
    .local v10, "i$iv$iv":I
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v11

    .line 665
    .local v11, "content$iv$iv":[Ljava/lang/Object;
    :cond_2
    aget-object v12, v11, v10

    check-cast v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .local v12, "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    const/4 v13, 0x0

    .line 69
    .local v13, "$i$a$-forEachScopeMap-SnapshotStateObserver$drainChanges$2":I
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordInvalidation(Ljava/util/Set;)Z

    move-result v14

    if-nez v14, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v14, v0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v14, 0x1

    :goto_2
    move v1, v14

    .line 70
    nop

    .line 665
    .end local v12    # "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v13    # "$i$a$-forEachScopeMap-SnapshotStateObserver$drainChanges$2":I
    nop

    .line 666
    add-int/lit8 v10, v10, 0x1

    .line 667
    if-lt v10, v9, :cond_2

    .line 669
    .end local v10    # "i$iv$iv":I
    .end local v11    # "content$iv$iv":[Ljava/lang/Object;
    :cond_5
    nop

    .line 670
    .end local v7    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v8    # "$i$f$forEach":I
    .end local v9    # "size$iv$iv":I
    nop

    .end local v6    # "$i$a$-synchronized-SnapshotStateObserver$forEachScopeMap$1$iv":I
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    monitor-exit v5

    .line 671
    nop

    .end local v2    # "notifications":Ljava/util/Set;
    .end local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .end local v4    # "$i$f$forEachScopeMap":I
    goto :goto_0

    .line 657
    .restart local v2    # "notifications":Ljava/util/Set;
    .restart local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .restart local v4    # "$i$f$forEachScopeMap":I
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    .line 62
    .end local v1    # "hasValues":Z
    .end local v2    # "notifications":Ljava/util/Set;
    .end local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .end local v4    # "$i$f$forEachScopeMap":I
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final ensureMap(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .locals 10
    .param p1, "onChanged"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 751
    .local v1, "$i$f$firstOrNull":I
    nop

    .line 752
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    .line 753
    .local v2, "size$iv":I
    const/4 v3, 0x1

    if-lez v2, :cond_3

    .line 754
    const/4 v4, 0x0

    .line 755
    .local v4, "i$iv":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v5

    .line 757
    .local v5, "content$iv":[Ljava/lang/Object;
    :cond_0
    aget-object v6, v5, v4

    .line 758
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .local v7, "it":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    const/4 v8, 0x0

    .line 347
    .local v8, "$i$a$-firstOrNull-SnapshotStateObserver$ensureMap$scopeMap$1":I
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->getOnChanged()Lkotlin/jvm/functions/Function1;

    move-result-object v9

    if-ne v9, p1, :cond_1

    move v9, v3

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 758
    .end local v7    # "it":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v8    # "$i$a$-firstOrNull-SnapshotStateObserver$ensureMap$scopeMap$1":I
    :goto_0
    if-eqz v9, :cond_2

    goto :goto_1

    .line 759
    :cond_2
    nop

    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    .line 760
    if-lt v4, v2, :cond_0

    .line 762
    .end local v4    # "i$iv":I
    .end local v5    # "content$iv":[Ljava/lang/Object;
    :cond_3
    const/4 v6, 0x0

    .line 347
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$f$firstOrNull":I
    .end local v2    # "size$iv":I
    :goto_1
    move-object v0, v6

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 348
    .local v0, "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    if-nez v0, :cond_4

    .line 349
    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    const-string/jumbo v2, "null cannot be cast to non-null type kotlin.Function1<kotlin.Any, kotlin.Unit>"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 350
    .local v1, "map":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v2, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v3, 0x0

    .line 763
    .local v3, "$i$f$plusAssign":I
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 764
    nop

    .line 351
    .end local v2    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "$i$f$plusAssign":I
    return-object v1

    .line 353
    .end local v1    # "map":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    :cond_4
    return-object v0
.end method

.method private final forEachScopeMap(Lkotlin/jvm/functions/Function1;)V
    .locals 10
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 184
    .local v0, "$i$f$forEachScopeMap":I
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    monitor-enter v1

    const/4 v2, 0x0

    .line 185
    .local v2, "$i$a$-synchronized-SnapshotStateObserver$forEachScopeMap$1":I
    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v4, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v5, 0x0

    .line 672
    .local v5, "$i$f$forEach":I
    nop

    .line 673
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v6

    .line 674
    .local v6, "size$iv":I
    if-lez v6, :cond_1

    .line 675
    const/4 v7, 0x0

    .line 676
    .local v7, "i$iv":I
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v8

    .line 678
    .local v8, "content$iv":[Ljava/lang/Object;
    :cond_0
    aget-object v9, v8, v7

    invoke-interface {p1, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    add-int/lit8 v7, v7, 0x1

    .line 680
    if-lt v7, v6, :cond_0

    .line 682
    .end local v7    # "i$iv":I
    .end local v8    # "content$iv":[Ljava/lang/Object;
    :cond_1
    nop

    .line 186
    .end local v4    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v5    # "$i$f$forEach":I
    .end local v6    # "size$iv":I
    nop

    .end local v2    # "$i$a$-synchronized-SnapshotStateObserver$forEachScopeMap$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v1

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 187
    return-void

    .line 184
    :catchall_0
    move-exception v2

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v1

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v2
.end method

.method private final removeChanges()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 132
    nop

    :cond_0
    nop

    .line 133
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 134
    .local v0, "old":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 135
    .local v1, "result":Ljava/util/Set;
    const/4 v2, 0x0

    .line 136
    .local v2, "new":Ljava/lang/Object;
    nop

    .line 137
    const/4 v3, 0x0

    if-nez v0, :cond_1

    return-object v3

    .line 138
    :cond_1
    instance-of v4, v0, Ljava/util/Set;

    if-eqz v4, :cond_2

    .line 139
    move-object v1, v0

    check-cast v1, Ljava/util/Set;

    .line 140
    const/4 v2, 0x0

    goto :goto_1

    .line 142
    :cond_2
    instance-of v4, v0, Ljava/util/List;

    if-eqz v4, :cond_5

    .line 143
    move-object v4, v0

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljava/util/Set;

    .line 144
    nop

    .line 145
    move-object v4, v0

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 146
    :cond_3
    move-object v4, v0

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_4

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 147
    :cond_4
    nop

    .line 144
    :goto_0
    move-object v2, v3

    .line 152
    :goto_1
    iget-object v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v0, v2}, Landroidx/compose/animation/core/MutatorMutex$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    return-object v1

    .line 150
    :cond_5
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->report()Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method private final removeScopeMapIf(Lkotlin/jvm/functions/Function1;)V
    .locals 12
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 190
    .local v0, "$i$f$removeScopeMapIf":I
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    monitor-enter v1

    const/4 v2, 0x0

    .line 191
    .local v2, "$i$a$-synchronized-SnapshotStateObserver$removeScopeMapIf$1":I
    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v4, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v5, 0x0

    .line 683
    .local v5, "$i$f$removeIf":I
    const/4 v6, 0x0

    .line 684
    .local v6, "gap$iv":I
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v7

    .line 685
    .local v7, "size$iv":I
    const/4 v8, 0x0

    .local v8, "i$iv":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 686
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v9

    aget-object v9, v9, v8

    invoke-interface {p1, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 687
    add-int/lit8 v6, v6, 0x1

    .line 688
    goto :goto_1

    .line 691
    :cond_0
    if-lez v6, :cond_1

    .line 692
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v9

    sub-int v10, v8, v6

    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v11

    aget-object v11, v11, v8

    aput-object v11, v9, v10

    .line 685
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 695
    .end local v8    # "i$iv":I
    :cond_2
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    sub-int v10, v7, v6

    invoke-static {v8, v9, v10, v7}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 696
    sub-int v8, v7, v6

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/collection/MutableVector;->setSize(I)V

    .line 697
    nop

    .line 192
    .end local v4    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v5    # "$i$f$removeIf":I
    .end local v6    # "gap$iv":I
    .end local v7    # "size$iv":I
    nop

    .end local v2    # "$i$a$-synchronized-SnapshotStateObserver$removeScopeMapIf$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v1

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 193
    return-void

    .line 190
    :catchall_0
    move-exception v2

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v1

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v2
.end method

.method private final report()Ljava/lang/Void;
    .locals 1

    .line 158
    const-string/jumbo v0, "Unexpected notification"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method private final sendNotifications()V
    .locals 2

    .line 81
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->onChangedExecutor:Lkotlin/jvm/functions/Function1;

    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$sendNotifications$1;

    invoke-direct {v1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$sendNotifications$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 11

    .line 334
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    const/4 v1, 0x0

    .line 736
    .local v1, "$i$f$forEachScopeMap":I
    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    monitor-enter v2

    const/4 v3, 0x0

    .line 737
    .local v3, "$i$a$-synchronized-SnapshotStateObserver$forEachScopeMap$1$iv":I
    :try_start_0
    iget-object v4, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v4, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v5, 0x0

    .line 738
    .local v5, "$i$f$forEach":I
    nop

    .line 739
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v6

    .line 740
    .local v6, "size$iv$iv":I
    if-lez v6, :cond_1

    .line 741
    const/4 v7, 0x0

    .line 742
    .local v7, "i$iv$iv":I
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v8

    .line 744
    .local v8, "content$iv$iv":[Ljava/lang/Object;
    :cond_0
    aget-object v9, v8, v7

    check-cast v9, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .local v9, "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    const/4 v10, 0x0

    .line 335
    .local v10, "$i$a$-forEachScopeMap-SnapshotStateObserver$clear$2":I
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->clear()V

    .line 336
    nop

    .line 744
    .end local v9    # "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v10    # "$i$a$-forEachScopeMap-SnapshotStateObserver$clear$2":I
    nop

    .line 745
    add-int/lit8 v7, v7, 0x1

    .line 746
    if-lt v7, v6, :cond_0

    .line 748
    .end local v7    # "i$iv$iv":I
    .end local v8    # "content$iv$iv":[Ljava/lang/Object;
    :cond_1
    nop

    .line 749
    .end local v4    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v5    # "$i$f$forEach":I
    .end local v6    # "size$iv$iv":I
    nop

    .end local v3    # "$i$a$-synchronized-SnapshotStateObserver$forEachScopeMap$1$iv":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    monitor-exit v2

    .line 750
    nop

    .line 337
    .end local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .end local v1    # "$i$f$forEachScopeMap":I
    return-void

    .line 736
    .restart local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .restart local v1    # "$i$f$forEachScopeMap":I
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public final clear(Ljava/lang/Object;)V
    .locals 12
    .param p1, "scope"    # Ljava/lang/Object;

    .line 290
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    const/4 v1, 0x0

    .line 698
    .local v1, "$i$f$removeScopeMapIf":I
    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    monitor-enter v2

    const/4 v3, 0x0

    .line 699
    .local v3, "$i$a$-synchronized-SnapshotStateObserver$removeScopeMapIf$1$iv":I
    :try_start_0
    iget-object v4, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v4, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v5, 0x0

    .line 700
    .local v5, "$i$f$removeIf":I
    const/4 v6, 0x0

    .line 701
    .local v6, "gap$iv$iv":I
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v7

    .line 702
    .local v7, "size$iv$iv":I
    const/4 v8, 0x0

    .local v8, "i$iv$iv":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 703
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v9

    aget-object v9, v9, v8

    check-cast v9, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .local v9, "it":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    const/4 v10, 0x0

    .line 291
    .local v10, "$i$a$-removeScopeMapIf-SnapshotStateObserver$clear$1":I
    invoke-virtual {v9, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->clearScopeObservations(Ljava/lang/Object;)V

    .line 292
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->hasScopeObservations()Z

    move-result v11

    .line 703
    .end local v9    # "it":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v10    # "$i$a$-removeScopeMapIf-SnapshotStateObserver$clear$1":I
    xor-int/lit8 v9, v11, 0x1

    if-eqz v9, :cond_0

    .line 704
    add-int/lit8 v6, v6, 0x1

    .line 705
    goto :goto_1

    .line 708
    :cond_0
    if-lez v6, :cond_1

    .line 709
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v9

    sub-int v10, v8, v6

    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v11

    aget-object v11, v11, v8

    aput-object v11, v9, v10

    .line 702
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 712
    .end local v8    # "i$iv$iv":I
    :cond_2
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    sub-int v10, v7, v6

    invoke-static {v8, v9, v10, v7}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 713
    sub-int v8, v7, v6

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/collection/MutableVector;->setSize(I)V

    .line 714
    nop

    .line 715
    .end local v4    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v5    # "$i$f$removeIf":I
    .end local v6    # "gap$iv$iv":I
    .end local v7    # "size$iv$iv":I
    nop

    .end local v3    # "$i$a$-synchronized-SnapshotStateObserver$removeScopeMapIf$1$iv":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    monitor-exit v2

    .line 716
    nop

    .line 294
    .end local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .end local v1    # "$i$f$removeScopeMapIf":I
    return-void

    .line 698
    .restart local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .restart local v1    # "$i$f$removeScopeMapIf":I
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public final clearIf(Lkotlin/jvm/functions/Function1;)V
    .locals 12
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 301
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    const/4 v1, 0x0

    .line 717
    .local v1, "$i$f$removeScopeMapIf":I
    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    monitor-enter v2

    const/4 v3, 0x0

    .line 718
    .local v3, "$i$a$-synchronized-SnapshotStateObserver$removeScopeMapIf$1$iv":I
    :try_start_0
    iget-object v4, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v4, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v5, 0x0

    .line 719
    .local v5, "$i$f$removeIf":I
    const/4 v6, 0x0

    .line 720
    .local v6, "gap$iv$iv":I
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v7

    .line 721
    .local v7, "size$iv$iv":I
    const/4 v8, 0x0

    .local v8, "i$iv$iv":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 722
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v9

    aget-object v9, v9, v8

    check-cast v9, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .local v9, "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    const/4 v10, 0x0

    .line 302
    .local v10, "$i$a$-removeScopeMapIf-SnapshotStateObserver$clearIf$1":I
    invoke-virtual {v9, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->removeScopeIf(Lkotlin/jvm/functions/Function1;)V

    .line 303
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->hasScopeObservations()Z

    move-result v11

    .line 722
    .end local v9    # "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v10    # "$i$a$-removeScopeMapIf-SnapshotStateObserver$clearIf$1":I
    xor-int/lit8 v9, v11, 0x1

    if-eqz v9, :cond_0

    .line 723
    add-int/lit8 v6, v6, 0x1

    .line 724
    goto :goto_1

    .line 727
    :cond_0
    if-lez v6, :cond_1

    .line 728
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v9

    sub-int v10, v8, v6

    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v11

    aget-object v11, v11, v8

    aput-object v11, v9, v10

    .line 721
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 731
    .end local v8    # "i$iv$iv":I
    :cond_2
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    sub-int v10, v7, v6

    invoke-static {v8, v9, v10, v7}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 732
    sub-int v8, v7, v6

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/collection/MutableVector;->setSize(I)V

    .line 733
    nop

    .line 734
    .end local v4    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v5    # "$i$f$removeIf":I
    .end local v6    # "gap$iv$iv":I
    .end local v7    # "size$iv$iv":I
    nop

    .end local v3    # "$i$a$-synchronized-SnapshotStateObserver$removeScopeMapIf$1$iv":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    monitor-exit v2

    .line 735
    nop

    .line 305
    .end local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .end local v1    # "$i$f$removeScopeMapIf":I
    return-void

    .line 717
    .restart local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .restart local v1    # "$i$f$removeScopeMapIf":I
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public final notifyChanges(Ljava/util/Set;Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 1
    .param p1, "changes"    # Ljava/util/Set;
    .param p2, "snapshot"    # Landroidx/compose/runtime/snapshots/Snapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            ")V"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyObserver:Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    return-void
.end method

.method public final observeReads(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 9
    .param p1, "scope"    # Ljava/lang/Object;
    .param p2, "onValueChangedForScope"    # Lkotlin/jvm/functions/Function1;
    .param p3, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    monitor-enter v0

    const/4 v1, 0x0

    .line 233
    .local v1, "$i$a$-synchronized-SnapshotStateObserver$observeReads$scopeMap$1":I
    :try_start_0
    invoke-direct {p0, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->ensureMap(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 232
    .end local v1    # "$i$a$-synchronized-SnapshotStateObserver$observeReads$scopeMap$1":I
    monitor-exit v0

    move-object v0, v2

    .line 236
    .local v0, "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    iget-boolean v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 237
    .local v1, "oldPaused":Z
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 238
    .local v2, "oldMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    iget-wide v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMapThreadId:J

    .line 240
    .local v3, "oldThreadId":J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 241
    invoke-static {}, Landroidx/compose/runtime/ActualJvm_jvmKt;->currentThreadId()J

    move-result-wide v7

    cmp-long v5, v3, v7

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 242
    .local v5, "$i$a$-require-SnapshotStateObserver$observeReads$1":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Detected multithreaded access to SnapshotStateObserver: previousThreadId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 243
    nop

    .line 242
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 243
    const-string v7, "), currentThread={id="

    .line 242
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 244
    invoke-static {}, Landroidx/compose/runtime/ActualJvm_jvmKt;->currentThreadId()J

    move-result-wide v7

    .line 242
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 244
    const-string v7, ", name="

    .line 242
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 244
    invoke-static {}, Landroidx/compose/runtime/ActualJvm_jvmKt;->currentThreadName()Ljava/lang/String;

    move-result-object v7

    .line 242
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 244
    const-string/jumbo v7, "}. Note that observation on multiple threads in layout/draw is not supported. Make sure your measure/layout/draw for each Owner (AndroidComposeView) is executed on the same thread."

    .line 242
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 241
    .end local v5    # "$i$a$-require-SnapshotStateObserver$observeReads$1":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 251
    :cond_2
    :goto_1
    nop

    .line 252
    :try_start_1
    iput-boolean v6, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 253
    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 254
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMapThreadId:J

    .line 256
    iget-object v5, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->readObserver:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, p1, v5, p3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->observe(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    iput-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 259
    iput-boolean v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 260
    iput-wide v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMapThreadId:J

    .line 261
    nop

    .line 262
    return-void

    .line 258
    :catchall_0
    move-exception v5

    iput-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 259
    iput-boolean v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 260
    iput-wide v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMapThreadId:J

    throw v5

    .line 232
    .end local v0    # "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v1    # "oldPaused":Z
    .end local v2    # "oldMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v3    # "oldThreadId":J
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final start()V
    .locals 2

    .line 311
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyObserver:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->registerApplyObserver(Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/snapshots/ObserverHandle;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyUnsubscribe:Landroidx/compose/runtime/snapshots/ObserverHandle;

    .line 312
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 318
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyUnsubscribe:Landroidx/compose/runtime/snapshots/ObserverHandle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/runtime/snapshots/ObserverHandle;->dispose()V

    .line 319
    :cond_0
    return-void
.end method

.method public final withNoObservations(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Replace with Snapshot.withoutReadObservation()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Snapshot.withoutReadObservation(block)"
            imports = {
                "androidx.compose.runtime.snapshots.Snapshot"
            }
        .end subannotation
    .end annotation

    .line 276
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 277
    .local v0, "oldPaused":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 278
    nop

    .line 279
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    iput-boolean v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 282
    nop

    .line 283
    return-void

    .line 281
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    throw v1
.end method
